	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.type	obter_tempo_segundos, @function
obter_tempo_segundos:
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
# src/matmul.c:9: static inline double obter_tempo_segundos(void) {
	mov	rax, QWORD PTR fs:40	# tmp105, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.3695, tmp105
	xor	eax, eax	# tmp105
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rax, -32[rbp]	# tmp106,
	mov	rsi, rax	#, tmp106
	mov	edi, 1	#,
	call	clock_gettime@PLT	#
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR -32[rbp]	# _1, ts.tv_sec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm1, xmm1	# _2
	cvtsi2sd	xmm1, rax	# _2, _1
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR -24[rbp]	# _3, ts.tv_nsec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm2, xmm2	# _4
	cvtsi2sd	xmm2, rax	# _4, _3
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp107,
	mulsd	xmm0, xmm2	# _5, _4
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	addsd	xmm0, xmm1	# _8, _2
# src/matmul.c:13: }
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.3695
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	obter_tempo_segundos, .-obter_tempo_segundos
	.section	.rodata
.LC1:
	.string	"rb"
	.text
	.globl	carregar_matriz
	.type	carregar_matriz, @function
carregar_matriz:
.LFB1:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# caminho, caminho
	mov	QWORD PTR -48[rbp], rsi	# linhas, linhas
	mov	QWORD PTR -56[rbp], rdx	# colunas, colunas
# src/matmul.c:16: float* carregar_matriz(const char *caminho, uint64_t *linhas, uint64_t *colunas) {
	mov	rax, QWORD PTR fs:40	# tmp116, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.3697, tmp116
	xor	eax, eax	# tmp116
# src/matmul.c:17:     FILE *f = fopen(caminho, "rb");
	lea	rdx, .LC1[rip]	# tmp117,
	mov	rax, QWORD PTR -40[rbp]	# tmp118, caminho
	mov	rsi, rdx	#, tmp117
	mov	rdi, rax	#, tmp118
	call	fopen@PLT	#
	mov	QWORD PTR -16[rbp], rax	# f, tmp119
# src/matmul.c:18:     if (!f) return NULL;
	cmp	QWORD PTR -16[rbp], 0	# f,
	jne	.L5	#,
# src/matmul.c:18:     if (!f) return NULL;
	mov	eax, 0	# _17,
# src/matmul.c:18:     if (!f) return NULL;
	jmp	.L11	#
.L5:
# src/matmul.c:20:     if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
	mov	rdx, QWORD PTR -16[rbp]	# tmp120, f
	mov	rax, QWORD PTR -48[rbp]	# tmp121, linhas
	mov	rcx, rdx	#, tmp120
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp121
	call	fread@PLT	#
# src/matmul.c:20:     if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
	cmp	rax, 1	# _1,
	jne	.L7	#,
# src/matmul.c:21:         fread(colunas, sizeof(uint64_t), 1, f) != 1) {
	mov	rdx, QWORD PTR -16[rbp]	# tmp122, f
	mov	rax, QWORD PTR -56[rbp]	# tmp123, colunas
	mov	rcx, rdx	#, tmp122
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp123
	call	fread@PLT	#
# src/matmul.c:20:     if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
	cmp	rax, 1	# _2,
	je	.L8	#,
.L7:
# src/matmul.c:22:         fclose(f); return NULL;
	mov	rax, QWORD PTR -16[rbp]	# tmp124, f
	mov	rdi, rax	#, tmp124
	call	fclose@PLT	#
# src/matmul.c:22:         fclose(f); return NULL;
	mov	eax, 0	# _17,
# src/matmul.c:22:         fclose(f); return NULL;
	jmp	.L11	#
.L8:
# src/matmul.c:25:     float *matriz = NULL;
	mov	QWORD PTR -24[rbp], 0	# matriz,
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	mov	rax, QWORD PTR -48[rbp]	# tmp125, linhas
	mov	rdx, QWORD PTR [rax]	# _3, *linhas_24(D)
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	mov	rax, QWORD PTR -56[rbp]	# tmp126, colunas
	mov	rax, QWORD PTR [rax]	# _4, *colunas_26(D)
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	imul	rax, rdx	# _5, _3
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	lea	rdx, 0[0+rax*4]	# _6,
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	lea	rax, -24[rbp]	# tmp127,
	mov	esi, 64	#,
	mov	rdi, rax	#, tmp127
	call	posix_memalign@PLT	#
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	test	eax, eax	# _7
	je	.L9	#,
# src/matmul.c:28:         fclose(f); return NULL;
	mov	rax, QWORD PTR -16[rbp]	# tmp128, f
	mov	rdi, rax	#, tmp128
	call	fclose@PLT	#
# src/matmul.c:28:         fclose(f); return NULL;
	mov	eax, 0	# _17,
# src/matmul.c:28:         fclose(f); return NULL;
	jmp	.L11	#
.L9:
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR -48[rbp]	# tmp129, linhas
	mov	rdx, QWORD PTR [rax]	# _8, *linhas_24(D)
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR -56[rbp]	# tmp130, colunas
	mov	rax, QWORD PTR [rax]	# _9, *colunas_26(D)
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	imul	rdx, rax	# _10, _9
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR -24[rbp]	# matriz.0_11, matriz
	mov	rcx, QWORD PTR -16[rbp]	# tmp131, f
	mov	esi, 4	#,
	mov	rdi, rax	#, matriz.0_11
	call	fread@PLT	#
	mov	rdx, rax	# _12,
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR -48[rbp]	# tmp132, linhas
	mov	rcx, QWORD PTR [rax]	# _13, *linhas_24(D)
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR -56[rbp]	# tmp133, colunas
	mov	rax, QWORD PTR [rax]	# _14, *colunas_26(D)
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	imul	rax, rcx	# _15, _13
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	cmp	rdx, rax	# _12, _15
	je	.L10	#,
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	mov	rax, QWORD PTR -24[rbp]	# matriz.1_16, matriz
	mov	rdi, rax	#, matriz.1_16
	call	free@PLT	#
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	mov	rax, QWORD PTR -16[rbp]	# tmp134, f
	mov	rdi, rax	#, tmp134
	call	fclose@PLT	#
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	mov	eax, 0	# _17,
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	jmp	.L11	#
.L10:
# src/matmul.c:35:     fclose(f);
	mov	rax, QWORD PTR -16[rbp]	# tmp135, f
	mov	rdi, rax	#, tmp135
	call	fclose@PLT	#
# src/matmul.c:36:     return matriz;
	mov	rax, QWORD PTR -24[rbp]	# _17, matriz
.L11:
# src/matmul.c:37: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp137, D.3697
	sub	rdx, QWORD PTR fs:40	# tmp137, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	carregar_matriz, .-carregar_matriz
	.section	.rodata
.LC4:
	.string	"wb"
	.align 8
.LC6:
	.string	"TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 176	#,
	mov	DWORD PTR -164[rbp], edi	# argc, argc
	mov	QWORD PTR -176[rbp], rsi	# argv, argv
# src/matmul.c:39: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp165, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.3699, tmp165
	xor	eax, eax	# tmp165
# src/matmul.c:41:     if (argc != 4) return 1;
	cmp	DWORD PTR -164[rbp], 4	# argc,
	je	.L14	#,
# src/matmul.c:41:     if (argc != 4) return 1;
	mov	eax, 1	# _68,
# src/matmul.c:41:     if (argc != 4) return 1;
	jmp	.L38	#
.L14:
# src/matmul.c:43:     double tempo_io = 0.0;
	pxor	xmm0, xmm0	# tmp166
	movsd	QWORD PTR -80[rbp], xmm0	# tempo_io, tmp166
# src/matmul.c:46:     double t_io_inicio = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp167,
	mov	QWORD PTR -72[rbp], rax	# t_io_inicio, tmp167
# src/matmul.c:49:     float *A = carregar_matriz(argv[1], &M, &K_A);
	mov	rax, QWORD PTR -176[rbp]	# tmp168, argv
	add	rax, 8	# _1,
# src/matmul.c:49:     float *A = carregar_matriz(argv[1], &M, &K_A);
	mov	rax, QWORD PTR [rax]	# _2, *_1
	lea	rdx, -144[rbp]	# tmp169,
	lea	rcx, -152[rbp]	# tmp170,
	mov	rsi, rcx	#, tmp170
	mov	rdi, rax	#, _2
	call	carregar_matriz	#
	mov	QWORD PTR -64[rbp], rax	# A, tmp171
# src/matmul.c:50:     float *B = carregar_matriz(argv[2], &K_B, &N);
	mov	rax, QWORD PTR -176[rbp]	# tmp172, argv
	add	rax, 16	# _3,
# src/matmul.c:50:     float *B = carregar_matriz(argv[2], &K_B, &N);
	mov	rax, QWORD PTR [rax]	# _4, *_3
	lea	rdx, -128[rbp]	# tmp173,
	lea	rcx, -136[rbp]	# tmp174,
	mov	rsi, rcx	#, tmp174
	mov	rdi, rax	#, _4
	call	carregar_matriz	#
	mov	QWORD PTR -56[rbp], rax	# B, tmp175
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	cmp	QWORD PTR -64[rbp], 0	# A,
	je	.L16	#,
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	cmp	QWORD PTR -56[rbp], 0	# B,
	je	.L16	#,
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	mov	rdx, QWORD PTR -144[rbp]	# K_A.2_5, K_A
	mov	rax, QWORD PTR -136[rbp]	# K_B.3_6, K_B
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	cmp	rdx, rax	# K_A.2_5, K_B.3_6
	je	.L17	#,
.L16:
# src/matmul.c:53:         if (A) free(A);
	cmp	QWORD PTR -64[rbp], 0	# A,
	je	.L18	#,
# src/matmul.c:53:         if (A) free(A);
	mov	rax, QWORD PTR -64[rbp]	# tmp176, A
	mov	rdi, rax	#, tmp176
	call	free@PLT	#
.L18:
# src/matmul.c:54:         if (B) free(B);
	cmp	QWORD PTR -56[rbp], 0	# B,
	je	.L19	#,
# src/matmul.c:54:         if (B) free(B);
	mov	rax, QWORD PTR -56[rbp]	# tmp177, B
	mov	rdi, rax	#, tmp177
	call	free@PLT	#
.L19:
# src/matmul.c:55:         return 1;
	mov	eax, 1	# _68,
	jmp	.L38	#
.L17:
# src/matmul.c:57:     uint64_t K = K_A;
	mov	rax, QWORD PTR -144[rbp]	# tmp178, K_A
	mov	QWORD PTR -48[rbp], rax	# K, tmp178
# src/matmul.c:59:     float *C = NULL;
	mov	QWORD PTR -120[rbp], 0	# C,
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	mov	rdx, QWORD PTR -152[rbp]	# M.4_7, M
	mov	rax, QWORD PTR -128[rbp]	# N.5_8, N
	imul	rax, rdx	# _9, M.4_7
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	lea	rdx, 0[0+rax*4]	# _10,
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	lea	rax, -120[rbp]	# tmp179,
	mov	esi, 64	#,
	mov	rdi, rax	#, tmp179
	call	posix_memalign@PLT	#
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	test	eax, eax	# _11
	je	.L20	#,
# src/matmul.c:61:         if (A) free(A);
	cmp	QWORD PTR -64[rbp], 0	# A,
	je	.L21	#,
# src/matmul.c:61:         if (A) free(A);
	mov	rax, QWORD PTR -64[rbp]	# tmp180, A
	mov	rdi, rax	#, tmp180
	call	free@PLT	#
.L21:
# src/matmul.c:62:         if (B) free(B);
	cmp	QWORD PTR -56[rbp], 0	# B,
	je	.L22	#,
# src/matmul.c:62:         if (B) free(B);
	mov	rax, QWORD PTR -56[rbp]	# tmp181, B
	mov	rdi, rax	#, tmp181
	call	free@PLT	#
.L22:
# src/matmul.c:63:         return 1;
	mov	eax, 1	# _68,
	jmp	.L38	#
.L20:
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	mov	QWORD PTR -112[rbp], 0	# i,
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	jmp	.L23	#
.L24:
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	mov	rax, QWORD PTR -120[rbp]	# C.6_12, C
	mov	rdx, QWORD PTR -112[rbp]	# tmp182, i
	sal	rdx, 2	# _13,
	add	rax, rdx	# _14, _13
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	pxor	xmm0, xmm0	# tmp183
	movss	DWORD PTR [rax], xmm0	# *_14, tmp183
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	add	QWORD PTR -112[rbp], 1	# i,
.L23:
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	mov	rdx, QWORD PTR -152[rbp]	# M.7_15, M
	mov	rax, QWORD PTR -128[rbp]	# N.8_16, N
	imul	rax, rdx	# _17, M.7_15
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	cmp	QWORD PTR -112[rbp], rax	# i, _17
	jb	.L24	#,
# src/matmul.c:68:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# _18,
# src/matmul.c:68:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	movq	xmm0, rax	# _18, _18
	subsd	xmm0, QWORD PTR -72[rbp]	# _18, t_io_inicio
# src/matmul.c:68:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	movsd	xmm1, QWORD PTR -80[rbp]	# tmp185, tempo_io
	addsd	xmm0, xmm1	# tempo_io_95, tmp185
	movsd	QWORD PTR -80[rbp], xmm0	# tempo_io, tempo_io_95
# src/matmul.c:71:     double t_comp_inicio = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp186,
	mov	QWORD PTR -40[rbp], rax	# t_comp_inicio, tmp186
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR -104[rbp], 0	# i,
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	jmp	.L25	#
.L30:
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	mov	QWORD PTR -96[rbp], 0	# k,
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	jmp	.L26	#
.L29:
# src/matmul.c:76:             float a_ik = A[i * K + k];
	mov	rax, QWORD PTR -104[rbp]	# tmp187, i
	imul	rax, QWORD PTR -48[rbp]	# tmp187, K
	mov	rdx, rax	# _19, tmp187
# src/matmul.c:76:             float a_ik = A[i * K + k];
	mov	rax, QWORD PTR -96[rbp]	# tmp188, k
	add	rax, rdx	# _20, _19
# src/matmul.c:76:             float a_ik = A[i * K + k];
	lea	rdx, 0[0+rax*4]	# _21,
	mov	rax, QWORD PTR -64[rbp]	# tmp189, A
	add	rax, rdx	# _22, _21
# src/matmul.c:76:             float a_ik = A[i * K + k];
	movss	xmm0, DWORD PTR [rax]	# tmp190, *_22
	movss	DWORD PTR -156[rbp], xmm0	# a_ik, tmp190
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	QWORD PTR -88[rbp], 0	# j,
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	jmp	.L27	#
.L28:
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mov	rdx, QWORD PTR -120[rbp]	# C.9_23, C
	mov	rax, QWORD PTR -128[rbp]	# N.10_24, N
	imul	rax, QWORD PTR -104[rbp]	# N.10_24, i
	mov	rcx, rax	# _25, N.10_24
	mov	rax, QWORD PTR -88[rbp]	# tmp191, j
	add	rax, rcx	# _26, _25
	sal	rax, 2	# _27,
	add	rax, rdx	# _28, C.9_23
	movss	xmm1, DWORD PTR [rax]	# _29, *_28
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mov	rax, QWORD PTR -128[rbp]	# N.11_30, N
	imul	rax, QWORD PTR -96[rbp]	# N.11_30, k
	mov	rdx, rax	# _31, N.11_30
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mov	rax, QWORD PTR -88[rbp]	# tmp192, j
	add	rax, rdx	# _32, _31
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	lea	rdx, 0[0+rax*4]	# _33,
	mov	rax, QWORD PTR -56[rbp]	# tmp193, B
	add	rax, rdx	# _34, _33
	movss	xmm0, DWORD PTR [rax]	# _35, *_34
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mulss	xmm0, DWORD PTR -156[rbp]	# _36, a_ik
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mov	rdx, QWORD PTR -120[rbp]	# C.12_37, C
	mov	rax, QWORD PTR -128[rbp]	# N.13_38, N
	imul	rax, QWORD PTR -104[rbp]	# N.13_38, i
	mov	rcx, rax	# _39, N.13_38
	mov	rax, QWORD PTR -88[rbp]	# tmp194, j
	add	rax, rcx	# _40, _39
	sal	rax, 2	# _41,
	add	rax, rdx	# _42, C.12_37
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	addss	xmm0, xmm1	# _43, _29
	movss	DWORD PTR [rax], xmm0	# *_42, _43
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	QWORD PTR -88[rbp], 1	# j,
.L27:
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	rax, QWORD PTR -128[rbp]	# N.14_44, N
	cmp	QWORD PTR -88[rbp], rax	# j, N.14_44
	jb	.L28	#,
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	add	QWORD PTR -96[rbp], 1	# k,
.L26:
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	mov	rax, QWORD PTR -96[rbp]	# tmp195, k
	cmp	rax, QWORD PTR -48[rbp]	# tmp195, K
	jb	.L29	#,
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	add	QWORD PTR -104[rbp], 1	# i,
.L25:
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	mov	rax, QWORD PTR -152[rbp]	# M.15_45, M
	cmp	QWORD PTR -104[rbp], rax	# i, M.15_45
	jb	.L30	#,
# src/matmul.c:84:     double tempo_comp = obter_tempo_segundos() - t_comp_inicio;
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# _46,
# src/matmul.c:84:     double tempo_comp = obter_tempo_segundos() - t_comp_inicio;
	movq	xmm0, rax	# _46, _46
	subsd	xmm0, QWORD PTR -40[rbp]	# _46, t_comp_inicio
	movsd	QWORD PTR -32[rbp], xmm0	# tempo_comp, tempo_comp_100
# src/matmul.c:87:     t_io_inicio = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp197,
	mov	QWORD PTR -72[rbp], rax	# t_io_inicio, tmp197
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	mov	rax, QWORD PTR -176[rbp]	# tmp198, argv
	add	rax, 24	# _47,
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	mov	rax, QWORD PTR [rax]	# _48, *_47
	lea	rdx, .LC4[rip]	# tmp199,
	mov	rsi, rdx	#, tmp199
	mov	rdi, rax	#, _48
	call	fopen@PLT	#
	mov	QWORD PTR -24[rbp], rax	# f_out, tmp200
# src/matmul.c:89:     if (f_out) {
	cmp	QWORD PTR -24[rbp], 0	# f_out,
	je	.L31	#,
# src/matmul.c:90:         fwrite(&M, sizeof(uint64_t), 1, f_out);
	mov	rdx, QWORD PTR -24[rbp]	# tmp201, f_out
	lea	rax, -152[rbp]	# tmp202,
	mov	rcx, rdx	#, tmp201
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp202
	call	fwrite@PLT	#
# src/matmul.c:91:         fwrite(&N, sizeof(uint64_t), 1, f_out);
	mov	rdx, QWORD PTR -24[rbp]	# tmp203, f_out
	lea	rax, -128[rbp]	# tmp204,
	mov	rcx, rdx	#, tmp203
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp204
	call	fwrite@PLT	#
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	mov	rdx, QWORD PTR -152[rbp]	# M.16_49, M
	mov	rax, QWORD PTR -128[rbp]	# N.17_50, N
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	imul	rdx, rax	# _51, N.17_50
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	mov	rax, QWORD PTR -120[rbp]	# C.18_52, C
	mov	rcx, QWORD PTR -24[rbp]	# tmp205, f_out
	mov	esi, 4	#,
	mov	rdi, rax	#, C.18_52
	call	fwrite@PLT	#
# src/matmul.c:93:         fclose(f_out);
	mov	rax, QWORD PTR -24[rbp]	# tmp206, f_out
	mov	rdi, rax	#, tmp206
	call	fclose@PLT	#
.L31:
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# _53,
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	movq	xmm0, rax	# _53, _53
	subsd	xmm0, QWORD PTR -72[rbp]	# _53, t_io_inicio
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	movsd	xmm1, QWORD PTR -80[rbp]	# tmp208, tempo_io
	addsd	xmm0, xmm1	# tempo_io_111, tmp208
	movsd	QWORD PTR -80[rbp], xmm0	# tempo_io, tempo_io_111
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -152[rbp]	# M.19_54, M
	test	rax, rax	# M.19_54
	js	.L32	#,
	pxor	xmm0, xmm0	# _55
	cvtsi2sd	xmm0, rax	# _55, M.19_54
	jmp	.L33	#
.L32:
	mov	rdx, rax	# tmp210, M.19_54
	shr	rdx	# tmp210
	and	eax, 1	# tmp211,
	or	rdx, rax	# tmp210, tmp211
	pxor	xmm0, xmm0	# tmp209
	cvtsi2sd	xmm0, rdx	# tmp209, tmp210
	addsd	xmm0, xmm0	# _55, tmp209
.L33:
	movapd	xmm1, xmm0	# _55, _55
	addsd	xmm1, xmm0	# _55, _55
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -48[rbp]	# tmp212, K
	test	rax, rax	# tmp212
	js	.L34	#,
	pxor	xmm0, xmm0	# _57
	cvtsi2sd	xmm0, rax	# _57, tmp212
	jmp	.L35	#
.L34:
	mov	rdx, rax	# tmp214, tmp212
	shr	rdx	# tmp214
	and	eax, 1	# tmp215,
	or	rdx, rax	# tmp214, tmp215
	pxor	xmm0, xmm0	# tmp213
	cvtsi2sd	xmm0, rdx	# tmp213, tmp214
	addsd	xmm0, xmm0	# _57, tmp213
.L35:
	mulsd	xmm1, xmm0	# _58, _57
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -128[rbp]	# N.20_59, N
	test	rax, rax	# N.20_59
	js	.L36	#,
	pxor	xmm0, xmm0	# _60
	cvtsi2sd	xmm0, rax	# _60, N.20_59
	jmp	.L37	#
.L36:
	mov	rdx, rax	# tmp217, N.20_59
	shr	rdx	# tmp217
	and	eax, 1	# tmp218,
	or	rdx, rax	# tmp217, tmp218
	pxor	xmm0, xmm0	# tmp216
	cvtsi2sd	xmm0, rdx	# tmp216, tmp217
	addsd	xmm0, xmm0	# _60, tmp216
.L37:
	mulsd	xmm0, xmm1	# _61, _58
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	movsd	xmm2, QWORD PTR -32[rbp]	# tmp219, tempo_comp
	movsd	xmm1, QWORD PTR .LC5[rip]	# tmp220,
	mulsd	xmm1, xmm2	# _62, tmp219
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	divsd	xmm0, xmm1	# gflops_112, _62
	movsd	QWORD PTR -16[rbp], xmm0	# gflops, gflops_112
# src/matmul.c:101:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n", tempo_io, tempo_comp, gflops);
	movsd	xmm1, QWORD PTR -16[rbp]	# tmp222, gflops
	movsd	xmm0, QWORD PTR -32[rbp]	# tmp223, tempo_comp
	mov	rax, QWORD PTR -80[rbp]	# tmp224, tempo_io
	lea	rdx, .LC6[rip]	# tmp225,
	movapd	xmm2, xmm1	#, tmp222
	movapd	xmm1, xmm0	#, tmp223
	movq	xmm0, rax	#, tmp224
	mov	rdi, rdx	#, tmp225
	mov	eax, 3	#,
	call	printf@PLT	#
# src/matmul.c:103:     free(A);
	mov	rax, QWORD PTR -64[rbp]	# tmp226, A
	mov	rdi, rax	#, tmp226
	call	free@PLT	#
# src/matmul.c:104:     free(B);
	mov	rax, QWORD PTR -56[rbp]	# tmp227, B
	mov	rdi, rax	#, tmp227
	call	free@PLT	#
# src/matmul.c:105:     free(C);
	mov	rax, QWORD PTR -120[rbp]	# C.21_63, C
	mov	rdi, rax	#, C.21_63
	call	free@PLT	#
# src/matmul.c:107:     return 0;
	mov	eax, 0	# _68,
.L38:
# src/matmul.c:108: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp229, D.3699
	sub	rdx, QWORD PTR fs:40	# tmp229, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L39	#,
	call	__stack_chk_fail@PLT	#
.L39:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-400107883
	.long	1041313291
	.align 8
.LC5:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
