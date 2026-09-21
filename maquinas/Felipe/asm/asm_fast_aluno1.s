
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
    1164:	4c 8d 54 24 08       	lea    r10,[rsp+0x8]
    1169:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    116d:	41 ff 72 f8          	push   QWORD PTR [r10-0x8]
    1171:	55                   	push   rbp
    1172:	48 89 e5             	mov    rbp,rsp
    1175:	41 57                	push   r15
    1177:	41 56                	push   r14
    1179:	41 55                	push   r13
    117b:	41 54                	push   r12
    117d:	41 52                	push   r10
    117f:	53                   	push   rbx
    1180:	48 81 ec 00 01 00 00 	sub    rsp,0x100
    1187:	48 89 b5 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rsi
    118e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1195:	00 00 
    1197:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    119b:	31 c0                	xor    eax,eax
    119d:	83 ff 04             	cmp    edi,0x4
    11a0:	74 33                	je     11d5 <main+0x75>
    11a2:	41 bd 01 00 00 00    	mov    r13d,0x1
    11a8:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    11ac:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    11b3:	00 00 
    11b5:	0f 85 7d 09 00 00    	jne    1b38 <main+0x9d8>
    11bb:	48 81 c4 00 01 00 00 	add    rsp,0x100
    11c2:	44 89 e8             	mov    eax,r13d
    11c5:	5b                   	pop    rbx
    11c6:	5a                   	pop    rdx
    11c7:	41 5c                	pop    r12
    11c9:	41 5d                	pop    r13
    11cb:	41 5e                	pop    r14
    11cd:	41 5f                	pop    r15
    11cf:	5d                   	pop    rbp
    11d0:	48 8d 62 f8          	lea    rsp,[rdx-0x8]
    11d4:	c3                   	ret
    11d5:	48 8d 75 b0          	lea    rsi,[rbp-0x50]
    11d9:	bf 01 00 00 00       	mov    edi,0x1
    11de:	48 89 b5 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rsi
    11e5:	e8 06 ff ff ff       	call   10f0 <clock_gettime@plt>
    11ea:	4c 8b bd 58 ff ff ff 	mov    r15,QWORD PTR [rbp-0xa8]
    11f1:	48 8d 75 88          	lea    rsi,[rbp-0x78]
    11f5:	48 8d 55 90          	lea    rdx,[rbp-0x70]
    11f9:	48 89 b5 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rsi
    1200:	4c 8b 75 b0          	mov    r14,QWORD PTR [rbp-0x50]
    1204:	48 8b 5d b8          	mov    rbx,QWORD PTR [rbp-0x48]
    1208:	49 8b 7f 08          	mov    rdi,QWORD PTR [r15+0x8]
    120c:	e8 3f 0a 00 00       	call   1c50 <carregar_matriz>
    1211:	49 8b 7f 10          	mov    rdi,QWORD PTR [r15+0x10]
    1215:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
    1219:	48 8d 75 98          	lea    rsi,[rbp-0x68]
    121d:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
    1224:	48 89 95 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],rdx
    122b:	e8 20 0a 00 00       	call   1c50 <carregar_matriz>
    1230:	49 89 c5             	mov    r13,rax
    1233:	48 83 bd 50 ff ff ff 	cmp    QWORD PTR [rbp-0xb0],0x0
    123a:	00 
    123b:	74 26                	je     1263 <main+0x103>
    123d:	48 85 c0             	test   rax,rax
    1240:	0f 84 b4 08 00 00    	je     1afa <main+0x99a>
    1246:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
    124a:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
    1251:	48 3b 45 98          	cmp    rax,QWORD PTR [rbp-0x68]
    1255:	74 22                	je     1279 <main+0x119>
    1257:	48 8b bd 50 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb0]
    125e:	e8 6d fe ff ff       	call   10d0 <free@plt>
    1263:	4d 85 ed             	test   r13,r13
    1266:	0f 84 36 ff ff ff    	je     11a2 <main+0x42>
    126c:	4c 89 ef             	mov    rdi,r13
    126f:	e8 5c fe ff ff       	call   10d0 <free@plt>
    1274:	e9 29 ff ff ff       	jmp    11a2 <main+0x42>
    1279:	31 d2                	xor    edx,edx
    127b:	48 8d 7d a8          	lea    rdi,[rbp-0x58]
    127f:	be 40 00 00 00       	mov    esi,0x40
    1284:	48 89 55 a8          	mov    QWORD PTR [rbp-0x58],rdx
    1288:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
    128c:	48 0f af 55 a0       	imul   rdx,QWORD PTR [rbp-0x60]
    1291:	48 c1 e2 02          	shl    rdx,0x2
    1295:	e8 b6 fe ff ff       	call   1150 <posix_memalign@plt>
    129a:	41 89 c1             	mov    r9d,eax
    129d:	85 c0                	test   eax,eax
    129f:	0f 85 7a 08 00 00    	jne    1b1f <main+0x9bf>
    12a5:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
    12a9:	4c 8b 65 88          	mov    r12,QWORD PTR [rbp-0x78]
    12ad:	c4 c1 d3 2a c6       	vcvtsi2sd xmm0,xmm5,r14
    12b2:	c4 e1 d3 2a cb       	vcvtsi2sd xmm1,xmm5,rbx
    12b7:	4c 0f af 65 a0       	imul   r12,QWORD PTR [rbp-0x60]
    12bc:	4c 8b 75 a8          	mov    r14,QWORD PTR [rbp-0x58]
    12c0:	31 db                	xor    ebx,ebx
    12c2:	c5 f9 13 85 08 ff ff 	vmovlpd QWORD PTR [rbp-0xf8],xmm0
    12c9:	ff 
    12ca:	c5 f9 13 8d 00 ff ff 	vmovlpd QWORD PTR [rbp-0x100],xmm1
    12d1:	ff 
    12d2:	eb 17                	jmp    12eb <main+0x18b>
    12d4:	90                   	nop
    12d5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    12dc:	00 00 00 00 
    12e0:	41 c7 04 9e 00 00 00 	mov    DWORD PTR [r14+rbx*4],0x0
    12e7:	00 
    12e8:	48 ff c3             	inc    rbx
    12eb:	49 39 dc             	cmp    r12,rbx
    12ee:	75 f0                	jne    12e0 <main+0x180>
    12f0:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
    12f7:	bf 01 00 00 00       	mov    edi,0x1
    12fc:	44 89 8d 78 ff ff ff 	mov    DWORD PTR [rbp-0x88],r9d
    1303:	45 31 ff             	xor    r15d,r15d
    1306:	e8 e5 fd ff ff       	call   10f0 <clock_gettime@plt>
    130b:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
    1312:	bf 01 00 00 00       	mov    edi,0x1
    1317:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
    131b:	c4 e1 eb 2a 5d b0    	vcvtsi2sd xmm3,xmm2,QWORD PTR [rbp-0x50]
    1321:	c4 e1 eb 2a 65 b8    	vcvtsi2sd xmm4,xmm2,QWORD PTR [rbp-0x48]
    1327:	c5 f9 13 9d e8 fe ff 	vmovlpd QWORD PTR [rbp-0x118],xmm3
    132e:	ff 
    132f:	c5 f9 13 a5 e0 fe ff 	vmovlpd QWORD PTR [rbp-0x120],xmm4
    1336:	ff 
    1337:	e8 b4 fd ff ff       	call   10f0 <clock_gettime@plt>
    133c:	4c 8b 75 a0          	mov    r14,QWORD PTR [rbp-0x60]
    1340:	48 8b 7d 88          	mov    rdi,QWORD PTR [rbp-0x78]
    1344:	44 8b 8d 78 ff ff ff 	mov    r9d,DWORD PTR [rbp-0x88]
    134b:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
    134f:	c4 61 cb 2a 45 b8    	vcvtsi2sd xmm8,xmm6,QWORD PTR [rbp-0x48]
    1355:	c5 3b 59 0d eb 0c 00 	vmulsd xmm9,xmm8,QWORD PTR [rip+0xceb]        # 2048 <_IO_stdin_used+0x48>
    135c:	00 
    135d:	48 8b 5d a8          	mov    rbx,QWORD PTR [rbp-0x58]
    1361:	c4 e1 cb 2a 7d b0    	vcvtsi2sd xmm7,xmm6,QWORD PTR [rbp-0x50]
    1367:	45 31 d2             	xor    r10d,r10d
    136a:	c5 f9 13 bd f8 fe ff 	vmovlpd QWORD PTR [rbp-0x108],xmm7
    1371:	ff 
    1372:	31 f6                	xor    esi,esi
    1374:	4d 8d 46 ff          	lea    r8,[r14-0x1]
    1378:	4d 89 f4             	mov    r12,r14
    137b:	48 89 bd 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rdi
    1382:	44 89 8d dc fe ff ff 	mov    DWORD PTR [rbp-0x124],r9d
    1389:	4c 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r8
    1390:	4a 8d 0c b5 00 00 00 	lea    rcx,[r14*4+0x0]
    1397:	00 
    1398:	c4 61 f9 6e c1       	vmovq  xmm8,rcx
    139d:	49 c1 ec 04          	shr    r12,0x4
    13a1:	c5 7b 11 8d f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm9
    13a8:	ff 
    13a9:	49 c1 e4 06          	shl    r12,0x6
    13ad:	48 39 b5 28 ff ff ff 	cmp    QWORD PTR [rbp-0xd8],rsi
    13b4:	0f 84 54 05 00 00    	je     190e <main+0x7ae>
    13ba:	4b 8d 3c 3e          	lea    rdi,[r14+r15*1]
    13be:	48 83 bd 48 ff ff ff 	cmp    QWORD PTR [rbp-0xb8],0x0
    13c5:	00 
    13c6:	0f 84 7c 03 00 00    	je     1748 <main+0x5e8>
    13cc:	4d 85 f6             	test   r14,r14
    13cf:	0f 84 38 07 00 00    	je     1b0d <main+0x9ad>
    13d5:	48 8b 8d 50 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xb0]
    13dc:	4a 8d 04 bb          	lea    rax,[rbx+r15*4]
    13e0:	4b 8d 3c 3e          	lea    rdi,[r14+r15*1]
    13e4:	48 89 b5 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rsi
    13eb:	48 89 bd 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rdi
    13f2:	4c 8d 04 bb          	lea    r8,[rbx+rdi*4]
    13f6:	4c 89 ea             	mov    rdx,r13
    13f9:	4c 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],r8
    1400:	45 31 c0             	xor    r8d,r8d
    1403:	4e 8d 0c 91          	lea    r9,[rcx+r10*4]
    1407:	4c 03 95 48 ff ff ff 	add    r10,QWORD PTR [rbp-0xb8]
    140e:	4e 8d 1c 91          	lea    r11,[rcx+r10*4]
    1412:	48 8d 48 fc          	lea    rcx,[rax-0x4]
    1416:	4c 89 95 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],r10
    141d:	4c 89 9d 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r11
    1424:	48 89 8d 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rcx
    142b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1430:	4c 8b 95 70 ff ff ff 	mov    r10,QWORD PTR [rbp-0x90]
    1437:	c4 41 7a 10 09       	vmovss xmm9,DWORD PTR [r9]
    143c:	49 29 d2             	sub    r10,rdx
    143f:	49 83 fa 38          	cmp    r10,0x38
    1443:	0f 86 17 03 00 00    	jbe    1760 <main+0x600>
    1449:	48 83 bd 68 ff ff ff 	cmp    QWORD PTR [rbp-0x98],0xe
    1450:	0e 
    1451:	0f 86 a5 04 00 00    	jbe    18fc <main+0x79c>
    1457:	49 8d 74 24 c0       	lea    rsi,[r12-0x40]
    145c:	62 d2 7d 48 18 d1    	vbroadcastss zmm2,xmm9
    1462:	31 ff                	xor    edi,edi
    1464:	48 c1 ee 06          	shr    rsi,0x6
    1468:	48 ff c6             	inc    rsi
    146b:	83 e6 07             	and    esi,0x7
    146e:	0f 84 e2 00 00 00    	je     1556 <main+0x3f6>
    1474:	48 83 fe 01          	cmp    rsi,0x1
    1478:	0f 84 b6 00 00 00    	je     1534 <main+0x3d4>
    147e:	48 83 fe 02          	cmp    rsi,0x2
    1482:	0f 84 93 00 00 00    	je     151b <main+0x3bb>
    1488:	48 83 fe 03          	cmp    rsi,0x3
    148c:	74 74                	je     1502 <main+0x3a2>
    148e:	48 83 fe 04          	cmp    rsi,0x4
    1492:	74 55                	je     14e9 <main+0x389>
    1494:	48 83 fe 05          	cmp    rsi,0x5
    1498:	74 36                	je     14d0 <main+0x370>
    149a:	48 83 fe 06          	cmp    rsi,0x6
    149e:	74 17                	je     14b7 <main+0x357>
    14a0:	62 f1 7c 48 10 1a    	vmovups zmm3,ZMMWORD PTR [rdx]
    14a6:	62 f2 6d 48 a8 18    	vfmadd213ps zmm3,zmm2,ZMMWORD PTR [rax]
    14ac:	bf 40 00 00 00       	mov    edi,0x40
    14b1:	62 f1 7c 48 11 18    	vmovups ZMMWORD PTR [rax],zmm3
    14b7:	62 f1 7c 48 10 34 3a 	vmovups zmm6,ZMMWORD PTR [rdx+rdi*1]
    14be:	62 f2 6d 48 a8 34 38 	vfmadd213ps zmm6,zmm2,ZMMWORD PTR [rax+rdi*1]
    14c5:	62 f1 7c 48 11 34 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm6
    14cc:	48 83 c7 40          	add    rdi,0x40
    14d0:	62 f1 7c 48 10 3c 3a 	vmovups zmm7,ZMMWORD PTR [rdx+rdi*1]
    14d7:	62 f2 6d 48 a8 3c 38 	vfmadd213ps zmm7,zmm2,ZMMWORD PTR [rax+rdi*1]
    14de:	62 f1 7c 48 11 3c 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm7
    14e5:	48 83 c7 40          	add    rdi,0x40
    14e9:	62 71 7c 48 10 14 3a 	vmovups zmm10,ZMMWORD PTR [rdx+rdi*1]
    14f0:	62 72 6d 48 a8 14 38 	vfmadd213ps zmm10,zmm2,ZMMWORD PTR [rax+rdi*1]
    14f7:	62 71 7c 48 11 14 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm10
    14fe:	48 83 c7 40          	add    rdi,0x40
    1502:	62 71 7c 48 10 1c 3a 	vmovups zmm11,ZMMWORD PTR [rdx+rdi*1]
    1509:	62 72 6d 48 a8 1c 38 	vfmadd213ps zmm11,zmm2,ZMMWORD PTR [rax+rdi*1]
    1510:	62 71 7c 48 11 1c 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm11
    1517:	48 83 c7 40          	add    rdi,0x40
    151b:	62 71 7c 48 10 24 3a 	vmovups zmm12,ZMMWORD PTR [rdx+rdi*1]
    1522:	62 72 6d 48 a8 24 38 	vfmadd213ps zmm12,zmm2,ZMMWORD PTR [rax+rdi*1]
    1529:	62 71 7c 48 11 24 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm12
    1530:	48 83 c7 40          	add    rdi,0x40
    1534:	62 71 7c 48 10 2c 3a 	vmovups zmm13,ZMMWORD PTR [rdx+rdi*1]
    153b:	62 72 6d 48 a8 2c 38 	vfmadd213ps zmm13,zmm2,ZMMWORD PTR [rax+rdi*1]
    1542:	62 71 7c 48 11 2c 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm13
    1549:	48 83 c7 40          	add    rdi,0x40
    154d:	49 39 fc             	cmp    r12,rdi
    1550:	0f 84 cd 00 00 00    	je     1623 <main+0x4c3>
    1556:	62 71 7c 48 10 34 3a 	vmovups zmm14,ZMMWORD PTR [rdx+rdi*1]
    155d:	62 72 6d 48 a8 34 38 	vfmadd213ps zmm14,zmm2,ZMMWORD PTR [rax+rdi*1]
    1564:	62 71 7c 48 11 34 38 	vmovups ZMMWORD PTR [rax+rdi*1],zmm14
    156b:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
    1572:	01 
    1573:	62 72 6d 48 a8 7c 07 	vfmadd213ps zmm15,zmm2,ZMMWORD PTR [rdi+rax*1+0x40]
    157a:	01 
    157b:	48 81 c7 00 02 00 00 	add    rdi,0x200
    1582:	62 71 7c 48 11 7c 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x1c0],zmm15
    1589:	f9 
    158a:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1-0x180]
    1591:	fa 
    1592:	62 f2 6d 48 a8 4c 07 	vfmadd213ps zmm1,zmm2,ZMMWORD PTR [rdi+rax*1-0x180]
    1599:	fa 
    159a:	62 f1 7c 48 11 4c 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x180],zmm1
    15a1:	fa 
    15a2:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1-0x140]
    15a9:	fb 
    15aa:	62 f2 6d 48 a8 6c 07 	vfmadd213ps zmm5,zmm2,ZMMWORD PTR [rdi+rax*1-0x140]
    15b1:	fb 
    15b2:	62 f1 7c 48 11 6c 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x140],zmm5
    15b9:	fb 
    15ba:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1-0x100]
    15c1:	fc 
    15c2:	62 f2 6d 48 a8 44 07 	vfmadd213ps zmm0,zmm2,ZMMWORD PTR [rdi+rax*1-0x100]
    15c9:	fc 
    15ca:	62 f1 7c 48 11 44 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x100],zmm0
    15d1:	fc 
    15d2:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1-0xc0]
    15d9:	fd 
    15da:	62 f2 6d 48 a8 64 07 	vfmadd213ps zmm4,zmm2,ZMMWORD PTR [rdi+rax*1-0xc0]
    15e1:	fd 
    15e2:	62 f1 7c 48 11 64 07 	vmovups ZMMWORD PTR [rdi+rax*1-0xc0],zmm4
    15e9:	fd 
    15ea:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1-0x80]
    15f1:	fe 
    15f2:	62 f2 6d 48 a8 5c 07 	vfmadd213ps zmm3,zmm2,ZMMWORD PTR [rdi+rax*1-0x80]
    15f9:	fe 
    15fa:	62 f1 7c 48 11 5c 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x80],zmm3
    1601:	fe 
    1602:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1-0x40]
    1609:	ff 
    160a:	62 f2 6d 48 a8 74 07 	vfmadd213ps zmm6,zmm2,ZMMWORD PTR [rdi+rax*1-0x40]
    1611:	ff 
    1612:	62 f1 7c 48 11 74 07 	vmovups ZMMWORD PTR [rdi+rax*1-0x40],zmm6
    1619:	ff 
    161a:	49 39 fc             	cmp    r12,rdi
    161d:	0f 85 33 ff ff ff    	jne    1556 <main+0x3f6>
    1623:	41 f6 c6 0f          	test   r14b,0xf
    1627:	0f 84 ea 00 00 00    	je     1717 <main+0x5b7>
    162d:	4c 89 f1             	mov    rcx,r14
    1630:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
    1634:	4c 89 f6             	mov    rsi,r14
    1637:	48 29 ce             	sub    rsi,rcx
    163a:	4c 8d 5e ff          	lea    r11,[rsi-0x1]
    163e:	49 83 fb 06          	cmp    r11,0x6
    1642:	0f 86 bb 02 00 00    	jbe    1903 <main+0x7a3>
    1648:	4e 8d 1c 39          	lea    r11,[rcx+r15*1]
    164c:	49 8d 3c 08          	lea    rdi,[r8+rcx*1]
    1650:	c4 c2 7d 18 d1       	vbroadcastss ymm2,xmm9
    1655:	c4 a1 7c 10 3c 9b    	vmovups ymm7,YMMWORD PTR [rbx+r11*4]
    165b:	c4 c2 45 98 54 bd 00 	vfmadd132ps ymm2,ymm7,YMMWORD PTR [r13+rdi*4+0x0]
    1662:	c4 a1 7c 11 14 9b    	vmovups YMMWORD PTR [rbx+r11*4],ymm2
    1668:	40 f6 c6 07          	test   sil,0x7
    166c:	0f 84 a5 00 00 00    	je     1717 <main+0x5b7>
    1672:	49 89 f2             	mov    r10,rsi
    1675:	49 83 e2 f8          	and    r10,0xfffffffffffffff8
    1679:	4a 8d 3c 11          	lea    rdi,[rcx+r10*1]
    167d:	4c 29 d6             	sub    rsi,r10
    1680:	4c 8d 5e ff          	lea    r11,[rsi-0x1]
    1684:	49 83 fb 02          	cmp    r11,0x2
    1688:	76 2f                	jbe    16b9 <main+0x559>
    168a:	4c 01 d1             	add    rcx,r10
    168d:	c4 42 79 18 d1       	vbroadcastss xmm10,xmm9
    1692:	4e 8d 14 39          	lea    r10,[rcx+r15*1]
    1696:	4c 01 c1             	add    rcx,r8
    1699:	c4 21 78 10 1c 93    	vmovups xmm11,XMMWORD PTR [rbx+r10*4]
    169f:	c4 42 21 98 54 8d 00 	vfmadd132ps xmm10,xmm11,XMMWORD PTR [r13+rcx*4+0x0]
    16a6:	c4 21 78 11 14 93    	vmovups XMMWORD PTR [rbx+r10*4],xmm10
    16ac:	40 f6 c6 03          	test   sil,0x3
    16b0:	74 65                	je     1717 <main+0x5b7>
    16b2:	48 83 e6 fc          	and    rsi,0xfffffffffffffffc
    16b6:	48 01 f7             	add    rdi,rsi
    16b9:	4a 8d 0c 3f          	lea    rcx,[rdi+r15*1]
    16bd:	49 8d 34 38          	lea    rsi,[r8+rdi*1]
    16c1:	4c 8d 5f 01          	lea    r11,[rdi+0x1]
    16c5:	c4 41 7a 10 64 b5 00 	vmovss xmm12,DWORD PTR [r13+rsi*4+0x0]
    16cc:	c4 62 31 a9 24 8b    	vfmadd213ss xmm12,xmm9,DWORD PTR [rbx+rcx*4]
    16d2:	c5 7a 11 24 8b       	vmovss DWORD PTR [rbx+rcx*4],xmm12
    16d7:	4d 39 f3             	cmp    r11,r14
    16da:	73 3b                	jae    1717 <main+0x5b7>
    16dc:	4f 8d 14 3b          	lea    r10,[r11+r15*1]
    16e0:	4d 01 c3             	add    r11,r8
    16e3:	48 83 c7 02          	add    rdi,0x2
    16e7:	c4 01 7a 10 6c 9d 00 	vmovss xmm13,DWORD PTR [r13+r11*4+0x0]
    16ee:	c4 22 31 a9 2c 93    	vfmadd213ss xmm13,xmm9,DWORD PTR [rbx+r10*4]
    16f4:	c4 21 7a 11 2c 93    	vmovss DWORD PTR [rbx+r10*4],xmm13
    16fa:	4c 39 f7             	cmp    rdi,r14
    16fd:	73 18                	jae    1717 <main+0x5b7>
    16ff:	4a 8d 0c 3f          	lea    rcx,[rdi+r15*1]
    1703:	4c 01 c7             	add    rdi,r8
    1706:	c5 7a 10 34 8b       	vmovss xmm14,DWORD PTR [rbx+rcx*4]
    170b:	c4 42 09 99 4c bd 00 	vfmadd132ss xmm9,xmm14,DWORD PTR [r13+rdi*4+0x0]
    1712:	c5 7a 11 0c 8b       	vmovss DWORD PTR [rbx+rcx*4],xmm9
    1717:	c4 41 f9 7e c2       	vmovq  r10,xmm8
    171c:	49 83 c1 04          	add    r9,0x4
    1720:	4d 01 f0             	add    r8,r14
    1723:	4c 01 d2             	add    rdx,r10
    1726:	4c 39 8d 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],r9
    172d:	0f 85 fd fc ff ff    	jne    1430 <main+0x2d0>
    1733:	48 8b b5 40 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc0]
    173a:	4c 8b 95 38 ff ff ff 	mov    r10,QWORD PTR [rbp-0xc8]
    1741:	48 8b bd 30 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd0]
    1748:	48 ff c6             	inc    rsi
    174b:	49 89 ff             	mov    r15,rdi
    174e:	e9 5a fc ff ff       	jmp    13ad <main+0x24d>
    1753:	66 90                	xchg   ax,ax
    1755:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    175c:	00 00 00 00 
    1760:	48 8b bd 60 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa0]
    1767:	48 89 d6             	mov    rsi,rdx
    176a:	49 89 c3             	mov    r11,rax
    176d:	48 29 c7             	sub    rdi,rax
    1770:	48 83 ef 04          	sub    rdi,0x4
    1774:	48 c1 ef 02          	shr    rdi,0x2
    1778:	48 ff c7             	inc    rdi
    177b:	83 e7 07             	and    edi,0x7
    177e:	0f 84 d8 00 00 00    	je     185c <main+0x6fc>
    1784:	48 83 ff 01          	cmp    rdi,0x1
    1788:	0f 84 aa 00 00 00    	je     1838 <main+0x6d8>
    178e:	48 83 ff 02          	cmp    rdi,0x2
    1792:	0f 84 89 00 00 00    	je     1821 <main+0x6c1>
    1798:	48 83 ff 03          	cmp    rdi,0x3
    179c:	74 6c                	je     180a <main+0x6aa>
    179e:	48 83 ff 04          	cmp    rdi,0x4
    17a2:	74 4f                	je     17f3 <main+0x693>
    17a4:	48 83 ff 05          	cmp    rdi,0x5
    17a8:	74 32                	je     17dc <main+0x67c>
    17aa:	48 83 ff 06          	cmp    rdi,0x6
    17ae:	74 15                	je     17c5 <main+0x665>
    17b0:	c5 7a 10 3a          	vmovss xmm15,DWORD PTR [rdx]
    17b4:	c4 62 31 a9 38       	vfmadd213ss xmm15,xmm9,DWORD PTR [rax]
    17b9:	4c 8d 58 04          	lea    r11,[rax+0x4]
    17bd:	48 8d 72 04          	lea    rsi,[rdx+0x4]
    17c1:	c5 7a 11 38          	vmovss DWORD PTR [rax],xmm15
    17c5:	c5 fa 10 0e          	vmovss xmm1,DWORD PTR [rsi]
    17c9:	c4 c2 31 a9 0b       	vfmadd213ss xmm1,xmm9,DWORD PTR [r11]
    17ce:	48 83 c6 04          	add    rsi,0x4
    17d2:	49 83 c3 04          	add    r11,0x4
    17d6:	c4 c1 7a 11 4b fc    	vmovss DWORD PTR [r11-0x4],xmm1
    17dc:	c5 fa 10 2e          	vmovss xmm5,DWORD PTR [rsi]
    17e0:	c4 c2 31 a9 2b       	vfmadd213ss xmm5,xmm9,DWORD PTR [r11]
    17e5:	48 83 c6 04          	add    rsi,0x4
    17e9:	49 83 c3 04          	add    r11,0x4
    17ed:	c4 c1 7a 11 6b fc    	vmovss DWORD PTR [r11-0x4],xmm5
    17f3:	c5 fa 10 06          	vmovss xmm0,DWORD PTR [rsi]
    17f7:	c4 c2 31 a9 03       	vfmadd213ss xmm0,xmm9,DWORD PTR [r11]
    17fc:	48 83 c6 04          	add    rsi,0x4
    1800:	49 83 c3 04          	add    r11,0x4
    1804:	c4 c1 7a 11 43 fc    	vmovss DWORD PTR [r11-0x4],xmm0
    180a:	c5 fa 10 26          	vmovss xmm4,DWORD PTR [rsi]
    180e:	c4 c2 31 a9 23       	vfmadd213ss xmm4,xmm9,DWORD PTR [r11]
    1813:	48 83 c6 04          	add    rsi,0x4
    1817:	49 83 c3 04          	add    r11,0x4
    181b:	c4 c1 7a 11 63 fc    	vmovss DWORD PTR [r11-0x4],xmm4
    1821:	c5 fa 10 1e          	vmovss xmm3,DWORD PTR [rsi]
    1825:	c4 c2 31 a9 1b       	vfmadd213ss xmm3,xmm9,DWORD PTR [r11]
    182a:	48 83 c6 04          	add    rsi,0x4
    182e:	49 83 c3 04          	add    r11,0x4
    1832:	c4 c1 7a 11 5b fc    	vmovss DWORD PTR [r11-0x4],xmm3
    1838:	c5 fa 10 36          	vmovss xmm6,DWORD PTR [rsi]
    183c:	c4 c2 31 a9 33       	vfmadd213ss xmm6,xmm9,DWORD PTR [r11]
    1841:	48 83 c6 04          	add    rsi,0x4
    1845:	49 83 c3 04          	add    r11,0x4
    1849:	c4 c1 7a 11 73 fc    	vmovss DWORD PTR [r11-0x4],xmm6
    184f:	4c 3b 9d 60 ff ff ff 	cmp    r11,QWORD PTR [rbp-0xa0]
    1856:	0f 84 bb fe ff ff    	je     1717 <main+0x5b7>
    185c:	c5 fa 10 16          	vmovss xmm2,DWORD PTR [rsi]
    1860:	c4 c2 31 a9 13       	vfmadd213ss xmm2,xmm9,DWORD PTR [r11]
    1865:	48 83 c6 20          	add    rsi,0x20
    1869:	49 83 c3 20          	add    r11,0x20
    186d:	c4 c1 7a 11 53 e0    	vmovss DWORD PTR [r11-0x20],xmm2
    1873:	c5 fa 10 7e e4       	vmovss xmm7,DWORD PTR [rsi-0x1c]
    1878:	c4 c2 31 a9 7b e4    	vfmadd213ss xmm7,xmm9,DWORD PTR [r11-0x1c]
    187e:	c4 c1 7a 11 7b e4    	vmovss DWORD PTR [r11-0x1c],xmm7
    1884:	c5 7a 10 56 e8       	vmovss xmm10,DWORD PTR [rsi-0x18]
    1889:	c4 42 31 a9 53 e8    	vfmadd213ss xmm10,xmm9,DWORD PTR [r11-0x18]
    188f:	c4 41 7a 11 53 e8    	vmovss DWORD PTR [r11-0x18],xmm10
    1895:	c5 7a 10 5e ec       	vmovss xmm11,DWORD PTR [rsi-0x14]
    189a:	c4 42 31 a9 5b ec    	vfmadd213ss xmm11,xmm9,DWORD PTR [r11-0x14]
    18a0:	c4 41 7a 11 5b ec    	vmovss DWORD PTR [r11-0x14],xmm11
    18a6:	c5 7a 10 66 f0       	vmovss xmm12,DWORD PTR [rsi-0x10]
    18ab:	c4 42 31 a9 63 f0    	vfmadd213ss xmm12,xmm9,DWORD PTR [r11-0x10]
    18b1:	c4 41 7a 11 63 f0    	vmovss DWORD PTR [r11-0x10],xmm12
    18b7:	c5 7a 10 6e f4       	vmovss xmm13,DWORD PTR [rsi-0xc]
    18bc:	c4 42 31 a9 6b f4    	vfmadd213ss xmm13,xmm9,DWORD PTR [r11-0xc]
    18c2:	c4 41 7a 11 6b f4    	vmovss DWORD PTR [r11-0xc],xmm13
    18c8:	c5 7a 10 76 f8       	vmovss xmm14,DWORD PTR [rsi-0x8]
    18cd:	c4 42 31 a9 73 f8    	vfmadd213ss xmm14,xmm9,DWORD PTR [r11-0x8]
    18d3:	c4 41 7a 11 73 f8    	vmovss DWORD PTR [r11-0x8],xmm14
    18d9:	c5 7a 10 7e fc       	vmovss xmm15,DWORD PTR [rsi-0x4]
    18de:	c4 42 31 a9 7b fc    	vfmadd213ss xmm15,xmm9,DWORD PTR [r11-0x4]
    18e4:	c4 41 7a 11 7b fc    	vmovss DWORD PTR [r11-0x4],xmm15
    18ea:	4c 3b 9d 60 ff ff ff 	cmp    r11,QWORD PTR [rbp-0xa0]
    18f1:	0f 85 65 ff ff ff    	jne    185c <main+0x6fc>
    18f7:	e9 1b fe ff ff       	jmp    1717 <main+0x5b7>
    18fc:	31 c9                	xor    ecx,ecx
    18fe:	e9 31 fd ff ff       	jmp    1634 <main+0x4d4>
    1903:	48 89 cf             	mov    rdi,rcx
    1906:	45 31 d2             	xor    r10d,r10d
    1909:	e9 6f fd ff ff       	jmp    167d <main+0x51d>
    190e:	44 8b 9d dc fe ff ff 	mov    r11d,DWORD PTR [rbp-0x124]
    1915:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
    191c:	bf 01 00 00 00       	mov    edi,0x1
    1921:	44 89 9d 60 ff ff ff 	mov    DWORD PTR [rbp-0xa0],r11d
    1928:	c5 f8 77             	vzeroupper
    192b:	e8 c0 f7 ff ff       	call   10f0 <clock_gettime@plt>
    1930:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
    1935:	c5 7b 10 2d 0b 07 00 	vmovsd xmm13,QWORD PTR [rip+0x70b]        # 2048 <_IO_stdin_used+0x48>
    193c:	00 
    193d:	c4 61 ab 2a 65 b8    	vcvtsi2sd xmm12,xmm10,QWORD PTR [rbp-0x48]
    1943:	c4 62 91 ab a5 f8 fe 	vfmsub213sd xmm12,xmm13,QWORD PTR [rbp-0x108]
    194a:	ff ff 
    194c:	c4 61 ab 2a 5d b0    	vcvtsi2sd xmm11,xmm10,QWORD PTR [rbp-0x50]
    1952:	c5 23 5c b5 f0 fe ff 	vsubsd xmm14,xmm11,QWORD PTR [rbp-0x110]
    1959:	ff 
    195a:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
    1961:	bf 01 00 00 00       	mov    edi,0x1
    1966:	c4 41 0b 58 fc       	vaddsd xmm15,xmm14,xmm12
    196b:	c5 7b 11 bd 78 ff ff 	vmovsd QWORD PTR [rbp-0x88],xmm15
    1972:	ff 
    1973:	e8 78 f7 ff ff       	call   10f0 <clock_gettime@plt>
    1978:	4c 8b 95 58 ff ff ff 	mov    r10,QWORD PTR [rbp-0xa8]
    197f:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
    1983:	c4 e1 d3 2a 4d b8    	vcvtsi2sd xmm1,xmm5,QWORD PTR [rbp-0x48]
    1989:	c5 f3 59 15 b7 06 00 	vmulsd xmm2,xmm1,QWORD PTR [rip+0x6b7]        # 2048 <_IO_stdin_used+0x48>
    1990:	00 
    1991:	48 8d 35 6f 06 00 00 	lea    rsi,[rip+0x66f]        # 2007 <_IO_stdin_used+0x7>
    1998:	c4 e1 d3 2a 45 b0    	vcvtsi2sd xmm0,xmm5,QWORD PTR [rbp-0x50]
    199e:	c5 f9 13 85 70 ff ff 	vmovlpd QWORD PTR [rbp-0x90],xmm0
    19a5:	ff 
    19a6:	49 8b 7a 18          	mov    rdi,QWORD PTR [r10+0x18]
    19aa:	c5 fb 11 95 68 ff ff 	vmovsd QWORD PTR [rbp-0x98],xmm2
    19b1:	ff 
    19b2:	e8 79 f7 ff ff       	call   1130 <fopen@plt>
    19b7:	8b b5 60 ff ff ff    	mov    esi,DWORD PTR [rbp-0xa0]
    19bd:	48 85 c0             	test   rax,rax
    19c0:	49 89 c6             	mov    r14,rax
    19c3:	74 5a                	je     1a1f <main+0x8bf>
    19c5:	48 8b bd 18 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xe8]
    19cc:	48 89 c1             	mov    rcx,rax
    19cf:	ba 01 00 00 00       	mov    edx,0x1
    19d4:	be 08 00 00 00       	mov    esi,0x8
    19d9:	e8 62 f7 ff ff       	call   1140 <fwrite@plt>
    19de:	48 8b bd 10 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xf0]
    19e5:	4c 89 f1             	mov    rcx,r14
    19e8:	ba 01 00 00 00       	mov    edx,0x1
    19ed:	be 08 00 00 00       	mov    esi,0x8
    19f2:	e8 49 f7 ff ff       	call   1140 <fwrite@plt>
    19f7:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
    19fb:	48 8b 7d a8          	mov    rdi,QWORD PTR [rbp-0x58]
    19ff:	be 04 00 00 00       	mov    esi,0x4
    1a04:	48 0f af 55 a0       	imul   rdx,QWORD PTR [rbp-0x60]
    1a09:	4c 89 f1             	mov    rcx,r14
    1a0c:	e8 2f f7 ff ff       	call   1140 <fwrite@plt>
    1a11:	4c 89 f7             	mov    rdi,r14
    1a14:	e8 e7 f6 ff ff       	call   1100 <fclose@plt>
    1a19:	8b b5 60 ff ff ff    	mov    esi,DWORD PTR [rbp-0xa0]
    1a1f:	89 b5 60 ff ff ff    	mov    DWORD PTR [rbp-0xa0],esi
    1a25:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
    1a2c:	bf 01 00 00 00       	mov    edi,0x1
    1a31:	e8 ba f6 ff ff       	call   10f0 <clock_gettime@plt>
    1a36:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
    1a3a:	c4 e1 db 2a 5d b0    	vcvtsi2sd xmm3,xmm4,QWORD PTR [rbp-0x50]
    1a40:	c4 e1 db 2a 7d b8    	vcvtsi2sd xmm7,xmm4,QWORD PTR [rbp-0x48]
    1a46:	62 71 df 08 7b 75 f4 	vcvtusi2sd xmm14,xmm4,QWORD PTR [rbp-0x60]
    1a4d:	c5 0b 59 3d fb 05 00 	vmulsd xmm15,xmm14,QWORD PTR [rip+0x5fb]        # 2050 <_IO_stdin_used+0x50>
    1a54:	00 
    1a55:	62 71 df 08 7b 5d f1 	vcvtusi2sd xmm11,xmm4,QWORD PTR [rbp-0x78]
    1a5c:	62 71 df 08 7b 65 e9 	vcvtusi2sd xmm12,xmm4,QWORD PTR [rbp-0xb8]
    1a63:	c5 fb 10 a5 78 ff ff 	vmovsd xmm4,QWORD PTR [rbp-0x88]
    1a6a:	ff 
    1a6b:	c4 41 23 59 ec       	vmulsd xmm13,xmm11,xmm12
    1a70:	c5 43 58 85 e0 fe ff 	vaddsd xmm8,xmm7,QWORD PTR [rbp-0x120]
    1a77:	ff 
    1a78:	c5 fb 10 ad 08 ff ff 	vmovsd xmm5,QWORD PTR [rbp-0xf8]
    1a7f:	ff 
    1a80:	c5 3b 5c 8d 00 ff ff 	vsubsd xmm9,xmm8,QWORD PTR [rbp-0x100]
    1a87:	ff 
    1a88:	c5 d3 58 85 70 ff ff 	vaddsd xmm0,xmm5,QWORD PTR [rbp-0x90]
    1a8f:	ff 
    1a90:	48 8d 35 79 05 00 00 	lea    rsi,[rip+0x579]        # 2010 <_IO_stdin_used+0x10>
    1a97:	bf 02 00 00 00       	mov    edi,0x2
    1a9c:	c4 e2 b1 bb 05 a3 05 	vfmsub231sd xmm0,xmm9,QWORD PTR [rip+0x5a3]        # 2048 <_IO_stdin_used+0x48>
    1aa3:	00 00 
    1aa5:	c5 e3 58 b5 e8 fe ff 	vaddsd xmm6,xmm3,QWORD PTR [rbp-0x118]
    1aac:	ff 
    1aad:	b8 03 00 00 00       	mov    eax,0x3
    1ab2:	c5 4b 5c 95 68 ff ff 	vsubsd xmm10,xmm6,QWORD PTR [rbp-0x98]
    1ab9:	ff 
    1aba:	c4 c1 13 59 cf       	vmulsd xmm1,xmm13,xmm15
    1abf:	c5 f3 5e d4          	vdivsd xmm2,xmm1,xmm4
    1ac3:	c5 f9 28 cc          	vmovapd xmm1,xmm4
    1ac7:	c4 c1 7b 58 c2       	vaddsd xmm0,xmm0,xmm10
    1acc:	e8 4f f6 ff ff       	call   1120 <__printf_chk@plt>
    1ad1:	48 8b bd 50 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb0]
    1ad8:	e8 f3 f5 ff ff       	call   10d0 <free@plt>
    1add:	4c 89 ef             	mov    rdi,r13
    1ae0:	e8 eb f5 ff ff       	call   10d0 <free@plt>
    1ae5:	48 8b 7d a8          	mov    rdi,QWORD PTR [rbp-0x58]
    1ae9:	e8 e2 f5 ff ff       	call   10d0 <free@plt>
    1aee:	44 8b ad 60 ff ff ff 	mov    r13d,DWORD PTR [rbp-0xa0]
    1af5:	e9 ae f6 ff ff       	jmp    11a8 <main+0x48>
    1afa:	48 83 bd 50 ff ff ff 	cmp    QWORD PTR [rbp-0xb0],0x0
    1b01:	00 
    1b02:	0f 84 5b f7 ff ff    	je     1263 <main+0x103>
    1b08:	e9 4a f7 ff ff       	jmp    1257 <main+0xf7>
    1b0d:	4c 89 ff             	mov    rdi,r15
    1b10:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
    1b17:	4d 01 fa             	add    r10,r15
    1b1a:	e9 29 fc ff ff       	jmp    1748 <main+0x5e8>
    1b1f:	48 8b bd 50 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb0]
    1b26:	e8 a5 f5 ff ff       	call   10d0 <free@plt>
    1b2b:	4c 89 ef             	mov    rdi,r13
    1b2e:	e8 9d f5 ff ff       	call   10d0 <free@plt>
    1b33:	e9 6a f6 ff ff       	jmp    11a2 <main+0x42>
    1b38:	e8 d3 f5 ff ff       	call   1110 <__stack_chk_fail@plt>
    1b3d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001b40 <set_fast_math>:
    1b40:	f3 0f 1e fa          	endbr64
    1b44:	55                   	push   rbp
    1b45:	48 89 e5             	mov    rbp,rsp
    1b48:	0f ae 5d fc          	stmxcsr DWORD PTR [rbp-0x4]
    1b4c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1b4f:	0d 40 80 00 00       	or     eax,0x8040
    1b54:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    1b57:	0f ae 55 f8          	ldmxcsr DWORD PTR [rbp-0x8]
    1b5b:	5d                   	pop    rbp
    1b5c:	c3                   	ret
    1b5d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001b60 <_start>:
    1b60:	f3 0f 1e fa          	endbr64
    1b64:	31 ed                	xor    ebp,ebp
    1b66:	49 89 d1             	mov    r9,rdx
    1b69:	5e                   	pop    rsi
    1b6a:	48 89 e2             	mov    rdx,rsp
    1b6d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1b71:	50                   	push   rax
    1b72:	54                   	push   rsp
    1b73:	45 31 c0             	xor    r8d,r8d
    1b76:	31 c9                	xor    ecx,ecx
    1b78:	48 8d 3d e1 f5 ff ff 	lea    rdi,[rip+0xfffffffffffff5e1]        # 1160 <main>
    1b7f:	ff 15 53 24 00 00    	call   QWORD PTR [rip+0x2453]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1b85:	f4                   	hlt
    1b86:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1b8d:	00 00 00 

0000000000001b90 <deregister_tm_clones>:
    1b90:	48 8d 3d 79 24 00 00 	lea    rdi,[rip+0x2479]        # 4010 <__TMC_END__>
    1b97:	48 8d 05 72 24 00 00 	lea    rax,[rip+0x2472]        # 4010 <__TMC_END__>
    1b9e:	48 39 f8             	cmp    rax,rdi
    1ba1:	74 15                	je     1bb8 <deregister_tm_clones+0x28>
    1ba3:	48 8b 05 36 24 00 00 	mov    rax,QWORD PTR [rip+0x2436]        # 3fe0 <_ITM_deregisterTMCloneTable>
    1baa:	48 85 c0             	test   rax,rax
    1bad:	74 09                	je     1bb8 <deregister_tm_clones+0x28>
    1baf:	ff e0                	jmp    rax
    1bb1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1bb8:	c3                   	ret
    1bb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001bc0 <register_tm_clones>:
    1bc0:	48 8d 3d 49 24 00 00 	lea    rdi,[rip+0x2449]        # 4010 <__TMC_END__>
    1bc7:	48 8d 35 42 24 00 00 	lea    rsi,[rip+0x2442]        # 4010 <__TMC_END__>
    1bce:	48 29 fe             	sub    rsi,rdi
    1bd1:	48 89 f0             	mov    rax,rsi
    1bd4:	48 c1 ee 3f          	shr    rsi,0x3f
    1bd8:	48 c1 f8 03          	sar    rax,0x3
    1bdc:	48 01 c6             	add    rsi,rax
    1bdf:	48 d1 fe             	sar    rsi,1
    1be2:	74 14                	je     1bf8 <register_tm_clones+0x38>
    1be4:	48 8b 05 05 24 00 00 	mov    rax,QWORD PTR [rip+0x2405]        # 3ff0 <_ITM_registerTMCloneTable>
    1beb:	48 85 c0             	test   rax,rax
    1bee:	74 08                	je     1bf8 <register_tm_clones+0x38>
    1bf0:	ff e0                	jmp    rax
    1bf2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1bf8:	c3                   	ret
    1bf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001c00 <__do_global_dtors_aux>:
    1c00:	f3 0f 1e fa          	endbr64
    1c04:	80 3d 05 24 00 00 00 	cmp    BYTE PTR [rip+0x2405],0x0        # 4010 <__TMC_END__>
    1c0b:	75 2b                	jne    1c38 <__do_global_dtors_aux+0x38>
    1c0d:	55                   	push   rbp
    1c0e:	48 83 3d e2 23 00 00 	cmp    QWORD PTR [rip+0x23e2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1c15:	00 
    1c16:	48 89 e5             	mov    rbp,rsp
    1c19:	74 0c                	je     1c27 <__do_global_dtors_aux+0x27>
    1c1b:	48 8b 3d e6 23 00 00 	mov    rdi,QWORD PTR [rip+0x23e6]        # 4008 <__dso_handle>
    1c22:	e8 99 f4 ff ff       	call   10c0 <__cxa_finalize@plt>
    1c27:	e8 64 ff ff ff       	call   1b90 <deregister_tm_clones>
    1c2c:	c6 05 dd 23 00 00 01 	mov    BYTE PTR [rip+0x23dd],0x1        # 4010 <__TMC_END__>
    1c33:	5d                   	pop    rbp
    1c34:	c3                   	ret
    1c35:	0f 1f 00             	nop    DWORD PTR [rax]
    1c38:	c3                   	ret
    1c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001c40 <frame_dummy>:
    1c40:	f3 0f 1e fa          	endbr64
    1c44:	e9 77 ff ff ff       	jmp    1bc0 <register_tm_clones>
    1c49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001c50 <carregar_matriz>:
    1c50:	f3 0f 1e fa          	endbr64
    1c54:	41 54                	push   r12
    1c56:	55                   	push   rbp
    1c57:	53                   	push   rbx
    1c58:	48 89 f5             	mov    rbp,rsi
    1c5b:	48 83 ec 10          	sub    rsp,0x10
    1c5f:	48 8d 35 9e 03 00 00 	lea    rsi,[rip+0x39e]        # 2004 <_IO_stdin_used+0x4>
    1c66:	64 4c 8b 24 25 28 00 	mov    r12,QWORD PTR fs:0x28
    1c6d:	00 00 
    1c6f:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
    1c74:	49 89 d4             	mov    r12,rdx
    1c77:	e8 b4 f4 ff ff       	call   1130 <fopen@plt>
    1c7c:	48 85 c0             	test   rax,rax
    1c7f:	0f 84 c3 00 00 00    	je     1d48 <carregar_matriz+0xf8>
    1c85:	48 89 c1             	mov    rcx,rax
    1c88:	ba 01 00 00 00       	mov    edx,0x1
    1c8d:	be 08 00 00 00       	mov    esi,0x8
    1c92:	48 89 ef             	mov    rdi,rbp
    1c95:	48 89 c3             	mov    rbx,rax
    1c98:	e8 43 f4 ff ff       	call   10e0 <fread@plt>
    1c9d:	48 83 f8 01          	cmp    rax,0x1
    1ca1:	0f 85 99 00 00 00    	jne    1d40 <carregar_matriz+0xf0>
    1ca7:	48 89 d9             	mov    rcx,rbx
    1caa:	ba 01 00 00 00       	mov    edx,0x1
    1caf:	be 08 00 00 00       	mov    esi,0x8
    1cb4:	4c 89 e7             	mov    rdi,r12
    1cb7:	e8 24 f4 ff ff       	call   10e0 <fread@plt>
    1cbc:	48 83 f8 01          	cmp    rax,0x1
    1cc0:	75 7e                	jne    1d40 <carregar_matriz+0xf0>
    1cc2:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    1cc6:	48 89 e7             	mov    rdi,rsp
    1cc9:	be 40 00 00 00       	mov    esi,0x40
    1cce:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
    1cd5:	00 
    1cd6:	49 0f af 14 24       	imul   rdx,QWORD PTR [r12]
    1cdb:	48 c1 e2 02          	shl    rdx,0x2
    1cdf:	e8 6c f4 ff ff       	call   1150 <posix_memalign@plt>
    1ce4:	85 c0                	test   eax,eax
    1ce6:	75 58                	jne    1d40 <carregar_matriz+0xf0>
    1ce8:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    1cec:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    1cf0:	48 89 d9             	mov    rcx,rbx
    1cf3:	be 04 00 00 00       	mov    esi,0x4
    1cf8:	49 0f af 14 24       	imul   rdx,QWORD PTR [r12]
    1cfd:	e8 de f3 ff ff       	call   10e0 <fread@plt>
    1d02:	48 89 c2             	mov    rdx,rax
    1d05:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
    1d09:	49 0f af 04 24       	imul   rax,QWORD PTR [r12]
    1d0e:	48 39 d0             	cmp    rax,rdx
    1d11:	75 3d                	jne    1d50 <carregar_matriz+0x100>
    1d13:	48 89 df             	mov    rdi,rbx
    1d16:	e8 e5 f3 ff ff       	call   1100 <fclose@plt>
    1d1b:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    1d1f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    1d24:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1d2b:	00 00 
    1d2d:	75 36                	jne    1d65 <carregar_matriz+0x115>
    1d2f:	48 83 c4 10          	add    rsp,0x10
    1d33:	5b                   	pop    rbx
    1d34:	5d                   	pop    rbp
    1d35:	41 5c                	pop    r12
    1d37:	c3                   	ret
    1d38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1d3f:	00 
    1d40:	48 89 df             	mov    rdi,rbx
    1d43:	e8 b8 f3 ff ff       	call   1100 <fclose@plt>
    1d48:	31 c0                	xor    eax,eax
    1d4a:	eb d3                	jmp    1d1f <carregar_matriz+0xcf>
    1d4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1d50:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    1d54:	e8 77 f3 ff ff       	call   10d0 <free@plt>
    1d59:	48 89 df             	mov    rdi,rbx
    1d5c:	e8 9f f3 ff ff       	call   1100 <fclose@plt>
    1d61:	31 c0                	xor    eax,eax
    1d63:	eb ba                	jmp    1d1f <carregar_matriz+0xcf>
    1d65:	e8 a6 f3 ff ff       	call   1110 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001d6c <_fini>:
    1d6c:	f3 0f 1e fa          	endbr64
    1d70:	48 83 ec 08          	sub    rsp,0x8
    1d74:	48 83 c4 08          	add    rsp,0x8
    1d78:	c3                   	ret
