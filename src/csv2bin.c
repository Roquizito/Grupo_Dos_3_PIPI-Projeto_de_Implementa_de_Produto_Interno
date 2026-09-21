#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Uso: %s <entrada.csv> <saida.bin>\n", argv[0]);
        return 1;
    }

    FILE *csv = fopen(argv[1], "r");
    if (!csv) { 
        perror("Erro ao abrir ficheiro CSV"); 
        return 1; 
    }

    FILE *bin = fopen(argv[2], "wb");
    if (!bin) { 
        perror("Erro ao abrir ficheiro BIN"); 
        fclose(csv); 
        return 1; 
    }

    uint64_t M, N;
    // Lê a primeira linha com as dimensões M,N
    if (fscanf(csv, "%" SCNu64 ",%" SCNu64 "\n", &M, &N) != 2) {
        fprintf(stderr, "Erro ao ler as dimensões do CSV.\n");
        fclose(csv);
        fclose(bin);
        return 1;
    }

    // Escreve o cabeçalho de 16 bytes no ficheiro binário
    fwrite(&M, sizeof(uint64_t), 1, bin);
    fwrite(&N, sizeof(uint64_t), 1, bin);

    // Aloca um buffer contíguo para toda a matriz
    size_t total_elements = M * N;
    float *buffer = (float *)malloc(total_elements * sizeof(float));
    if (!buffer) {
        perror("Erro de alocação de memória");
        fclose(csv);
        fclose(bin);
        return 1;
    }

    // Lê os valores float delimitados por vírgula
    for (size_t i = 0; i < total_elements; i++) {
        if (fscanf(csv, "%f,", &buffer[i]) != 1) {
            fprintf(stderr, "Erro ao ler o elemento %zu.\n", i);
            free(buffer);
            fclose(csv);
            fclose(bin);
            return 1;
        }
    }

    // Escrita binária direta em disco numa única chamada
    fwrite(buffer, sizeof(float), total_elements, bin);

    free(buffer);
    fclose(csv);
    fclose(bin);
    return 0;
}   