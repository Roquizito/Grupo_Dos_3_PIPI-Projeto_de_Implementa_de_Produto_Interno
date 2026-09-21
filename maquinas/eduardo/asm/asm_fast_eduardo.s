
matmul_fast:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 5a 2f 00 00    	push   QWORD PTR [rip+0x2f5a]        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 5c 2f 00 00    	jmp    QWORD PTR [rip+0x2f5c]        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   ax,ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   ax,ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   ax,ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   ax,ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   ax,ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   ax,ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 2e 2f 00 00    	jmp    QWORD PTR [rip+0x2f2e]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010d0 <free@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 b6 2e 00 00    	jmp    QWORD PTR [rip+0x2eb6]        # 3f90 <free@GLIBC_2.2.5>
    10da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000010e0 <fread@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 ae 2e 00 00    	jmp    QWORD PTR [rip+0x2eae]        # 3f98 <fread@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000010f0 <clock_gettime@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 a6 2e 00 00    	jmp    QWORD PTR [rip+0x2ea6]        # 3fa0 <clock_gettime@GLIBC_2.17>
    10fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001100 <fclose@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 9e 2e 00 00    	jmp    QWORD PTR [rip+0x2e9e]        # 3fa8 <fclose@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001110 <__stack_chk_fail@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 96 2e 00 00    	jmp    QWORD PTR [rip+0x2e96]        # 3fb0 <__stack_chk_fail@GLIBC_2.4>
    111a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001120 <__printf_chk@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 8e 2e 00 00    	jmp    QWORD PTR [rip+0x2e8e]        # 3fb8 <__printf_chk@GLIBC_2.3.4>
    112a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001130 <fopen@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 86 2e 00 00    	jmp    QWORD PTR [rip+0x2e86]        # 3fc0 <fopen@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <fwrite@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 7e 2e 00 00    	jmp    QWORD PTR [rip+0x2e7e]        # 3fc8 <fwrite@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001150 <posix_memalign@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 76 2e 00 00    	jmp    QWORD PTR [rip+0x2e76]        # 3fd0 <posix_memalign@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001160 <main>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	41 57                	push   r15
    1166:	41 56                	push   r14
    1168:	41 55                	push   r13
    116a:	41 54                	push   r12
    116c:	55                   	push   rbp
    116d:	53                   	push   rbx
    116e:	48 81 ec f8 00 00 00 	sub    rsp,0xf8
    1175:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    117c:	00 00 
    117e:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
    1185:	00 
    1186:	31 c0                	xor    eax,eax
    1188:	83 ff 04             	cmp    edi,0x4
    118b:	74 32                	je     11bf <main+0x5f>
    118d:	41 bc 01 00 00 00    	mov    r12d,0x1
    1193:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
    119a:	00 
    119b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    11a2:	00 00 
    11a4:	0f 85 72 09 00 00    	jne    1b1c <main+0x9bc>
    11aa:	48 81 c4 f8 00 00 00 	add    rsp,0xf8
    11b1:	44 89 e0             	mov    eax,r12d
    11b4:	5b                   	pop    rbx
    11b5:	5d                   	pop    rbp
    11b6:	41 5c                	pop    r12
    11b8:	41 5d                	pop    r13
    11ba:	41 5e                	pop    r14
    11bc:	41 5f                	pop    r15
    11be:	c3                   	ret
    11bf:	48 89 f5             	mov    rbp,rsi
    11c2:	bf 01 00 00 00       	mov    edi,0x1
    11c7:	48 8d b4 24 d0 00 00 	lea    rsi,[rsp+0xd0]
    11ce:	00 
    11cf:	48 89 74 24 48       	mov    QWORD PTR [rsp+0x48],rsi
    11d4:	e8 17 ff ff ff       	call   10f0 <clock_gettime@plt>
    11d9:	48 8b 7d 08          	mov    rdi,QWORD PTR [rbp+0x8]
    11dd:	48 8d b4 24 a8 00 00 	lea    rsi,[rsp+0xa8]
    11e4:	00 
    11e5:	48 8d 94 24 b0 00 00 	lea    rdx,[rsp+0xb0]
    11ec:	00 
    11ed:	48 89 74 24 58       	mov    QWORD PTR [rsp+0x58],rsi
    11f2:	4c 8b ac 24 d0 00 00 	mov    r13,QWORD PTR [rsp+0xd0]
    11f9:	00 
    11fa:	48 8b 9c 24 d8 00 00 	mov    rbx,QWORD PTR [rsp+0xd8]
    1201:	00 
    1202:	e8 39 0a 00 00       	call   1c40 <carregar_matriz>
    1207:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
    120b:	48 8d 94 24 c0 00 00 	lea    rdx,[rsp+0xc0]
    1212:	00 
    1213:	48 8d b4 24 b8 00 00 	lea    rsi,[rsp+0xb8]
    121a:	00 
    121b:	49 89 c7             	mov    r15,rax
    121e:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    1223:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
    1228:	e8 13 0a 00 00       	call   1c40 <carregar_matriz>
    122d:	49 89 c6             	mov    r14,rax
    1230:	4d 85 ff             	test   r15,r15
    1233:	74 2a                	je     125f <main+0xff>
    1235:	48 85 c0             	test   rax,rax
    1238:	0f 84 3e 08 00 00    	je     1a7c <main+0x91c>
    123e:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
    1245:	00 
    1246:	48 3b 84 24 b8 00 00 	cmp    rax,QWORD PTR [rsp+0xb8]
    124d:	00 
    124e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    1253:	74 20                	je     1275 <main+0x115>
    1255:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    125a:	e8 71 fe ff ff       	call   10d0 <free@plt>
    125f:	4d 85 f6             	test   r14,r14
    1262:	0f 84 25 ff ff ff    	je     118d <main+0x2d>
    1268:	4c 89 f7             	mov    rdi,r14
    126b:	e8 60 fe ff ff       	call   10d0 <free@plt>
    1270:	e9 18 ff ff ff       	jmp    118d <main+0x2d>
    1275:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
    127c:	00 
    127d:	48 0f af 94 24 c0 00 	imul   rdx,QWORD PTR [rsp+0xc0]
    1284:	00 00 
    1286:	31 c9                	xor    ecx,ecx
    1288:	48 8d bc 24 c8 00 00 	lea    rdi,[rsp+0xc8]
    128f:	00 
    1290:	be 40 00 00 00       	mov    esi,0x40
    1295:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
    129c:	00 
    129d:	48 c1 e2 02          	shl    rdx,0x2
    12a1:	e8 aa fe ff ff       	call   1150 <posix_memalign@plt>
    12a6:	41 89 c4             	mov    r12d,eax
    12a9:	85 c0                	test   eax,eax
    12ab:	0f 85 54 08 00 00    	jne    1b05 <main+0x9a5>
    12b1:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
    12b5:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
    12bc:	00 
    12bd:	4c 8b 9c 24 c8 00 00 	mov    r11,QWORD PTR [rsp+0xc8]
    12c4:	00 
    12c5:	c4 e1 e3 2a cb       	vcvtsi2sd xmm1,xmm3,rbx
    12ca:	c4 c1 e3 2a c5       	vcvtsi2sd xmm0,xmm3,r13
    12cf:	48 0f af bc 24 c0 00 	imul   rdi,QWORD PTR [rsp+0xc0]
    12d6:	00 00 
    12d8:	31 db                	xor    ebx,ebx
    12da:	c5 f9 13 44 24 68    	vmovlpd QWORD PTR [rsp+0x68],xmm0
    12e0:	c5 f9 13 4c 24 70    	vmovlpd QWORD PTR [rsp+0x70],xmm1
    12e6:	eb 13                	jmp    12fb <main+0x19b>
    12e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    12ef:	00 
    12f0:	41 c7 04 9b 00 00 00 	mov    DWORD PTR [r11+rbx*4],0x0
    12f7:	00 
    12f8:	48 ff c3             	inc    rbx
    12fb:	48 39 df             	cmp    rdi,rbx
    12fe:	75 f0                	jne    12f0 <main+0x190>
    1300:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
    1305:	bf 01 00 00 00       	mov    edi,0x1
    130a:	45 31 ff             	xor    r15d,r15d
    130d:	4c 89 ee             	mov    rsi,r13
    1310:	e8 db fd ff ff       	call   10f0 <clock_gettime@plt>
    1315:	bf 01 00 00 00       	mov    edi,0x1
    131a:	4c 89 ee             	mov    rsi,r13
    131d:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
    1321:	c4 e1 eb 2a a4 24 d0 	vcvtsi2sd xmm4,xmm2,QWORD PTR [rsp+0xd0]
    1328:	00 00 00 
    132b:	c4 e1 eb 2a ac 24 d8 	vcvtsi2sd xmm5,xmm2,QWORD PTR [rsp+0xd8]
    1332:	00 00 00 
    1335:	c5 f9 13 a4 24 80 00 	vmovlpd QWORD PTR [rsp+0x80],xmm4
    133c:	00 00 
    133e:	c5 f9 13 ac 24 88 00 	vmovlpd QWORD PTR [rsp+0x88],xmm5
    1345:	00 00 
    1347:	e8 a4 fd ff ff       	call   10f0 <clock_gettime@plt>
    134c:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
    1353:	00 
    1354:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
    1358:	c4 61 cb 2a 84 24 d8 	vcvtsi2sd xmm8,xmm6,QWORD PTR [rsp+0xd8]
    135f:	00 00 00 
    1362:	c5 3b 59 0d de 0c 00 	vmulsd xmm9,xmm8,QWORD PTR [rip+0xcde]        # 2048 <_IO_stdin_used+0x48>
    1369:	00 
    136a:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
    1371:	00 
    1372:	49 c7 c1 fc ff ff ff 	mov    r9,0xfffffffffffffffc
    1379:	48 89 ac 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rbp
    1380:	00 
    1381:	4d 29 f1             	sub    r9,r14
    1384:	45 31 d2             	xor    r10d,r10d
    1387:	44 89 a4 24 94 00 00 	mov    DWORD PTR [rsp+0x94],r12d
    138e:	00 
    138f:	31 ed                	xor    ebp,ebp
    1391:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    1396:	4c 89 f1             	mov    rcx,r14
    1399:	c4 e1 cb 2a bc 24 d0 	vcvtsi2sd xmm7,xmm6,QWORD PTR [rsp+0xd0]
    13a0:	00 00 00 
    13a3:	c5 f9 13 7c 24 78    	vmovlpd QWORD PTR [rsp+0x78],xmm7
    13a9:	48 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],rdi
    13ae:	48 8b bc 24 c0 00 00 	mov    rdi,QWORD PTR [rsp+0xc0]
    13b5:	00 
    13b6:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    13bb:	49 89 fb             	mov    r11,rdi
    13be:	4c 8d 47 ff          	lea    r8,[rdi-0x1]
    13c2:	48 8d 1c bd 00 00 00 	lea    rbx,[rdi*4+0x0]
    13c9:	00 
    13ca:	49 c1 eb 02          	shr    r11,0x2
    13ce:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    13d3:	49 c1 e3 04          	shl    r11,0x4
    13d7:	4c 39 54 24 40       	cmp    QWORD PTR [rsp+0x40],r10
    13dc:	0f 84 7c 04 00 00    	je     185e <main+0x6fe>
    13e2:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
    13e8:	0f 84 9f 06 00 00    	je     1a8d <main+0x92d>
    13ee:	48 85 ff             	test   rdi,rdi
    13f1:	0f 84 f9 06 00 00    	je     1af0 <main+0x990>
    13f7:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
    13fc:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    1401:	4c 8d 34 03          	lea    r14,[rbx+rax*1]
    1405:	48 89 ca             	mov    rdx,rcx
    1408:	4c 89 74 24 10       	mov    QWORD PTR [rsp+0x10],r14
    140d:	45 31 c0             	xor    r8d,r8d
    1410:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
    1415:	49 8d 34 ac          	lea    rsi,[r12+rbp*4]
    1419:	48 03 6c 24 20       	add    rbp,QWORD PTR [rsp+0x20]
    141e:	49 01 c1             	add    r9,rax
    1421:	4d 8d 24 ac          	lea    r12,[r12+rbp*4]
    1425:	48 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],rbp
    142a:	4d 89 e5             	mov    r13,r12
    142d:	c5 fa 10 0e          	vmovss xmm1,DWORD PTR [rsi]
    1431:	48 83 ff 01          	cmp    rdi,0x1
    1435:	0f 84 43 02 00 00    	je     167e <main+0x51e>
    143b:	49 83 f9 08          	cmp    r9,0x8
    143f:	0f 86 39 02 00 00    	jbe    167e <main+0x51e>
    1445:	48 83 7c 24 18 02    	cmp    QWORD PTR [rsp+0x18],0x2
    144b:	0f 86 fd 03 00 00    	jbe    184e <main+0x6ee>
    1451:	4d 8d 73 f0          	lea    r14,[r11-0x10]
    1455:	45 31 e4             	xor    r12d,r12d
    1458:	c4 62 79 18 d1       	vbroadcastss xmm10,xmm1
    145d:	49 c1 ee 04          	shr    r14,0x4
    1461:	49 ff c6             	inc    r14
    1464:	41 83 e6 07          	and    r14d,0x7
    1468:	0f 84 cc 00 00 00    	je     153a <main+0x3da>
    146e:	49 83 fe 01          	cmp    r14,0x1
    1472:	0f 84 a3 00 00 00    	je     151b <main+0x3bb>
    1478:	49 83 fe 02          	cmp    r14,0x2
    147c:	0f 84 83 00 00 00    	je     1505 <main+0x3a5>
    1482:	49 83 fe 03          	cmp    r14,0x3
    1486:	74 67                	je     14ef <main+0x38f>
    1488:	49 83 fe 04          	cmp    r14,0x4
    148c:	74 4b                	je     14d9 <main+0x379>
    148e:	49 83 fe 05          	cmp    r14,0x5
    1492:	74 2f                	je     14c3 <main+0x363>
    1494:	49 83 fe 06          	cmp    r14,0x6
    1498:	74 13                	je     14ad <main+0x34d>
    149a:	c5 78 10 1a          	vmovups xmm11,XMMWORD PTR [rdx]
    149e:	41 bc 10 00 00 00    	mov    r12d,0x10
    14a4:	c4 62 29 a8 18       	vfmadd213ps xmm11,xmm10,XMMWORD PTR [rax]
    14a9:	c5 78 11 18          	vmovups XMMWORD PTR [rax],xmm11
    14ad:	c4 21 78 10 24 22    	vmovups xmm12,XMMWORD PTR [rdx+r12*1]
    14b3:	c4 22 29 a8 24 20    	vfmadd213ps xmm12,xmm10,XMMWORD PTR [rax+r12*1]
    14b9:	c4 21 78 11 24 20    	vmovups XMMWORD PTR [rax+r12*1],xmm12
    14bf:	49 83 c4 10          	add    r12,0x10
    14c3:	c4 21 78 10 2c 22    	vmovups xmm13,XMMWORD PTR [rdx+r12*1]
    14c9:	c4 22 29 a8 2c 20    	vfmadd213ps xmm13,xmm10,XMMWORD PTR [rax+r12*1]
    14cf:	c4 21 78 11 2c 20    	vmovups XMMWORD PTR [rax+r12*1],xmm13
    14d5:	49 83 c4 10          	add    r12,0x10
    14d9:	c4 21 78 10 34 22    	vmovups xmm14,XMMWORD PTR [rdx+r12*1]
    14df:	c4 22 29 a8 34 20    	vfmadd213ps xmm14,xmm10,XMMWORD PTR [rax+r12*1]
    14e5:	c4 21 78 11 34 20    	vmovups XMMWORD PTR [rax+r12*1],xmm14
    14eb:	49 83 c4 10          	add    r12,0x10
    14ef:	c4 21 78 10 3c 22    	vmovups xmm15,XMMWORD PTR [rdx+r12*1]
    14f5:	c4 22 29 a8 3c 20    	vfmadd213ps xmm15,xmm10,XMMWORD PTR [rax+r12*1]
    14fb:	c4 21 78 11 3c 20    	vmovups XMMWORD PTR [rax+r12*1],xmm15
    1501:	49 83 c4 10          	add    r12,0x10
    1505:	c4 a1 78 10 3c 22    	vmovups xmm7,XMMWORD PTR [rdx+r12*1]
    150b:	c4 a2 29 a8 3c 20    	vfmadd213ps xmm7,xmm10,XMMWORD PTR [rax+r12*1]
    1511:	c4 a1 78 11 3c 20    	vmovups XMMWORD PTR [rax+r12*1],xmm7
    1517:	49 83 c4 10          	add    r12,0x10
    151b:	c4 a1 78 10 04 22    	vmovups xmm0,XMMWORD PTR [rdx+r12*1]
    1521:	c4 a2 29 a8 04 20    	vfmadd213ps xmm0,xmm10,XMMWORD PTR [rax+r12*1]
    1527:	c4 a1 78 11 04 20    	vmovups XMMWORD PTR [rax+r12*1],xmm0
    152d:	49 83 c4 10          	add    r12,0x10
    1531:	4d 39 dc             	cmp    r12,r11
    1534:	0f 84 b2 00 00 00    	je     15ec <main+0x48c>
    153a:	c4 a1 78 10 1c 22    	vmovups xmm3,XMMWORD PTR [rdx+r12*1]
    1540:	c4 a2 29 a8 1c 20    	vfmadd213ps xmm3,xmm10,XMMWORD PTR [rax+r12*1]
    1546:	c4 a1 78 11 1c 20    	vmovups XMMWORD PTR [rax+r12*1],xmm3
    154c:	c4 c1 78 10 54 14 10 	vmovups xmm2,XMMWORD PTR [r12+rdx*1+0x10]
    1553:	49 83 ec 80          	sub    r12,0xffffffffffffff80
    1557:	c4 c2 29 a8 54 04 90 	vfmadd213ps xmm2,xmm10,XMMWORD PTR [r12+rax*1-0x70]
    155e:	c4 c1 78 11 54 04 90 	vmovups XMMWORD PTR [r12+rax*1-0x70],xmm2
    1565:	c4 c1 78 10 74 14 a0 	vmovups xmm6,XMMWORD PTR [r12+rdx*1-0x60]
    156c:	c4 c2 29 a8 74 04 a0 	vfmadd213ps xmm6,xmm10,XMMWORD PTR [r12+rax*1-0x60]
    1573:	c4 c1 78 11 74 04 a0 	vmovups XMMWORD PTR [r12+rax*1-0x60],xmm6
    157a:	c4 c1 78 10 64 14 b0 	vmovups xmm4,XMMWORD PTR [r12+rdx*1-0x50]
    1581:	c4 c2 29 a8 64 04 b0 	vfmadd213ps xmm4,xmm10,XMMWORD PTR [r12+rax*1-0x50]
    1588:	c4 c1 78 11 64 04 b0 	vmovups XMMWORD PTR [r12+rax*1-0x50],xmm4
    158f:	c4 c1 78 10 6c 14 c0 	vmovups xmm5,XMMWORD PTR [r12+rdx*1-0x40]
    1596:	c4 c2 29 a8 6c 04 c0 	vfmadd213ps xmm5,xmm10,XMMWORD PTR [r12+rax*1-0x40]
    159d:	c4 c1 78 11 6c 04 c0 	vmovups XMMWORD PTR [r12+rax*1-0x40],xmm5
    15a4:	c4 41 78 10 44 14 d0 	vmovups xmm8,XMMWORD PTR [r12+rdx*1-0x30]
    15ab:	c4 42 29 a8 44 04 d0 	vfmadd213ps xmm8,xmm10,XMMWORD PTR [r12+rax*1-0x30]
    15b2:	c4 41 78 11 44 04 d0 	vmovups XMMWORD PTR [r12+rax*1-0x30],xmm8
    15b9:	c4 41 78 10 5c 14 e0 	vmovups xmm11,XMMWORD PTR [r12+rdx*1-0x20]
    15c0:	c4 42 29 a8 5c 04 e0 	vfmadd213ps xmm11,xmm10,XMMWORD PTR [r12+rax*1-0x20]
    15c7:	c4 41 78 11 5c 04 e0 	vmovups XMMWORD PTR [r12+rax*1-0x20],xmm11
    15ce:	c4 41 78 10 64 14 f0 	vmovups xmm12,XMMWORD PTR [r12+rdx*1-0x10]
    15d5:	c4 42 29 a8 64 04 f0 	vfmadd213ps xmm12,xmm10,XMMWORD PTR [r12+rax*1-0x10]
    15dc:	c4 41 78 11 64 04 f0 	vmovups XMMWORD PTR [r12+rax*1-0x10],xmm12
    15e3:	4d 39 dc             	cmp    r12,r11
    15e6:	0f 85 4e ff ff ff    	jne    153a <main+0x3da>
    15ec:	40 f6 c7 03          	test   dil,0x3
    15f0:	74 68                	je     165a <main+0x4fa>
    15f2:	48 89 fd             	mov    rbp,rdi
    15f5:	49 89 fa             	mov    r10,rdi
    15f8:	83 e5 03             	and    ebp,0x3
    15fb:	49 83 e2 fc          	and    r10,0xfffffffffffffffc
    15ff:	48 83 fd 01          	cmp    rbp,0x1
    1603:	74 35                	je     163a <main+0x4da>
    1605:	4c 8b 74 24 08       	mov    r14,QWORD PTR [rsp+0x8]
    160a:	4f 8d 24 3a          	lea    r12,[r10+r15*1]
    160e:	4f 8d 24 a6          	lea    r12,[r14+r12*4]
    1612:	4f 8d 34 10          	lea    r14,[r8+r10*1]
    1616:	c4 21 7a 7e 2c b1    	vmovq  xmm13,QWORD PTR [rcx+r14*4]
    161c:	c4 41 7a 7e 34 24    	vmovq  xmm14,QWORD PTR [r12]
    1622:	c4 42 09 98 d5       	vfmadd132ps xmm10,xmm14,xmm13
    1627:	c4 41 78 13 14 24    	vmovlps QWORD PTR [r12],xmm10
    162d:	40 f6 c5 01          	test   bpl,0x1
    1631:	74 27                	je     165a <main+0x4fa>
    1633:	48 83 e5 fe          	and    rbp,0xfffffffffffffffe
    1637:	49 01 ea             	add    r10,rbp
    163a:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
    163f:	4b 8d 2c 3a          	lea    rbp,[r10+r15*1]
    1643:	4d 01 c2             	add    r10,r8
    1646:	4d 8d 34 ac          	lea    r14,[r12+rbp*4]
    164a:	c4 41 7a 10 16       	vmovss xmm10,DWORD PTR [r14]
    164f:	c4 a2 29 99 0c 91    	vfmadd132ss xmm1,xmm10,DWORD PTR [rcx+r10*4]
    1655:	c4 c1 7a 11 0e       	vmovss DWORD PTR [r14],xmm1
    165a:	48 83 c6 04          	add    rsi,0x4
    165e:	4c 39 ee             	cmp    rsi,r13
    1661:	0f 84 cd 01 00 00    	je     1834 <main+0x6d4>
    1667:	49 29 d9             	sub    r9,rbx
    166a:	c5 fa 10 0e          	vmovss xmm1,DWORD PTR [rsi]
    166e:	48 01 da             	add    rdx,rbx
    1671:	49 01 f8             	add    r8,rdi
    1674:	49 83 f9 08          	cmp    r9,0x8
    1678:	0f 87 c7 fd ff ff    	ja     1445 <main+0x2e5>
    167e:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
    1683:	48 89 d5             	mov    rbp,rdx
    1686:	49 89 c2             	mov    r10,rax
    1689:	49 29 c4             	sub    r12,rax
    168c:	49 83 ec 04          	sub    r12,0x4
    1690:	49 c1 ec 02          	shr    r12,0x2
    1694:	49 ff c4             	inc    r12
    1697:	41 83 e4 07          	and    r12d,0x7
    169b:	0f 84 e2 00 00 00    	je     1783 <main+0x623>
    16a1:	49 83 fc 01          	cmp    r12,0x1
    16a5:	0f 84 b4 00 00 00    	je     175f <main+0x5ff>
    16ab:	49 83 fc 02          	cmp    r12,0x2
    16af:	0f 84 91 00 00 00    	je     1746 <main+0x5e6>
    16b5:	49 83 fc 03          	cmp    r12,0x3
    16b9:	74 72                	je     172d <main+0x5cd>
    16bb:	49 83 fc 04          	cmp    r12,0x4
    16bf:	74 53                	je     1714 <main+0x5b4>
    16c1:	49 83 fc 05          	cmp    r12,0x5
    16c5:	74 34                	je     16fb <main+0x59b>
    16c7:	49 83 fc 06          	cmp    r12,0x6
    16cb:	74 15                	je     16e2 <main+0x582>
    16cd:	c5 7a 10 3a          	vmovss xmm15,DWORD PTR [rdx]
    16d1:	4c 8d 50 04          	lea    r10,[rax+0x4]
    16d5:	48 8d 6a 04          	lea    rbp,[rdx+0x4]
    16d9:	c4 62 71 a9 38       	vfmadd213ss xmm15,xmm1,DWORD PTR [rax]
    16de:	c5 7a 11 38          	vmovss DWORD PTR [rax],xmm15
    16e2:	c5 fa 10 7d 00       	vmovss xmm7,DWORD PTR [rbp+0x0]
    16e7:	49 83 c2 04          	add    r10,0x4
    16eb:	48 83 c5 04          	add    rbp,0x4
    16ef:	c4 c2 71 a9 7a fc    	vfmadd213ss xmm7,xmm1,DWORD PTR [r10-0x4]
    16f5:	c4 c1 7a 11 7a fc    	vmovss DWORD PTR [r10-0x4],xmm7
    16fb:	c5 fa 10 45 00       	vmovss xmm0,DWORD PTR [rbp+0x0]
    1700:	49 83 c2 04          	add    r10,0x4
    1704:	48 83 c5 04          	add    rbp,0x4
    1708:	c4 c2 71 a9 42 fc    	vfmadd213ss xmm0,xmm1,DWORD PTR [r10-0x4]
    170e:	c4 c1 7a 11 42 fc    	vmovss DWORD PTR [r10-0x4],xmm0
    1714:	c5 fa 10 5d 00       	vmovss xmm3,DWORD PTR [rbp+0x0]
    1719:	49 83 c2 04          	add    r10,0x4
    171d:	48 83 c5 04          	add    rbp,0x4
    1721:	c4 c2 71 a9 5a fc    	vfmadd213ss xmm3,xmm1,DWORD PTR [r10-0x4]
    1727:	c4 c1 7a 11 5a fc    	vmovss DWORD PTR [r10-0x4],xmm3
    172d:	c5 fa 10 55 00       	vmovss xmm2,DWORD PTR [rbp+0x0]
    1732:	49 83 c2 04          	add    r10,0x4
    1736:	48 83 c5 04          	add    rbp,0x4
    173a:	c4 c2 71 a9 52 fc    	vfmadd213ss xmm2,xmm1,DWORD PTR [r10-0x4]
    1740:	c4 c1 7a 11 52 fc    	vmovss DWORD PTR [r10-0x4],xmm2
    1746:	c5 fa 10 75 00       	vmovss xmm6,DWORD PTR [rbp+0x0]
    174b:	49 83 c2 04          	add    r10,0x4
    174f:	48 83 c5 04          	add    rbp,0x4
    1753:	c4 c2 71 a9 72 fc    	vfmadd213ss xmm6,xmm1,DWORD PTR [r10-0x4]
    1759:	c4 c1 7a 11 72 fc    	vmovss DWORD PTR [r10-0x4],xmm6
    175f:	c5 fa 10 65 00       	vmovss xmm4,DWORD PTR [rbp+0x0]
    1764:	49 83 c2 04          	add    r10,0x4
    1768:	48 83 c5 04          	add    rbp,0x4
    176c:	c4 c2 71 a9 62 fc    	vfmadd213ss xmm4,xmm1,DWORD PTR [r10-0x4]
    1772:	c4 c1 7a 11 62 fc    	vmovss DWORD PTR [r10-0x4],xmm4
    1778:	4c 3b 54 24 10       	cmp    r10,QWORD PTR [rsp+0x10]
    177d:	0f 84 9b 00 00 00    	je     181e <main+0x6be>
    1783:	c5 fa 10 6d 00       	vmovss xmm5,DWORD PTR [rbp+0x0]
    1788:	49 83 c2 20          	add    r10,0x20
    178c:	48 83 c5 20          	add    rbp,0x20
    1790:	c4 c2 71 a9 6a e0    	vfmadd213ss xmm5,xmm1,DWORD PTR [r10-0x20]
    1796:	c4 c1 7a 11 6a e0    	vmovss DWORD PTR [r10-0x20],xmm5
    179c:	c5 7a 10 45 e4       	vmovss xmm8,DWORD PTR [rbp-0x1c]
    17a1:	c4 42 71 a9 42 e4    	vfmadd213ss xmm8,xmm1,DWORD PTR [r10-0x1c]
    17a7:	c4 41 7a 11 42 e4    	vmovss DWORD PTR [r10-0x1c],xmm8
    17ad:	c5 7a 10 5d e8       	vmovss xmm11,DWORD PTR [rbp-0x18]
    17b2:	c4 42 71 a9 5a e8    	vfmadd213ss xmm11,xmm1,DWORD PTR [r10-0x18]
    17b8:	c4 41 7a 11 5a e8    	vmovss DWORD PTR [r10-0x18],xmm11
    17be:	c5 7a 10 65 ec       	vmovss xmm12,DWORD PTR [rbp-0x14]
    17c3:	c4 42 71 a9 62 ec    	vfmadd213ss xmm12,xmm1,DWORD PTR [r10-0x14]
    17c9:	c4 41 7a 11 62 ec    	vmovss DWORD PTR [r10-0x14],xmm12
    17cf:	c5 7a 10 6d f0       	vmovss xmm13,DWORD PTR [rbp-0x10]
    17d4:	c4 42 71 a9 6a f0    	vfmadd213ss xmm13,xmm1,DWORD PTR [r10-0x10]
    17da:	c4 41 7a 11 6a f0    	vmovss DWORD PTR [r10-0x10],xmm13
    17e0:	c5 7a 10 75 f4       	vmovss xmm14,DWORD PTR [rbp-0xc]
    17e5:	c4 42 71 a9 72 f4    	vfmadd213ss xmm14,xmm1,DWORD PTR [r10-0xc]
    17eb:	c4 41 7a 11 72 f4    	vmovss DWORD PTR [r10-0xc],xmm14
    17f1:	c5 7a 10 55 f8       	vmovss xmm10,DWORD PTR [rbp-0x8]
    17f6:	c4 42 71 a9 52 f8    	vfmadd213ss xmm10,xmm1,DWORD PTR [r10-0x8]
    17fc:	c4 41 7a 11 52 f8    	vmovss DWORD PTR [r10-0x8],xmm10
    1802:	c5 7a 10 7d fc       	vmovss xmm15,DWORD PTR [rbp-0x4]
    1807:	c4 42 71 a9 7a fc    	vfmadd213ss xmm15,xmm1,DWORD PTR [r10-0x4]
    180d:	c4 41 7a 11 7a fc    	vmovss DWORD PTR [r10-0x4],xmm15
    1813:	4c 3b 54 24 10       	cmp    r10,QWORD PTR [rsp+0x10]
    1818:	0f 85 65 ff ff ff    	jne    1783 <main+0x623>
    181e:	48 83 c6 04          	add    rsi,0x4
    1822:	48 01 da             	add    rdx,rbx
    1825:	49 01 f8             	add    r8,rdi
    1828:	49 29 d9             	sub    r9,rbx
    182b:	4c 39 ee             	cmp    rsi,r13
    182e:	0f 85 f9 fb ff ff    	jne    142d <main+0x2cd>
    1834:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
    1839:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    183e:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    1843:	49 ff c2             	inc    r10
    1846:	49 01 ff             	add    r15,rdi
    1849:	e9 89 fb ff ff       	jmp    13d7 <main+0x277>
    184e:	48 89 fd             	mov    rbp,rdi
    1851:	45 31 d2             	xor    r10d,r10d
    1854:	c4 62 79 18 d1       	vbroadcastss xmm10,xmm1
    1859:	e9 a7 fd ff ff       	jmp    1605 <main+0x4a5>
    185e:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
    1863:	bf 01 00 00 00       	mov    edi,0x1
    1868:	c4 41 f9 7e cf       	vmovq  r15,xmm9
    186d:	48 8b ac 24 98 00 00 	mov    rbp,QWORD PTR [rsp+0x98]
    1874:	00 
    1875:	49 89 ce             	mov    r14,rcx
    1878:	44 8b a4 24 94 00 00 	mov    r12d,DWORD PTR [rsp+0x94]
    187f:	00 
    1880:	48 89 de             	mov    rsi,rbx
    1883:	e8 68 f8 ff ff       	call   10f0 <clock_gettime@plt>
    1888:	c5 7b 10 1d b8 07 00 	vmovsd xmm11,QWORD PTR [rip+0x7b8]        # 2048 <_IO_stdin_used+0x48>
    188f:	00 
    1890:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
    1895:	c4 61 b3 2a 94 24 d8 	vcvtsi2sd xmm10,xmm9,QWORD PTR [rsp+0xd8]
    189c:	00 00 00 
    189f:	c4 62 a1 ab 54 24 78 	vfmsub213sd xmm10,xmm11,QWORD PTR [rsp+0x78]
    18a6:	c4 41 f9 6e e7       	vmovq  xmm12,r15
    18ab:	c4 e1 b3 2a 8c 24 d0 	vcvtsi2sd xmm1,xmm9,QWORD PTR [rsp+0xd0]
    18b2:	00 00 00 
    18b5:	c4 41 73 5c ec       	vsubsd xmm13,xmm1,xmm12
    18ba:	48 89 de             	mov    rsi,rbx
    18bd:	bf 01 00 00 00       	mov    edi,0x1
    18c2:	c4 41 13 58 f2       	vaddsd xmm14,xmm13,xmm10
    18c7:	c5 7b 11 74 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm14
    18cd:	e8 1e f8 ff ff       	call   10f0 <clock_gettime@plt>
    18d2:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
    18d7:	c4 e1 83 2a 9c 24 d8 	vcvtsi2sd xmm3,xmm15,QWORD PTR [rsp+0xd8]
    18de:	00 00 00 
    18e1:	c5 e3 59 05 5f 07 00 	vmulsd xmm0,xmm3,QWORD PTR [rip+0x75f]        # 2048 <_IO_stdin_used+0x48>
    18e8:	00 
    18e9:	48 8d 35 17 07 00 00 	lea    rsi,[rip+0x717]        # 2007 <_IO_stdin_used+0x7>
    18f0:	c4 e1 83 2a bc 24 d0 	vcvtsi2sd xmm7,xmm15,QWORD PTR [rsp+0xd0]
    18f7:	00 00 00 
    18fa:	c4 c1 f9 7e ff       	vmovq  r15,xmm7
    18ff:	48 8b 7d 18          	mov    rdi,QWORD PTR [rbp+0x18]
    1903:	c4 c1 f9 7e c5       	vmovq  r13,xmm0
    1908:	e8 23 f8 ff ff       	call   1130 <fopen@plt>
    190d:	c5 fb 10 54 24 08    	vmovsd xmm2,QWORD PTR [rsp+0x8]
    1913:	48 85 c0             	test   rax,rax
    1916:	48 89 c5             	mov    rbp,rax
    1919:	74 62                	je     197d <main+0x81d>
    191b:	48 8b 7c 24 58       	mov    rdi,QWORD PTR [rsp+0x58]
    1920:	48 89 c1             	mov    rcx,rax
    1923:	ba 01 00 00 00       	mov    edx,0x1
    1928:	be 08 00 00 00       	mov    esi,0x8
    192d:	e8 0e f8 ff ff       	call   1140 <fwrite@plt>
    1932:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
    1937:	48 89 e9             	mov    rcx,rbp
    193a:	ba 01 00 00 00       	mov    edx,0x1
    193f:	be 08 00 00 00       	mov    esi,0x8
    1944:	e8 f7 f7 ff ff       	call   1140 <fwrite@plt>
    1949:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
    1950:	00 
    1951:	48 89 e9             	mov    rcx,rbp
    1954:	be 04 00 00 00       	mov    esi,0x4
    1959:	48 0f af 94 24 c0 00 	imul   rdx,QWORD PTR [rsp+0xc0]
    1960:	00 00 
    1962:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
    1969:	00 
    196a:	e8 d1 f7 ff ff       	call   1140 <fwrite@plt>
    196f:	48 89 ef             	mov    rdi,rbp
    1972:	e8 89 f7 ff ff       	call   1100 <fclose@plt>
    1977:	c5 fb 10 54 24 08    	vmovsd xmm2,QWORD PTR [rsp+0x8]
    197d:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
    1982:	bf 01 00 00 00       	mov    edi,0x1
    1987:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    198d:	e8 5e f7 ff ff       	call   10f0 <clock_gettime@plt>
    1992:	c5 fb 10 ac 24 80 00 	vmovsd xmm5,QWORD PTR [rsp+0x80]
    1999:	00 00 
    199b:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
    199f:	c4 e1 cb 2a a4 24 d0 	vcvtsi2sd xmm4,xmm6,QWORD PTR [rsp+0xd0]
    19a6:	00 00 00 
    19a9:	4c 8b 94 24 a8 00 00 	mov    r10,QWORD PTR [rsp+0xa8]
    19b0:	00 
    19b1:	c4 61 cb 2a 8c 24 d8 	vcvtsi2sd xmm9,xmm6,QWORD PTR [rsp+0xd8]
    19b8:	00 00 00 
    19bb:	c5 b3 58 8c 24 88 00 	vaddsd xmm1,xmm9,QWORD PTR [rsp+0x88]
    19c2:	00 00 
    19c4:	c4 41 f9 6e dd       	vmovq  xmm11,r13
    19c9:	c5 73 5c 54 24 70    	vsubsd xmm10,xmm1,QWORD PTR [rsp+0x70]
    19cf:	c5 fb 10 4c 24 08    	vmovsd xmm1,QWORD PTR [rsp+0x8]
    19d5:	4d 85 d2             	test   r10,r10
    19d8:	c4 41 cb 2a f2       	vcvtsi2sd xmm14,xmm6,r10
    19dd:	c5 53 58 c4          	vaddsd xmm8,xmm5,xmm4
    19e1:	c4 41 3b 5c e3       	vsubsd xmm12,xmm8,xmm11
    19e6:	0f 88 e8 00 00 00    	js     1ad4 <main+0x974>
    19ec:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
    19f2:	c4 e1 cb 2a 7c 24 20 	vcvtsi2sd xmm7,xmm6,QWORD PTR [rsp+0x20]
    19f9:	0f 88 b5 00 00 00    	js     1ab4 <main+0x954>
    19ff:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
    1a06:	00 
    1a07:	c5 8b 59 c7          	vmulsd xmm0,xmm14,xmm7
    1a0b:	48 85 c0             	test   rax,rax
    1a0e:	0f 88 86 00 00 00    	js     1a9a <main+0x93a>
    1a14:	c4 e1 cb 2a d0       	vcvtsi2sd xmm2,xmm6,rax
    1a19:	c5 eb 59 35 2f 06 00 	vmulsd xmm6,xmm2,QWORD PTR [rip+0x62f]        # 2050 <_IO_stdin_used+0x50>
    1a20:	00 
    1a21:	c4 c1 f9 6e ef       	vmovq  xmm5,r15
    1a26:	c5 53 58 44 24 68    	vaddsd xmm8,xmm5,QWORD PTR [rsp+0x68]
    1a2c:	48 8d 35 dd 05 00 00 	lea    rsi,[rip+0x5dd]        # 2010 <_IO_stdin_used+0x10>
    1a33:	bf 02 00 00 00       	mov    edi,0x2
    1a38:	b8 03 00 00 00       	mov    eax,0x3
    1a3d:	c4 62 b9 9b 15 02 06 	vfmsub132sd xmm10,xmm8,QWORD PTR [rip+0x602]        # 2048 <_IO_stdin_used+0x48>
    1a44:	00 00 
    1a46:	c5 fb 59 e6          	vmulsd xmm4,xmm0,xmm6
    1a4a:	c5 db 5e d1          	vdivsd xmm2,xmm4,xmm1
    1a4e:	c4 c1 2b 58 c4       	vaddsd xmm0,xmm10,xmm12
    1a53:	e8 c8 f6 ff ff       	call   1120 <__printf_chk@plt>
    1a58:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    1a5d:	e8 6e f6 ff ff       	call   10d0 <free@plt>
    1a62:	4c 89 f7             	mov    rdi,r14
    1a65:	e8 66 f6 ff ff       	call   10d0 <free@plt>
    1a6a:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
    1a71:	00 
    1a72:	e8 59 f6 ff ff       	call   10d0 <free@plt>
    1a77:	e9 17 f7 ff ff       	jmp    1193 <main+0x33>
    1a7c:	48 83 7c 24 28 00    	cmp    QWORD PTR [rsp+0x28],0x0
    1a82:	0f 84 d7 f7 ff ff    	je     125f <main+0xff>
    1a88:	e9 c8 f7 ff ff       	jmp    1255 <main+0xf5>
    1a8d:	48 01 d8             	add    rax,rbx
    1a90:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    1a95:	e9 a4 fd ff ff       	jmp    183e <main+0x6de>
    1a9a:	48 89 c1             	mov    rcx,rax
    1a9d:	83 e0 01             	and    eax,0x1
    1aa0:	48 d1 e9             	shr    rcx,1
    1aa3:	48 09 c8             	or     rax,rcx
    1aa6:	c4 e1 cb 2a d8       	vcvtsi2sd xmm3,xmm6,rax
    1aab:	c5 e3 58 d3          	vaddsd xmm2,xmm3,xmm3
    1aaf:	e9 65 ff ff ff       	jmp    1a19 <main+0x8b9>
    1ab4:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
    1ab9:	48 89 f2             	mov    rdx,rsi
    1abc:	83 e6 01             	and    esi,0x1
    1abf:	48 d1 ea             	shr    rdx,1
    1ac2:	48 09 d6             	or     rsi,rdx
    1ac5:	c4 61 cb 2a fe       	vcvtsi2sd xmm15,xmm6,rsi
    1aca:	c4 c1 03 58 ff       	vaddsd xmm7,xmm15,xmm15
    1acf:	e9 2b ff ff ff       	jmp    19ff <main+0x89f>
    1ad4:	4d 89 d3             	mov    r11,r10
    1ad7:	41 83 e2 01          	and    r10d,0x1
    1adb:	49 d1 eb             	shr    r11,1
    1ade:	4d 09 da             	or     r10,r11
    1ae1:	c4 41 cb 2a ea       	vcvtsi2sd xmm13,xmm6,r10
    1ae6:	c4 41 13 58 f5       	vaddsd xmm14,xmm13,xmm13
    1aeb:	e9 fc fe ff ff       	jmp    19ec <main+0x88c>
    1af0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    1af5:	48 01 d8             	add    rax,rbx
    1af8:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    1afd:	4c 01 c5             	add    rbp,r8
    1b00:	e9 39 fd ff ff       	jmp    183e <main+0x6de>
    1b05:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    1b0a:	e8 c1 f5 ff ff       	call   10d0 <free@plt>
    1b0f:	4c 89 f7             	mov    rdi,r14
    1b12:	e8 b9 f5 ff ff       	call   10d0 <free@plt>
    1b17:	e9 71 f6 ff ff       	jmp    118d <main+0x2d>
    1b1c:	e8 ef f5 ff ff       	call   1110 <__stack_chk_fail@plt>
    1b21:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1b28:	00 00 00 
    1b2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001b30 <set_fast_math>:
    1b30:	f3 0f 1e fa          	endbr64
    1b34:	55                   	push   rbp
    1b35:	48 89 e5             	mov    rbp,rsp
    1b38:	0f ae 5d fc          	stmxcsr DWORD PTR [rbp-0x4]
    1b3c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1b3f:	0d 40 80 00 00       	or     eax,0x8040
    1b44:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    1b47:	0f ae 55 f8          	ldmxcsr DWORD PTR [rbp-0x8]
    1b4b:	5d                   	pop    rbp
    1b4c:	c3                   	ret
    1b4d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001b50 <_start>:
    1b50:	f3 0f 1e fa          	endbr64
    1b54:	31 ed                	xor    ebp,ebp
    1b56:	49 89 d1             	mov    r9,rdx
    1b59:	5e                   	pop    rsi
    1b5a:	48 89 e2             	mov    rdx,rsp
    1b5d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1b61:	50                   	push   rax
    1b62:	54                   	push   rsp
    1b63:	45 31 c0             	xor    r8d,r8d
    1b66:	31 c9                	xor    ecx,ecx
    1b68:	48 8d 3d f1 f5 ff ff 	lea    rdi,[rip+0xfffffffffffff5f1]        # 1160 <main>
    1b6f:	ff 15 63 24 00 00    	call   QWORD PTR [rip+0x2463]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1b75:	f4                   	hlt
    1b76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1b7d:	00 00 00 

0000000000001b80 <deregister_tm_clones>:
    1b80:	48 8d 3d 89 24 00 00 	lea    rdi,[rip+0x2489]        # 4010 <__TMC_END__>
    1b87:	48 8d 05 82 24 00 00 	lea    rax,[rip+0x2482]        # 4010 <__TMC_END__>
    1b8e:	48 39 f8             	cmp    rax,rdi
    1b91:	74 15                	je     1ba8 <deregister_tm_clones+0x28>
    1b93:	48 8b 05 46 24 00 00 	mov    rax,QWORD PTR [rip+0x2446]        # 3fe0 <_ITM_deregisterTMCloneTable>
    1b9a:	48 85 c0             	test   rax,rax
    1b9d:	74 09                	je     1ba8 <deregister_tm_clones+0x28>
    1b9f:	ff e0                	jmp    rax
    1ba1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1ba8:	c3                   	ret
    1ba9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001bb0 <register_tm_clones>:
    1bb0:	48 8d 3d 59 24 00 00 	lea    rdi,[rip+0x2459]        # 4010 <__TMC_END__>
    1bb7:	48 8d 35 52 24 00 00 	lea    rsi,[rip+0x2452]        # 4010 <__TMC_END__>
    1bbe:	48 29 fe             	sub    rsi,rdi
    1bc1:	48 89 f0             	mov    rax,rsi
    1bc4:	48 c1 ee 3f          	shr    rsi,0x3f
    1bc8:	48 c1 f8 03          	sar    rax,0x3
    1bcc:	48 01 c6             	add    rsi,rax
    1bcf:	48 d1 fe             	sar    rsi,1
    1bd2:	74 14                	je     1be8 <register_tm_clones+0x38>
    1bd4:	48 8b 05 15 24 00 00 	mov    rax,QWORD PTR [rip+0x2415]        # 3ff0 <_ITM_registerTMCloneTable>
    1bdb:	48 85 c0             	test   rax,rax
    1bde:	74 08                	je     1be8 <register_tm_clones+0x38>
    1be0:	ff e0                	jmp    rax
    1be2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1be8:	c3                   	ret
    1be9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001bf0 <__do_global_dtors_aux>:
    1bf0:	f3 0f 1e fa          	endbr64
    1bf4:	80 3d 15 24 00 00 00 	cmp    BYTE PTR [rip+0x2415],0x0        # 4010 <__TMC_END__>
    1bfb:	75 2b                	jne    1c28 <__do_global_dtors_aux+0x38>
    1bfd:	55                   	push   rbp
    1bfe:	48 83 3d f2 23 00 00 	cmp    QWORD PTR [rip+0x23f2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1c05:	00 
    1c06:	48 89 e5             	mov    rbp,rsp
    1c09:	74 0c                	je     1c17 <__do_global_dtors_aux+0x27>
    1c0b:	48 8b 3d f6 23 00 00 	mov    rdi,QWORD PTR [rip+0x23f6]        # 4008 <__dso_handle>
    1c12:	e8 a9 f4 ff ff       	call   10c0 <__cxa_finalize@plt>
    1c17:	e8 64 ff ff ff       	call   1b80 <deregister_tm_clones>
    1c1c:	c6 05 ed 23 00 00 01 	mov    BYTE PTR [rip+0x23ed],0x1        # 4010 <__TMC_END__>
    1c23:	5d                   	pop    rbp
    1c24:	c3                   	ret
    1c25:	0f 1f 00             	nop    DWORD PTR [rax]
    1c28:	c3                   	ret
    1c29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001c30 <frame_dummy>:
    1c30:	f3 0f 1e fa          	endbr64
    1c34:	e9 77 ff ff ff       	jmp    1bb0 <register_tm_clones>
    1c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001c40 <carregar_matriz>:
    1c40:	f3 0f 1e fa          	endbr64
    1c44:	41 54                	push   r12
    1c46:	55                   	push   rbp
    1c47:	48 89 f5             	mov    rbp,rsi
    1c4a:	48 8d 35 b3 03 00 00 	lea    rsi,[rip+0x3b3]        # 2004 <_IO_stdin_used+0x4>
    1c51:	53                   	push   rbx
    1c52:	48 83 ec 10          	sub    rsp,0x10
    1c56:	64 4c 8b 24 25 28 00 	mov    r12,QWORD PTR fs:0x28
    1c5d:	00 00 
    1c5f:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
    1c64:	49 89 d4             	mov    r12,rdx
    1c67:	e8 c4 f4 ff ff       	call   1130 <fopen@plt>
    1c6c:	48 85 c0             	test   rax,rax
    1c6f:	0f 84 c3 00 00 00    	je     1d38 <carregar_matriz+0xf8>
    1c75:	48 89 c1             	mov    rcx,rax
    1c78:	ba 01 00 00 00       	mov    edx,0x1
    1c7d:	be 08 00 00 00       	mov    esi,0x8
    1c82:	48 89 ef             	mov    rdi,rbp
    1c85:	48 89 c3             	mov    rbx,rax
    1c88:	e8 53 f4 ff ff       	call   10e0 <fread@plt>
    1c8d:	48 83 f8 01          	cmp    rax,0x1
    1c91:	0f 85 99 00 00 00    	jne    1d30 <carregar_matriz+0xf0>
    1c97:	48 89 d9             	mov    rcx,rbx
    1c9a:	ba 01 00 00 00       	mov    edx,0x1
    1c9f:	be 08 00 00 00       	mov    esi,0x8
    1ca4:	4c 89 e7             	mov    rdi,r12
    1ca7:	e8 34 f4 ff ff       	call   10e0 <fread@plt>
    1cac:	48 83 f8 01          	cmp    rax,0x1
    1cb0:	75 7e                	jne    1d30 <carregar_matriz+0xf0>
    1cb2:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    1cb6:	49 0f af 14 24       	imul   rdx,QWORD PTR [r12]
    1cbb:	48 89 e7             	mov    rdi,rsp
    1cbe:	be 40 00 00 00       	mov    esi,0x40
    1cc3:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
    1cca:	00 
    1ccb:	48 c1 e2 02          	shl    rdx,0x2
    1ccf:	e8 7c f4 ff ff       	call   1150 <posix_memalign@plt>
    1cd4:	85 c0                	test   eax,eax
    1cd6:	75 58                	jne    1d30 <carregar_matriz+0xf0>
    1cd8:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    1cdc:	49 0f af 14 24       	imul   rdx,QWORD PTR [r12]
    1ce1:	48 89 d9             	mov    rcx,rbx
    1ce4:	be 04 00 00 00       	mov    esi,0x4
    1ce9:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    1ced:	e8 ee f3 ff ff       	call   10e0 <fread@plt>
    1cf2:	48 89 c2             	mov    rdx,rax
    1cf5:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    1cf9:	49 0f af 04 24       	imul   rax,QWORD PTR [r12]
    1cfe:	48 39 d0             	cmp    rax,rdx
    1d01:	75 3d                	jne    1d40 <carregar_matriz+0x100>
    1d03:	48 89 df             	mov    rdi,rbx
    1d06:	e8 f5 f3 ff ff       	call   1100 <fclose@plt>
    1d0b:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    1d0f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    1d14:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1d1b:	00 00 
    1d1d:	75 36                	jne    1d55 <carregar_matriz+0x115>
    1d1f:	48 83 c4 10          	add    rsp,0x10
    1d23:	5b                   	pop    rbx
    1d24:	5d                   	pop    rbp
    1d25:	41 5c                	pop    r12
    1d27:	c3                   	ret
    1d28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1d2f:	00 
    1d30:	48 89 df             	mov    rdi,rbx
    1d33:	e8 c8 f3 ff ff       	call   1100 <fclose@plt>
    1d38:	31 c0                	xor    eax,eax
    1d3a:	eb d3                	jmp    1d0f <carregar_matriz+0xcf>
    1d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1d40:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    1d44:	e8 87 f3 ff ff       	call   10d0 <free@plt>
    1d49:	48 89 df             	mov    rdi,rbx
    1d4c:	e8 af f3 ff ff       	call   1100 <fclose@plt>
    1d51:	31 c0                	xor    eax,eax
    1d53:	eb ba                	jmp    1d0f <carregar_matriz+0xcf>
    1d55:	e8 b6 f3 ff ff       	call   1110 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001d5c <_fini>:
    1d5c:	f3 0f 1e fa          	endbr64
    1d60:	48 83 ec 08          	sub    rsp,0x8
    1d64:	48 83 c4 08          	add    rsp,0x8
    1d68:	c3                   	ret
