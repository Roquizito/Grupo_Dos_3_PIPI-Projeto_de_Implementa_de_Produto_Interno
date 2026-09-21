CC = gcc
CFLAGS_BASE = -O0 -g0
CFLAGS_O2 = -O2
CFLAGS_O3 = -O3
CFLAGS_FAST = -O3 -march=native -ffast-math -funroll-loops

all: csv2bin bin2csv matmul_base matmul_o2 matmul_o3 matmul_fast

csv2bin: src/csv2bin.c
	$(CC) $(CFLAGS_O3) $< -o $@

bin2csv: src/bin2csv.c
	$(CC) $(CFLAGS_O3) $< -o $@

matmul_base: src/matmul.c
	$(CC) $(CFLAGS_BASE) $< -o maquinas/roque/bin/$@

matmul_o2: src/matmul.c
	$(CC) $(CFLAGS_O2) $< -o maquinas/roque/bin/$@

matmul_o3: src/matmul.c
	$(CC) $(CFLAGS_O3) $< -o maquinas/roque/bin/$@

matmul_fast: src/matmul.c
	$(CC) $(CFLAGS_FAST) $< -o maquinas/roque/bin/$@