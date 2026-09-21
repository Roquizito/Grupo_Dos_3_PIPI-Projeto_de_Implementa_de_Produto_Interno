#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

static inline double obter_tempo_segundos(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

int main(int argc, char *argv[]) {
    if (argc != 4) {
        return 1;
    }

    double t_io_start = obter_tempo_segundos();

    FILE *f_a = fopen(argv[1], "rb");
    FILE *f_b = fopen(argv[2], "rb");
    if (!f_a || !f_b) {
        return 1;
    }

    uint64_t M, K, K2, N;
    
    if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
    if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;

    if (K != K2) {
        return 1; 
    }

    float *A, *B, *C;
    
    if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
    if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
    if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;

    if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
    if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
    
    fclose(f_a);
    fclose(f_b);

    for (uint64_t i = 0; i < M * N; i++) {
        C[i] = 0.0f;
    }

    double t_comp_start = obter_tempo_segundos();

    float * restrict ptr_A = __builtin_assume_aligned(A, 64);
    float * restrict ptr_B = __builtin_assume_aligned(B, 64);
    float * restrict ptr_C = __builtin_assume_aligned(C, 64);

    for (uint64_t i = 0; i < M; i++) {
        for (uint64_t k = 0; k < K; k++) {
            float a_ik = ptr_A[i * K + k];
            for (uint64_t j = 0; j < N; j++) {
                ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
            }
        }
    }

    double t_comp_end = obter_tempo_segundos();
    double tempo_comp = t_comp_end - t_comp_start;

    FILE *f_c = fopen(argv[3], "wb");
    if (!f_c) return 1;
    
    fwrite(&M, sizeof(uint64_t), 1, f_c);
    fwrite(&N, sizeof(uint64_t), 1, f_c);
    fwrite(C, sizeof(float), M * N, f_c);
    fclose(f_c);

    double t_io_end = obter_tempo_segundos();
    double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);

    double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);

    printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n", tempo_io, tempo_comp, gflops);

    free(A);
    free(B);
    free(C);

    return 0;
}