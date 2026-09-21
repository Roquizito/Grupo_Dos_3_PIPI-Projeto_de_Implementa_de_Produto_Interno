
maquinas/roque/bin/matmul_base: formato do arquivo elf64-x86-64


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

Desmontagem da seção .text:

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
    1178:	48 8d 3d 32 01 00 00 	lea    rdi,[rip+0x132]        # 12b1 <main>
    117f:	ff 15 53 2e 00 00    	call   QWORD PTR [rip+0x2e53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1185:	f4                   	hlt
    1186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    118d:	00 00 00 

0000000000001190 <deregister_tm_clones>:
    1190:	48 8d 3d 79 2e 00 00 	lea    rdi,[rip+0x2e79]        # 4010 <__TMC_END__>
    1197:	48 8d 05 72 2e 00 00 	lea    rax,[rip+0x2e72]        # 4010 <__TMC_END__>
    119e:	48 39 f8             	cmp    rax,rdi
    11a1:	74 15                	je     11b8 <deregister_tm_clones+0x28>
    11a3:	48 8b 05 36 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e36]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
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
    11e4:	48 8b 05 05 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e05]        # 3ff0 <_ITM_registerTMCloneTable@Base>
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

00000000000012b1 <main>:
    12b1:	f3 0f 1e fa          	endbr64
    12b5:	55                   	push   rbp
    12b6:	48 89 e5             	mov    rbp,rsp
    12b9:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
    12c0:	89 bd 2c ff ff ff    	mov    DWORD PTR [rbp-0xd4],edi
    12c6:	48 89 b5 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rsi
    12cd:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    12d4:	00 00 
    12d6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    12da:	31 c0                	xor    eax,eax
    12dc:	83 bd 2c ff ff ff 04 	cmp    DWORD PTR [rbp-0xd4],0x4
    12e3:	74 0a                	je     12ef <main+0x3e>
    12e5:	b8 01 00 00 00       	mov    eax,0x1
    12ea:	e9 60 06 00 00       	jmp    194f <main+0x69e>
    12ef:	e8 55 ff ff ff       	call   1249 <obter_tempo_segundos>
    12f4:	66 48 0f 7e c0       	movq   rax,xmm0
    12f9:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
    12fd:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
    1304:	48 83 c0 08          	add    rax,0x8
    1308:	48 8b 00             	mov    rax,QWORD PTR [rax]
    130b:	48 8d 15 f6 0c 00 00 	lea    rdx,[rip+0xcf6]        # 2008 <_IO_stdin_used+0x8>
    1312:	48 89 d6             	mov    rsi,rdx
    1315:	48 89 c7             	mov    rdi,rax
    1318:	e8 13 fe ff ff       	call   1130 <fopen@plt>
    131d:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
    1321:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
    1328:	48 83 c0 10          	add    rax,0x10
    132c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    132f:	48 8d 15 d2 0c 00 00 	lea    rdx,[rip+0xcd2]        # 2008 <_IO_stdin_used+0x8>
    1336:	48 89 d6             	mov    rsi,rdx
    1339:	48 89 c7             	mov    rdi,rax
    133c:	e8 ef fd ff ff       	call   1130 <fopen@plt>
    1341:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
    1345:	48 83 7d 98 00       	cmp    QWORD PTR [rbp-0x68],0x0
    134a:	74 07                	je     1353 <main+0xa2>
    134c:	48 83 7d a0 00       	cmp    QWORD PTR [rbp-0x60],0x0
    1351:	75 0a                	jne    135d <main+0xac>
    1353:	b8 01 00 00 00       	mov    eax,0x1
    1358:	e9 f2 05 00 00       	jmp    194f <main+0x69e>
    135d:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
    1361:	48 8d 85 38 ff ff ff 	lea    rax,[rbp-0xc8]
    1368:	48 89 d1             	mov    rcx,rdx
    136b:	ba 01 00 00 00       	mov    edx,0x1
    1370:	be 08 00 00 00       	mov    esi,0x8
    1375:	48 89 c7             	mov    rdi,rax
    1378:	e8 63 fd ff ff       	call   10e0 <fread@plt>
    137d:	48 83 f8 01          	cmp    rax,0x1
    1381:	75 26                	jne    13a9 <main+0xf8>
    1383:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
    1387:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
    138e:	48 89 d1             	mov    rcx,rdx
    1391:	ba 01 00 00 00       	mov    edx,0x1
    1396:	be 08 00 00 00       	mov    esi,0x8
    139b:	48 89 c7             	mov    rdi,rax
    139e:	e8 3d fd ff ff       	call   10e0 <fread@plt>
    13a3:	48 83 f8 01          	cmp    rax,0x1
    13a7:	74 0a                	je     13b3 <main+0x102>
    13a9:	b8 01 00 00 00       	mov    eax,0x1
    13ae:	e9 9c 05 00 00       	jmp    194f <main+0x69e>
    13b3:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
    13b7:	48 8d 85 48 ff ff ff 	lea    rax,[rbp-0xb8]
    13be:	48 89 d1             	mov    rcx,rdx
    13c1:	ba 01 00 00 00       	mov    edx,0x1
    13c6:	be 08 00 00 00       	mov    esi,0x8
    13cb:	48 89 c7             	mov    rdi,rax
    13ce:	e8 0d fd ff ff       	call   10e0 <fread@plt>
    13d3:	48 83 f8 01          	cmp    rax,0x1
    13d7:	75 26                	jne    13ff <main+0x14e>
    13d9:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
    13dd:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
    13e4:	48 89 d1             	mov    rcx,rdx
    13e7:	ba 01 00 00 00       	mov    edx,0x1
    13ec:	be 08 00 00 00       	mov    esi,0x8
    13f1:	48 89 c7             	mov    rdi,rax
    13f4:	e8 e7 fc ff ff       	call   10e0 <fread@plt>
    13f9:	48 83 f8 01          	cmp    rax,0x1
    13fd:	74 0a                	je     1409 <main+0x158>
    13ff:	b8 01 00 00 00       	mov    eax,0x1
    1404:	e9 46 05 00 00       	jmp    194f <main+0x69e>
    1409:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
    1410:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
    1417:	48 39 c2             	cmp    rdx,rax
    141a:	74 0a                	je     1426 <main+0x175>
    141c:	b8 01 00 00 00       	mov    eax,0x1
    1421:	e9 29 05 00 00       	jmp    194f <main+0x69e>
    1426:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
    142d:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    1434:	48 0f af c2          	imul   rax,rdx
    1438:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    143f:	00 
    1440:	48 8d 85 58 ff ff ff 	lea    rax,[rbp-0xa8]
    1447:	be 40 00 00 00       	mov    esi,0x40
    144c:	48 89 c7             	mov    rdi,rax
    144f:	e8 fc fc ff ff       	call   1150 <posix_memalign@plt>
    1454:	85 c0                	test   eax,eax
    1456:	74 0a                	je     1462 <main+0x1b1>
    1458:	b8 01 00 00 00       	mov    eax,0x1
    145d:	e9 ed 04 00 00       	jmp    194f <main+0x69e>
    1462:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
    1469:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    1470:	48 0f af c2          	imul   rax,rdx
    1474:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    147b:	00 
    147c:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
    1483:	be 40 00 00 00       	mov    esi,0x40
    1488:	48 89 c7             	mov    rdi,rax
    148b:	e8 c0 fc ff ff       	call   1150 <posix_memalign@plt>
    1490:	85 c0                	test   eax,eax
    1492:	74 0a                	je     149e <main+0x1ed>
    1494:	b8 01 00 00 00       	mov    eax,0x1
    1499:	e9 b1 04 00 00       	jmp    194f <main+0x69e>
    149e:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
    14a5:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    14ac:	48 0f af c2          	imul   rax,rdx
    14b0:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    14b7:	00 
    14b8:	48 8d 85 68 ff ff ff 	lea    rax,[rbp-0x98]
    14bf:	be 40 00 00 00       	mov    esi,0x40
    14c4:	48 89 c7             	mov    rdi,rax
    14c7:	e8 84 fc ff ff       	call   1150 <posix_memalign@plt>
    14cc:	85 c0                	test   eax,eax
    14ce:	74 0a                	je     14da <main+0x229>
    14d0:	b8 01 00 00 00       	mov    eax,0x1
    14d5:	e9 75 04 00 00       	jmp    194f <main+0x69e>
    14da:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
    14e1:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    14e8:	48 0f af d0          	imul   rdx,rax
    14ec:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
    14f3:	48 8b 4d 98          	mov    rcx,QWORD PTR [rbp-0x68]
    14f7:	be 04 00 00 00       	mov    esi,0x4
    14fc:	48 89 c7             	mov    rdi,rax
    14ff:	e8 dc fb ff ff       	call   10e0 <fread@plt>
    1504:	48 89 c2             	mov    rdx,rax
    1507:	48 8b 8d 38 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xc8]
    150e:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    1515:	48 0f af c1          	imul   rax,rcx
    1519:	48 39 c2             	cmp    rdx,rax
    151c:	74 0a                	je     1528 <main+0x277>
    151e:	b8 01 00 00 00       	mov    eax,0x1
    1523:	e9 27 04 00 00       	jmp    194f <main+0x69e>
    1528:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
    152f:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    1536:	48 0f af d0          	imul   rdx,rax
    153a:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
    1541:	48 8b 4d a0          	mov    rcx,QWORD PTR [rbp-0x60]
    1545:	be 04 00 00 00       	mov    esi,0x4
    154a:	48 89 c7             	mov    rdi,rax
    154d:	e8 8e fb ff ff       	call   10e0 <fread@plt>
    1552:	48 89 c2             	mov    rdx,rax
    1555:	48 8b 8d 40 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xc0]
    155c:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    1563:	48 0f af c1          	imul   rax,rcx
    1567:	48 39 c2             	cmp    rdx,rax
    156a:	74 0a                	je     1576 <main+0x2c5>
    156c:	b8 01 00 00 00       	mov    eax,0x1
    1571:	e9 d9 03 00 00       	jmp    194f <main+0x69e>
    1576:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
    157a:	48 89 c7             	mov    rdi,rax
    157d:	e8 7e fb ff ff       	call   1100 <fclose@plt>
    1582:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
    1586:	48 89 c7             	mov    rdi,rax
    1589:	e8 72 fb ff ff       	call   1100 <fclose@plt>
    158e:	48 c7 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],0x0
    1595:	00 00 00 00 
    1599:	eb 25                	jmp    15c0 <main+0x30f>
    159b:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    15a2:	48 8b 95 70 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x90]
    15a9:	48 c1 e2 02          	shl    rdx,0x2
    15ad:	48 01 d0             	add    rax,rdx
    15b0:	66 0f ef c0          	pxor   xmm0,xmm0
    15b4:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
    15b8:	48 83 85 70 ff ff ff 	add    QWORD PTR [rbp-0x90],0x1
    15bf:	01 
    15c0:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
    15c7:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    15ce:	48 0f af c2          	imul   rax,rdx
    15d2:	48 39 85 70 ff ff ff 	cmp    QWORD PTR [rbp-0x90],rax
    15d9:	72 c0                	jb     159b <main+0x2ea>
    15db:	e8 69 fc ff ff       	call   1249 <obter_tempo_segundos>
    15e0:	66 48 0f 7e c0       	movq   rax,xmm0
    15e5:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
    15e9:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
    15f0:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    15f4:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
    15fb:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    15ff:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    1606:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    160a:	48 c7 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],0x0
    1611:	00 00 00 00 
    1615:	e9 0f 01 00 00       	jmp    1729 <main+0x478>
    161a:	48 c7 45 80 00 00 00 	mov    QWORD PTR [rbp-0x80],0x0
    1621:	00 
    1622:	e9 e9 00 00 00       	jmp    1710 <main+0x45f>
    1627:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    162e:	48 0f af 85 78 ff ff 	imul   rax,QWORD PTR [rbp-0x88]
    1635:	ff 
    1636:	48 89 c2             	mov    rdx,rax
    1639:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
    163d:	48 01 d0             	add    rax,rdx
    1640:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1647:	00 
    1648:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    164c:	48 01 d0             	add    rax,rdx
    164f:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
    1653:	f3 0f 11 85 34 ff ff 	movss  DWORD PTR [rbp-0xcc],xmm0
    165a:	ff 
    165b:	48 c7 45 88 00 00 00 	mov    QWORD PTR [rbp-0x78],0x0
    1662:	00 
    1663:	e9 92 00 00 00       	jmp    16fa <main+0x449>
    1668:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    166f:	48 0f af 85 78 ff ff 	imul   rax,QWORD PTR [rbp-0x88]
    1676:	ff 
    1677:	48 89 c2             	mov    rdx,rax
    167a:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    167e:	48 01 d0             	add    rax,rdx
    1681:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1688:	00 
    1689:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    168d:	48 01 d0             	add    rax,rdx
    1690:	f3 0f 10 08          	movss  xmm1,DWORD PTR [rax]
    1694:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    169b:	48 0f af 45 80       	imul   rax,QWORD PTR [rbp-0x80]
    16a0:	48 89 c2             	mov    rdx,rax
    16a3:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    16a7:	48 01 d0             	add    rax,rdx
    16aa:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    16b1:	00 
    16b2:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    16b6:	48 01 d0             	add    rax,rdx
    16b9:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
    16bd:	f3 0f 59 85 34 ff ff 	mulss  xmm0,DWORD PTR [rbp-0xcc]
    16c4:	ff 
    16c5:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    16cc:	48 0f af 85 78 ff ff 	imul   rax,QWORD PTR [rbp-0x88]
    16d3:	ff 
    16d4:	48 89 c2             	mov    rdx,rax
    16d7:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    16db:	48 01 d0             	add    rax,rdx
    16de:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    16e5:	00 
    16e6:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    16ea:	48 01 d0             	add    rax,rdx
    16ed:	f3 0f 58 c1          	addss  xmm0,xmm1
    16f1:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
    16f5:	48 83 45 88 01       	add    QWORD PTR [rbp-0x78],0x1
    16fa:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    1701:	48 39 45 88          	cmp    QWORD PTR [rbp-0x78],rax
    1705:	0f 82 5d ff ff ff    	jb     1668 <main+0x3b7>
    170b:	48 83 45 80 01       	add    QWORD PTR [rbp-0x80],0x1
    1710:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    1717:	48 39 45 80          	cmp    QWORD PTR [rbp-0x80],rax
    171b:	0f 82 06 ff ff ff    	jb     1627 <main+0x376>
    1721:	48 83 85 78 ff ff ff 	add    QWORD PTR [rbp-0x88],0x1
    1728:	01 
    1729:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
    1730:	48 39 85 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],rax
    1737:	0f 82 dd fe ff ff    	jb     161a <main+0x369>
    173d:	e8 07 fb ff ff       	call   1249 <obter_tempo_segundos>
    1742:	66 48 0f 7e c0       	movq   rax,xmm0
    1747:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    174b:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
    1750:	f2 0f 5c 45 a8       	subsd  xmm0,QWORD PTR [rbp-0x58]
    1755:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
    175a:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
    1761:	48 83 c0 18          	add    rax,0x18
    1765:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1768:	48 8d 15 9c 08 00 00 	lea    rdx,[rip+0x89c]        # 200b <_IO_stdin_used+0xb>
    176f:	48 89 d6             	mov    rsi,rdx
    1772:	48 89 c7             	mov    rdi,rax
    1775:	e8 b6 f9 ff ff       	call   1130 <fopen@plt>
    177a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    177e:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
    1783:	75 0a                	jne    178f <main+0x4de>
    1785:	b8 01 00 00 00       	mov    eax,0x1
    178a:	e9 c0 01 00 00       	jmp    194f <main+0x69e>
    178f:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
    1793:	48 8d 85 38 ff ff ff 	lea    rax,[rbp-0xc8]
    179a:	48 89 d1             	mov    rcx,rdx
    179d:	ba 01 00 00 00       	mov    edx,0x1
    17a2:	be 08 00 00 00       	mov    esi,0x8
    17a7:	48 89 c7             	mov    rdi,rax
    17aa:	e8 91 f9 ff ff       	call   1140 <fwrite@plt>
    17af:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
    17b3:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
    17ba:	48 89 d1             	mov    rcx,rdx
    17bd:	ba 01 00 00 00       	mov    edx,0x1
    17c2:	be 08 00 00 00       	mov    esi,0x8
    17c7:	48 89 c7             	mov    rdi,rax
    17ca:	e8 71 f9 ff ff       	call   1140 <fwrite@plt>
    17cf:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
    17d6:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    17dd:	48 0f af d0          	imul   rdx,rax
    17e1:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    17e8:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
    17ec:	be 04 00 00 00       	mov    esi,0x4
    17f1:	48 89 c7             	mov    rdi,rax
    17f4:	e8 47 f9 ff ff       	call   1140 <fwrite@plt>
    17f9:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    17fd:	48 89 c7             	mov    rdi,rax
    1800:	e8 fb f8 ff ff       	call   1100 <fclose@plt>
    1805:	e8 3f fa ff ff       	call   1249 <obter_tempo_segundos>
    180a:	66 48 0f 7e c0       	movq   rax,xmm0
    180f:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1813:	f2 0f 10 45 a8       	movsd  xmm0,QWORD PTR [rbp-0x58]
    1818:	66 0f 28 c8          	movapd xmm1,xmm0
    181c:	f2 0f 5c 4d 90       	subsd  xmm1,QWORD PTR [rbp-0x70]
    1821:	f2 0f 10 45 e0       	movsd  xmm0,QWORD PTR [rbp-0x20]
    1826:	f2 0f 5c 45 c8       	subsd  xmm0,QWORD PTR [rbp-0x38]
    182b:	f2 0f 58 c1          	addsd  xmm0,xmm1
    182f:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
    1834:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
    183b:	48 85 c0             	test   rax,rax
    183e:	78 0b                	js     184b <main+0x59a>
    1840:	66 0f ef c0          	pxor   xmm0,xmm0
    1844:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    1849:	eb 19                	jmp    1864 <main+0x5b3>
    184b:	48 89 c2             	mov    rdx,rax
    184e:	48 d1 ea             	shr    rdx,1
    1851:	83 e0 01             	and    eax,0x1
    1854:	48 09 c2             	or     rdx,rax
    1857:	66 0f ef c0          	pxor   xmm0,xmm0
    185b:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1860:	f2 0f 58 c0          	addsd  xmm0,xmm0
    1864:	66 0f 28 c8          	movapd xmm1,xmm0
    1868:	f2 0f 58 c8          	addsd  xmm1,xmm0
    186c:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    1873:	48 85 c0             	test   rax,rax
    1876:	78 0b                	js     1883 <main+0x5d2>
    1878:	66 0f ef c0          	pxor   xmm0,xmm0
    187c:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    1881:	eb 19                	jmp    189c <main+0x5eb>
    1883:	48 89 c2             	mov    rdx,rax
    1886:	48 d1 ea             	shr    rdx,1
    1889:	83 e0 01             	and    eax,0x1
    188c:	48 09 c2             	or     rdx,rax
    188f:	66 0f ef c0          	pxor   xmm0,xmm0
    1893:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    1898:	f2 0f 58 c0          	addsd  xmm0,xmm0
    189c:	f2 0f 59 c8          	mulsd  xmm1,xmm0
    18a0:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    18a7:	48 85 c0             	test   rax,rax
    18aa:	78 0b                	js     18b7 <main+0x606>
    18ac:	66 0f ef c0          	pxor   xmm0,xmm0
    18b0:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    18b5:	eb 19                	jmp    18d0 <main+0x61f>
    18b7:	48 89 c2             	mov    rdx,rax
    18ba:	48 d1 ea             	shr    rdx,1
    18bd:	83 e0 01             	and    eax,0x1
    18c0:	48 09 c2             	or     rdx,rax
    18c3:	66 0f ef c0          	pxor   xmm0,xmm0
    18c7:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    18cc:	f2 0f 58 c0          	addsd  xmm0,xmm0
    18d0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
    18d4:	f2 0f 10 55 d0       	movsd  xmm2,QWORD PTR [rbp-0x30]
    18d9:	f2 0f 10 0d 6f 07 00 	movsd  xmm1,QWORD PTR [rip+0x76f]        # 2050 <_IO_stdin_used+0x50>
    18e0:	00 
    18e1:	f2 0f 59 ca          	mulsd  xmm1,xmm2
    18e5:	f2 0f 5e c1          	divsd  xmm0,xmm1
    18e9:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
    18ee:	f2 0f 10 4d f0       	movsd  xmm1,QWORD PTR [rbp-0x10]
    18f3:	f2 0f 10 45 d0       	movsd  xmm0,QWORD PTR [rbp-0x30]
    18f8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    18fc:	66 0f 28 d1          	movapd xmm2,xmm1
    1900:	66 0f 28 c8          	movapd xmm1,xmm0
    1904:	66 48 0f 6e c0       	movq   xmm0,rax
    1909:	48 8d 05 00 07 00 00 	lea    rax,[rip+0x700]        # 2010 <_IO_stdin_used+0x10>
    1910:	48 89 c7             	mov    rdi,rax
    1913:	b8 03 00 00 00       	mov    eax,0x3
    1918:	e8 03 f8 ff ff       	call   1120 <printf@plt>
    191d:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
    1924:	48 89 c7             	mov    rdi,rax
    1927:	e8 a4 f7 ff ff       	call   10d0 <free@plt>
    192c:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
    1933:	48 89 c7             	mov    rdi,rax
    1936:	e8 95 f7 ff ff       	call   10d0 <free@plt>
    193b:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    1942:	48 89 c7             	mov    rdi,rax
    1945:	e8 86 f7 ff ff       	call   10d0 <free@plt>
    194a:	b8 00 00 00 00       	mov    eax,0x0
    194f:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1953:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    195a:	00 00 
    195c:	74 05                	je     1963 <main+0x6b2>
    195e:	e8 ad f7 ff ff       	call   1110 <__stack_chk_fail@plt>
    1963:	c9                   	leave
    1964:	c3                   	ret

Desmontagem da seção .fini:

0000000000001968 <_fini>:
    1968:	f3 0f 1e fa          	endbr64
    196c:	48 83 ec 08          	sub    rsp,0x8
    1970:	48 83 c4 08          	add    rsp,0x8
    1974:	c3                   	ret
