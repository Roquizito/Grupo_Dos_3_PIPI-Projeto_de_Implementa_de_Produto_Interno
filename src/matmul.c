#define _POSIX_C_SOURCE 200809L

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

// Medição temporal monotónica obrigatória
static inline double obter_tempo_segundos(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

// Função auxiliar para carregar o binário e alocar memória alinhada
float* carregar_matriz(const char *caminho, uint64_t *linhas, uint64_t *colunas) {
    FILE *f = fopen(caminho, "rb");
    if (!f) return NULL;
    
    if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
        fread(colunas, sizeof(uint64_t), 1, f) != 1) {
        fclose(f); return NULL;
    }
    
    float *matriz = NULL;
    // Alinhamento em fronteiras de 64 bytes para otimização vetorial (AVX-512)
    if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
        fclose(f); return NULL;
    }
    
    if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
        free(matriz); fclose(f); return NULL;
    }
    
    fclose(f);
    return matriz;
}

int main(int argc, char *argv[]) {
    // O programa principal opera exclusivamente com os três ficheiros binários
    if (argc != 4) return 1;

    double tempo_io = 0.0;
    
    // Início da medição de leitura
    double t_io_inicio = obter_tempo_segundos();

    uint64_t M, K_A, K_B, N;
    float *A = carregar_matriz(argv[1], &M, &K_A);
    float *B = carregar_matriz(argv[2], &K_B, &N);

    if (!A || !B || K_A != K_B) {
        if (A) free(A);
        if (B) free(B);
        return 1;
    }
    uint64_t K = K_A;

    float *C = NULL;
    if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
        if (A) free(A);
        if (B) free(B);
        return 1;
    }
    for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;

    // Fim da medição de leitura
    tempo_io += obter_tempo_segundos() - t_io_inicio;

    // Início estrito da execução do algoritmo de multiplicação
    double t_comp_inicio = obter_tempo_segundos();

    // Ordem de iteração (i -> k -> j) para maximizar o reuso de linhas da cache
    for (uint64_t i = 0; i < M; i++) {
        for (uint64_t k = 0; k < K; k++) {
            float a_ik = A[i * K + k];
            // Diretiva restrict implícita pelo design linear contíguo
            for (uint64_t j = 0; j < N; j++) {
                C[i * N + j] += a_ik * B[k * N + j];
            }
        }
    }

    double tempo_comp = obter_tempo_segundos() - t_comp_inicio;

    // Início da medição de escrita
    t_io_inicio = obter_tempo_segundos();
    FILE *f_out = fopen(argv[3], "wb");
    if (f_out) {
        fwrite(&M, sizeof(uint64_t), 1, f_out);
        fwrite(&N, sizeof(uint64_t), 1, f_out);
        fwrite(C, sizeof(float), M * N, f_out);
        fclose(f_out);
    }
    tempo_io += obter_tempo_segundos() - t_io_inicio;

    // Cálculo da vazão em GFLOPS
    double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);

    // Emissão de estritamente uma única linha no stdout[cite: 1]
    printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n", tempo_io, tempo_comp, gflops);

    free(A);
    free(B);
    free(C);
    
    return 0;
}
