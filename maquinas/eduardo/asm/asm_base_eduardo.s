
matmul_base:     file format elf64-x86-64


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

0000000000001120 <printf@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 8e 2e 00 00    	jmp    QWORD PTR [rip+0x2e8e]        # 3fb8 <printf@GLIBC_2.2.5>
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

0000000000001160 <_start>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	31 ed                	xor    ebp,ebp
    1166:	49 89 d1             	mov    r9,rdx
    1169:	5e                   	pop    rsi
    116a:	48 89 e2             	mov    rdx,rsp
    116d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1171:	50                   	push   rax
    1172:	54                   	push   rsp
    1173:	45 31 c0             	xor    r8d,r8d
    1176:	31 c9                	xor    ecx,ecx
    1178:	48 8d 3d b0 02 00 00 	lea    rdi,[rip+0x2b0]        # 142f <main>
    117f:	ff 15 53 2e 00 00    	call   QWORD PTR [rip+0x2e53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1185:	f4                   	hlt
    1186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    118d:	00 00 00 

0000000000001190 <deregister_tm_clones>:
    1190:	48 8d 3d 79 2e 00 00 	lea    rdi,[rip+0x2e79]        # 4010 <__TMC_END__>
    1197:	48 8d 05 72 2e 00 00 	lea    rax,[rip+0x2e72]        # 4010 <__TMC_END__>
    119e:	48 39 f8             	cmp    rax,rdi
    11a1:	74 15                	je     11b8 <deregister_tm_clones+0x28>
    11a3:	48 8b 05 36 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e36]        # 3fe0 <_ITM_deregisterTMCloneTable>
    11aa:	48 85 c0             	test   rax,rax
    11ad:	74 09                	je     11b8 <deregister_tm_clones+0x28>
    11af:	ff e0                	jmp    rax
    11b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11b8:	c3                   	ret
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <register_tm_clones>:
    11c0:	48 8d 3d 49 2e 00 00 	lea    rdi,[rip+0x2e49]        # 4010 <__TMC_END__>
    11c7:	48 8d 35 42 2e 00 00 	lea    rsi,[rip+0x2e42]        # 4010 <__TMC_END__>
    11ce:	48 29 fe             	sub    rsi,rdi
    11d1:	48 89 f0             	mov    rax,rsi
    11d4:	48 c1 ee 3f          	shr    rsi,0x3f
    11d8:	48 c1 f8 03          	sar    rax,0x3
    11dc:	48 01 c6             	add    rsi,rax
    11df:	48 d1 fe             	sar    rsi,1
    11e2:	74 14                	je     11f8 <register_tm_clones+0x38>
    11e4:	48 8b 05 05 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e05]        # 3ff0 <_ITM_registerTMCloneTable>
    11eb:	48 85 c0             	test   rax,rax
    11ee:	74 08                	je     11f8 <register_tm_clones+0x38>
    11f0:	ff e0                	jmp    rax
    11f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11f8:	c3                   	ret
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001200 <__do_global_dtors_aux>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	80 3d 05 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e05],0x0        # 4010 <__TMC_END__>
    120b:	75 2b                	jne    1238 <__do_global_dtors_aux+0x38>
    120d:	55                   	push   rbp
    120e:	48 83 3d e2 2d 00 00 	cmp    QWORD PTR [rip+0x2de2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1215:	00 
    1216:	48 89 e5             	mov    rbp,rsp
    1219:	74 0c                	je     1227 <__do_global_dtors_aux+0x27>
    121b:	48 8b 3d e6 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2de6]        # 4008 <__dso_handle>
    1222:	e8 99 fe ff ff       	call   10c0 <__cxa_finalize@plt>
    1227:	e8 64 ff ff ff       	call   1190 <deregister_tm_clones>
    122c:	c6 05 dd 2d 00 00 01 	mov    BYTE PTR [rip+0x2ddd],0x1        # 4010 <__TMC_END__>
    1233:	5d                   	pop    rbp
    1234:	c3                   	ret
    1235:	0f 1f 00             	nop    DWORD PTR [rax]
    1238:	c3                   	ret
    1239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001240 <frame_dummy>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	e9 77 ff ff ff       	jmp    11c0 <register_tm_clones>

0000000000001249 <obter_tempo_segundos>:
    1249:	55                   	push   rbp
    124a:	48 89 e5             	mov    rbp,rsp
    124d:	48 83 ec 20          	sub    rsp,0x20
    1251:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1258:	00 00 
    125a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    125e:	31 c0                	xor    eax,eax
    1260:	48 8d 45 e0          	lea    rax,[rbp-0x20]
    1264:	48 89 c6             	mov    rsi,rax
    1267:	bf 01 00 00 00       	mov    edi,0x1
    126c:	e8 7f fe ff ff       	call   10f0 <clock_gettime@plt>
    1271:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1275:	66 0f ef c9          	pxor   xmm1,xmm1
    1279:	f2 48 0f 2a c8       	cvtsi2sd xmm1,rax
    127e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1282:	66 0f ef d2          	pxor   xmm2,xmm2
    1286:	f2 48 0f 2a d0       	cvtsi2sd xmm2,rax
    128b:	f2 0f 10 05 b5 0d 00 	movsd  xmm0,QWORD PTR [rip+0xdb5]        # 2048 <_IO_stdin_used+0x48>
    1292:	00 
    1293:	f2 0f 59 c2          	mulsd  xmm0,xmm2
    1297:	f2 0f 58 c1          	addsd  xmm0,xmm1
    129b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    129f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    12a6:	00 00 
    12a8:	74 05                	je     12af <obter_tempo_segundos+0x66>
    12aa:	e8 61 fe ff ff       	call   1110 <__stack_chk_fail@plt>
    12af:	c9                   	leave
    12b0:	c3                   	ret

00000000000012b1 <carregar_matriz>:
    12b1:	f3 0f 1e fa          	endbr64
    12b5:	55                   	push   rbp
    12b6:	48 89 e5             	mov    rbp,rsp
    12b9:	48 83 ec 40          	sub    rsp,0x40
    12bd:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    12c1:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    12c5:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
    12c9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    12d0:	00 00 
    12d2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    12d6:	31 c0                	xor    eax,eax
    12d8:	48 8d 15 29 0d 00 00 	lea    rdx,[rip+0xd29]        # 2008 <_IO_stdin_used+0x8>
    12df:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    12e3:	48 89 d6             	mov    rsi,rdx
    12e6:	48 89 c7             	mov    rdi,rax
    12e9:	e8 42 fe ff ff       	call   1130 <fopen@plt>
    12ee:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    12f2:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
    12f7:	75 0a                	jne    1303 <carregar_matriz+0x52>
    12f9:	b8 00 00 00 00       	mov    eax,0x0
    12fe:	e9 16 01 00 00       	jmp    1419 <carregar_matriz+0x168>
    1303:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1307:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    130b:	48 89 d1             	mov    rcx,rdx
    130e:	ba 01 00 00 00       	mov    edx,0x1
    1313:	be 08 00 00 00       	mov    esi,0x8
    1318:	48 89 c7             	mov    rdi,rax
    131b:	e8 c0 fd ff ff       	call   10e0 <fread@plt>
    1320:	48 83 f8 01          	cmp    rax,0x1
    1324:	75 23                	jne    1349 <carregar_matriz+0x98>
    1326:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    132a:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    132e:	48 89 d1             	mov    rcx,rdx
    1331:	ba 01 00 00 00       	mov    edx,0x1
    1336:	be 08 00 00 00       	mov    esi,0x8
    133b:	48 89 c7             	mov    rdi,rax
    133e:	e8 9d fd ff ff       	call   10e0 <fread@plt>
    1343:	48 83 f8 01          	cmp    rax,0x1
    1347:	74 16                	je     135f <carregar_matriz+0xae>
    1349:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    134d:	48 89 c7             	mov    rdi,rax
    1350:	e8 ab fd ff ff       	call   1100 <fclose@plt>
    1355:	b8 00 00 00 00       	mov    eax,0x0
    135a:	e9 ba 00 00 00       	jmp    1419 <carregar_matriz+0x168>
    135f:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
    1366:	00 
    1367:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    136b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    136e:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1372:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1375:	48 0f af c2          	imul   rax,rdx
    1379:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1380:	00 
    1381:	48 8d 45 e8          	lea    rax,[rbp-0x18]
    1385:	be 40 00 00 00       	mov    esi,0x40
    138a:	48 89 c7             	mov    rdi,rax
    138d:	e8 be fd ff ff       	call   1150 <posix_memalign@plt>
    1392:	85 c0                	test   eax,eax
    1394:	74 13                	je     13a9 <carregar_matriz+0xf8>
    1396:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    139a:	48 89 c7             	mov    rdi,rax
    139d:	e8 5e fd ff ff       	call   1100 <fclose@plt>
    13a2:	b8 00 00 00 00       	mov    eax,0x0
    13a7:	eb 70                	jmp    1419 <carregar_matriz+0x168>
    13a9:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    13ad:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    13b0:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    13b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    13b7:	48 0f af d0          	imul   rdx,rax
    13bb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    13bf:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
    13c3:	be 04 00 00 00       	mov    esi,0x4
    13c8:	48 89 c7             	mov    rdi,rax
    13cb:	e8 10 fd ff ff       	call   10e0 <fread@plt>
    13d0:	48 89 c2             	mov    rdx,rax
    13d3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    13d7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    13da:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    13de:	48 8b 00             	mov    rax,QWORD PTR [rax]
    13e1:	48 0f af c1          	imul   rax,rcx
    13e5:	48 39 c2             	cmp    rdx,rax
    13e8:	74 1f                	je     1409 <carregar_matriz+0x158>
    13ea:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    13ee:	48 89 c7             	mov    rdi,rax
    13f1:	e8 da fc ff ff       	call   10d0 <free@plt>
    13f6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    13fa:	48 89 c7             	mov    rdi,rax
    13fd:	e8 fe fc ff ff       	call   1100 <fclose@plt>
    1402:	b8 00 00 00 00       	mov    eax,0x0
    1407:	eb 10                	jmp    1419 <carregar_matriz+0x168>
    1409:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    140d:	48 89 c7             	mov    rdi,rax
    1410:	e8 eb fc ff ff       	call   1100 <fclose@plt>
    1415:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1419:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    141d:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1424:	00 00 
    1426:	74 05                	je     142d <carregar_matriz+0x17c>
    1428:	e8 e3 fc ff ff       	call   1110 <__stack_chk_fail@plt>
    142d:	c9                   	leave
    142e:	c3                   	ret

000000000000142f <main>:
    142f:	f3 0f 1e fa          	endbr64
    1433:	55                   	push   rbp
    1434:	48 89 e5             	mov    rbp,rsp
    1437:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
    143e:	89 bd 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],edi
    1444:	48 89 b5 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rsi
    144b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1452:	00 00 
    1454:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1458:	31 c0                	xor    eax,eax
    145a:	83 bd 5c ff ff ff 04 	cmp    DWORD PTR [rbp-0xa4],0x4
    1461:	74 0a                	je     146d <main+0x3e>
    1463:	b8 01 00 00 00       	mov    eax,0x1
    1468:	e9 86 04 00 00       	jmp    18f3 <main+0x4c4>
    146d:	66 0f ef c0          	pxor   xmm0,xmm0
    1471:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
    1476:	e8 ce fd ff ff       	call   1249 <obter_tempo_segundos>
    147b:	66 48 0f 7e c0       	movq   rax,xmm0
    1480:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    1484:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    148b:	48 83 c0 08          	add    rax,0x8
    148f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1492:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
    1499:	48 8d 8d 68 ff ff ff 	lea    rcx,[rbp-0x98]
    14a0:	48 89 ce             	mov    rsi,rcx
    14a3:	48 89 c7             	mov    rdi,rax
    14a6:	e8 06 fe ff ff       	call   12b1 <carregar_matriz>
    14ab:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    14af:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    14b6:	48 83 c0 10          	add    rax,0x10
    14ba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    14bd:	48 8d 55 80          	lea    rdx,[rbp-0x80]
    14c1:	48 8d 8d 78 ff ff ff 	lea    rcx,[rbp-0x88]
    14c8:	48 89 ce             	mov    rsi,rcx
    14cb:	48 89 c7             	mov    rdi,rax
    14ce:	e8 de fd ff ff       	call   12b1 <carregar_matriz>
    14d3:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    14d7:	48 83 7d c0 00       	cmp    QWORD PTR [rbp-0x40],0x0
    14dc:	74 1a                	je     14f8 <main+0xc9>
    14de:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
    14e3:	74 13                	je     14f8 <main+0xc9>
    14e5:	48 8b 95 70 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x90]
    14ec:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
    14f3:	48 39 c2             	cmp    rdx,rax
    14f6:	74 30                	je     1528 <main+0xf9>
    14f8:	48 83 7d c0 00       	cmp    QWORD PTR [rbp-0x40],0x0
    14fd:	74 0c                	je     150b <main+0xdc>
    14ff:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    1503:	48 89 c7             	mov    rdi,rax
    1506:	e8 c5 fb ff ff       	call   10d0 <free@plt>
    150b:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
    1510:	74 0c                	je     151e <main+0xef>
    1512:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1516:	48 89 c7             	mov    rdi,rax
    1519:	e8 b2 fb ff ff       	call   10d0 <free@plt>
    151e:	b8 01 00 00 00       	mov    eax,0x1
    1523:	e9 cb 03 00 00       	jmp    18f3 <main+0x4c4>
    1528:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
    152f:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1533:	48 c7 45 88 00 00 00 	mov    QWORD PTR [rbp-0x78],0x0
    153a:	00 
    153b:	48 8b 95 68 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x98]
    1542:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    1546:	48 0f af c2          	imul   rax,rdx
    154a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1551:	00 
    1552:	48 8d 45 88          	lea    rax,[rbp-0x78]
    1556:	be 40 00 00 00       	mov    esi,0x40
    155b:	48 89 c7             	mov    rdi,rax
    155e:	e8 ed fb ff ff       	call   1150 <posix_memalign@plt>
    1563:	85 c0                	test   eax,eax
    1565:	74 30                	je     1597 <main+0x168>
    1567:	48 83 7d c0 00       	cmp    QWORD PTR [rbp-0x40],0x0
    156c:	74 0c                	je     157a <main+0x14b>
    156e:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    1572:	48 89 c7             	mov    rdi,rax
    1575:	e8 56 fb ff ff       	call   10d0 <free@plt>
    157a:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
    157f:	74 0c                	je     158d <main+0x15e>
    1581:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1585:	48 89 c7             	mov    rdi,rax
    1588:	e8 43 fb ff ff       	call   10d0 <free@plt>
    158d:	b8 01 00 00 00       	mov    eax,0x1
    1592:	e9 5c 03 00 00       	jmp    18f3 <main+0x4c4>
    1597:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0
    159e:	00 
    159f:	eb 1c                	jmp    15bd <main+0x18e>
    15a1:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    15a5:	48 8b 55 90          	mov    rdx,QWORD PTR [rbp-0x70]
    15a9:	48 c1 e2 02          	shl    rdx,0x2
    15ad:	48 01 d0             	add    rax,rdx
    15b0:	66 0f ef c0          	pxor   xmm0,xmm0
    15b4:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
    15b8:	48 83 45 90 01       	add    QWORD PTR [rbp-0x70],0x1
    15bd:	48 8b 95 68 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x98]
    15c4:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    15c8:	48 0f af c2          	imul   rax,rdx
    15cc:	48 39 45 90          	cmp    QWORD PTR [rbp-0x70],rax
    15d0:	72 cf                	jb     15a1 <main+0x172>
    15d2:	e8 72 fc ff ff       	call   1249 <obter_tempo_segundos>
    15d7:	66 48 0f 7e c0       	movq   rax,xmm0
    15dc:	66 48 0f 6e c0       	movq   xmm0,rax
    15e1:	f2 0f 5c 45 b8       	subsd  xmm0,QWORD PTR [rbp-0x48]
    15e6:	f2 0f 10 4d b0       	movsd  xmm1,QWORD PTR [rbp-0x50]
    15eb:	f2 0f 58 c1          	addsd  xmm0,xmm1
    15ef:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
    15f4:	e8 50 fc ff ff       	call   1249 <obter_tempo_segundos>
    15f9:	66 48 0f 7e c0       	movq   rax,xmm0
    15fe:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1602:	48 c7 45 98 00 00 00 	mov    QWORD PTR [rbp-0x68],0x0
    1609:	00 
    160a:	e9 e6 00 00 00       	jmp    16f5 <main+0x2c6>
    160f:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
    1616:	00 
    1617:	e9 c6 00 00 00       	jmp    16e2 <main+0x2b3>
    161c:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
    1620:	48 0f af 45 d0       	imul   rax,QWORD PTR [rbp-0x30]
    1625:	48 89 c2             	mov    rdx,rax
    1628:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
    162c:	48 01 d0             	add    rax,rdx
    162f:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1636:	00 
    1637:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    163b:	48 01 d0             	add    rax,rdx
    163e:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
    1642:	f3 0f 11 85 64 ff ff 	movss  DWORD PTR [rbp-0x9c],xmm0
    1649:	ff 
    164a:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
    1651:	00 
    1652:	eb 7b                	jmp    16cf <main+0x2a0>
    1654:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
    1658:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    165c:	48 0f af 45 98       	imul   rax,QWORD PTR [rbp-0x68]
    1661:	48 89 c1             	mov    rcx,rax
    1664:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    1668:	48 01 c8             	add    rax,rcx
    166b:	48 c1 e0 02          	shl    rax,0x2
    166f:	48 01 d0             	add    rax,rdx
    1672:	f3 0f 10 08          	movss  xmm1,DWORD PTR [rax]
    1676:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    167a:	48 0f af 45 a0       	imul   rax,QWORD PTR [rbp-0x60]
    167f:	48 89 c2             	mov    rdx,rax
    1682:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    1686:	48 01 d0             	add    rax,rdx
    1689:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1690:	00 
    1691:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1695:	48 01 d0             	add    rax,rdx
    1698:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
    169c:	f3 0f 59 85 64 ff ff 	mulss  xmm0,DWORD PTR [rbp-0x9c]
    16a3:	ff 
    16a4:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
    16a8:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    16ac:	48 0f af 45 98       	imul   rax,QWORD PTR [rbp-0x68]
    16b1:	48 89 c1             	mov    rcx,rax
    16b4:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    16b8:	48 01 c8             	add    rax,rcx
    16bb:	48 c1 e0 02          	shl    rax,0x2
    16bf:	48 01 d0             	add    rax,rdx
    16c2:	f3 0f 58 c1          	addss  xmm0,xmm1
    16c6:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
    16ca:	48 83 45 a8 01       	add    QWORD PTR [rbp-0x58],0x1
    16cf:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    16d3:	48 39 45 a8          	cmp    QWORD PTR [rbp-0x58],rax
    16d7:	0f 82 77 ff ff ff    	jb     1654 <main+0x225>
    16dd:	48 83 45 a0 01       	add    QWORD PTR [rbp-0x60],0x1
    16e2:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
    16e6:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
    16ea:	0f 82 2c ff ff ff    	jb     161c <main+0x1ed>
    16f0:	48 83 45 98 01       	add    QWORD PTR [rbp-0x68],0x1
    16f5:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    16fc:	48 39 45 98          	cmp    QWORD PTR [rbp-0x68],rax
    1700:	0f 82 09 ff ff ff    	jb     160f <main+0x1e0>
    1706:	e8 3e fb ff ff       	call   1249 <obter_tempo_segundos>
    170b:	66 48 0f 7e c0       	movq   rax,xmm0
    1710:	66 48 0f 6e c0       	movq   xmm0,rax
    1715:	f2 0f 5c 45 d8       	subsd  xmm0,QWORD PTR [rbp-0x28]
    171a:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
    171f:	e8 25 fb ff ff       	call   1249 <obter_tempo_segundos>
    1724:	66 48 0f 7e c0       	movq   rax,xmm0
    1729:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    172d:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    1734:	48 83 c0 18          	add    rax,0x18
    1738:	48 8b 00             	mov    rax,QWORD PTR [rax]
    173b:	48 8d 15 c9 08 00 00 	lea    rdx,[rip+0x8c9]        # 200b <_IO_stdin_used+0xb>
    1742:	48 89 d6             	mov    rsi,rdx
    1745:	48 89 c7             	mov    rdi,rax
    1748:	e8 e3 f9 ff ff       	call   1130 <fopen@plt>
    174d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1751:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
    1756:	74 6d                	je     17c5 <main+0x396>
    1758:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    175c:	48 8d 85 68 ff ff ff 	lea    rax,[rbp-0x98]
    1763:	48 89 d1             	mov    rcx,rdx
    1766:	ba 01 00 00 00       	mov    edx,0x1
    176b:	be 08 00 00 00       	mov    esi,0x8
    1770:	48 89 c7             	mov    rdi,rax
    1773:	e8 c8 f9 ff ff       	call   1140 <fwrite@plt>
    1778:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    177c:	48 8d 45 80          	lea    rax,[rbp-0x80]
    1780:	48 89 d1             	mov    rcx,rdx
    1783:	ba 01 00 00 00       	mov    edx,0x1
    1788:	be 08 00 00 00       	mov    esi,0x8
    178d:	48 89 c7             	mov    rdi,rax
    1790:	e8 ab f9 ff ff       	call   1140 <fwrite@plt>
    1795:	48 8b 95 68 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x98]
    179c:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    17a0:	48 0f af d0          	imul   rdx,rax
    17a4:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    17a8:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
    17ac:	be 04 00 00 00       	mov    esi,0x4
    17b1:	48 89 c7             	mov    rdi,rax
    17b4:	e8 87 f9 ff ff       	call   1140 <fwrite@plt>
    17b9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    17bd:	48 89 c7             	mov    rdi,rax
    17c0:	e8 3b f9 ff ff       	call   1100 <fclose@plt>
    17c5:	e8 7f fa ff ff       	call   1249 <obter_tempo_segundos>
    17ca:	66 48 0f 7e c0       	movq   rax,xmm0
    17cf:	66 48 0f 6e c0       	movq   xmm0,rax
    17d4:	f2 0f 5c 45 b8       	subsd  xmm0,QWORD PTR [rbp-0x48]
    17d9:	f2 0f 10 4d b0       	movsd  xmm1,QWORD PTR [rbp-0x50]
    17de:	f2 0f 58 c1          	addsd  xmm0,xmm1
    17e2:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
    17e7:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    17ee:	48 85 c0             	test   rax,rax
    17f1:	78 0b                	js     17fe <main+0x3cf>
    17f3:	66 0f ef c0          	pxor   xmm0,xmm0
    17f7:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    17fc:	eb 19                	jmp    1817 <main+0x3e8>
    17fe:	48 89 c2             	mov    rdx,rax
    1801:	48 d1 ea             	shr    rdx,1
    1804:	83 e0 01             	and    eax,0x1
    1807:	48 09 c2             	or     rdx,rax
    180a:	66 0f ef c0          	pxor   xmm0,xmm0
    180e:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1813:	f2 0f 58 c0          	addsd  xmm0,xmm0
    1817:	66 0f 28 c8          	movapd xmm1,xmm0
    181b:	f2 0f 58 c8          	addsd  xmm1,xmm0
    181f:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    1823:	48 85 c0             	test   rax,rax
    1826:	78 0b                	js     1833 <main+0x404>
    1828:	66 0f ef c0          	pxor   xmm0,xmm0
    182c:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    1831:	eb 19                	jmp    184c <main+0x41d>
    1833:	48 89 c2             	mov    rdx,rax
    1836:	48 d1 ea             	shr    rdx,1
    1839:	83 e0 01             	and    eax,0x1
    183c:	48 09 c2             	or     rdx,rax
    183f:	66 0f ef c0          	pxor   xmm0,xmm0
    1843:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1848:	f2 0f 58 c0          	addsd  xmm0,xmm0
    184c:	f2 0f 59 c8          	mulsd  xmm1,xmm0
    1850:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    1854:	48 85 c0             	test   rax,rax
    1857:	78 0b                	js     1864 <main+0x435>
    1859:	66 0f ef c0          	pxor   xmm0,xmm0
    185d:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    1862:	eb 19                	jmp    187d <main+0x44e>
    1864:	48 89 c2             	mov    rdx,rax
    1867:	48 d1 ea             	shr    rdx,1
    186a:	83 e0 01             	and    eax,0x1
    186d:	48 09 c2             	or     rdx,rax
    1870:	66 0f ef c0          	pxor   xmm0,xmm0
    1874:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1879:	f2 0f 58 c0          	addsd  xmm0,xmm0
    187d:	f2 0f 59 c1          	mulsd  xmm0,xmm1
    1881:	f2 0f 10 55 e0       	movsd  xmm2,QWORD PTR [rbp-0x20]
    1886:	f2 0f 10 0d c2 07 00 	movsd  xmm1,QWORD PTR [rip+0x7c2]        # 2050 <_IO_stdin_used+0x50>
    188d:	00 
    188e:	f2 0f 59 ca          	mulsd  xmm1,xmm2
    1892:	f2 0f 5e c1          	divsd  xmm0,xmm1
    1896:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
    189b:	f2 0f 10 4d f0       	movsd  xmm1,QWORD PTR [rbp-0x10]
    18a0:	f2 0f 10 45 e0       	movsd  xmm0,QWORD PTR [rbp-0x20]
    18a5:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    18a9:	48 8d 15 60 07 00 00 	lea    rdx,[rip+0x760]        # 2010 <_IO_stdin_used+0x10>
    18b0:	66 0f 28 d1          	movapd xmm2,xmm1
    18b4:	66 0f 28 c8          	movapd xmm1,xmm0
    18b8:	66 48 0f 6e c0       	movq   xmm0,rax
    18bd:	48 89 d7             	mov    rdi,rdx
    18c0:	b8 03 00 00 00       	mov    eax,0x3
    18c5:	e8 56 f8 ff ff       	call   1120 <printf@plt>
    18ca:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    18ce:	48 89 c7             	mov    rdi,rax
    18d1:	e8 fa f7 ff ff       	call   10d0 <free@plt>
    18d6:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    18da:	48 89 c7             	mov    rdi,rax
    18dd:	e8 ee f7 ff ff       	call   10d0 <free@plt>
    18e2:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    18e6:	48 89 c7             	mov    rdi,rax
    18e9:	e8 e2 f7 ff ff       	call   10d0 <free@plt>
    18ee:	b8 00 00 00 00       	mov    eax,0x0
    18f3:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    18f7:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    18fe:	00 00 
    1900:	74 05                	je     1907 <main+0x4d8>
    1902:	e8 09 f8 ff ff       	call   1110 <__stack_chk_fail@plt>
    1907:	c9                   	leave
    1908:	c3                   	ret

Disassembly of section .fini:

000000000000190c <_fini>:
    190c:	f3 0f 1e fa          	endbr64
    1910:	48 83 ec 08          	sub    rsp,0x8
    1914:	48 83 c4 08          	add    rsp,0x8
    1918:	c3                   	ret
