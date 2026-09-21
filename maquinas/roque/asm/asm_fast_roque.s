
maquinas/roque/bin/matmul_fast: formato do arquivo elf64-x86-64


Desmontagem da seção .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Desmontagem da seção .plt:

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

Desmontagem da seção .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 2e 2f 00 00    	jmp    QWORD PTR [rip+0x2f2e]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Desmontagem da seção .plt.sec:

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

Desmontagem da seção .text:

0000000000001160 <main>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	41 57                	push   r15
    1166:	41 56                	push   r14
    1168:	41 55                	push   r13
    116a:	41 54                	push   r12
    116c:	55                   	push   rbp
    116d:	53                   	push   rbx
    116e:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
    1175:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    117c:	00 00 
    117e:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
    1185:	00 
    1186:	31 c0                	xor    eax,eax
    1188:	83 ff 04             	cmp    edi,0x4
    118b:	74 32                	je     11bf <main+0x5f>
    118d:	41 b8 01 00 00 00    	mov    r8d,0x1
    1193:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
    119a:	00 
    119b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    11a2:	00 00 
    11a4:	0f 85 4d 03 00 00    	jne    14f7 <main+0x397>
    11aa:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
    11b1:	44 89 c0             	mov    eax,r8d
    11b4:	5b                   	pop    rbx
    11b5:	5d                   	pop    rbp
    11b6:	41 5c                	pop    r12
    11b8:	41 5d                	pop    r13
    11ba:	41 5e                	pop    r14
    11bc:	41 5f                	pop    r15
    11be:	c3                   	ret
    11bf:	4c 8d ac 24 90 00 00 	lea    r13,[rsp+0x90]
    11c6:	00 
    11c7:	48 89 f3             	mov    rbx,rsi
    11ca:	bf 01 00 00 00       	mov    edi,0x1
    11cf:	4c 89 ee             	mov    rsi,r13
    11d2:	4c 8d 25 2b 0e 00 00 	lea    r12,[rip+0xe2b]        # 2004 <_IO_stdin_used+0x4>
    11d9:	e8 12 ff ff ff       	call   10f0 <clock_gettime@plt>
    11de:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
    11e5:	00 
    11e6:	4c 89 e6             	mov    rsi,r12
    11e9:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    11ed:	4c 8b bc 24 90 00 00 	mov    r15,QWORD PTR [rsp+0x90]
    11f4:	00 
    11f5:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    11fa:	e8 31 ff ff ff       	call   1130 <fopen@plt>
    11ff:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
    1203:	4c 89 e6             	mov    rsi,r12
    1206:	48 89 c5             	mov    rbp,rax
    1209:	e8 22 ff ff ff       	call   1130 <fopen@plt>
    120e:	48 85 ed             	test   rbp,rbp
    1211:	49 89 c4             	mov    r12,rax
    1214:	0f 84 73 ff ff ff    	je     118d <main+0x2d>
    121a:	48 85 c0             	test   rax,rax
    121d:	0f 84 6a ff ff ff    	je     118d <main+0x2d>
    1223:	4c 8d 74 24 58       	lea    r14,[rsp+0x58]
    1228:	48 89 e9             	mov    rcx,rbp
    122b:	ba 01 00 00 00       	mov    edx,0x1
    1230:	be 08 00 00 00       	mov    esi,0x8
    1235:	4c 89 f7             	mov    rdi,r14
    1238:	e8 a3 fe ff ff       	call   10e0 <fread@plt>
    123d:	48 83 e8 01          	sub    rax,0x1
    1241:	0f 85 46 ff ff ff    	jne    118d <main+0x2d>
    1247:	48 8d 7c 24 60       	lea    rdi,[rsp+0x60]
    124c:	48 89 e9             	mov    rcx,rbp
    124f:	ba 01 00 00 00       	mov    edx,0x1
    1254:	be 08 00 00 00       	mov    esi,0x8
    1259:	e8 82 fe ff ff       	call   10e0 <fread@plt>
    125e:	48 83 e8 01          	sub    rax,0x1
    1262:	0f 85 25 ff ff ff    	jne    118d <main+0x2d>
    1268:	48 8d 7c 24 68       	lea    rdi,[rsp+0x68]
    126d:	4c 89 e1             	mov    rcx,r12
    1270:	ba 01 00 00 00       	mov    edx,0x1
    1275:	be 08 00 00 00       	mov    esi,0x8
    127a:	e8 61 fe ff ff       	call   10e0 <fread@plt>
    127f:	48 83 e8 01          	sub    rax,0x1
    1283:	0f 85 04 ff ff ff    	jne    118d <main+0x2d>
    1289:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    128e:	4c 89 e1             	mov    rcx,r12
    1291:	ba 01 00 00 00       	mov    edx,0x1
    1296:	be 08 00 00 00       	mov    esi,0x8
    129b:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    12a0:	e8 3b fe ff ff       	call   10e0 <fread@plt>
    12a5:	48 83 e8 01          	sub    rax,0x1
    12a9:	0f 85 de fe ff ff    	jne    118d <main+0x2d>
    12af:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
    12b4:	48 3b 4c 24 68       	cmp    rcx,QWORD PTR [rsp+0x68]
    12b9:	0f 85 ce fe ff ff    	jne    118d <main+0x2d>
    12bf:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    12c4:	48 8d 7c 24 78       	lea    rdi,[rsp+0x78]
    12c9:	be 40 00 00 00       	mov    esi,0x40
    12ce:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    12d3:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    12d8:	48 0f af d1          	imul   rdx,rcx
    12dc:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    12e1:	48 8d 14 95 00 00 00 	lea    rdx,[rdx*4+0x0]
    12e8:	00 
    12e9:	e8 62 fe ff ff       	call   1150 <posix_memalign@plt>
    12ee:	85 c0                	test   eax,eax
    12f0:	0f 85 97 fe ff ff    	jne    118d <main+0x2d>
    12f6:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
    12fb:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1300:	48 8d bc 24 80 00 00 	lea    rdi,[rsp+0x80]
    1307:	00 
    1308:	be 40 00 00 00       	mov    esi,0x40
    130d:	4c 8b 44 24 78       	mov    r8,QWORD PTR [rsp+0x78]
    1312:	49 0f af d1          	imul   rdx,r9
    1316:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
    131b:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
    1320:	48 c1 e2 02          	shl    rdx,0x2
    1324:	e8 27 fe ff ff       	call   1150 <posix_memalign@plt>
    1329:	85 c0                	test   eax,eax
    132b:	0f 85 5c fe ff ff    	jne    118d <main+0x2d>
    1331:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    1336:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
    133b:	48 8d bc 24 88 00 00 	lea    rdi,[rsp+0x88]
    1342:	00 
    1343:	be 40 00 00 00       	mov    esi,0x40
    1348:	4c 8b 94 24 80 00 00 	mov    r10,QWORD PTR [rsp+0x80]
    134f:	00 
    1350:	49 0f af d3          	imul   rdx,r11
    1354:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
    1359:	48 c1 e2 02          	shl    rdx,0x2
    135d:	e8 ee fd ff ff       	call   1150 <posix_memalign@plt>
    1362:	85 c0                	test   eax,eax
    1364:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
    1368:	0f 85 1f fe ff ff    	jne    118d <main+0x2d>
    136e:	48 8b bc 24 88 00 00 	mov    rdi,QWORD PTR [rsp+0x88]
    1375:	00 
    1376:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    137b:	48 89 e9             	mov    rcx,rbp
    137e:	be 04 00 00 00       	mov    esi,0x4
    1383:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
    1388:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    138d:	e8 4e fd ff ff       	call   10e0 <fread@plt>
    1392:	4c 8b 44 24 60       	mov    r8,QWORD PTR [rsp+0x60]
    1397:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
    139c:	49 0f af c8          	imul   rcx,r8
    13a0:	48 39 c1             	cmp    rcx,rax
    13a3:	0f 85 e4 fd ff ff    	jne    118d <main+0x2d>
    13a9:	4c 0f af 44 24 70    	imul   r8,QWORD PTR [rsp+0x70]
    13af:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    13b4:	4c 89 e1             	mov    rcx,r12
    13b7:	be 04 00 00 00       	mov    esi,0x4
    13bc:	4c 89 c2             	mov    rdx,r8
    13bf:	e8 1c fd ff ff       	call   10e0 <fread@plt>
    13c4:	4c 8b 54 24 60       	mov    r10,QWORD PTR [rsp+0x60]
    13c9:	4c 0f af 54 24 70    	imul   r10,QWORD PTR [rsp+0x70]
    13cf:	8b 54 24 38          	mov    edx,DWORD PTR [rsp+0x38]
    13d3:	49 39 c2             	cmp    r10,rax
    13d6:	0f 85 b1 fd ff ff    	jne    118d <main+0x2d>
    13dc:	48 89 ef             	mov    rdi,rbp
    13df:	89 54 24 30          	mov    DWORD PTR [rsp+0x30],edx
    13e3:	e8 18 fd ff ff       	call   1100 <fclose@plt>
    13e8:	4c 89 e7             	mov    rdi,r12
    13eb:	e8 10 fd ff ff       	call   1100 <fclose@plt>
    13f0:	4c 8b 54 24 58       	mov    r10,QWORD PTR [rsp+0x58]
    13f5:	44 8b 44 24 30       	mov    r8d,DWORD PTR [rsp+0x30]
    13fa:	45 31 db             	xor    r11d,r11d
    13fd:	4c 0f af 54 24 70    	imul   r10,QWORD PTR [rsp+0x70]
    1403:	eb 11                	jmp    1416 <main+0x2b6>
    1405:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
    140a:	42 c7 04 98 00 00 00 	mov    DWORD PTR [rax+r11*4],0x0
    1411:	00 
    1412:	49 83 c3 01          	add    r11,0x1
    1416:	4d 39 da             	cmp    r10,r11
    1419:	75 ea                	jne    1405 <main+0x2a5>
    141b:	4c 89 ee             	mov    rsi,r13
    141e:	bf 01 00 00 00       	mov    edi,0x1
    1423:	44 89 44 24 40       	mov    DWORD PTR [rsp+0x40],r8d
    1428:	45 31 e4             	xor    r12d,r12d
    142b:	e8 c0 fc ff ff       	call   10f0 <clock_gettime@plt>
    1430:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
    1434:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
    1439:	31 d2                	xor    edx,edx
    143b:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
    1440:	44 8b 4c 24 40       	mov    r9d,DWORD PTR [rsp+0x40]
    1445:	31 f6                	xor    esi,esi
    1447:	4c 89 ff             	mov    rdi,r15
    144a:	c4 e1 e3 2a 8c 24 98 	vcvtsi2sd xmm1,xmm3,QWORD PTR [rsp+0x98]
    1451:	00 00 00 
    1454:	48 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],rbp
    1459:	48 8b 6c 24 60       	mov    rbp,QWORD PTR [rsp+0x60]
    145e:	c4 e1 e3 2a 84 24 90 	vcvtsi2sd xmm0,xmm3,QWORD PTR [rsp+0x90]
    1465:	00 00 00 
    1468:	c4 e2 f9 99 0d d7 0b 	vfmadd132sd xmm1,xmm0,QWORD PTR [rip+0xbd7]        # 2048 <_IO_stdin_used+0x48>
    146f:	00 00 
    1471:	c5 fb 11 4c 24 30    	vmovsd QWORD PTR [rsp+0x30],xmm1
    1477:	4c 39 64 24 38       	cmp    QWORD PTR [rsp+0x38],r12
    147c:	74 7e                	je     14fc <main+0x39c>
    147e:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
    1483:	4c 8b 5c 24 20       	mov    r11,QWORD PTR [rsp+0x20]
    1488:	4c 89 64 24 40       	mov    QWORD PTR [rsp+0x40],r12
    148d:	48 89 54 24 48       	mov    QWORD PTR [rsp+0x48],rdx
    1492:	4d 8d 3c b2          	lea    r15,[r10+rsi*4]
    1496:	4d 8d 04 93          	lea    r8,[r11+rdx*4]
    149a:	45 31 d2             	xor    r10d,r10d
    149d:	45 31 db             	xor    r11d,r11d
    14a0:	4c 39 d5             	cmp    rbp,r10
    14a3:	74 3c                	je     14e1 <main+0x381>
    14a5:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    14aa:	c4 81 7a 10 2c 97    	vmovss xmm5,DWORD PTR [r15+r10*4]
    14b0:	4c 89 c2             	mov    rdx,r8
    14b3:	4e 8d 24 98          	lea    r12,[rax+r11*4]
    14b7:	31 c0                	xor    eax,eax
    14b9:	eb 18                	jmp    14d3 <main+0x373>
    14bb:	c4 41 7a 10 04 84    	vmovss xmm8,DWORD PTR [r12+rax*4]
    14c1:	c4 62 51 a9 02       	vfmadd213ss xmm8,xmm5,DWORD PTR [rdx]
    14c6:	48 83 c0 01          	add    rax,0x1
    14ca:	48 83 c2 04          	add    rdx,0x4
    14ce:	c5 7a 11 42 fc       	vmovss DWORD PTR [rdx-0x4],xmm8
    14d3:	48 39 c1             	cmp    rcx,rax
    14d6:	75 e3                	jne    14bb <main+0x35b>
    14d8:	49 83 c2 01          	add    r10,0x1
    14dc:	49 01 cb             	add    r11,rcx
    14df:	eb bf                	jmp    14a0 <main+0x340>
    14e1:	4c 8b 64 24 40       	mov    r12,QWORD PTR [rsp+0x40]
    14e6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
    14eb:	48 01 ee             	add    rsi,rbp
    14ee:	49 83 c4 01          	add    r12,0x1
    14f2:	48 01 ca             	add    rdx,rcx
    14f5:	eb 80                	jmp    1477 <main+0x317>
    14f7:	e8 14 fc ff ff       	call   1110 <__stack_chk_fail@plt>
    14fc:	4c 89 ee             	mov    rsi,r13
    14ff:	49 89 ff             	mov    r15,rdi
    1502:	bf 01 00 00 00       	mov    edi,0x1
    1507:	44 89 4c 24 48       	mov    DWORD PTR [rsp+0x48],r9d
    150c:	e8 df fb ff ff       	call   10f0 <clock_gettime@plt>
    1511:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
    1515:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
    1519:	48 8d 35 e7 0a 00 00 	lea    rsi,[rip+0xae7]        # 2007 <_IO_stdin_used+0x7>
    1520:	c4 e1 eb 2a b4 24 98 	vcvtsi2sd xmm6,xmm2,QWORD PTR [rsp+0x98]
    1527:	00 00 00 
    152a:	c4 e1 eb 2a a4 24 90 	vcvtsi2sd xmm4,xmm2,QWORD PTR [rsp+0x90]
    1531:	00 00 00 
    1534:	c4 e2 d9 99 35 0b 0b 	vfmadd132sd xmm6,xmm4,QWORD PTR [rip+0xb0b]        # 2048 <_IO_stdin_used+0x48>
    153b:	00 00 
    153d:	c5 cb 5c 6c 24 30    	vsubsd xmm5,xmm6,QWORD PTR [rsp+0x30]
    1543:	c5 fb 11 6c 24 38    	vmovsd QWORD PTR [rsp+0x38],xmm5
    1549:	c5 fb 11 74 24 40    	vmovsd QWORD PTR [rsp+0x40],xmm6
    154f:	e8 dc fb ff ff       	call   1130 <fopen@plt>
    1554:	48 85 c0             	test   rax,rax
    1557:	48 89 c3             	mov    rbx,rax
    155a:	0f 84 2d fc ff ff    	je     118d <main+0x2d>
    1560:	4c 89 f7             	mov    rdi,r14
    1563:	48 89 c1             	mov    rcx,rax
    1566:	ba 01 00 00 00       	mov    edx,0x1
    156b:	be 08 00 00 00       	mov    esi,0x8
    1570:	e8 cb fb ff ff       	call   1140 <fwrite@plt>
    1575:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    157a:	48 89 d9             	mov    rcx,rbx
    157d:	ba 01 00 00 00       	mov    edx,0x1
    1582:	be 08 00 00 00       	mov    esi,0x8
    1587:	e8 b4 fb ff ff       	call   1140 <fwrite@plt>
    158c:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    1591:	48 0f af 54 24 70    	imul   rdx,QWORD PTR [rsp+0x70]
    1597:	48 89 d9             	mov    rcx,rbx
    159a:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    159f:	be 04 00 00 00       	mov    esi,0x4
    15a4:	e8 97 fb ff ff       	call   1140 <fwrite@plt>
    15a9:	48 89 df             	mov    rdi,rbx
    15ac:	e8 4f fb ff ff       	call   1100 <fclose@plt>
    15b1:	4c 89 ee             	mov    rsi,r13
    15b4:	bf 01 00 00 00       	mov    edi,0x1
    15b9:	e8 32 fb ff ff       	call   10f0 <clock_gettime@plt>
    15be:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
    15c3:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
    15c7:	c5 7b 10 1d 79 0a 00 	vmovsd xmm11,QWORD PTR [rip+0xa79]        # 2048 <_IO_stdin_used+0x48>
    15ce:	00 
    15cf:	c4 61 c3 2a 84 24 98 	vcvtsi2sd xmm8,xmm7,QWORD PTR [rsp+0x98]
    15d6:	00 00 00 
    15d9:	44 8b 74 24 48       	mov    r14d,DWORD PTR [rsp+0x48]
    15de:	4d 85 ed             	test   r13,r13
    15e1:	c4 41 c3 2a cf       	vcvtsi2sd xmm9,xmm7,r15
    15e6:	c4 62 b1 9b 05 59 0a 	vfmsub132sd xmm8,xmm9,QWORD PTR [rip+0xa59]        # 2048 <_IO_stdin_used+0x48>
    15ed:	00 00 
    15ef:	c4 41 c3 2a ed       	vcvtsi2sd xmm13,xmm7,r13
    15f4:	c4 61 c3 2a 54 24 08 	vcvtsi2sd xmm10,xmm7,QWORD PTR [rsp+0x8]
    15fb:	c4 62 a1 ad 54 24 30 	vfnmadd213sd xmm10,xmm11,QWORD PTR [rsp+0x30]
    1602:	c4 e1 c3 2a ac 24 90 	vcvtsi2sd xmm5,xmm7,QWORD PTR [rsp+0x90]
    1609:	00 00 00 
    160c:	79 17                	jns    1625 <main+0x4c5>
    160e:	4d 89 ec             	mov    r12,r13
    1611:	41 83 e5 01          	and    r13d,0x1
    1615:	49 d1 ec             	shr    r12,1
    1618:	4d 09 e5             	or     r13,r12
    161b:	c4 41 c3 2a e5       	vcvtsi2sd xmm12,xmm7,r13
    1620:	c4 41 1b 58 ec       	vaddsd xmm13,xmm12,xmm12
    1625:	4c 8b 5c 24 60       	mov    r11,QWORD PTR [rsp+0x60]
    162a:	4d 85 db             	test   r11,r11
    162d:	c4 41 c3 2a fb       	vcvtsi2sd xmm15,xmm7,r11
    1632:	79 17                	jns    164b <main+0x4eb>
    1634:	4c 89 d8             	mov    rax,r11
    1637:	41 83 e3 01          	and    r11d,0x1
    163b:	48 d1 e8             	shr    rax,1
    163e:	49 09 c3             	or     r11,rax
    1641:	c4 41 c3 2a f3       	vcvtsi2sd xmm14,xmm7,r11
    1646:	c4 41 0b 58 fe       	vaddsd xmm15,xmm14,xmm14
    164b:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    1650:	c4 c1 13 59 df       	vmulsd xmm3,xmm13,xmm15
    1655:	48 85 ff             	test   rdi,rdi
    1658:	c4 e1 c3 2a c7       	vcvtsi2sd xmm0,xmm7,rdi
    165d:	79 15                	jns    1674 <main+0x514>
    165f:	48 89 fe             	mov    rsi,rdi
    1662:	83 e7 01             	and    edi,0x1
    1665:	48 d1 ee             	shr    rsi,1
    1668:	48 09 f7             	or     rdi,rsi
    166b:	c4 e1 c3 2a cf       	vcvtsi2sd xmm1,xmm7,rdi
    1670:	c5 f3 58 c1          	vaddsd xmm0,xmm1,xmm1
    1674:	c5 fb 10 4c 24 38    	vmovsd xmm1,QWORD PTR [rsp+0x38]
    167a:	c4 c1 3b 58 f2       	vaddsd xmm6,xmm8,xmm10
    167f:	c5 fb 59 15 c9 09 00 	vmulsd xmm2,xmm0,QWORD PTR [rip+0x9c9]        # 2050 <_IO_stdin_used+0x50>
    1686:	00 
    1687:	48 8d 35 82 09 00 00 	lea    rsi,[rip+0x982]        # 2010 <_IO_stdin_used+0x10>
    168e:	c5 d3 5c 7c 24 40    	vsubsd xmm7,xmm5,QWORD PTR [rsp+0x40]
    1694:	bf 02 00 00 00       	mov    edi,0x2
    1699:	b8 03 00 00 00       	mov    eax,0x3
    169e:	44 89 74 24 08       	mov    DWORD PTR [rsp+0x8],r14d
    16a3:	c5 cb 58 c7          	vaddsd xmm0,xmm6,xmm7
    16a7:	c5 e3 59 e2          	vmulsd xmm4,xmm3,xmm2
    16ab:	c5 db 5e d1          	vdivsd xmm2,xmm4,xmm1
    16af:	e8 6c fa ff ff       	call   1120 <__printf_chk@plt>
    16b4:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    16b9:	e8 12 fa ff ff       	call   10d0 <free@plt>
    16be:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    16c3:	e8 08 fa ff ff       	call   10d0 <free@plt>
    16c8:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    16cd:	e8 fe f9 ff ff       	call   10d0 <free@plt>
    16d2:	44 8b 44 24 08       	mov    r8d,DWORD PTR [rsp+0x8]
    16d7:	e9 b7 fa ff ff       	jmp    1193 <main+0x33>
    16dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000016e0 <set_fast_math>:
    16e0:	f3 0f 1e fa          	endbr64
    16e4:	55                   	push   rbp
    16e5:	48 89 e5             	mov    rbp,rsp
    16e8:	0f ae 5d fc          	stmxcsr DWORD PTR [rbp-0x4]
    16ec:	81 4d fc 40 80 00 00 	or     DWORD PTR [rbp-0x4],0x8040
    16f3:	0f ae 55 fc          	ldmxcsr DWORD PTR [rbp-0x4]
    16f7:	5d                   	pop    rbp
    16f8:	c3                   	ret
    16f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001700 <_start>:
    1700:	f3 0f 1e fa          	endbr64
    1704:	31 ed                	xor    ebp,ebp
    1706:	49 89 d1             	mov    r9,rdx
    1709:	5e                   	pop    rsi
    170a:	48 89 e2             	mov    rdx,rsp
    170d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1711:	50                   	push   rax
    1712:	54                   	push   rsp
    1713:	45 31 c0             	xor    r8d,r8d
    1716:	31 c9                	xor    ecx,ecx
    1718:	48 8d 3d 41 fa ff ff 	lea    rdi,[rip+0xfffffffffffffa41]        # 1160 <main>
    171f:	ff 15 b3 28 00 00    	call   QWORD PTR [rip+0x28b3]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1725:	f4                   	hlt
    1726:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    172d:	00 00 00 

0000000000001730 <deregister_tm_clones>:
    1730:	48 8d 3d d9 28 00 00 	lea    rdi,[rip+0x28d9]        # 4010 <__TMC_END__>
    1737:	48 8d 05 d2 28 00 00 	lea    rax,[rip+0x28d2]        # 4010 <__TMC_END__>
    173e:	48 39 f8             	cmp    rax,rdi
    1741:	74 15                	je     1758 <deregister_tm_clones+0x28>
    1743:	48 8b 05 96 28 00 00 	mov    rax,QWORD PTR [rip+0x2896]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    174a:	48 85 c0             	test   rax,rax
    174d:	74 09                	je     1758 <deregister_tm_clones+0x28>
    174f:	ff e0                	jmp    rax
    1751:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1758:	c3                   	ret
    1759:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001760 <register_tm_clones>:
    1760:	48 8d 3d a9 28 00 00 	lea    rdi,[rip+0x28a9]        # 4010 <__TMC_END__>
    1767:	48 8d 35 a2 28 00 00 	lea    rsi,[rip+0x28a2]        # 4010 <__TMC_END__>
    176e:	48 29 fe             	sub    rsi,rdi
    1771:	48 89 f0             	mov    rax,rsi
    1774:	48 c1 ee 3f          	shr    rsi,0x3f
    1778:	48 c1 f8 03          	sar    rax,0x3
    177c:	48 01 c6             	add    rsi,rax
    177f:	48 d1 fe             	sar    rsi,1
    1782:	74 14                	je     1798 <register_tm_clones+0x38>
    1784:	48 8b 05 65 28 00 00 	mov    rax,QWORD PTR [rip+0x2865]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    178b:	48 85 c0             	test   rax,rax
    178e:	74 08                	je     1798 <register_tm_clones+0x38>
    1790:	ff e0                	jmp    rax
    1792:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1798:	c3                   	ret
    1799:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000017a0 <__do_global_dtors_aux>:
    17a0:	f3 0f 1e fa          	endbr64
    17a4:	80 3d 65 28 00 00 00 	cmp    BYTE PTR [rip+0x2865],0x0        # 4010 <__TMC_END__>
    17ab:	75 2b                	jne    17d8 <__do_global_dtors_aux+0x38>
    17ad:	55                   	push   rbp
    17ae:	48 83 3d 42 28 00 00 	cmp    QWORD PTR [rip+0x2842],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    17b5:	00 
    17b6:	48 89 e5             	mov    rbp,rsp
    17b9:	74 0c                	je     17c7 <__do_global_dtors_aux+0x27>
    17bb:	48 8b 3d 46 28 00 00 	mov    rdi,QWORD PTR [rip+0x2846]        # 4008 <__dso_handle>
    17c2:	e8 f9 f8 ff ff       	call   10c0 <__cxa_finalize@plt>
    17c7:	e8 64 ff ff ff       	call   1730 <deregister_tm_clones>
    17cc:	c6 05 3d 28 00 00 01 	mov    BYTE PTR [rip+0x283d],0x1        # 4010 <__TMC_END__>
    17d3:	5d                   	pop    rbp
    17d4:	c3                   	ret
    17d5:	0f 1f 00             	nop    DWORD PTR [rax]
    17d8:	c3                   	ret
    17d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000017e0 <frame_dummy>:
    17e0:	f3 0f 1e fa          	endbr64
    17e4:	e9 77 ff ff ff       	jmp    1760 <register_tm_clones>

Desmontagem da seção .fini:

00000000000017ec <_fini>:
    17ec:	f3 0f 1e fa          	endbr64
    17f0:	48 83 ec 08          	sub    rsp,0x8
    17f4:	48 83 c4 08          	add    rsp,0x8
    17f8:	c3                   	ret
