	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver1 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mno-clwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver1 -masm=intel -O3 -ffast-math -funroll-loops -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rb"
	.text
	.p2align 4
	.globl	carregar_matriz
	.type	carregar_matriz, @function
carregar_matriz:
.LFB29:
	.cfi_startproc
	endbr64	
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	rbp, rsi	# linhas, linhas
# src/matmul.c:17:     FILE *f = fopen(caminho, "rb");
	lea	rsi, .LC0[rip]	#,
# src/matmul.c:16: float* carregar_matriz(const char *caminho, uint64_t *linhas, uint64_t *colunas) {
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 80
# src/matmul.c:16: float* carregar_matriz(const char *caminho, uint64_t *linhas, uint64_t *colunas) {
	mov	r12, QWORD PTR fs:40	# colunas, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 24[rsp], r12	# D.4554, colunas
	mov	r12, rdx	# colunas, colunas
# src/matmul.c:17:     FILE *f = fopen(caminho, "rb");
	call	fopen@PLT	#
# src/matmul.c:18:     if (!f) return NULL;
	test	rax, rax	# tmp128
	je	.L2	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:331:     return __fread_alias (__ptr, __size, __n, __stream);
	mov	rcx, rax	#, tmp128
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, rbp	#, linhas
	mov	rbx, rax	# tmp128,
	call	fread@PLT	#
# src/matmul.c:20:     if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
	cmp	rax, 1	# _33,
	jne	.L5	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:331:     return __fread_alias (__ptr, __size, __n, __stream);
	mov	rcx, rbx	#, tmp128
	mov	edx, 1	#,
	mov	esi, 8	#,
	mov	rdi, r12	#, colunas
	call	fread@PLT	#
# src/matmul.c:20:     if (fread(linhas, sizeof(uint64_t), 1, f) != 1 || 
	cmp	rax, 1	# _43,
	jne	.L5	#,
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	mov	r8, QWORD PTR 0[rbp]	# *linhas_17(D), *linhas_17(D)
	imul	r8, QWORD PTR [r12]	# _3, *colunas_18(D)
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	lea	rdi, 16[rsp]	# tmp120,
	mov	esi, 64	#,
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	lea	rdx, 0[0+r8*4]	# _4,
	mov	QWORD PTR 8[rsp], r8	# %sfp, _3
# src/matmul.c:27:     if (posix_memalign((void**)&matriz, 64, (*linhas) * (*colunas) * sizeof(float)) != 0) {
	call	posix_memalign@PLT	#
	test	eax, eax	# _5
	jne	.L5	#,
	mov	r13, QWORD PTR 16[rsp]	# <retval>, D.4452
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:331:     return __fread_alias (__ptr, __size, __n, __stream);
	mov	rdx, QWORD PTR 8[rsp]	#, %sfp
	mov	rcx, rbx	#, tmp128
	mov	esi, 4	#,
	mov	rdi, r13	#, <retval>
	call	fread@PLT	#
	mov	rdx, rax	# _53,
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	mov	rax, QWORD PTR 0[rbp]	# *linhas_17(D), *linhas_17(D)
	imul	rax, QWORD PTR [r12]	# _9, *colunas_18(D)
# src/matmul.c:31:     if (fread(matriz, sizeof(float), (*linhas) * (*colunas), f) != (*linhas) * (*colunas)) {
	cmp	rax, rdx	# _9, _53
	jne	.L14	#,
# src/matmul.c:35:     fclose(f);
	mov	rdi, rbx	#, tmp128
	call	fclose@PLT	#
.L1:
# src/matmul.c:37: }
	mov	rax, QWORD PTR 24[rsp]	# tmp133, D.4554
	sub	rax, QWORD PTR fs:40	# tmp133, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L15	#,
	add	rsp, 40	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	mov	rax, r13	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L5:
	.cfi_restore_state
# src/matmul.c:22:         fclose(f); return NULL;
	mov	rdi, rbx	#, tmp128
	call	fclose@PLT	#
.L2:
# src/matmul.c:18:     if (!f) return NULL;
	xor	r13d, r13d	# <retval>
	jmp	.L1	#
	.p2align 4
	.p2align 3
.L14:
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	mov	rdi, r13	#, <retval>
	call	free@PLT	#
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	mov	rdi, rbx	#, tmp128
	call	fclose@PLT	#
# src/matmul.c:32:         free(matriz); fclose(f); return NULL;
	jmp	.L2	#
.L15:
# src/matmul.c:37: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE29:
	.size	carregar_matriz, .-carregar_matriz
	.section	.rodata.str1.1
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
.LFB30:
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
	sub	rsp, 248	#,
	.cfi_def_cfa_offset 304
# src/matmul.c:39: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp229, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 232[rsp], rax	# D.4645, tmp229
	xor	eax, eax	# tmp229
# src/matmul.c:41:     if (argc != 4) return 1;
	cmp	edi, 4	# argc,
	je	.L158	#,
.L18:
# src/matmul.c:41:     if (argc != 4) return 1;
	mov	r12d, 1	# <retval>,
.L16:
# src/matmul.c:108: }
	mov	rax, QWORD PTR 232[rsp]	# tmp475, D.4645
	sub	rax, QWORD PTR fs:40	# tmp475, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L159	#,
	add	rsp, 248	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	eax, r12d	#, <retval>
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
.L158:
	.cfi_restore_state
	mov	rbp, rsi	# argv, argv
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	edi, 1	#,
	lea	rsi, 208[rsp]	# tmp328,
	mov	QWORD PTR 64[rsp], rsi	# %sfp, tmp328
	call	clock_gettime@PLT	#
# src/matmul.c:49:     float *A = carregar_matriz(argv[1], &M, &K_A);
	mov	rdi, QWORD PTR 8[rbp]	# MEM[(char * *)argv_61(D) + 8B], MEM[(char * *)argv_61(D) + 8B]
	lea	rsi, 168[rsp]	# tmp324,
	lea	rdx, 176[rsp]	# tmp231,
	mov	QWORD PTR 80[rsp], rsi	# %sfp, tmp324
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r13, QWORD PTR 208[rsp]	# _98, MEM[(struct timespec *)_224].tv_sec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rbx, QWORD PTR 216[rsp]	# _100, MEM[(struct timespec *)_224].tv_nsec
# src/matmul.c:49:     float *A = carregar_matriz(argv[1], &M, &K_A);
	call	carregar_matriz	#
# src/matmul.c:50:     float *B = carregar_matriz(argv[2], &K_B, &N);
	mov	rdi, QWORD PTR 16[rbp]	# MEM[(char * *)argv_61(D) + 16B], MEM[(char * *)argv_61(D) + 16B]
	lea	rdx, 192[rsp]	# tmp326,
	lea	rsi, 184[rsp]	# tmp235,
# src/matmul.c:49:     float *A = carregar_matriz(argv[1], &M, &K_A);
	mov	r15, rax	# A,
	mov	QWORD PTR 32[rsp], rax	# %sfp, A
# src/matmul.c:50:     float *B = carregar_matriz(argv[2], &K_B, &N);
	mov	QWORD PTR 88[rsp], rdx	# %sfp, tmp326
	call	carregar_matriz	#
	mov	r14, rax	# B,
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	test	r15, r15	# A
	je	.L22	#,
	test	rax, rax	# B
	je	.L19	#,
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	mov	rax, QWORD PTR 176[rsp]	# K_A.2_6, K_A
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	cmp	rax, QWORD PTR 184[rsp]	# K_A.2_6, K_B
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	mov	QWORD PTR 24[rsp], rax	# %sfp, K_A.2_6
# src/matmul.c:52:     if (!A || !B || K_A != K_B) {
	je	.L160	#,
.L20:
# src/matmul.c:53:         if (A) free(A);
	mov	rdi, QWORD PTR 32[rsp]	#, %sfp
	call	free@PLT	#
.L22:
# src/matmul.c:54:         if (B) free(B);
	test	r14, r14	# B
	je	.L18	#,
# src/matmul.c:54:         if (B) free(B);
	mov	rdi, r14	#, B
	call	free@PLT	#
	jmp	.L18	#
.L160:
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	mov	r15, QWORD PTR 168[rsp]	# M, M
	imul	r15, QWORD PTR 192[rsp]	# _10, N
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	lea	rdi, 200[rsp]	# tmp243,
	mov	esi, 64	#,
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	lea	rdx, 0[0+r15*4]	# _11,
# src/matmul.c:60:     if (posix_memalign((void**)&C, 64, M * N * sizeof(float)) != 0) {
	call	posix_memalign@PLT	#
	mov	r12d, eax	# <retval>, <retval>
	test	eax, eax	# <retval>
	jne	.L25	#,
	vxorps	xmm3, xmm3, xmm3	# tmp453
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm0, xmm3, r13	# tmp454, tmp453, _98
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm1, xmm3, rbx	# tmp455, tmp453, _100
	mov	r13, QWORD PTR 200[rsp]	# _67, D.4489
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	xor	ebx, ebx	# i
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovlpd	QWORD PTR 96[rsp], xmm0	# %sfp, tmp454
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovlpd	QWORD PTR 104[rsp], xmm1	# %sfp, tmp455
	jmp	.L26	#
	.p2align 5
.L27:
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	mov	DWORD PTR 0[r13+rbx*4], 0x00000000	# MEM[(float *)_68 + i_46 * 4],
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	inc	rbx	# i
.L26:
# src/matmul.c:65:     for (uint64_t i = 0; i < M * N; i++) C[i] = 0.0f;
	cmp	r15, rbx	# _10, i
	jne	.L27	#,
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rbx, QWORD PTR 64[rsp]	# tmp328, %sfp
	mov	edi, 1	#,
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	xor	r15d, r15d	# ivtmp.95
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, rbx	#, tmp328
	call	clock_gettime@PLT	#
	mov	rsi, rbx	#, tmp328
	mov	edi, 1	#,
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm2, xmm2, xmm2	# tmp453
	vcvtsi2sd	xmm4, xmm2, QWORD PTR 208[rsp]	# tmp456, tmp453, MEM[(struct timespec *)_224].tv_sec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm5, xmm2, QWORD PTR 216[rsp]	# tmp457, tmp453, MEM[(struct timespec *)_224].tv_nsec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovlpd	QWORD PTR 128[rsp], xmm4	# %sfp, tmp456
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovlpd	QWORD PTR 136[rsp], xmm5	# %sfp, tmp457
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm6, xmm6, xmm6	# tmp453
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm8, xmm6, QWORD PTR 216[rsp]	# tmp459, tmp453, MEM[(struct timespec *)_224].tv_nsec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmulsd	xmm9, xmm8, QWORD PTR .LC2[rip]	# _108, _107,
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	rdi, QWORD PTR 192[rsp]	# N.14_149, N
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	mov	rdx, QWORD PTR 168[rsp]	# M.15_33, M
	mov	r8, -4	# tmp344,
	mov	QWORD PTR 152[rsp], rbp	# %sfp, argv
	sub	r8, r14	# tmp344, B
	mov	rax, r13	# ivtmp.94, _67
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	xor	r10d, r10d	# i
	mov	QWORD PTR [rsp], r13	# %sfp, _67
	mov	QWORD PTR 72[rsp], r8	# %sfp, tmp344
	mov	DWORD PTR 148[rsp], r12d	# %sfp, <retval>
	xor	ebp, ebp	# ivtmp.100
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm7, xmm6, QWORD PTR 208[rsp]	# tmp458, tmp453, MEM[(struct timespec *)_224].tv_sec
	vmovlpd	QWORD PTR 112[rsp], xmm7	# %sfp, tmp458
	mov	r11, rdi	# bnd.35_197, N.14_149
	lea	rcx, -1[rdi]	# _194,
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR 56[rsp], rdx	# %sfp, M.15_33
	lea	rbx, 0[0+rdi*4]	# _190,
	shr	r11, 2	# bnd.35_197,
	mov	QWORD PTR 16[rsp], rcx	# %sfp, _194
	sal	r11, 4	# _23,
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovsd	QWORD PTR 120[rsp], xmm9	# %sfp, _108
.L28:
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	cmp	QWORD PTR 56[rsp], r10	# %sfp, i
	je	.L40	#,
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	cmp	QWORD PTR 24[rsp], 0	# %sfp,
	je	.L161	#,
	test	rdi, rdi	# N.14_149
	je	.L162	#,
	mov	rcx, QWORD PTR 32[rsp]	# A, %sfp
	mov	r9, QWORD PTR 72[rsp]	# _261, %sfp
	lea	r8, [rbx+rax]	# ivtmp.94,
	mov	rdx, r14	# ivtmp.84, B
	mov	QWORD PTR 8[rsp], r8	# %sfp, ivtmp.94
	mov	QWORD PTR 40[rsp], r10	# %sfp, i
	xor	r8d, r8d	# ivtmp.85
	lea	rsi, [rcx+rbp*4]	# ivtmp.83,
	add	rbp, QWORD PTR 24[rsp]	# ivtmp.100, %sfp
	add	r9, rax	# ivtmp.86, ivtmp.94
	lea	r13, [rcx+rbp*4]	# _275,
	mov	QWORD PTR 48[rsp], rbp	# %sfp, ivtmp.100
.L39:
# src/matmul.c:76:             float a_ik = A[i * K + k];
	vmovss	xmm1, DWORD PTR [rsi]	# a_ik, MEM[(float *)_193]
	cmp	rdi, 1	# N.14_149,
	je	.L30	#,
	cmp	r9, 8	# ivtmp.86,
	jbe	.L30	#,
.L163:
	cmp	QWORD PTR 16[rsp], 2	# %sfp,
	jbe	.L50	#,
	lea	r12, -16[r11]	# tmp363,
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	xor	ebp, ebp	# ivtmp.75
	vbroadcastss	xmm9, xmm1	# _257, a_ik
	shr	r12, 4	# tmp361,
	inc	r12	# tmp364
	and	r12d, 7	# tmp365,
	je	.L32	#,
	cmp	r12, 1	# tmp365,
	je	.L112	#,
	cmp	r12, 2	# tmp365,
	je	.L113	#,
	cmp	r12, 3	# tmp365,
	je	.L114	#,
	cmp	r12, 4	# tmp365,
	je	.L115	#,
	cmp	r12, 5	# tmp365,
	je	.L116	#,
	cmp	r12, 6	# tmp365,
	je	.L117	#,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovups	xmm10, XMMWORD PTR [rdx]	# tmp428, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	mov	ebp, 16	# ivtmp.75,
	vfmadd213ps	xmm10, xmm9, XMMWORD PTR [rax]	# tmp428, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax], xmm10	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp428
.L117:
	vmovups	xmm11, XMMWORD PTR [rdx+rbp]	# tmp431, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm11, xmm9, XMMWORD PTR [rax+rbp]	# tmp431, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm11	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp431
	add	rbp, 16	# ivtmp.75,
.L116:
	vmovups	xmm12, XMMWORD PTR [rdx+rbp]	# tmp434, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm12, xmm9, XMMWORD PTR [rax+rbp]	# tmp434, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm12	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp434
	add	rbp, 16	# ivtmp.75,
.L115:
	vmovups	xmm13, XMMWORD PTR [rdx+rbp]	# tmp437, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm13, xmm9, XMMWORD PTR [rax+rbp]	# tmp437, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm13	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp437
	add	rbp, 16	# ivtmp.75,
.L114:
	vmovups	xmm14, XMMWORD PTR [rdx+rbp]	# tmp440, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm14, xmm9, XMMWORD PTR [rax+rbp]	# tmp440, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm14	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp440
	add	rbp, 16	# ivtmp.75,
.L113:
	vmovups	xmm15, XMMWORD PTR [rdx+rbp]	# tmp443, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm15, xmm9, XMMWORD PTR [rax+rbp]	# tmp443, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm15	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp443
	add	rbp, 16	# ivtmp.75,
.L112:
	vmovups	xmm3, XMMWORD PTR [rdx+rbp]	# tmp446, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm3, xmm9, XMMWORD PTR [rax+rbp]	# tmp446, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm3	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp446
	add	rbp, 16	# ivtmp.75,
	cmp	rbp, r11	# ivtmp.75, _23
	je	.L150	#,
.L32:
	vmovups	xmm0, XMMWORD PTR [rdx+rbp]	# tmp256, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm0, xmm9, XMMWORD PTR [rax+rbp]	# tmp256, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR [rax+rbp], xmm0	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp256
	vmovups	xmm2, XMMWORD PTR 16[rbp+rdx]	# tmp370, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	sub	rbp, -128	# ivtmp.75,
	vfmadd213ps	xmm2, xmm9, XMMWORD PTR -112[rbp+rax]	# tmp370, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -112[rbp+rax], xmm2	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp370
	vmovups	xmm4, XMMWORD PTR -96[rbp+rdx]	# tmp374, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm4, xmm9, XMMWORD PTR -96[rbp+rax]	# tmp374, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -96[rbp+rax], xmm4	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp374
	vmovups	xmm6, XMMWORD PTR -80[rbp+rdx]	# tmp378, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm6, xmm9, XMMWORD PTR -80[rbp+rax]	# tmp378, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -80[rbp+rax], xmm6	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp378
	vmovups	xmm5, XMMWORD PTR -64[rbp+rdx]	# tmp382, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm5, xmm9, XMMWORD PTR -64[rbp+rax]	# tmp382, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -64[rbp+rax], xmm5	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp382
	vmovups	xmm7, XMMWORD PTR -48[rbp+rdx]	# tmp386, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm7, xmm9, XMMWORD PTR -48[rbp+rax]	# tmp386, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -48[rbp+rax], xmm7	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp386
	vmovups	xmm8, XMMWORD PTR -32[rbp+rdx]	# tmp390, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm8, xmm9, XMMWORD PTR -32[rbp+rax]	# tmp390, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -32[rbp+rax], xmm8	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp390
	vmovups	xmm10, XMMWORD PTR -16[rbp+rdx]	# tmp394, MEM <vector(4) float> [(float *)vectp.42_206 + ivtmp.75_223 * 1]
	vfmadd213ps	xmm10, xmm9, XMMWORD PTR -16[rbp+rax]	# tmp394, _257, MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1]
	vmovups	XMMWORD PTR -16[rbp+rax], xmm10	# MEM <vector(4) float> [(float *)_87 + ivtmp.75_223 * 1], tmp394
	cmp	rbp, r11	# ivtmp.75, _23
	jne	.L32	#,
.L150:
	test	dil, 3	# N.14_149,
	je	.L33	#,
	mov	r10, rdi	# niters.48, N.14_149
	mov	rcx, rdi	# tmp.51, N.14_149
	and	r10d, 3	# niters.48,
	and	rcx, -4	# tmp.51,
	cmp	r10, 1	# niters.48,
	je	.L34	#,
.L31:
	mov	r12, QWORD PTR [rsp]	# _67, %sfp
	lea	rbp, [rcx+r15]	# _246,
	lea	rbp, [r12+rbp*4]	# vectp.53,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	lea	r12, [r8+rcx]	# tmp263,
	vmovq	xmm11, QWORD PTR [r14+r12*4]	# vect__187.57_256, MEM <vector(2) float> [(float *)vectp.56_251]
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovq	xmm12, QWORD PTR 0[rbp]	# vect__49.54_250, MEM <vector(2) float> [(float *)vectp.53_245]
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd132ps	xmm9, xmm12, xmm11	# tmp270, vect__49.54_250, vect__187.57_256
	vmovlps	QWORD PTR 0[rbp], xmm9	# MEM <vector(2) float> [(float *)vectp.53_245], tmp262
	test	r10b, 1	# niters.48,
	je	.L33	#,
	and	r10, -2	# niters_vector_mult_vf.50_243,
	add	rcx, r10	# tmp.51, niters_vector_mult_vf.50_243
.L34:
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	mov	rbp, QWORD PTR [rsp]	# _67, %sfp
	lea	r10, [rcx+r15]	# _225,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	add	rcx, r8	# tmp276, ivtmp.85
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovss	xmm9, DWORD PTR 0[rbp+r10*4]	# tmp578, *_227
	vfmadd132ss	xmm1, xmm9, DWORD PTR [r14+rcx*4]	# tmp275, tmp578, *_231
	vmovss	DWORD PTR 0[rbp+r10*4], xmm1	# *_227, tmp275
.L33:
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	add	rsi, 4	# ivtmp.83,
	cmp	rsi, r13	# ivtmp.83, _275
	je	.L154	#,
	sub	r9, rbx	# ivtmp.86, _190
# src/matmul.c:76:             float a_ik = A[i * K + k];
	vmovss	xmm1, DWORD PTR [rsi]	# a_ik, MEM[(float *)_200]
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	add	rdx, rbx	# ivtmp.84, _190
	add	r8, rdi	# ivtmp.85, N.14_149
	cmp	r9, 8	# ivtmp.86,
	ja	.L163	#,
.L30:
	mov	r12, QWORD PTR 8[rsp]	# tmp355, %sfp
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	r10, rdx	# ivtmp.69, ivtmp.84
	mov	rcx, rax	# ivtmp.68, ivtmp.94
	sub	r12, rax	# tmp355, ivtmp.94
	sub	r12, 4	# tmp356,
	shr	r12, 2	# tmp354,
	inc	r12	# tmp357
	and	r12d, 7	# tmp358,
	je	.L36	#,
	cmp	r12, 1	# tmp358,
	je	.L118	#,
	cmp	r12, 2	# tmp358,
	je	.L119	#,
	cmp	r12, 3	# tmp358,
	je	.L120	#,
	cmp	r12, 4	# tmp358,
	je	.L121	#,
	cmp	r12, 5	# tmp358,
	je	.L122	#,
	cmp	r12, 6	# tmp358,
	je	.L123	#,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovss	xmm13, DWORD PTR [rdx]	# tmp419, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	lea	rcx, 4[rax]	# ivtmp.68,
	lea	r10, 4[rdx]	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm13, xmm1, DWORD PTR [rax]	# tmp419, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR [rax], xmm13	# MEM[(float *)_199], tmp419
.L123:
	vmovss	xmm14, DWORD PTR [r10]	# tmp420, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm14, xmm1, DWORD PTR -4[rcx]	# tmp420, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm14	# MEM[(float *)_199], tmp420
.L122:
	vmovss	xmm15, DWORD PTR [r10]	# tmp421, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm15, xmm1, DWORD PTR -4[rcx]	# tmp421, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm15	# MEM[(float *)_199], tmp421
.L121:
	vmovss	xmm3, DWORD PTR [r10]	# tmp422, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm3, xmm1, DWORD PTR -4[rcx]	# tmp422, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm3	# MEM[(float *)_199], tmp422
.L120:
	vmovss	xmm0, DWORD PTR [r10]	# tmp423, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm0, xmm1, DWORD PTR -4[rcx]	# tmp423, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm0	# MEM[(float *)_199], tmp423
.L119:
	vmovss	xmm2, DWORD PTR [r10]	# tmp424, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm2, xmm1, DWORD PTR -4[rcx]	# tmp424, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm2	# MEM[(float *)_199], tmp424
.L118:
	vmovss	xmm4, DWORD PTR [r10]	# tmp425, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 4	# ivtmp.68,
	add	r10, 4	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm4, xmm1, DWORD PTR -4[rcx]	# tmp425, a_ik, MEM[(float *)_199]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	rbp, QWORD PTR 8[rsp]	# ivtmp.94, %sfp
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovss	DWORD PTR -4[rcx], xmm4	# MEM[(float *)_199], tmp425
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	cmp	rcx, rbp	# ivtmp.68, ivtmp.94
	je	.L149	#,
.L36:
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovss	xmm6, DWORD PTR [r10]	# tmp277, MEM[(float *)_248]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	add	rcx, 32	# ivtmp.68,
	add	r10, 32	# ivtmp.69,
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vfmadd213ss	xmm6, xmm1, DWORD PTR -32[rcx]	# tmp277, a_ik, MEM[(float *)_199]
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	mov	r12, QWORD PTR 8[rsp]	# ivtmp.94, %sfp
# src/matmul.c:79:                 C[i * N + j] += a_ik * B[k * N + j];
	vmovss	DWORD PTR -32[rcx], xmm6	# MEM[(float *)_199], tmp277
	vmovss	xmm5, DWORD PTR -28[r10]	# tmp397, MEM[(float *)_248]
	vfmadd213ss	xmm5, xmm1, DWORD PTR -28[rcx]	# tmp397, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -28[rcx], xmm5	# MEM[(float *)_199], tmp397
	vmovss	xmm7, DWORD PTR -24[r10]	# tmp400, MEM[(float *)_248]
	vfmadd213ss	xmm7, xmm1, DWORD PTR -24[rcx]	# tmp400, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -24[rcx], xmm7	# MEM[(float *)_199], tmp400
	vmovss	xmm8, DWORD PTR -20[r10]	# tmp403, MEM[(float *)_248]
	vfmadd213ss	xmm8, xmm1, DWORD PTR -20[rcx]	# tmp403, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -20[rcx], xmm8	# MEM[(float *)_199], tmp403
	vmovss	xmm10, DWORD PTR -16[r10]	# tmp406, MEM[(float *)_248]
	vfmadd213ss	xmm10, xmm1, DWORD PTR -16[rcx]	# tmp406, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -16[rcx], xmm10	# MEM[(float *)_199], tmp406
	vmovss	xmm11, DWORD PTR -12[r10]	# tmp409, MEM[(float *)_248]
	vfmadd213ss	xmm11, xmm1, DWORD PTR -12[rcx]	# tmp409, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -12[rcx], xmm11	# MEM[(float *)_199], tmp409
	vmovss	xmm12, DWORD PTR -8[r10]	# tmp412, MEM[(float *)_248]
	vfmadd213ss	xmm12, xmm1, DWORD PTR -8[rcx]	# tmp412, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -8[rcx], xmm12	# MEM[(float *)_199], tmp412
	vmovss	xmm9, DWORD PTR -4[r10]	# tmp415, MEM[(float *)_248]
	vfmadd213ss	xmm9, xmm1, DWORD PTR -4[rcx]	# tmp415, a_ik, MEM[(float *)_199]
	vmovss	DWORD PTR -4[rcx], xmm9	# MEM[(float *)_199], tmp415
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	cmp	rcx, r12	# ivtmp.68, ivtmp.94
	jne	.L36	#,
.L149:
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	add	rsi, 4	# ivtmp.83,
	add	rdx, rbx	# ivtmp.84, _190
	add	r8, rdi	# ivtmp.85, N.14_149
	sub	r9, rbx	# ivtmp.86, _190
	cmp	rsi, r13	# ivtmp.83, _275
	jne	.L39	#,
.L154:
	mov	r10, QWORD PTR 40[rsp]	# i, %sfp
	mov	rbp, QWORD PTR 48[rsp]	# ivtmp.100, %sfp
.L29:
	mov	rax, QWORD PTR 8[rsp]	# ivtmp.94, %sfp
# src/matmul.c:74:     for (uint64_t i = 0; i < M; i++) {
	inc	r10	# i
	add	r15, rdi	# ivtmp.95, N.14_149
	jmp	.L28	#
.L50:
# src/matmul.c:75:         for (uint64_t k = 0; k < K; k++) {
	mov	r10, rdi	# niters.48, N.14_149
# src/matmul.c:78:             for (uint64_t j = 0; j < N; j++) {
	xor	ecx, ecx	# tmp.51
	vbroadcastss	xmm9, xmm1	# _257, a_ik
	jmp	.L31	#
.L40:
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	r15, QWORD PTR 64[rsp]	# tmp328, %sfp
	mov	edi, 1	#,
	mov	rbp, QWORD PTR 152[rsp]	# argv, %sfp
	mov	r13, QWORD PTR [rsp]	# _67, %sfp
	mov	r12d, DWORD PTR 148[rsp]	# <retval>, %sfp
	mov	rsi, r15	#, tmp328
	call	clock_gettime@PLT	#
	vmovsd	xmm12, QWORD PTR .LC2[rip]	# tmp592,
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm10, xmm10, xmm10	# tmp453
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm11, xmm10, QWORD PTR 216[rsp]	# tmp461, tmp453, MEM[(struct timespec *)_224].tv_nsec
	vfmsub213sd	xmm11, xmm12, QWORD PTR 112[rsp]	# _174, tmp592, %sfp
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm1, xmm10, QWORD PTR 208[rsp]	# tmp460, tmp453, MEM[(struct timespec *)_224].tv_sec
# src/matmul.c:84:     double tempo_comp = obter_tempo_segundos() - t_comp_inicio;
	vsubsd	xmm13, xmm1, QWORD PTR 120[rsp]	# _238, _123, %sfp
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, r15	#, tmp328
	mov	edi, 1	#,
# src/matmul.c:84:     double tempo_comp = obter_tempo_segundos() - t_comp_inicio;
	vaddsd	xmm14, xmm13, xmm11	# tempo_comp, _238, _174
	vmovsd	QWORD PTR 8[rsp], xmm14	# %sfp, tempo_comp
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm15, xmm15, xmm15	# tmp453
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm0, xmm15, QWORD PTR 216[rsp]	# tmp463, tmp453, MEM[(struct timespec *)_224].tv_nsec
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmulsd	xmm2, xmm0, QWORD PTR .LC2[rip]	# _120, _119,
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	lea	rsi, .LC3[rip]	#,
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm3, xmm15, QWORD PTR 208[rsp]	# tmp462, tmp453, MEM[(struct timespec *)_224].tv_sec
	vmovlpd	QWORD PTR [rsp], xmm3	# %sfp, tmp462
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	mov	rdi, QWORD PTR 24[rbp]	# MEM[(char * *)argv_61(D) + 24B], MEM[(char * *)argv_61(D) + 24B]
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovq	r15, xmm2	# _120, _120
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	call	fopen@PLT	#
# src/matmul.c:89:     if (f_out) {
	vmovsd	xmm4, QWORD PTR 8[rsp]	# tempo_comp, %sfp
	test	rax, rax	# tmp452
# src/matmul.c:88:     FILE *f_out = fopen(argv[3], "wb");
	mov	rbx, rax	# tmp452,
# src/matmul.c:89:     if (f_out) {
	je	.L42	#,
# src/matmul.c:90:         fwrite(&M, sizeof(uint64_t), 1, f_out);
	mov	rdi, QWORD PTR 80[rsp]	#, %sfp
	mov	rcx, rax	#, tmp452
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fwrite@PLT	#
# src/matmul.c:91:         fwrite(&N, sizeof(uint64_t), 1, f_out);
	mov	rdi, QWORD PTR 88[rsp]	#, %sfp
	mov	rcx, rbx	#, tmp452
	mov	edx, 1	#,
	mov	esi, 8	#,
	call	fwrite@PLT	#
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	mov	rdx, QWORD PTR 168[rsp]	# M, M
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	mov	rcx, rbx	#, tmp452
	mov	esi, 4	#,
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	imul	rdx, QWORD PTR 192[rsp]	# _37, N
# src/matmul.c:92:         fwrite(C, sizeof(float), M * N, f_out);
	mov	rdi, r13	#, _67
	call	fwrite@PLT	#
# src/matmul.c:93:         fclose(f_out);
	mov	rdi, rbx	#, tmp452
	call	fclose@PLT	#
	vmovsd	xmm4, QWORD PTR 8[rsp]	# tempo_comp, %sfp
.L42:
# src/matmul.c:11:     clock_gettime(CLOCK_MONOTONIC, &ts);
	mov	rsi, QWORD PTR 64[rsp]	#, %sfp
	mov	edi, 1	#,
	vmovsd	QWORD PTR 8[rsp], xmm4	# %sfp, tempo_comp
	call	clock_gettime@PLT	#
	vmovsd	xmm5, QWORD PTR 128[rsp]	# _129, %sfp
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vxorps	xmm6, xmm6, xmm6	# tmp453
	vcvtsi2sd	xmm7, xmm6, QWORD PTR 208[rsp]	# tmp464, tmp453, MEM[(struct timespec *)_224].tv_sec
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rdi, QWORD PTR 168[rsp]	# M, M
# src/matmul.c:12:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm9, xmm6, QWORD PTR 216[rsp]	# tmp465, tmp453, MEM[(struct timespec *)_224].tv_nsec
	vaddsd	xmm10, xmm9, QWORD PTR 136[rsp]	# _161, _131, %sfp
	vmovq	xmm1, r15	# _120, _120
	vsubsd	xmm11, xmm10, QWORD PTR 104[rsp]	# _177, _161, %sfp
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	test	rdi, rdi	# M
	vcvtsi2sd	xmm14, xmm6, rdi	# tmp466, tmp453, M
	vaddsd	xmm8, xmm5, xmm7	# _129, _129, tmp464
	vsubsd	xmm12, xmm8, xmm1	# _151, _159, _120
	vmovsd	xmm1, QWORD PTR 8[rsp]	# tempo_comp, %sfp
	js	.L164	#,
.L44:
	cmp	QWORD PTR 24[rsp], 0	# %sfp,
	vcvtsi2sd	xmm3, xmm6, QWORD PTR 24[rsp]	# tmp468, tmp453, %sfp
	js	.L165	#,
.L46:
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rsi, QWORD PTR 192[rsp]	# N, N
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	vmulsd	xmm0, xmm14, xmm3	# _176, _39, _40
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	test	rsi, rsi	# N
	js	.L47	#,
	vcvtsi2sd	xmm4, xmm6, rsi	# tmp470, tmp453, N
.L48:
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	vmulsd	xmm6, xmm4, QWORD PTR .LC4[rip]	# _148, _43,
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	vmovsd	xmm7, QWORD PTR 96[rsp]	# _99, %sfp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC5[rip]	#,
	mov	edi, 2	#,
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	vaddsd	xmm8, xmm7, QWORD PTR [rsp]	# _13, _99, %sfp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	eax, 3	#,
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	vfmsub132sd	xmm11, xmm8, QWORD PTR .LC2[rip]	# tmp315, _13,
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	vmulsd	xmm5, xmm0, xmm6	# _45, _176, _148
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	vdivsd	xmm2, xmm5, xmm1	#, _45, tempo_comp
# src/matmul.c:95:     tempo_io += obter_tempo_segundos() - t_io_inicio;
	vaddsd	xmm0, xmm11, xmm12	# tempo_io_78, tmp315, _151
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# src/matmul.c:103:     free(A);
	mov	rdi, QWORD PTR 32[rsp]	#, %sfp
	call	free@PLT	#
# src/matmul.c:104:     free(B);
	mov	rdi, r14	#, B
	call	free@PLT	#
# src/matmul.c:105:     free(C);
	mov	rdi, r13	#, _67
	call	free@PLT	#
# src/matmul.c:107:     return 0;
	jmp	.L16	#
.L19:
# src/matmul.c:53:         if (A) free(A);
	cmp	QWORD PTR 32[rsp], 0	# %sfp,
	je	.L22	#,
	jmp	.L20	#
.L161:
	add	rax, rbx	# ivtmp.94, _190
	mov	QWORD PTR 8[rsp], rax	# %sfp, ivtmp.94
	jmp	.L29	#
.L47:
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	rax, rsi	# tmp309, N
	and	esi, 1	# tmp310,
	shr	rax	# tmp309
	or	rsi, rax	# tmp418, tmp309
	vcvtsi2sd	xmm2, xmm6, rsi	# tmp471, tmp453, tmp418
	vaddsd	xmm4, xmm2, xmm2	# _43, tmp308, tmp308
	jmp	.L48	#
.L165:
# src/matmul.c:98:     double gflops = (2.0 * M * K * N) / (tempo_comp * 1e9);
	mov	r10, QWORD PTR 24[rsp]	# K_A.2_6, %sfp
	mov	r11, r10	# tmp303, K_A.2_6
	and	r10d, 1	# K_A.2_6,
	shr	r11	# tmp303
	or	r10, r11	# tmp417, tmp303
	vcvtsi2sd	xmm15, xmm6, r10	# tmp469, tmp453, tmp417
	vaddsd	xmm3, xmm15, xmm15	# _40, tmp302, tmp302
	jmp	.L46	#
.L164:
	mov	r9, rdi	# tmp299, M
	and	edi, 1	# tmp300,
	shr	r9	# tmp299
	or	rdi, r9	# tmp416, tmp299
	vcvtsi2sd	xmm13, xmm6, rdi	# tmp467, tmp453, tmp416
	vaddsd	xmm14, xmm13, xmm13	# _39, tmp298, tmp298
	jmp	.L44	#
.L162:
	mov	rdx, QWORD PTR 24[rsp]	# K_A.2_6, %sfp
	add	rax, rbx	# ivtmp.94, _190
	mov	QWORD PTR 8[rsp], rax	# %sfp, ivtmp.94
	add	rbp, rdx	# ivtmp.100, K_A.2_6
	jmp	.L29	#
.L25:
# src/matmul.c:61:         if (A) free(A);
	mov	rdi, QWORD PTR 32[rsp]	#, %sfp
	call	free@PLT	#
# src/matmul.c:62:         if (B) free(B);
	mov	rdi, r14	#, B
	call	free@PLT	#
# src/matmul.c:63:         return 1;
	jmp	.L18	#
.L159:
# src/matmul.c:108: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE30:
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
