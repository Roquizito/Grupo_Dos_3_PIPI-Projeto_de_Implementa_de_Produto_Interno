#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Uso: %s <entrada.bin> <saida.csv>\n", argv[0]);
        return 1;
    }

    FILE *bin = fopen(argv[1], "rb");
    if (!bin) { 
        perror("Erro ao abrir ficheiro BIN"); 
        return 1; 
    }

    FILE *csv = fopen(argv[2], "w");
    if (!csv) { 
        perror("Erro ao abrir ficheiro CSV"); 
        fclose(bin); 
        return 1; 
    }

    uint64_t M, N;
    // Lê o cabeçalho de 16 bytes (M e N)
    if (fread(&M, sizeof(uint64_t), 1, bin) != 1 || fread(&N, sizeof(uint64_t), 1, bin) != 1) {
        fprintf(stderr, "Erro ao ler o cabecalho.\n");
        fclose(bin); 
        fclose(csv); 
        return 1;
    }

    // Escreve a primeira linha do CSV
    fprintf(csv, "%" PRIu64 ",%" PRIu64 "\n", M, N);

    size_t total_elements = M * N;
    float *buffer = (float *)malloc(total_elements * sizeof(float));
    if (!buffer) {
        perror("Erro de alocacao");
        fclose(bin); 
        fclose(csv); 
        return 1;
    }

    // Carrega o bloco contíguo via fread
    if (fread(buffer, sizeof(float), total_elements, bin) != total_elements) {
        fprintf(stderr, "Erro ao ler a carga util (payload).\n");
        free(buffer); 
        fclose(bin); 
        fclose(csv); 
        return 1;
    }

    // Exporta o conteúdo iterando sobre a matriz (row-major order)
    for (uint64_t i = 0; i < M; i++) {
        for (uint64_t j = 0; j < N; j++) {
            fprintf(csv, "%.6f", buffer[i * N + j]);
            if (j < N - 1) {
                fprintf(csv, ",");
            }
        }
        fprintf(csv, "\n");
    }

    free(buffer);
    fclose(bin);
    fclose(csv);
    return 0;
}
