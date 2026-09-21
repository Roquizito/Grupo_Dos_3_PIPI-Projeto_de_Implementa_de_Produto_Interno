#!/bin/bash
set -e

ALUNO_DIR="maquinas/"
mkdir -p "$ALUNO_DIR/specs" "$ALUNO_DIR/asm" "$ALUNO_DIR/bin"

#make clean
make all
make gerar_matriz

cp matmul_base matmul_o2 matmul_o3 matmul_fast "$ALUNO_DIR/bin/"

BENCH_OUT="$ALUNO_DIR/benchmark_aluno1.csv"
echo "Dimensao,Alvo,Tempo_IO,Tempo_COMP,GFLOPS" > "$BENCH_OUT"

TAMANHOS=(1000 2000 4000)
ALVOS=("matmul_base" "matmul_o2" "matmul_o3" "matmul_fast")

for N in "${TAMANHOS[@]}"; do
    echo "=== A gerar e converter matrizes ${N}x${N} ==="
    ./gerar_matriz $N $N "matA_${N}.csv"
    ./gerar_matriz $N $N "matB_${N}.csv"
    
    ./csv2bin "matA_${N}.csv" "matA_${N}.bin"
    ./csv2bin "matB_${N}.csv" "matB_${N}.bin"

    for ALVO in "${ALVOS[@]}"; do
        echo "A executar ./$ALVO para dimensão $N..."
        OUT=$(./$ALVO "matA_${N}.bin" "matB_${N}.bin" "res_${N}_${ALVO}.bin")
        
        # Extração das métricas da saída padronizada stdout
        IO=$(echo "$OUT" | awk -F'|' '{print $1}' | awk '{print $2}')
        COMP=$(echo "$OUT" | awk -F'|' '{print $2}' | awk '{print $2}')
        GFLOPS=$(echo "$OUT" | awk -F'|' '{print $3}' | awk '{print $2}')

        echo "${N},${ALVO},${IO},${COMP},${GFLOPS}" >> "$BENCH_OUT"
    done
done

make specs
mv specs/* "$ALUNO_DIR/specs/"
rmdir specs

objdump -d -M intel -S matmul_base > "$ALUNO_DIR/asm/asm_base_aluno1.s"
objdump -d -M intel -S matmul_fast > "$ALUNO_DIR/asm/asm_fast_aluno1.s"

echo "=== Processo e bateria de testes concluídos com sucesso! ==="
