	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.type	obter_tempo_segundos, @function
obter_tempo_segundos:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
# src/matmul.c:6: static inline double obter_tempo_segundos(void) {
	mov	rax, QWORD PTR fs:40	# tmp92, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.3925, tmp92
	xor	eax, eax	# tmp92
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rax, -32[rbp]	# tmp89,
	mov	rsi, rax	#, tmp89
	mov	edi, 1	#,
	call	clock_gettime@PLT	#
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR -32[rbp]	# _1, ts.tv_sec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm1, xmm1	# _2
	cvtsi2sd	xmm1, rax	# _2, _1
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR -24[rbp]	# _3, ts.tv_nsec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm2, xmm2	# _4
	cvtsi2sd	xmm2, rax	# _4, _3
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp90,
	mulsd	xmm0, xmm2	# _5, _4
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	addsd	xmm0, xmm1	# _8, _2
# src/matmul.c:10: }
	mov	rax, QWORD PTR -8[rbp]	# tmp93, D.3925
	sub	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	obter_tempo_segundos, .-obter_tempo_segundos
	.section	.rodata
.LC1:
	.string	"rb"
.LC3:
	.string	"wb"
	.align 8
.LC5:
	.string	"TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 224	#,
	mov	DWORD PTR -212[rbp], edi	# argc, argc
	mov	QWORD PTR -224[rbp], rsi	# argv, argv
# src/matmul.c:12: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp249, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.3927, tmp249
	xor	eax, eax	# tmp249
# src/matmul.c:13:     if (argc != 4) {
	cmp	DWORD PTR -212[rbp], 4	# argc,
	je	.L5	#,
# src/matmul.c:14:         return 1;
	mov	eax, 1	# _103,
	jmp	.L34	#
.L5:
# src/matmul.c:17:     double t_io_start = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp182,
	mov	QWORD PTR -112[rbp], rax	# t_io_start, tmp182
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	mov	rax, QWORD PTR -224[rbp]	# tmp183, argv
	add	rax, 8	# _1,
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	mov	rax, QWORD PTR [rax]	# _2, *_1
	lea	rdx, .LC1[rip]	# tmp184,
	mov	rsi, rdx	#, tmp184
	mov	rdi, rax	#, _2
	call	fopen@PLT	#
	mov	QWORD PTR -104[rbp], rax	# f_a, tmp185
# src/matmul.c:20:     FILE *f_b = fopen(argv[2], "rb");
	mov	rax, QWORD PTR -224[rbp]	# tmp186, argv
	add	rax, 16	# _3,
# src/matmul.c:20:     FILE *f_b = fopen(argv[2], "rb");
	mov	rax, QWORD PTR [rax]	# _4, *_3
	lea	rdx, .LC1[rip]	# tmp187,
	mov	rsi, rdx	#, tmp187
	mov	rdi, rax	#, _4
	call	fopen@PLT	#
	mov	QWORD PTR -96[rbp], rax	# f_b, tmp188
# src/matmul.c:21:     if (!f_a || !f_b) {
	cmp	QWORD PTR -104[rbp], 0	# f_a,
	je	.L7	#,
# src/matmul.c:21:     if (!f_a || !f_b) {
	cmp	QWORD PTR -96[rbp], 0	# f_b,
	jne	.L8	#,
.L7:
# src/matmul.c:22:         return 1;
	mov	eax, 1	# _103,
	jmp	.L34	#
.L8:
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	mov	rdx, QWORD PTR -104[rbp]	# tmp189, f_a
	lea	rax, -200[rbp]	# tmp190,
	mov	rcx, rdx	#, tmp189
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp190
	call	fread@PLT	#
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	cmp	rax, 1	# _5,
	jne	.L9	#,
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	mov	rdx, QWORD PTR -104[rbp]	# tmp191, f_a
	lea	rax, -192[rbp]	# tmp192,
	mov	rcx, rdx	#, tmp191
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp192
	call	fread@PLT	#
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	cmp	rax, 1	# _6,
	je	.L10	#,
.L9:
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	jmp	.L34	#
.L10:
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	mov	rdx, QWORD PTR -96[rbp]	# tmp193, f_b
	lea	rax, -184[rbp]	# tmp194,
	mov	rcx, rdx	#, tmp193
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp194
	call	fread@PLT	#
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	cmp	rax, 1	# _7,
	jne	.L11	#,
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	mov	rdx, QWORD PTR -96[rbp]	# tmp195, f_b
	lea	rax, -176[rbp]	# tmp196,
	mov	rcx, rdx	#, tmp195
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp196
	call	fread@PLT	#
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	cmp	rax, 1	# _8,
	je	.L12	#,
.L11:
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	jmp	.L34	#
.L12:
# src/matmul.c:30:     if (K != K2) {
	mov	rdx, QWORD PTR -192[rbp]	# K.0_9, K
	mov	rax, QWORD PTR -184[rbp]	# K2.1_10, K2
# src/matmul.c:30:     if (K != K2) {
	cmp	rdx, rax	# K.0_9, K2.1_10
	je	.L13	#,
# src/matmul.c:31:         return 1; 
	mov	eax, 1	# _103,
	jmp	.L34	#
.L13:
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	mov	rdx, QWORD PTR -200[rbp]	# M.2_11, M
	mov	rax, QWORD PTR -192[rbp]	# K.3_12, K
	imul	rax, rdx	# _13, M.2_11
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	lea	rdx, 0[0+rax*4]	# _14,
	lea	rax, -168[rbp]	# tmp197,
	mov	esi, 64	#,
	mov	rdi, rax	#, tmp197
	call	posix_memalign@PLT	#
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	test	eax, eax	# _15
	je	.L14	#,
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	jmp	.L34	#
.L14:
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	mov	rdx, QWORD PTR -192[rbp]	# K.4_16, K
	mov	rax, QWORD PTR -176[rbp]	# N.5_17, N
	imul	rax, rdx	# _18, K.4_16
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	lea	rdx, 0[0+rax*4]	# _19,
	lea	rax, -160[rbp]	# tmp198,
	mov	esi, 64	#,
	mov	rdi, rax	#, tmp198
	call	posix_memalign@PLT	#
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	test	eax, eax	# _20
	je	.L15	#,
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	jmp	.L34	#
.L15:
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	mov	rdx, QWORD PTR -200[rbp]	# M.6_21, M
	mov	rax, QWORD PTR -176[rbp]	# N.7_22, N
	imul	rax, rdx	# _23, M.6_21
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	lea	rdx, 0[0+rax*4]	# _24,
	lea	rax, -152[rbp]	# tmp199,
	mov	esi, 64	#,
	mov	rdi, rax	#, tmp199
	call	posix_memalign@PLT	#
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	test	eax, eax	# _25
	je	.L16	#,
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	jmp	.L34	#
.L16:
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	mov	rdx, QWORD PTR -200[rbp]	# M.8_26, M
	mov	rax, QWORD PTR -192[rbp]	# K.9_27, K
	imul	rdx, rax	# _28, K.9_27
	mov	rax, QWORD PTR -168[rbp]	# A.10_29, A
	mov	rcx, QWORD PTR -104[rbp]	# tmp200, f_a
	mov	esi, 4	#,
	mov	rdi, rax	#, A.10_29
	call	fread@PLT	#
	mov	rdx, rax	# _30,
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	mov	rcx, QWORD PTR -200[rbp]	# M.11_31, M
	mov	rax, QWORD PTR -192[rbp]	# K.12_32, K
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	imul	rax, rcx	# _33, M.11_31
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	cmp	rdx, rax	# _30, _33
	je	.L17	#,
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	jmp	.L34	#
.L17:
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	rdx, QWORD PTR -192[rbp]	# K.13_34, K
	mov	rax, QWORD PTR -176[rbp]	# N.14_35, N
	imul	rdx, rax	# _36, N.14_35
	mov	rax, QWORD PTR -160[rbp]	# B.15_37, B
	mov	rcx, QWORD PTR -96[rbp]	# tmp201, f_b
	mov	esi, 4	#,
	mov	rdi, rax	#, B.15_37
	call	fread@PLT	#
	mov	rdx, rax	# _38,
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	rcx, QWORD PTR -192[rbp]	# K.16_39, K
	mov	rax, QWORD PTR -176[rbp]	# N.17_40, N
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	imul	rax, rcx	# _41, K.16_39
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	cmp	rdx, rax	# _38, _41
	je	.L18	#,
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	jmp	.L34	#
.L18:
# src/matmul.c:43:     fclose(f_a);
	mov	rax, QWORD PTR -104[rbp]	# tmp202, f_a
	mov	rdi, rax	#, tmp202
	call	fclose@PLT	#
# src/matmul.c:44:     fclose(f_b);
	mov	rax, QWORD PTR -96[rbp]	# tmp203, f_b
	mov	rdi, rax	#, tmp203
	call	fclose@PLT	#
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	mov	QWORD PTR -144[rbp], 0	# i,
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	jmp	.L19	#
.L20:
# src/matmul.c:47:         C[i] = 0.0f;
	mov	rax, QWORD PTR -152[rbp]	# C.18_42, C
	mov	rdx, QWORD PTR -144[rbp]	# tmp204, i
	sal	rdx, 2	# _43,
	add	rax, rdx	# _44, _43
# src/matmul.c:47:         C[i] = 0.0f;
	pxor	xmm0, xmm0	# tmp205
	movss	DWORD PTR [rax], xmm0	# *_44, tmp205
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	add	QWORD PTR -144[rbp], 1	# i,
.L19:
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	mov	rdx, QWORD PTR -200[rbp]	# M.19_45, M
	mov	rax, QWORD PTR -176[rbp]	# N.20_46, N
	imul	rax, rdx	# _47, M.19_45
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	cmp	QWORD PTR -144[rbp], rax	# i, _47
	jb	.L20	#,
# src/matmul.c:50:     double t_comp_start = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp206,
	mov	QWORD PTR -88[rbp], rax	# t_comp_start, tmp206
# src/matmul.c:52:     float * restrict ptr_A = __builtin_assume_aligned(A, 64);
	mov	rax, QWORD PTR -168[rbp]	# A.21_48, A
	mov	QWORD PTR -80[rbp], rax	# ptr_A, A.21_48
# src/matmul.c:53:     float * restrict ptr_B = __builtin_assume_aligned(B, 64);
	mov	rax, QWORD PTR -160[rbp]	# B.22_49, B
	mov	QWORD PTR -72[rbp], rax	# ptr_B, B.22_49
# src/matmul.c:54:     float * restrict ptr_C = __builtin_assume_aligned(C, 64);
	mov	rax, QWORD PTR -152[rbp]	# C.23_50, C
	mov	QWORD PTR -64[rbp], rax	# ptr_C, C.23_50
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR -136[rbp], 0	# i,
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	jmp	.L21	#
.L26:
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	mov	QWORD PTR -128[rbp], 0	# k,
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	jmp	.L22	#
.L25:
# src/matmul.c:58:             float a_ik = ptr_A[i * K + k];
	mov	rax, QWORD PTR -192[rbp]	# K.24_51, K
	imul	rax, QWORD PTR -136[rbp]	# K.24_51, i
	mov	rdx, rax	# _52, K.24_51
# src/matmul.c:58:             float a_ik = ptr_A[i * K + k];
	mov	rax, QWORD PTR -128[rbp]	# tmp207, k
	add	rax, rdx	# _53, _52
# src/matmul.c:58:             float a_ik = ptr_A[i * K + k];
	lea	rdx, 0[0+rax*4]	# _54,
	mov	rax, QWORD PTR -80[rbp]	# tmp208, ptr_A
	add	rax, rdx	# _55, _54
# src/matmul.c:58:             float a_ik = ptr_A[i * K + k];
	movss	xmm0, DWORD PTR [rax]	# tmp209, *_55
	movss	DWORD PTR -204[rbp], xmm0	# a_ik, tmp209
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	mov	QWORD PTR -120[rbp], 0	# j,
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	jmp	.L23	#
.L24:
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	mov	rax, QWORD PTR -176[rbp]	# N.25_56, N
	imul	rax, QWORD PTR -136[rbp]	# N.25_56, i
	mov	rdx, rax	# _57, N.25_56
	mov	rax, QWORD PTR -120[rbp]	# tmp210, j
	add	rax, rdx	# _58, _57
	lea	rdx, 0[0+rax*4]	# _59,
	mov	rax, QWORD PTR -64[rbp]	# tmp211, ptr_C
	add	rax, rdx	# _60, _59
	movss	xmm1, DWORD PTR [rax]	# _61, *_60
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	mov	rax, QWORD PTR -176[rbp]	# N.26_62, N
	imul	rax, QWORD PTR -128[rbp]	# N.26_62, k
	mov	rdx, rax	# _63, N.26_62
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	mov	rax, QWORD PTR -120[rbp]	# tmp212, j
	add	rax, rdx	# _64, _63
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	lea	rdx, 0[0+rax*4]	# _65,
	mov	rax, QWORD PTR -72[rbp]	# tmp213, ptr_B
	add	rax, rdx	# _66, _65
	movss	xmm0, DWORD PTR [rax]	# _67, *_66
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	mulss	xmm0, DWORD PTR -204[rbp]	# _68, a_ik
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	mov	rax, QWORD PTR -176[rbp]	# N.27_69, N
	imul	rax, QWORD PTR -136[rbp]	# N.27_69, i
	mov	rdx, rax	# _70, N.27_69
	mov	rax, QWORD PTR -120[rbp]	# tmp214, j
	add	rax, rdx	# _71, _70
	lea	rdx, 0[0+rax*4]	# _72,
	mov	rax, QWORD PTR -64[rbp]	# tmp215, ptr_C
	add	rax, rdx	# _73, _72
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	addss	xmm0, xmm1	# _74, _61
	movss	DWORD PTR [rax], xmm0	# *_73, _74
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	add	QWORD PTR -120[rbp], 1	# j,
.L23:
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	mov	rax, QWORD PTR -176[rbp]	# N.28_75, N
	cmp	QWORD PTR -120[rbp], rax	# j, N.28_75
	jb	.L24	#,
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	add	QWORD PTR -128[rbp], 1	# k,
.L22:
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	mov	rax, QWORD PTR -192[rbp]	# K.29_76, K
	cmp	QWORD PTR -128[rbp], rax	# k, K.29_76
	jb	.L25	#,
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	add	QWORD PTR -136[rbp], 1	# i,
.L21:
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	mov	rax, QWORD PTR -200[rbp]	# M.30_77, M
	cmp	QWORD PTR -136[rbp], rax	# i, M.30_77
	jb	.L26	#,
# src/matmul.c:65:     double t_comp_end = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp216,
	mov	QWORD PTR -56[rbp], rax	# t_comp_end, tmp216
# src/matmul.c:66:     double tempo_comp = t_comp_end - t_comp_start;
	movsd	xmm0, QWORD PTR -56[rbp]	# tmp218, t_comp_end
	subsd	xmm0, QWORD PTR -88[rbp]	# tmp217, t_comp_start
	movsd	QWORD PTR -48[rbp], xmm0	# tempo_comp, tmp217
# src/matmul.c:68:     FILE *f_c = fopen(argv[3], "wb");
	mov	rax, QWORD PTR -224[rbp]	# tmp219, argv
	add	rax, 24	# _78,
# src/matmul.c:68:     FILE *f_c = fopen(argv[3], "wb");
	mov	rax, QWORD PTR [rax]	# _79, *_78
	lea	rdx, .LC3[rip]	# tmp220,
	mov	rsi, rdx	#, tmp220
	mov	rdi, rax	#, _79
	call	fopen@PLT	#
	mov	QWORD PTR -40[rbp], rax	# f_c, tmp221
# src/matmul.c:69:     if (!f_c) return 1;
	cmp	QWORD PTR -40[rbp], 0	# f_c,
	jne	.L27	#,
# src/matmul.c:69:     if (!f_c) return 1;
	mov	eax, 1	# _103,
# src/matmul.c:69:     if (!f_c) return 1;
	jmp	.L34	#
.L27:
# src/matmul.c:71:     fwrite(&M, sizeof(uint64_t), 1, f_c);
	mov	rdx, QWORD PTR -40[rbp]	# tmp222, f_c
	lea	rax, -200[rbp]	# tmp223,
	mov	rcx, rdx	#, tmp222
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp223
	call	fwrite@PLT	#
# src/matmul.c:72:     fwrite(&N, sizeof(uint64_t), 1, f_c);
	mov	rdx, QWORD PTR -40[rbp]	# tmp224, f_c
	lea	rax, -176[rbp]	# tmp225,
	mov	rcx, rdx	#, tmp224
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rax	#, tmp225
	call	fwrite@PLT	#
# src/matmul.c:73:     fwrite(C, sizeof(float), M * N, f_c);
	mov	rdx, QWORD PTR -200[rbp]	# M.31_80, M
	mov	rax, QWORD PTR -176[rbp]	# N.32_81, N
	imul	rdx, rax	# _82, N.32_81
	mov	rax, QWORD PTR -152[rbp]	# C.33_83, C
	mov	rcx, QWORD PTR -40[rbp]	# tmp226, f_c
	mov	esi, 4	#,
	mov	rdi, rax	#, C.33_83
	call	fwrite@PLT	#
# src/matmul.c:74:     fclose(f_c);
	mov	rax, QWORD PTR -40[rbp]	# tmp227, f_c
	mov	rdi, rax	#, tmp227
	call	fclose@PLT	#
# src/matmul.c:76:     double t_io_end = obter_tempo_segundos();
	call	obter_tempo_segundos	#
	movq	rax, xmm0	# tmp228,
	mov	QWORD PTR -32[rbp], rax	# t_io_end, tmp228
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	movsd	xmm0, QWORD PTR -88[rbp]	# tmp229, t_comp_start
	movapd	xmm1, xmm0	# tmp229, tmp229
	subsd	xmm1, QWORD PTR -112[rbp]	# tmp229, t_io_start
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	movsd	xmm0, QWORD PTR -32[rbp]	# tmp230, t_io_end
	subsd	xmm0, QWORD PTR -56[rbp]	# _85, t_comp_end
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	addsd	xmm0, xmm1	# tmp231, _84
	movsd	QWORD PTR -24[rbp], xmm0	# tempo_io, tmp231
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -200[rbp]	# M.34_86, M
	test	rax, rax	# M.34_86
	js	.L28	#,
	pxor	xmm0, xmm0	# _87
	cvtsi2sd	xmm0, rax	# _87, M.34_86
	jmp	.L29	#
.L28:
	mov	rdx, rax	# tmp233, M.34_86
	shr	rdx	# tmp233
	and	eax, 1	# tmp234,
	or	rdx, rax	# tmp233, tmp234
	pxor	xmm0, xmm0	# tmp232
	cvtsi2sd	xmm0, rdx	# tmp232, tmp233
	addsd	xmm0, xmm0	# _87, tmp232
.L29:
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	movapd	xmm1, xmm0	# _87, _87
	addsd	xmm1, xmm0	# _87, _87
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -192[rbp]	# K.35_89, K
	test	rax, rax	# K.35_89
	js	.L30	#,
	pxor	xmm0, xmm0	# _90
	cvtsi2sd	xmm0, rax	# _90, K.35_89
	jmp	.L31	#
.L30:
	mov	rdx, rax	# tmp236, K.35_89
	shr	rdx	# tmp236
	and	eax, 1	# tmp237,
	or	rdx, rax	# tmp236, tmp237
	pxor	xmm0, xmm0	# tmp235
	cvtsi2sd	xmm0, rdx	# tmp235, tmp236
	addsd	xmm0, xmm0	# _90, tmp235
.L31:
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mulsd	xmm1, xmm0	# _91, _90
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	rax, QWORD PTR -176[rbp]	# N.36_92, N
	test	rax, rax	# N.36_92
	js	.L32	#,
	pxor	xmm0, xmm0	# _93
	cvtsi2sd	xmm0, rax	# _93, N.36_92
	jmp	.L33	#
.L32:
	mov	rdx, rax	# tmp239, N.36_92
	shr	rdx	# tmp239
	and	eax, 1	# tmp240,
	or	rdx, rax	# tmp239, tmp240
	pxor	xmm0, xmm0	# tmp238
	cvtsi2sd	xmm0, rdx	# tmp238, tmp239
	addsd	xmm0, xmm0	# _93, tmp238
.L33:
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mulsd	xmm0, xmm1	# _94, _91
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	movsd	xmm2, QWORD PTR -48[rbp]	# tmp241, tempo_comp
	movsd	xmm1, QWORD PTR .LC4[rip]	# tmp242,
	mulsd	xmm1, xmm2	# _95, tmp241
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	divsd	xmm0, xmm1	# tmp243, _95
	movsd	QWORD PTR -16[rbp], xmm0	# gflops, tmp243
# src/matmul.c:81:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n", tempo_io, tempo_comp, gflops);
	movsd	xmm1, QWORD PTR -16[rbp]	# tmp244, gflops
	movsd	xmm0, QWORD PTR -48[rbp]	# tmp245, tempo_comp
	mov	rax, QWORD PTR -24[rbp]	# tmp246, tempo_io
	movapd	xmm2, xmm1	#, tmp244
	movapd	xmm1, xmm0	#, tmp245
	movq	xmm0, rax	#, tmp246
	lea	rax, .LC5[rip]	# tmp247,
	mov	rdi, rax	#, tmp247
	mov	eax, 3	#,
	call	printf@PLT	#
# src/matmul.c:83:     free(A);
	mov	rax, QWORD PTR -168[rbp]	# A.37_96, A
	mov	rdi, rax	#, A.37_96
	call	free@PLT	#
# src/matmul.c:84:     free(B);
	mov	rax, QWORD PTR -160[rbp]	# B.38_97, B
	mov	rdi, rax	#, B.38_97
	call	free@PLT	#
# src/matmul.c:85:     free(C);
	mov	rax, QWORD PTR -152[rbp]	# C.39_98, C
	mov	rdi, rax	#, C.39_98
	call	free@PLT	#
# src/matmul.c:87:     return 0;
	mov	eax, 0	# _103,
.L34:
# src/matmul.c:88: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp250, D.3927
	sub	rdx, QWORD PTR fs:40	# tmp250, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L35	#,
	call	__stack_chk_fail@PLT	#
.L35:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-400107883
	.long	1041313291
	.align 8
.LC4:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
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
