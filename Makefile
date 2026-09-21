CC = gcc
CFLAGS = -Wall -Wextra -std=c11

SRC_DIR = src

# Fontes dos módulos
MATMUL_SRC = $(SRC_DIR)/matmul.c
CSV2BIN_SRC = $(SRC_DIR)/csv2bin.c
BIN2CSV_SRC = $(SRC_DIR)/bin2csv.c

# Executáveis a gerar
UTILITIES = csv2bin bin2csv
MATMUL_TARGETS = matmul_base matmul_o2 matmul_o3 matmul_fast

.PHONY: all clean specs asm

all: $(UTILITIES) $(MATMUL_TARGETS)

# Utilitários de Conversão E/S
csv2bin: $(CSV2BIN_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

bin2csv: $(BIN2CSV_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

# Alvos do Motor Matricial com Níveis de Otimização
matmul_base: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O0 -g0 $< -o $@

matmul_o2: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

matmul_o3: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O3 $< -o $@

matmul_fast: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O3 -march=native -ffast-math -funroll-loops $< -o $@

# Utilitário para recolha de especificações do sistema (Executar em ambiente Linux/WSL)
specs:
	@mkdir -p specs
	lscpu > specs/cpu_info.txt
	lscpu -C >> specs/cpu_info.txt
	free -h > specs/ram_info.txt
	$(CC) --version > specs/gcc_info.txt
	@echo "Especificações recolhidas com sucesso em specs/"

# Limpeza dos binários gerados
clean:
	rm -f $(UTILITIES) $(MATMUL_TARGETS) *.bin *.csv
	rm -rf specs

gerar_matriz: $(SRC_DIR)/gerar_matriz.c
	$(CC) $(CFLAGS) -O2 $< -o $@