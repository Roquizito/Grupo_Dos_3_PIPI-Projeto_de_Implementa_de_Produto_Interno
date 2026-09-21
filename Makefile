CC = gcc
CFLAGS = -Wall -Wextra -std=c11

SRC_DIR = src

MATMUL_SRC = $(SRC_DIR)/matmul.c
CSV2BIN_SRC = $(SRC_DIR)/csv2bin.c
BIN2CSV_SRC = $(SRC_DIR)/bin2csv.c

UTILITIES = csv2bin bin2csv
MATMUL_TARGETS = matmul_base matmul_o2 matmul_o3 matmul_fast

.PHONY: all clean specs asm

all: $(UTILITIES) $(MATMUL_TARGETS)

csv2bin: $(CSV2BIN_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

bin2csv: $(BIN2CSV_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

matmul_base: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O0 -g0 $< -o $@

matmul_o2: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O2 $< -o $@

matmul_o3: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O3 $< -o $@

matmul_fast: $(MATMUL_SRC)
	$(CC) $(CFLAGS) -O3 -march=native -ffast-math -funroll-loops $< -o $@

specs:
	@mkdir -p specs
	lscpu > specs/cpu_info.txt
	lscpu -C >> specs/cpu_info.txt
	free -h > specs/ram_info.txt
	$(CC) --version > specs/gcc_info.txt
	@echo "Especificações recolhidas com sucesso em specs/"

clean:
	rm -f $(UTILITIES) $(MATMUL_TARGETS) *.bin *.csv
	rm -rf specs

gerar_matriz: $(SRC_DIR)/gerar_matriz.c
	$(CC) $(CFLAGS) -O2 $< -o $@
<<<<<<< HEAD
	
=======
>>>>>>> b3ebf35375e834086bc4c6c5de7de160bee31418

memcheck: matmul_base csv2bin
	@echo "Executando Valgrind para auditar fugas de memória..."
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./matmul_base matrizA.bin matrizB.bin matrizC_valgrind.bin
