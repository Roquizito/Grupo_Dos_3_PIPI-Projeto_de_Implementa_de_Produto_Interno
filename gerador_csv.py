import sys
import random

def gerar_matriz(linhas, colunas, nome_arquivo):
    with open(nome_arquivo, 'w', encoding='utf-8') as f:
        f.write(f"{linhas},{colunas}\n")
        for _ in range(linhas):
            # Sintetiza N floats uniformes e padroniza a precisão de 6 casas
            linha_float = ["{:.6f}".format(random.uniform(0.1, 10.0)) for _ in range(colunas)]
            f.write(",".join(linha_float) + "\n")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Uso: python3 gerador_csv.py <linhas> <colunas> <saida.csv>")
        sys.exit(1)
    
    M = int(sys.argv[1])
    N = int(sys.argv[2])
    arquivo_saida = sys.argv[3]
    
    gerar_matriz(M, N, arquivo_saida)
    print(f"Matriz {M}x{N} gerada com sucesso em {arquivo_saida}")