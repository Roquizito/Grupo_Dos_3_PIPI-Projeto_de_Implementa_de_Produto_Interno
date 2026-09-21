#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Uso: %s <entrada.csv> <saida.bin>\n", argv[0]);
        return 1;
    }

    FILE *f_in = fopen(argv[1], "r");
    FILE *f_out = fopen(argv[2], "wb");
    if (!f_in || !f_out) {
        fprintf(stderr, "Erro ao manipular arquivos.\n");
        return 1;
    }

    uint64_t M, N;
    if (fscanf(f_in, "%lu,%lu\n", &M, &N) != 2) {
        return 1;
    }

    fwrite(&M, sizeof(uint64_t), 1, f_out);
    fwrite(&N, sizeof(uint64_t), 1, f_out);

    float *buffer = (float *)malloc(M * N * sizeof(float));
    if (!buffer) {
        return 1;
    }

    for (uint64_t i = 0; i < M * N; i++) {
        if (i % N == N - 1) {
            fscanf(f_in, "%f\n", &buffer[i]);
        } else {
            fscanf(f_in, "%f,", &buffer[i]);
        }
    }

    fwrite(buffer, sizeof(float), M * N, f_out);

    free(buffer);
    fclose(f_in);
    fclose(f_out);
    return 0;
}