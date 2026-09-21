	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=alderlake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mgfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mmovdir64b -mmovdiri -mno-mwaitx -mno-pconfig -mpku -mno-prefetchwt1 -mprfchw -mptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mserialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mwaitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mhreset -mno-kl -mno-widekl -mavxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=24576 -mtune=alderlake -masm=intel -O3 -ffast-math -funroll-loops -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rb"
.LC3:
	.string	"wb"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	endbr64	
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 184	#,
	.cfi_def_cfa_offset 240
# src/matmul.c:12: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp315, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 168[rsp], rax	# D.4942, tmp315
	xor	eax, eax	# tmp315
# src/matmul.c:13:     if (argc != 4) {
	cmp	edi, 4	# tmp283,
	je	.L2	#,
.L4:
# src/matmul.c:14:         return 1;
	mov	r8d, 1	# <retval>,
.L1:
# src/matmul.c:88: }
	mov	rax, QWORD PTR 168[rsp]	# tmp316, D.4942
	sub	rax, QWORD PTR fs:40	# tmp316, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L25	#,
	add	rsp, 184	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	eax, r8d	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
.L2:
	.cfi_restore_state
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	r13, 144[rsp]	# tmp273,
	mov	rbx, rsi	# argv, tmp284
	mov	edi, 1	#,
	mov	rsi, r13	#, tmp273
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	lea	r12, .LC0[rip]	# tmp193,
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR 152[rsp]	# _146, MEM[(struct timespec *)_136].tv_nsec
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	mov	rsi, r12	#, tmp193
	mov	rdi, QWORD PTR 8[rbx]	# MEM[(char * *)argv_81(D) + 8B], MEM[(char * *)argv_81(D) + 8B]
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r15, QWORD PTR 144[rsp]	# _144, MEM[(struct timespec *)_136].tv_sec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	QWORD PTR 8[rsp], rax	# %sfp, _146
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	call	fopen@PLT	#
# src/matmul.c:20:     FILE *f_b = fopen(argv[2], "rb");
	mov	rdi, QWORD PTR 16[rbx]	# MEM[(char * *)argv_81(D) + 16B], MEM[(char * *)argv_81(D) + 16B]
	mov	rsi, r12	#, tmp193
# src/matmul.c:19:     FILE *f_a = fopen(argv[1], "rb");
	mov	rbp, rax	# f_a, tmp285
# src/matmul.c:20:     FILE *f_b = fopen(argv[2], "rb");
	call	fopen@PLT	#
# src/matmul.c:21:     if (!f_a || !f_b) {
	test	rbp, rbp	# f_a
# src/matmul.c:20:     FILE *f_b = fopen(argv[2], "rb");
	mov	r12, rax	# f_b, tmp286
# src/matmul.c:21:     if (!f_a || !f_b) {
	je	.L4	#,
	test	rax, rax	# f_b
	je	.L4	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	lea	r14, 88[rsp]	# tmp270,
	mov	rcx, rbp	#, f_a
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, r14	#, tmp270
	call	fread@PLT	#
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	sub	rax, 1	# tmp287,
	jne	.L4	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	lea	rdi, 96[rsp]	# tmp203,
	mov	rcx, rbp	#, f_a
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fread@PLT	#
# src/matmul.c:27:     if (fread(&M, sizeof(uint64_t), 1, f_a) != 1 || fread(&K, sizeof(uint64_t), 1, f_a) != 1) return 1;
	sub	rax, 1	# tmp288,
	jne	.L4	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	lea	rdi, 104[rsp]	# tmp204,
	mov	rcx, r12	#, f_b
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fread@PLT	#
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	sub	rax, 1	# tmp289,
	jne	.L4	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	lea	rdi, 112[rsp]	# tmp271,
	mov	rcx, r12	#, f_b
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	QWORD PTR 16[rsp], rdi	# %sfp, tmp271
	call	fread@PLT	#
# src/matmul.c:28:     if (fread(&K2, sizeof(uint64_t), 1, f_b) != 1 || fread(&N, sizeof(uint64_t), 1, f_b) != 1) return 1;
	sub	rax, 1	# tmp290,
	jne	.L4	#,
# src/matmul.c:30:     if (K != K2) {
	mov	rcx, QWORD PTR 96[rsp]	# K.0_6, K
# src/matmul.c:30:     if (K != K2) {
	cmp	rcx, QWORD PTR 104[rsp]	# K.0_6, K2
	jne	.L4	#,
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	mov	rdx, QWORD PTR 88[rsp]	# M.2_8, M
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	lea	rdi, 120[rsp]	# tmp207,
	mov	esi, 64	#,
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	mov	QWORD PTR 24[rsp], rcx	# %sfp, K.0_6
	mov	QWORD PTR 32[rsp], rdx	# %sfp, M.2_8
	imul	rdx, rcx	# _9, K.0_6
# src/matmul.c:36:     if (posix_memalign((void**)&A, 64, M * K * sizeof(float)) != 0) return 1;
	mov	QWORD PTR 48[rsp], rdx	# %sfp, _9
	lea	rdx, 0[0+rdx*4]	# tmp206,
	call	posix_memalign@PLT	#
	test	eax, eax	# tmp291
	jne	.L4	#,
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	mov	r9, QWORD PTR 112[rsp]	# N.5_12, N
	mov	rdx, QWORD PTR 24[rsp]	# K.0_6, %sfp
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	lea	rdi, 128[rsp]	# tmp210,
	mov	esi, 64	#,
	mov	r8, QWORD PTR 120[rsp]	# _87, D.4801
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	imul	rdx, r9	# K.0_6, N.5_12
	mov	QWORD PTR 56[rsp], r9	# %sfp, N.5_12
	mov	QWORD PTR 40[rsp], r8	# %sfp, _87
# src/matmul.c:37:     if (posix_memalign((void**)&B, 64, K * N * sizeof(float)) != 0) return 1;
	sal	rdx, 2	# tmp209,
	call	posix_memalign@PLT	#
	test	eax, eax	# tmp292
	jne	.L4	#,
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	mov	rdx, QWORD PTR 32[rsp]	# M.2_8, %sfp
	mov	r11, QWORD PTR 56[rsp]	# N.5_12, %sfp
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	lea	rdi, 136[rsp]	# tmp213,
	mov	esi, 64	#,
	mov	r10, QWORD PTR 128[rsp]	# _90, D.4805
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	imul	rdx, r11	# M.2_8, N.5_12
	mov	QWORD PTR 24[rsp], r10	# %sfp, _90
# src/matmul.c:38:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) return 1;
	sal	rdx, 2	# tmp212,
	call	posix_memalign@PLT	#
	test	eax, eax	# <retval>
	mov	DWORD PTR 56[rsp], eax	# %sfp, <retval>
	jne	.L4	#,
	mov	rdi, QWORD PTR 136[rsp]	# _93, D.4809
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	mov	rdx, QWORD PTR 48[rsp]	#, %sfp
	mov	rcx, rbp	#, f_a
	mov	esi, 4	#,
	mov	QWORD PTR 32[rsp], rdi	# %sfp, _93
	mov	rdi, QWORD PTR 40[rsp]	#, %sfp
	call	fread@PLT	#
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	mov	r8, QWORD PTR 96[rsp]	# K.12_21, K
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	mov	rcx, QWORD PTR 88[rsp]	# tmp214, M
	imul	rcx, r8	# tmp214, K.12_21
# src/matmul.c:40:     if (fread(A, sizeof(float), M * K, f_a) != M * K) return 1;
	cmp	rcx, rax	# tmp214, tmp294
	jne	.L4	#,
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	imul	r8, QWORD PTR 112[rsp]	# K.12_21, N
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	mov	rdi, QWORD PTR 24[rsp]	#, %sfp
	mov	rcx, r12	#, f_b
	mov	esi, 4	#,
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	rdx, r8	# tmp215, K.12_21
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	call	fread@PLT	#
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	r10, QWORD PTR 96[rsp]	# K, K
	imul	r10, QWORD PTR 112[rsp]	# tmp216, N
# src/matmul.c:41:     if (fread(B, sizeof(float), K * N, f_b) != K * N) return 1;
	mov	edx, DWORD PTR 56[rsp]	# <retval>, %sfp
	cmp	r10, rax	# tmp216, tmp295
	jne	.L4	#,
# src/matmul.c:43:     fclose(f_a);
	mov	rdi, rbp	#, f_a
	mov	DWORD PTR 48[rsp], edx	# %sfp, <retval>
	call	fclose@PLT	#
# src/matmul.c:44:     fclose(f_b);
	mov	rdi, r12	#, f_b
	call	fclose@PLT	#
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	mov	r10, QWORD PTR 88[rsp]	# M, M
	mov	r8d, DWORD PTR 48[rsp]	# <retval>, %sfp
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	xor	r11d, r11d	# i
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	imul	r10, QWORD PTR 112[rsp]	# _32, N
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	jmp	.L5	#
.L6:
# src/matmul.c:47:         C[i] = 0.0f;
	mov	rax, QWORD PTR 32[rsp]	# _93, %sfp
	mov	DWORD PTR [rax+r11*4], 0x00000000	# MEM[(float *)_94 + i_67 * 4],
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	add	r11, 1	# i,
.L5:
# src/matmul.c:46:     for (uint64_t i = 0; i < M * N; i++) {
	cmp	r10, r11	# _32, i
	jne	.L6	#,
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, r13	#, tmp273
	mov	edi, 1	#,
	mov	DWORD PTR 64[rsp], r8d	# %sfp, <retval>
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	xor	r12d, r12d	# i
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm3, xmm3, xmm3	# tmp297
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	mov	rbp, QWORD PTR 88[rsp]	# M.30_51, M
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	xor	edx, edx	# ivtmp.71
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	mov	rcx, QWORD PTR 112[rsp]	# N.28_49, N
	mov	r9d, DWORD PTR 64[rsp]	# <retval>, %sfp
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	xor	esi, esi	# ivtmp.69
	mov	rdi, r15	# _144, _144
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm1, xmm3, QWORD PTR 152[rsp]	# tmp298, tmp297, MEM[(struct timespec *)_136].tv_nsec
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR 56[rsp], rbp	# %sfp, M.30_51
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	mov	rbp, QWORD PTR 96[rsp]	# K.29_50, K
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm0, xmm3, QWORD PTR 144[rsp]	# tmp299, tmp297, MEM[(struct timespec *)_136].tv_sec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vfmadd132sd	xmm1, xmm0, QWORD PTR .LC2[rip]	# tmp221, tmp222,
	vmovsd	QWORD PTR 48[rsp], xmm1	# %sfp, tmp221
.L7:
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	cmp	QWORD PTR 56[rsp], r12	# %sfp, i
	je	.L11	#,
	mov	r10, QWORD PTR 40[rsp]	# _87, %sfp
	mov	r11, QWORD PTR 32[rsp]	# _93, %sfp
	mov	QWORD PTR 64[rsp], r12	# %sfp, i
	mov	QWORD PTR 72[rsp], rdx	# %sfp, ivtmp.71
	lea	r15, [r10+rsi*4]	# _131,
	lea	r8, [r11+rdx*4]	# _189,
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	xor	r10d, r10d	# k
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	xor	r11d, r11d	# ivtmp.63
.L12:
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	cmp	rbp, r10	# K.29_50, k
	je	.L26	#,
	mov	rax, QWORD PTR 24[rsp]	# _90, %sfp
# src/matmul.c:58:             float a_ik = ptr_A[i * K + k];
	vmovss	xmm5, DWORD PTR [r15+r10*4]	# a_ik, MEM[(float *)_131 + k_69 * 4]
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	mov	rdx, r8	# ivtmp.53, _189
	lea	r12, [rax+r11*4]	# _138,
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	xor	eax, eax	# j
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	jmp	.L8	#
.L9:
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	vmovss	xmm8, DWORD PTR [r12+rax*4]	# _48, MEM[(float *)_138 + j_70 * 4]
	vfmadd213ss	xmm8, xmm5, DWORD PTR [rdx]	# _48, a_ik, MEM[(float *)_16]
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	add	rax, 1	# j,
	add	rdx, 4	# ivtmp.53,
# src/matmul.c:60:                 ptr_C[i * N + j] += a_ik * ptr_B[k * N + j];
	vmovss	DWORD PTR -4[rdx], xmm8	# MEM[(float *)_16], _48
.L8:
# src/matmul.c:59:             for (uint64_t j = 0; j < N; j++) {
	cmp	rcx, rax	# N.28_49, j
	jne	.L9	#,
# src/matmul.c:57:         for (uint64_t k = 0; k < K; k++) {
	add	r10, 1	# k,
	add	r11, rcx	# ivtmp.63, N.28_49
	jmp	.L12	#
.L26:
# src/matmul.c:56:     for (uint64_t i = 0; i < M; i++) {
	mov	r12, QWORD PTR 64[rsp]	# i, %sfp
	mov	rdx, QWORD PTR 72[rsp]	# ivtmp.71, %sfp
	add	rsi, rbp	# ivtmp.69, K.29_50
	add	r12, 1	# i,
	add	rdx, rcx	# ivtmp.71, N.28_49
	jmp	.L7	#
.L25:
# src/matmul.c:88: }
	call	__stack_chk_fail@PLT	#
.L11:
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, r13	#, tmp273
	mov	r15, rdi	# _144, _144
	mov	edi, 1	#,
	mov	DWORD PTR 72[rsp], r9d	# %sfp, <retval>
	call	clock_gettime@PLT	#
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm2, xmm2, xmm2	# tmp297
# src/matmul.c:68:     FILE *f_c = fopen(argv[3], "wb");
	mov	rdi, QWORD PTR 24[rbx]	# MEM[(char * *)argv_81(D) + 24B], MEM[(char * *)argv_81(D) + 24B]
	lea	rsi, .LC3[rip]	# tmp232,
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm6, xmm2, QWORD PTR 152[rsp]	# tmp300, tmp297, MEM[(struct timespec *)_136].tv_nsec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm4, xmm2, QWORD PTR 144[rsp]	# tmp301, tmp297, MEM[(struct timespec *)_136].tv_sec
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vfmadd132sd	xmm6, xmm4, QWORD PTR .LC2[rip]	# tmp228, tmp229,
# src/matmul.c:66:     double tempo_comp = t_comp_end - t_comp_start;
	vsubsd	xmm5, xmm6, QWORD PTR 48[rsp]	# tempo_comp, _161, %sfp
	vmovsd	QWORD PTR 56[rsp], xmm5	# %sfp, tempo_comp
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovsd	QWORD PTR 64[rsp], xmm6	# %sfp, _161
# src/matmul.c:68:     FILE *f_c = fopen(argv[3], "wb");
	call	fopen@PLT	#
# src/matmul.c:69:     if (!f_c) return 1;
	test	rax, rax	# tmp233
# src/matmul.c:68:     FILE *f_c = fopen(argv[3], "wb");
	mov	rbx, rax	# tmp233, tmp296
# src/matmul.c:69:     if (!f_c) return 1;
	je	.L4	#,
# src/matmul.c:71:     fwrite(&M, sizeof(uint64_t), 1, f_c);
	mov	rdi, r14	#, tmp270
	mov	rcx, rax	#, tmp233
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fwrite@PLT	#
# src/matmul.c:72:     fwrite(&N, sizeof(uint64_t), 1, f_c);
	mov	rdi, QWORD PTR 16[rsp]	#, %sfp
	mov	rcx, rbx	#, tmp233
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fwrite@PLT	#
# src/matmul.c:73:     fwrite(C, sizeof(float), M * N, f_c);
	mov	rdx, QWORD PTR 88[rsp]	# M, M
	imul	rdx, QWORD PTR 112[rsp]	# tmp236, N
	mov	rcx, rbx	#, tmp233
	mov	rdi, QWORD PTR 32[rsp]	#, %sfp
	mov	esi, 4	#,
	call	fwrite@PLT	#
# src/matmul.c:74:     fclose(f_c);
	mov	rdi, rbx	#, tmp233
	call	fclose@PLT	#
# src/matmul.c:8:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, r13	#, tmp273
	mov	edi, 1	#,
	call	clock_gettime@PLT	#
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	r13, QWORD PTR 88[rsp]	# M, M
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm7, xmm7, xmm7	# tmp297
	vmovsd	xmm11, QWORD PTR .LC2[rip]	# tmp390,
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm8, xmm7, QWORD PTR 152[rsp]	# tmp303, tmp297, MEM[(struct timespec *)_136].tv_nsec
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	r14d, DWORD PTR 72[rsp]	# <retval>, %sfp
	test	r13, r13	# M
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm9, xmm7, r15	# tmp304, tmp297, _144
	vfmsub132sd	xmm8, xmm9, QWORD PTR .LC2[rip]	# _28, tmp240,
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	vcvtsi2sd	xmm13, xmm7, r13	# tmp306, tmp297, M
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm10, xmm7, QWORD PTR 8[rsp]	# tmp305, tmp297, %sfp
	vfnmadd213sd	xmm10, xmm11, QWORD PTR 48[rsp]	# _29, tmp390, %sfp
# src/matmul.c:9:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm5, xmm7, QWORD PTR 144[rsp]	# tmp302, tmp297, MEM[(struct timespec *)_136].tv_sec
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	jns	.L14	#,
	mov	r12, r13	# tmp247, M
	and	r13d, 1	# tmp248,
	shr	r12	# tmp247
	or	r13, r12	# tmp280, tmp247
	vcvtsi2sd	xmm12, xmm7, r13	# tmp307, tmp297, tmp280
	vaddsd	xmm13, xmm12, xmm12	# tmp244, tmp246, tmp246
.L14:
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	r11, QWORD PTR 96[rsp]	# K, K
	test	r11, r11	# K
	vcvtsi2sd	xmm15, xmm7, r11	# tmp308, tmp297, K
	jns	.L16	#,
	mov	rax, r11	# tmp252, K
	and	r11d, 1	# tmp253,
	shr	rax	# tmp252
	or	r11, rax	# tmp281, tmp252
	vcvtsi2sd	xmm14, xmm7, r11	# tmp309, tmp297, tmp281
	vaddsd	xmm15, xmm14, xmm14	# tmp249, tmp251, tmp251
.L16:
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	mov	rdi, QWORD PTR 112[rsp]	# N, N
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	vmulsd	xmm3, xmm13, xmm15	# tmp254, tmp244, tmp249
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	test	rdi, rdi	# N
	vcvtsi2sd	xmm0, xmm7, rdi	# tmp310, tmp297, N
	jns	.L18	#,
	mov	rsi, rdi	# tmp258, N
	and	edi, 1	# tmp259,
	shr	rsi	# tmp258
	or	rdi, rsi	# tmp282, tmp258
	vcvtsi2sd	xmm1, xmm7, rdi	# tmp311, tmp297, tmp282
	vaddsd	xmm0, xmm1, xmm1	# tmp255, tmp257, tmp257
.L18:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	vmovsd	xmm1, QWORD PTR 56[rsp]	# tempo_comp, %sfp
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	vaddsd	xmm6, xmm8, xmm10	# tmp264, _28, _29
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	vmulsd	xmm2, xmm0, QWORD PTR .LC4[rip]	# tmp260, tmp255,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC5[rip]	# tmp267,
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	vsubsd	xmm7, xmm5, QWORD PTR 64[rsp]	# tmp265, _163, %sfp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 2	#,
	mov	eax, 3	#,
	mov	DWORD PTR 8[rsp], r14d	# %sfp, <retval>
# src/matmul.c:77:     double tempo_io = (t_comp_start - t_io_start) + (t_io_end - t_comp_end);
	vaddsd	xmm0, xmm6, xmm7	# tempo_io, tmp264, tmp265
# src/matmul.c:79:     double gflops = (2.0 * (double)M * (double)K * (double)N) / (tempo_comp * 1e9);
	vmulsd	xmm4, xmm3, xmm2	# tmp262, tmp254, tmp260
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	vdivsd	xmm2, xmm4, xmm1	#, tmp262, tempo_comp
	call	__printf_chk@PLT	#
# src/matmul.c:83:     free(A);
	mov	rdi, QWORD PTR 40[rsp]	#, %sfp
	call	free@PLT	#
# src/matmul.c:84:     free(B);
	mov	rdi, QWORD PTR 24[rsp]	#, %sfp
	call	free@PLT	#
# src/matmul.c:85:     free(C);
	mov	rdi, QWORD PTR 32[rsp]	#, %sfp
	call	free@PLT	#
	mov	r8d, DWORD PTR 8[rsp]	# <retval>, %sfp
# src/matmul.c:87:     return 0;
	jmp	.L1	#
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-400107883
	.long	1041313291
	.align 8
.LC4:
	.long	-400107883
	.long	1042361867
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
