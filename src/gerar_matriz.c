#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char *argv[]) {
    if (argc != 4) {
        fprintf(stderr, "Uso: %s <linhas> <colunas> <saida.csv>\n", argv[0]);
        return 1;
    }

    int M = atoi(argv[1]);
    int N = atoi(argv[2]);

    FILE *f = fopen(argv[3], "w");
    if (!f) {
        perror("Erro ao criar ficheiro CSV");
        return 1;
    }

    // Linha 1: Dimensões M,N
    fprintf(f, "%d,%d\n", M, N);

    srand((unsigned int)time(NULL));

    // Linhas 2 até M+1: Valores float formatados com %.6f
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            float val = ((float)rand() / (float)RAND_MAX) * 100.0f;
            fprintf(f, "%.6f", val);
            if (j < N - 1) fprintf(f, ",");
        }
        fprintf(f, "\n");
    }

    fclose(f);
    return 0;
}
