#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Uso: %s <entrada.bin> <saida.csv>\n", argv[0]);
        return 1;
    }

    FILE *f_in = fopen(argv[1], "rb");
    FILE *f_out = fopen(argv[2], "w");
    if (!f_in || !f_out) {
        fprintf(stderr, "Erro ao manipular arquivos.\n");
        return 1;
    }

    uint64_t M, N;
    if (fread(&M, sizeof(uint64_t), 1, f_in) != 1 || fread(&N, sizeof(uint64_t), 1, f_in) != 1) {
        return 1;
    }

    fprintf(f_out, "%lu,%lu\n", M, N);

    float *buffer = (float *)malloc(M * N * sizeof(float));
    if (!buffer) {
        return 1;
    }

    if (fread(buffer, sizeof(float), M * N, f_in) != M * N) {
        free(buffer);
        return 1;
    }

    for (uint64_t i = 0; i < M * N; i++) {
        if (i % N == N - 1) {
            fprintf(f_out, "%.6f\n", buffer[i]);
        } else {
            fprintf(f_out, "%.6f,", buffer[i]);
        }
    }

    free(buffer);
    fclose(f_in);
    fclose(f_out);
    return 0;
}