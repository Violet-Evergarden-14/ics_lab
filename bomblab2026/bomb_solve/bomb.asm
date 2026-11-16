
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 e2 4f 00 00    	push   0x4fe2(%rip)        # 6008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 4f 00 00    	jmp    *0x4fe4(%rip)        # 6010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 4f 00 00    	jmp    *0x4fe2(%rip)        # 6018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strcasecmp@plt>:
    1040:	ff 25 da 4f 00 00    	jmp    *0x4fda(%rip)        # 6020 <strcasecmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__errno_location@plt>:
    1050:	ff 25 d2 4f 00 00    	jmp    *0x4fd2(%rip)        # 6028 <__errno_location@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strcpy@plt>:
    1060:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 6030 <strcpy@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <puts@plt>:
    1070:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 6038 <puts@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <write@plt>:
    1080:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 6040 <write@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <strlen@plt>:
    1090:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 6048 <strlen@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 6050 <__stack_chk_fail@GLIBC_2.4>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <printf@plt>:
    10b0:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 6058 <printf@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <alarm@plt>:
    10c0:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 6060 <alarm@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <close@plt>:
    10d0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 6068 <close@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <read@plt>:
    10e0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 6070 <read@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <fgets@plt>:
    10f0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 6078 <fgets@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <strcmp@plt>:
    1100:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 6080 <strcmp@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <signal@plt>:
    1110:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 6088 <signal@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <gethostbyname@plt>:
    1120:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 6090 <gethostbyname@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <fprintf@plt>:
    1130:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 6098 <fprintf@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <fflush@plt>:
    1140:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 60a0 <fflush@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001150 <__isoc99_sscanf@plt>:
    1150:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 60a8 <__isoc99_sscanf@GLIBC_2.7>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001160 <memmove@plt>:
    1160:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 60b0 <memmove@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001170 <fopen@plt>:
    1170:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 60b8 <fopen@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001180 <sprintf@plt>:
    1180:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 60c0 <sprintf@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001190 <exit@plt>:
    1190:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 60c8 <exit@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011a0 <connect@plt>:
    11a0:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 60d0 <connect@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011b0 <sleep@plt>:
    11b0:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 60d8 <sleep@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011c0 <__ctype_b_loc@plt>:
    11c0:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 60e0 <__ctype_b_loc@GLIBC_2.3>
    11c6:	68 19 00 00 00       	push   $0x19
    11cb:	e9 50 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011d0 <socket@plt>:
    11d0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 60e8 <socket@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	push   $0x1a
    11db:	e9 40 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000011e0 <_start>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	31 ed                	xor    %ebp,%ebp
    11e6:	49 89 d1             	mov    %rdx,%r9
    11e9:	5e                   	pop    %rsi
    11ea:	48 89 e2             	mov    %rsp,%rdx
    11ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11f1:	50                   	push   %rax
    11f2:	54                   	push   %rsp
    11f3:	4c 8d 05 d6 1c 00 00 	lea    0x1cd6(%rip),%r8        # 2ed0 <__libc_csu_fini>
    11fa:	48 8d 0d 5f 1c 00 00 	lea    0x1c5f(%rip),%rcx        # 2e60 <__libc_csu_init>
    1201:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 12d9 <main>
    1208:	ff 15 d2 4d 00 00    	call   *0x4dd2(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    120e:	f4                   	hlt
    120f:	90                   	nop

0000000000001210 <deregister_tm_clones>:
    1210:	48 8d 3d 69 54 00 00 	lea    0x5469(%rip),%rdi        # 6680 <stdout@GLIBC_2.2.5>
    1217:	48 8d 05 62 54 00 00 	lea    0x5462(%rip),%rax        # 6680 <stdout@GLIBC_2.2.5>
    121e:	48 39 f8             	cmp    %rdi,%rax
    1221:	74 15                	je     1238 <deregister_tm_clones+0x28>
    1223:	48 8b 05 ae 4d 00 00 	mov    0x4dae(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    122a:	48 85 c0             	test   %rax,%rax
    122d:	74 09                	je     1238 <deregister_tm_clones+0x28>
    122f:	ff e0                	jmp    *%rax
    1231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1238:	c3                   	ret
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d 39 54 00 00 	lea    0x5439(%rip),%rdi        # 6680 <stdout@GLIBC_2.2.5>
    1247:	48 8d 35 32 54 00 00 	lea    0x5432(%rip),%rsi        # 6680 <stdout@GLIBC_2.2.5>
    124e:	48 29 fe             	sub    %rdi,%rsi
    1251:	48 89 f0             	mov    %rsi,%rax
    1254:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1258:	48 c1 f8 03          	sar    $0x3,%rax
    125c:	48 01 c6             	add    %rax,%rsi
    125f:	48 d1 fe             	sar    $1,%rsi
    1262:	74 14                	je     1278 <register_tm_clones+0x38>
    1264:	48 8b 05 85 4d 00 00 	mov    0x4d85(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    126b:	48 85 c0             	test   %rax,%rax
    126e:	74 08                	je     1278 <register_tm_clones+0x38>
    1270:	ff e0                	jmp    *%rax
    1272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	80 3d 1d 54 00 00 00 	cmpb   $0x0,0x541d(%rip)        # 66a8 <completed.0>
    128b:	75 33                	jne    12c0 <__do_global_dtors_aux+0x40>
    128d:	55                   	push   %rbp
    128e:	48 83 3d 62 4d 00 00 	cmpq   $0x0,0x4d62(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1295:	00 
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	74 0d                	je     12a8 <__do_global_dtors_aux+0x28>
    129b:	48 8b 3d 66 4e 00 00 	mov    0x4e66(%rip),%rdi        # 6108 <__dso_handle>
    12a2:	ff 15 50 4d 00 00    	call   *0x4d50(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    12a8:	e8 63 ff ff ff       	call   1210 <deregister_tm_clones>
    12ad:	c6 05 f4 53 00 00 01 	movb   $0x1,0x53f4(%rip)        # 66a8 <completed.0>
    12b4:	5d                   	pop    %rbp
    12b5:	c3                   	ret
    12b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12bd:	00 00 00 
    12c0:	c3                   	ret
    12c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12c8:	00 00 00 00 
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012d0 <frame_dummy>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	e9 67 ff ff ff       	jmp    1240 <register_tm_clones>

00000000000012d9 <main>:
    12d9:	53                   	push   %rbx
    12da:	83 ff 01             	cmp    $0x1,%edi
    12dd:	0f 84 04 01 00 00    	je     13e7 <main+0x10e>
    12e3:	48 89 f3             	mov    %rsi,%rbx
    12e6:	83 ff 02             	cmp    $0x2,%edi
    12e9:	0f 85 28 01 00 00    	jne    1417 <main+0x13e>
    12ef:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12f3:	48 8d 35 0a 1d 00 00 	lea    0x1d0a(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    12fa:	e8 71 fe ff ff       	call   1170 <fopen@plt>
    12ff:	48 89 05 aa 53 00 00 	mov    %rax,0x53aa(%rip)        # 66b0 <infile>
    1306:	48 85 c0             	test   %rax,%rax
    1309:	0f 84 eb 00 00 00    	je     13fa <main+0x121>
    130f:	e8 5b 0a 00 00       	call   1d6f <initialize_bomb>
    1314:	48 8d 3d 65 1d 00 00 	lea    0x1d65(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    131b:	e8 50 fd ff ff       	call   1070 <puts@plt>
    1320:	48 8d 3d 99 1d 00 00 	lea    0x1d99(%rip),%rdi        # 30c0 <_IO_stdin_used+0xc0>
    1327:	e8 44 fd ff ff       	call   1070 <puts@plt>
    132c:	e8 48 0d 00 00       	call   2079 <read_line>
    1331:	48 89 c7             	mov    %rax,%rdi
    1334:	e8 fc 00 00 00       	call   1435 <phase_1>
    1339:	e8 75 0e 00 00       	call   21b3 <phase_defused>
    133e:	48 8d 3d ab 1d 00 00 	lea    0x1dab(%rip),%rdi        # 30f0 <_IO_stdin_used+0xf0>
    1345:	e8 26 fd ff ff       	call   1070 <puts@plt>
    134a:	e8 2a 0d 00 00       	call   2079 <read_line>
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 fe 00 00 00       	call   1455 <phase_2>
    1357:	e8 57 0e 00 00       	call   21b3 <phase_defused>
    135c:	48 8d 3d da 1c 00 00 	lea    0x1cda(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1363:	e8 08 fd ff ff       	call   1070 <puts@plt>
    1368:	e8 0c 0d 00 00       	call   2079 <read_line>
    136d:	48 89 c7             	mov    %rax,%rdi
    1370:	e8 cf 01 00 00       	call   1544 <phase_3>
    1375:	e8 39 0e 00 00       	call   21b3 <phase_defused>
    137a:	48 8d 3d cd 1c 00 00 	lea    0x1ccd(%rip),%rdi        # 304e <_IO_stdin_used+0x4e>
    1381:	e8 ea fc ff ff       	call   1070 <puts@plt>
    1386:	48 8d 3d 93 1d 00 00 	lea    0x1d93(%rip),%rdi        # 3120 <_IO_stdin_used+0x120>
    138d:	e8 de fc ff ff       	call   1070 <puts@plt>
    1392:	e8 e2 0c 00 00       	call   2079 <read_line>
    1397:	48 89 c7             	mov    %rax,%rdi
    139a:	e8 ea 03 00 00       	call   1789 <phase_4>
    139f:	e8 0f 0e 00 00       	call   21b3 <phase_defused>
    13a4:	48 8d 3d ad 1d 00 00 	lea    0x1dad(%rip),%rdi        # 3158 <_IO_stdin_used+0x158>
    13ab:	e8 c0 fc ff ff       	call   1070 <puts@plt>
    13b0:	e8 c4 0c 00 00       	call   2079 <read_line>
    13b5:	48 89 c7             	mov    %rax,%rdi
    13b8:	e8 8a 04 00 00       	call   1847 <phase_5>
    13bd:	e8 f1 0d 00 00       	call   21b3 <phase_defused>
    13c2:	48 8d 3d 94 1c 00 00 	lea    0x1c94(%rip),%rdi        # 305d <_IO_stdin_used+0x5d>
    13c9:	e8 a2 fc ff ff       	call   1070 <puts@plt>
    13ce:	e8 a6 0c 00 00       	call   2079 <read_line>
    13d3:	48 89 c7             	mov    %rax,%rdi
    13d6:	e8 b4 04 00 00       	call   188f <phase_6>
    13db:	e8 d3 0d 00 00       	call   21b3 <phase_defused>
    13e0:	b8 00 00 00 00       	mov    $0x0,%eax
    13e5:	5b                   	pop    %rbx
    13e6:	c3                   	ret
    13e7:	48 8b 05 a2 52 00 00 	mov    0x52a2(%rip),%rax        # 6690 <stdin@GLIBC_2.2.5>
    13ee:	48 89 05 bb 52 00 00 	mov    %rax,0x52bb(%rip)        # 66b0 <infile>
    13f5:	e9 15 ff ff ff       	jmp    130f <main+0x36>
    13fa:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13fe:	48 8b 33             	mov    (%rbx),%rsi
    1401:	48 8d 3d fe 1b 00 00 	lea    0x1bfe(%rip),%rdi        # 3006 <_IO_stdin_used+0x6>
    1408:	e8 a3 fc ff ff       	call   10b0 <printf@plt>
    140d:	bf 08 00 00 00       	mov    $0x8,%edi
    1412:	e8 79 fd ff ff       	call   1190 <exit@plt>
    1417:	48 8b 36             	mov    (%rsi),%rsi
    141a:	48 8d 3d 02 1c 00 00 	lea    0x1c02(%rip),%rdi        # 3023 <_IO_stdin_used+0x23>
    1421:	b8 00 00 00 00       	mov    $0x0,%eax
    1426:	e8 85 fc ff ff       	call   10b0 <printf@plt>
    142b:	bf 08 00 00 00       	mov    $0x8,%edi
    1430:	e8 5b fd ff ff       	call   1190 <exit@plt>

0000000000001435 <phase_1>:
    1435:	48 83 ec 08          	sub    $0x8,%rsp
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3180 <_IO_stdin_used+0x180>
    1440:	e8 ce 08 00 00       	call   1d13 <strings_not_equal>
    1445:	85 c0                	test   %eax,%eax
    1447:	75 05                	jne    144e <phase_1+0x19>
    1449:	48 83 c4 08          	add    $0x8,%rsp
    144d:	c3                   	ret
    144e:	e8 25 0b 00 00       	call   1f78 <explode_bomb>
    1453:	eb f4                	jmp    1449 <phase_1+0x14>

0000000000001455 <phase_2>:
    1455:	55                   	push   %rbp
    1456:	53                   	push   %rbx
    1457:	48 83 ec 38          	sub    $0x38,%rsp
    145b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1462:	00 00 
    1464:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1469:	31 c0                	xor    %eax,%eax
    146b:	48 89 e2             	mov    %rsp,%rdx
    146e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1473:	4c 8d 4c 24 0c       	lea    0xc(%rsp),%r9
    1478:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    147d:	48 8d 35 4d 21 00 00 	lea    0x214d(%rip),%rsi        # 35d1 <array.0+0x391>
    1484:	e8 c7 fc ff ff       	call   1150 <__isoc99_sscanf@plt>
    1489:	83 f8 04             	cmp    $0x4,%eax
    148c:	75 14                	jne    14a2 <phase_2+0x4d>
    148e:	48 8d 3d ab 4c 00 00 	lea    0x4cab(%rip),%rdi        # 6140 <matA.3>
    1495:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    149a:	41 bb 00 00 00 00    	mov    $0x0,%r11d
    14a0:	eb 19                	jmp    14bb <phase_2+0x66>
    14a2:	e8 d1 0a 00 00       	call   1f78 <explode_bomb>
    14a7:	eb e5                	jmp    148e <phase_2+0x39>
    14a9:	41 83 c3 01          	add    $0x1,%r11d
    14ad:	48 83 c7 0c          	add    $0xc,%rdi
    14b1:	48 83 c3 08          	add    $0x8,%rbx
    14b5:	41 83 fb 02          	cmp    $0x2,%r11d
    14b9:	74 47                	je     1502 <phase_2+0xad>
    14bb:	48 8d 35 5e 4c 00 00 	lea    0x4c5e(%rip),%rsi        # 6120 <matB.2>
    14c2:	49 89 d9             	mov    %rbx,%r9
    14c5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    14cb:	4d 89 ca             	mov    %r9,%r10
    14ce:	b8 00 00 00 00       	mov    $0x0,%eax
    14d3:	b9 00 00 00 00       	mov    $0x0,%ecx
    14d8:	8b 14 87             	mov    (%rdi,%rax,4),%edx
    14db:	0f af 14 c6          	imul   (%rsi,%rax,8),%edx
    14df:	01 d1                	add    %edx,%ecx
    14e1:	48 83 c0 01          	add    $0x1,%rax
    14e5:	48 83 f8 03          	cmp    $0x3,%rax
    14e9:	75 ed                	jne    14d8 <phase_2+0x83>
    14eb:	41 89 0a             	mov    %ecx,(%r10)
    14ee:	41 83 c0 01          	add    $0x1,%r8d
    14f2:	49 83 c1 04          	add    $0x4,%r9
    14f6:	48 83 c6 04          	add    $0x4,%rsi
    14fa:	41 83 f8 02          	cmp    $0x2,%r8d
    14fe:	75 cb                	jne    14cb <phase_2+0x76>
    1500:	eb a7                	jmp    14a9 <phase_2+0x54>
    1502:	bb 00 00 00 00       	mov    $0x0,%ebx
    1507:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    150c:	eb 0a                	jmp    1518 <phase_2+0xc3>
    150e:	48 83 c3 04          	add    $0x4,%rbx
    1512:	48 83 fb 10          	cmp    $0x10,%rbx
    1516:	74 10                	je     1528 <phase_2+0xd3>
    1518:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
    151c:	39 04 1c             	cmp    %eax,(%rsp,%rbx,1)
    151f:	74 ed                	je     150e <phase_2+0xb9>
    1521:	e8 52 0a 00 00       	call   1f78 <explode_bomb>
    1526:	eb e6                	jmp    150e <phase_2+0xb9>
    1528:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    152d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1534:	00 00 
    1536:	75 07                	jne    153f <phase_2+0xea>
    1538:	48 83 c4 38          	add    $0x38,%rsp
    153c:	5b                   	pop    %rbx
    153d:	5d                   	pop    %rbp
    153e:	c3                   	ret
    153f:	e8 5c fb ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001544 <phase_3>:
    1544:	48 83 ec 28          	sub    $0x28,%rsp
    1548:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    154f:	00 00 
    1551:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1556:	31 c0                	xor    %eax,%eax
    1558:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    155d:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1562:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1567:	48 8d 35 77 1c 00 00 	lea    0x1c77(%rip),%rsi        # 31e5 <_IO_stdin_used+0x1e5>
    156e:	e8 dd fb ff ff       	call   1150 <__isoc99_sscanf@plt>
    1573:	83 f8 02             	cmp    $0x2,%eax
    1576:	7e 29                	jle    15a1 <phase_3+0x5d>
    1578:	8b 05 92 4b 00 00    	mov    0x4b92(%rip),%eax        # 6110 <mask.1>
    157e:	30 44 24 0f          	xor    %al,0xf(%rsp)
    1582:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    1587:	0f 87 0c 01 00 00    	ja     1699 <phase_3+0x155>
    158d:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1591:	48 8d 15 88 1c 00 00 	lea    0x1c88(%rip),%rdx        # 3220 <_IO_stdin_used+0x220>
    1598:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    159c:	48 01 d0             	add    %rdx,%rax
    159f:	ff e0                	jmp    *%rax
    15a1:	e8 d2 09 00 00       	call   1f78 <explode_bomb>
    15a6:	eb d0                	jmp    1578 <phase_3+0x34>
    15a8:	b8 68 00 00 00       	mov    $0x68,%eax
    15ad:	81 7c 24 14 fb 00 00 	cmpl   $0xfb,0x14(%rsp)
    15b4:	00 
    15b5:	0f 84 e8 00 00 00    	je     16a3 <phase_3+0x15f>
    15bb:	e8 b8 09 00 00       	call   1f78 <explode_bomb>
    15c0:	b8 68 00 00 00       	mov    $0x68,%eax
    15c5:	e9 d9 00 00 00       	jmp    16a3 <phase_3+0x15f>
    15ca:	b8 77 00 00 00       	mov    $0x77,%eax
    15cf:	81 7c 24 14 8f 02 00 	cmpl   $0x28f,0x14(%rsp)
    15d6:	00 
    15d7:	0f 84 c6 00 00 00    	je     16a3 <phase_3+0x15f>
    15dd:	e8 96 09 00 00       	call   1f78 <explode_bomb>
    15e2:	b8 77 00 00 00       	mov    $0x77,%eax
    15e7:	e9 b7 00 00 00       	jmp    16a3 <phase_3+0x15f>
    15ec:	b8 7a 00 00 00       	mov    $0x7a,%eax
    15f1:	81 7c 24 14 fd 01 00 	cmpl   $0x1fd,0x14(%rsp)
    15f8:	00 
    15f9:	0f 84 a4 00 00 00    	je     16a3 <phase_3+0x15f>
    15ff:	e8 74 09 00 00       	call   1f78 <explode_bomb>
    1604:	b8 7a 00 00 00       	mov    $0x7a,%eax
    1609:	e9 95 00 00 00       	jmp    16a3 <phase_3+0x15f>
    160e:	b8 76 00 00 00       	mov    $0x76,%eax
    1613:	81 7c 24 14 5e 01 00 	cmpl   $0x15e,0x14(%rsp)
    161a:	00 
    161b:	0f 84 82 00 00 00    	je     16a3 <phase_3+0x15f>
    1621:	e8 52 09 00 00       	call   1f78 <explode_bomb>
    1626:	b8 76 00 00 00       	mov    $0x76,%eax
    162b:	eb 76                	jmp    16a3 <phase_3+0x15f>
    162d:	b8 69 00 00 00       	mov    $0x69,%eax
    1632:	81 7c 24 14 df 02 00 	cmpl   $0x2df,0x14(%rsp)
    1639:	00 
    163a:	74 67                	je     16a3 <phase_3+0x15f>
    163c:	e8 37 09 00 00       	call   1f78 <explode_bomb>
    1641:	b8 69 00 00 00       	mov    $0x69,%eax
    1646:	eb 5b                	jmp    16a3 <phase_3+0x15f>
    1648:	b8 65 00 00 00       	mov    $0x65,%eax
    164d:	81 7c 24 14 a3 02 00 	cmpl   $0x2a3,0x14(%rsp)
    1654:	00 
    1655:	74 4c                	je     16a3 <phase_3+0x15f>
    1657:	e8 1c 09 00 00       	call   1f78 <explode_bomb>
    165c:	b8 65 00 00 00       	mov    $0x65,%eax
    1661:	eb 40                	jmp    16a3 <phase_3+0x15f>
    1663:	b8 64 00 00 00       	mov    $0x64,%eax
    1668:	81 7c 24 14 46 01 00 	cmpl   $0x146,0x14(%rsp)
    166f:	00 
    1670:	74 31                	je     16a3 <phase_3+0x15f>
    1672:	e8 01 09 00 00       	call   1f78 <explode_bomb>
    1677:	b8 64 00 00 00       	mov    $0x64,%eax
    167c:	eb 25                	jmp    16a3 <phase_3+0x15f>
    167e:	b8 76 00 00 00       	mov    $0x76,%eax
    1683:	81 7c 24 14 b9 01 00 	cmpl   $0x1b9,0x14(%rsp)
    168a:	00 
    168b:	74 16                	je     16a3 <phase_3+0x15f>
    168d:	e8 e6 08 00 00       	call   1f78 <explode_bomb>
    1692:	b8 76 00 00 00       	mov    $0x76,%eax
    1697:	eb 0a                	jmp    16a3 <phase_3+0x15f>
    1699:	e8 da 08 00 00       	call   1f78 <explode_bomb>
    169e:	b8 67 00 00 00       	mov    $0x67,%eax
    16a3:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    16a7:	75 15                	jne    16be <phase_3+0x17a>
    16a9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    16ae:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16b5:	00 00 
    16b7:	75 0c                	jne    16c5 <phase_3+0x181>
    16b9:	48 83 c4 28          	add    $0x28,%rsp
    16bd:	c3                   	ret
    16be:	e8 b5 08 00 00       	call   1f78 <explode_bomb>
    16c3:	eb e4                	jmp    16a9 <phase_3+0x165>
    16c5:	e8 d6 f9 ff ff       	call   10a0 <__stack_chk_fail@plt>

00000000000016ca <func4_1>:
    16ca:	b8 00 00 00 00       	mov    $0x0,%eax
    16cf:	85 ff                	test   %edi,%edi
    16d1:	7e 1c                	jle    16ef <func4_1+0x25>
    16d3:	89 f8                	mov    %edi,%eax
    16d5:	83 ff 01             	cmp    $0x1,%edi
    16d8:	74 15                	je     16ef <func4_1+0x25>
    16da:	48 83 ec 08          	sub    $0x8,%rsp
    16de:	83 ef 01             	sub    $0x1,%edi
    16e1:	e8 e4 ff ff ff       	call   16ca <func4_1>
    16e6:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    16ea:	48 83 c4 08          	add    $0x8,%rsp
    16ee:	c3                   	ret
    16ef:	c3                   	ret

00000000000016f0 <func4_2>:
    16f0:	41 57                	push   %r15
    16f2:	41 56                	push   %r14
    16f4:	41 55                	push   %r13
    16f6:	41 54                	push   %r12
    16f8:	55                   	push   %rbp
    16f9:	53                   	push   %rbx
    16fa:	48 83 ec 08          	sub    $0x8,%rsp
    16fe:	41 89 d4             	mov    %edx,%r12d
    1701:	41 89 cd             	mov    %ecx,%r13d
    1704:	4c 89 cd             	mov    %r9,%rbp
    1707:	83 ff 01             	cmp    $0x1,%edi
    170a:	74 2a                	je     1736 <func4_2+0x46>
    170c:	89 f3                	mov    %esi,%ebx
    170e:	45 89 c6             	mov    %r8d,%r14d
    1711:	44 8d 7f ff          	lea    -0x1(%rdi),%r15d
    1715:	44 89 ff             	mov    %r15d,%edi
    1718:	e8 ad ff ff ff       	call   16ca <func4_1>
    171d:	39 d8                	cmp    %ebx,%eax
    171f:	7d 2f                	jge    1750 <func4_2+0x60>
    1721:	8d 50 01             	lea    0x1(%rax),%edx
    1724:	39 da                	cmp    %ebx,%edx
    1726:	75 43                	jne    176b <func4_2+0x7b>
    1728:	44 88 65 00          	mov    %r12b,0x0(%rbp)
    172c:	44 88 6d 01          	mov    %r13b,0x1(%rbp)
    1730:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    1734:	eb 0b                	jmp    1741 <func4_2+0x51>
    1736:	88 55 00             	mov    %dl,0x0(%rbp)
    1739:	88 4d 01             	mov    %cl,0x1(%rbp)
    173c:	41 c6 41 02 00       	movb   $0x0,0x2(%r9)
    1741:	48 83 c4 08          	add    $0x8,%rsp
    1745:	5b                   	pop    %rbx
    1746:	5d                   	pop    %rbp
    1747:	41 5c                	pop    %r12
    1749:	41 5d                	pop    %r13
    174b:	41 5e                	pop    %r14
    174d:	41 5f                	pop    %r15
    174f:	c3                   	ret
    1750:	41 0f be ce          	movsbl %r14b,%ecx
    1754:	41 0f be d4          	movsbl %r12b,%edx
    1758:	49 89 e9             	mov    %rbp,%r9
    175b:	45 0f be c5          	movsbl %r13b,%r8d
    175f:	89 de                	mov    %ebx,%esi
    1761:	44 89 ff             	mov    %r15d,%edi
    1764:	e8 87 ff ff ff       	call   16f0 <func4_2>
    1769:	eb d6                	jmp    1741 <func4_2+0x51>
    176b:	41 0f be cd          	movsbl %r13b,%ecx
    176f:	41 0f be d6          	movsbl %r14b,%edx
    1773:	29 c3                	sub    %eax,%ebx
    1775:	8d 73 ff             	lea    -0x1(%rbx),%esi
    1778:	49 89 e9             	mov    %rbp,%r9
    177b:	45 0f be c4          	movsbl %r12b,%r8d
    177f:	44 89 ff             	mov    %r15d,%edi
    1782:	e8 69 ff ff ff       	call   16f0 <func4_2>
    1787:	eb b8                	jmp    1741 <func4_2+0x51>

0000000000001789 <phase_4>:
    1789:	53                   	push   %rbx
    178a:	48 83 ec 20          	sub    $0x20,%rsp
    178e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1795:	00 00 
    1797:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    179c:	31 c0                	xor    %eax,%eax
    179e:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    17a3:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    17a8:	48 8d 35 3f 1a 00 00 	lea    0x1a3f(%rip),%rsi        # 31ee <_IO_stdin_used+0x1ee>
    17af:	e8 9c f9 ff ff       	call   1150 <__isoc99_sscanf@plt>
    17b4:	83 f8 02             	cmp    $0x2,%eax
    17b7:	75 6d                	jne    1826 <phase_4+0x9d>
    17b9:	bf 05 00 00 00       	mov    $0x5,%edi
    17be:	e8 07 ff ff ff       	call   16ca <func4_1>
    17c3:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
    17c7:	75 64                	jne    182d <phase_4+0xa4>
    17c9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    17ce:	e8 23 05 00 00       	call   1cf6 <string_length>
    17d3:	83 f8 02             	cmp    $0x2,%eax
    17d6:	75 5c                	jne    1834 <phase_4+0xab>
    17d8:	48 8d 5c 24 14       	lea    0x14(%rsp),%rbx
    17dd:	49 89 d9             	mov    %rbx,%r9
    17e0:	41 b8 42 00 00 00    	mov    $0x42,%r8d
    17e6:	b9 43 00 00 00       	mov    $0x43,%ecx
    17eb:	ba 41 00 00 00       	mov    $0x41,%edx
    17f0:	be 15 00 00 00       	mov    $0x15,%esi
    17f5:	bf 05 00 00 00       	mov    $0x5,%edi
    17fa:	e8 f1 fe ff ff       	call   16f0 <func4_2>
    17ff:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1804:	48 89 de             	mov    %rbx,%rsi
    1807:	e8 07 05 00 00       	call   1d13 <strings_not_equal>
    180c:	85 c0                	test   %eax,%eax
    180e:	75 2b                	jne    183b <phase_4+0xb2>
    1810:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1815:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    181c:	00 00 
    181e:	75 22                	jne    1842 <phase_4+0xb9>
    1820:	48 83 c4 20          	add    $0x20,%rsp
    1824:	5b                   	pop    %rbx
    1825:	c3                   	ret
    1826:	e8 4d 07 00 00       	call   1f78 <explode_bomb>
    182b:	eb 8c                	jmp    17b9 <phase_4+0x30>
    182d:	e8 46 07 00 00       	call   1f78 <explode_bomb>
    1832:	eb 95                	jmp    17c9 <phase_4+0x40>
    1834:	e8 3f 07 00 00       	call   1f78 <explode_bomb>
    1839:	eb 9d                	jmp    17d8 <phase_4+0x4f>
    183b:	e8 38 07 00 00       	call   1f78 <explode_bomb>
    1840:	eb ce                	jmp    1810 <phase_4+0x87>
    1842:	e8 59 f8 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001847 <phase_5>:
    1847:	53                   	push   %rbx
    1848:	48 89 fb             	mov    %rdi,%rbx
    184b:	e8 a6 04 00 00       	call   1cf6 <string_length>
    1850:	83 f8 06             	cmp    $0x6,%eax
    1853:	75 2c                	jne    1881 <phase_5+0x3a>
    1855:	48 89 d8             	mov    %rbx,%rax
    1858:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    185c:	b9 00 00 00 00       	mov    $0x0,%ecx
    1861:	48 8d 35 d8 19 00 00 	lea    0x19d8(%rip),%rsi        # 3240 <array.0>
    1868:	0f b6 10             	movzbl (%rax),%edx
    186b:	83 e2 0f             	and    $0xf,%edx
    186e:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1871:	48 83 c0 01          	add    $0x1,%rax
    1875:	48 39 f8             	cmp    %rdi,%rax
    1878:	75 ee                	jne    1868 <phase_5+0x21>
    187a:	83 f9 29             	cmp    $0x29,%ecx
    187d:	75 09                	jne    1888 <phase_5+0x41>
    187f:	5b                   	pop    %rbx
    1880:	c3                   	ret
    1881:	e8 f2 06 00 00       	call   1f78 <explode_bomb>
    1886:	eb cd                	jmp    1855 <phase_5+0xe>
    1888:	e8 eb 06 00 00       	call   1f78 <explode_bomb>
    188d:	eb f0                	jmp    187f <phase_5+0x38>

000000000000188f <phase_6>:
    188f:	41 57                	push   %r15
    1891:	41 56                	push   %r14
    1893:	41 55                	push   %r13
    1895:	41 54                	push   %r12
    1897:	55                   	push   %rbp
    1898:	53                   	push   %rbx
    1899:	48 83 ec 78          	sub    $0x78,%rsp
    189d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18a4:	00 00 
    18a6:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    18ab:	31 c0                	xor    %eax,%eax
    18ad:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    18b2:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    18b7:	4c 89 f6             	mov    %r14,%rsi
    18ba:	e8 79 07 00 00       	call   2038 <read_six_numbers>
    18bf:	4d 89 f4             	mov    %r14,%r12
    18c2:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    18c8:	4d 89 f5             	mov    %r14,%r13
    18cb:	e9 c6 00 00 00       	jmp    1996 <phase_6+0x107>
    18d0:	e8 a3 06 00 00       	call   1f78 <explode_bomb>
    18d5:	e9 ce 00 00 00       	jmp    19a8 <phase_6+0x119>
    18da:	48 83 c3 01          	add    $0x1,%rbx
    18de:	83 fb 05             	cmp    $0x5,%ebx
    18e1:	0f 8f a7 00 00 00    	jg     198e <phase_6+0xff>
    18e7:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    18ec:	39 45 00             	cmp    %eax,0x0(%rbp)
    18ef:	75 e9                	jne    18da <phase_6+0x4b>
    18f1:	e8 82 06 00 00       	call   1f78 <explode_bomb>
    18f6:	eb e2                	jmp    18da <phase_6+0x4b>
    18f8:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    18fd:	48 83 c2 18          	add    $0x18,%rdx
    1901:	b9 07 00 00 00       	mov    $0x7,%ecx
    1906:	89 c8                	mov    %ecx,%eax
    1908:	41 2b 04 24          	sub    (%r12),%eax
    190c:	41 89 04 24          	mov    %eax,(%r12)
    1910:	49 83 c4 04          	add    $0x4,%r12
    1914:	4c 39 e2             	cmp    %r12,%rdx
    1917:	75 ed                	jne    1906 <phase_6+0x77>
    1919:	be 00 00 00 00       	mov    $0x0,%esi
    191e:	8b 4c b4 10          	mov    0x10(%rsp,%rsi,4),%ecx
    1922:	b8 01 00 00 00       	mov    $0x1,%eax
    1927:	48 8d 15 f2 48 00 00 	lea    0x48f2(%rip),%rdx        # 6220 <node1>
    192e:	83 f9 01             	cmp    $0x1,%ecx
    1931:	7e 0b                	jle    193e <phase_6+0xaf>
    1933:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1937:	83 c0 01             	add    $0x1,%eax
    193a:	39 c8                	cmp    %ecx,%eax
    193c:	75 f5                	jne    1933 <phase_6+0xa4>
    193e:	48 89 54 f4 30       	mov    %rdx,0x30(%rsp,%rsi,8)
    1943:	48 83 c6 01          	add    $0x1,%rsi
    1947:	48 83 fe 06          	cmp    $0x6,%rsi
    194b:	75 d1                	jne    191e <phase_6+0x8f>
    194d:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    1952:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1957:	48 89 43 08          	mov    %rax,0x8(%rbx)
    195b:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1960:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1964:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1969:	48 89 42 08          	mov    %rax,0x8(%rdx)
    196d:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    1972:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1976:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    197b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    197f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1986:	00 
    1987:	bd 05 00 00 00       	mov    $0x5,%ebp
    198c:	eb 35                	jmp    19c3 <phase_6+0x134>
    198e:	49 83 c7 01          	add    $0x1,%r15
    1992:	49 83 c6 04          	add    $0x4,%r14
    1996:	4c 89 f5             	mov    %r14,%rbp
    1999:	41 8b 06             	mov    (%r14),%eax
    199c:	83 e8 01             	sub    $0x1,%eax
    199f:	83 f8 05             	cmp    $0x5,%eax
    19a2:	0f 87 28 ff ff ff    	ja     18d0 <phase_6+0x41>
    19a8:	41 83 ff 05          	cmp    $0x5,%r15d
    19ac:	0f 8f 46 ff ff ff    	jg     18f8 <phase_6+0x69>
    19b2:	4c 89 fb             	mov    %r15,%rbx
    19b5:	e9 2d ff ff ff       	jmp    18e7 <phase_6+0x58>
    19ba:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    19be:	83 ed 01             	sub    $0x1,%ebp
    19c1:	74 11                	je     19d4 <phase_6+0x145>
    19c3:	48 8b 43 08          	mov    0x8(%rbx),%rax
    19c7:	8b 00                	mov    (%rax),%eax
    19c9:	39 03                	cmp    %eax,(%rbx)
    19cb:	7d ed                	jge    19ba <phase_6+0x12b>
    19cd:	e8 a6 05 00 00       	call   1f78 <explode_bomb>
    19d2:	eb e6                	jmp    19ba <phase_6+0x12b>
    19d4:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    19d9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19e0:	00 00 
    19e2:	75 0f                	jne    19f3 <phase_6+0x164>
    19e4:	48 83 c4 78          	add    $0x78,%rsp
    19e8:	5b                   	pop    %rbx
    19e9:	5d                   	pop    %rbp
    19ea:	41 5c                	pop    %r12
    19ec:	41 5d                	pop    %r13
    19ee:	41 5e                	pop    %r14
    19f0:	41 5f                	pop    %r15
    19f2:	c3                   	ret
    19f3:	e8 a8 f6 ff ff       	call   10a0 <__stack_chk_fail@plt>

00000000000019f8 <func7>:
    19f8:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    19ff:	89 f0                	mov    %esi,%eax
    1a01:	41 89 c9             	mov    %ecx,%r9d
    1a04:	64 48 8b 0c 25 28 00 	mov    %fs:0x28,%rcx
    1a0b:	00 00 
    1a0d:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
    1a14:	00 
    1a15:	31 c9                	xor    %ecx,%ecx
    1a17:	c7 04 24 fe ff ff ff 	movl   $0xfffffffe,(%rsp)
    1a1e:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
    1a25:	ff 
    1a26:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
    1a2d:	00 
    1a2e:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%rsp)
    1a35:	00 
    1a36:	c7 44 24 10 02 00 00 	movl   $0x2,0x10(%rsp)
    1a3d:	00 
    1a3e:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%rsp)
    1a45:	00 
    1a46:	c7 44 24 18 ff ff ff 	movl   $0xffffffff,0x18(%rsp)
    1a4d:	ff 
    1a4e:	c7 44 24 1c fe ff ff 	movl   $0xfffffffe,0x1c(%rsp)
    1a55:	ff 
    1a56:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%rsp)
    1a5d:	00 
    1a5e:	c7 44 24 24 02 00 00 	movl   $0x2,0x24(%rsp)
    1a65:	00 
    1a66:	c7 44 24 28 02 00 00 	movl   $0x2,0x28(%rsp)
    1a6d:	00 
    1a6e:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%rsp)
    1a75:	00 
    1a76:	c7 44 24 30 ff ff ff 	movl   $0xffffffff,0x30(%rsp)
    1a7d:	ff 
    1a7e:	c7 44 24 34 fe ff ff 	movl   $0xfffffffe,0x34(%rsp)
    1a85:	ff 
    1a86:	c7 44 24 38 fe ff ff 	movl   $0xfffffffe,0x38(%rsp)
    1a8d:	ff 
    1a8e:	c7 44 24 3c ff ff ff 	movl   $0xffffffff,0x3c(%rsp)
    1a95:	ff 
    1a96:	c7 44 24 40 ff ff ff 	movl   $0xffffffff,0x40(%rsp)
    1a9d:	ff 
    1a9e:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    1aa5:	00 
    1aa6:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    1aad:	00 
    1aae:	c7 44 24 4c 01 00 00 	movl   $0x1,0x4c(%rsp)
    1ab5:	00 
    1ab6:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%rsp)
    1abd:	00 
    1abe:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    1ac5:	00 
    1ac6:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
    1acd:	00 
    1ace:	c7 44 24 5c ff ff ff 	movl   $0xffffffff,0x5c(%rsp)
    1ad5:	ff 
    1ad6:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    1add:	00 
    1ade:	c7 44 24 64 01 00 00 	movl   $0x1,0x64(%rsp)
    1ae5:	00 
    1ae6:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
    1aed:	00 
    1aee:	c7 44 24 6c 00 00 00 	movl   $0x0,0x6c(%rsp)
    1af5:	00 
    1af6:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
    1afd:	00 
    1afe:	c7 44 24 74 ff ff ff 	movl   $0xffffffff,0x74(%rsp)
    1b05:	ff 
    1b06:	c7 44 24 78 ff ff ff 	movl   $0xffffffff,0x78(%rsp)
    1b0d:	ff 
    1b0e:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    1b15:	00 
    1b16:	83 fe 04             	cmp    $0x4,%esi
    1b19:	75 6b                	jne    1b86 <func7+0x18e>
    1b1b:	83 fa 07             	cmp    $0x7,%edx
    1b1e:	75 66                	jne    1b86 <func7+0x18e>
    1b20:	49 63 c9             	movslq %r9d,%rcx
    1b23:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1b27:	b9 01 00 00 00       	mov    $0x1,%ecx
    1b2c:	40 84 f6             	test   %sil,%sil
    1b2f:	74 34                	je     1b65 <func7+0x16d>
    1b31:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b36:	41 83 f9 13          	cmp    $0x13,%r9d
    1b3a:	7f 29                	jg     1b65 <func7+0x16d>
    1b3c:	41 89 f2             	mov    %esi,%r10d
    1b3f:	41 83 e2 07          	and    $0x7,%r10d
    1b43:	83 e6 07             	and    $0x7,%esi
    1b46:	41 89 c0             	mov    %eax,%r8d
    1b49:	44 03 04 b4          	add    (%rsp,%rsi,4),%r8d
    1b4d:	41 89 d3             	mov    %edx,%r11d
    1b50:	44 03 5c b4 20       	add    0x20(%rsp,%rsi,4),%r11d
    1b55:	44 89 c6             	mov    %r8d,%esi
    1b58:	44 09 de             	or     %r11d,%esi
    1b5b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b60:	83 fe 07             	cmp    $0x7,%esi
    1b63:	76 3f                	jbe    1ba4 <func7+0x1ac>
    1b65:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1b6c:	00 
    1b6d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b74:	00 00 
    1b76:	0f 85 9e 00 00 00    	jne    1c1a <func7+0x222>
    1b7c:	89 c8                	mov    %ecx,%eax
    1b7e:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1b85:	c3                   	ret
    1b86:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b8b:	41 83 f9 13          	cmp    $0x13,%r9d
    1b8f:	7f d4                	jg     1b65 <func7+0x16d>
    1b91:	49 63 c9             	movslq %r9d,%rcx
    1b94:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1b98:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b9d:	40 84 f6             	test   %sil,%sil
    1ba0:	74 c3                	je     1b65 <func7+0x16d>
    1ba2:	eb 98                	jmp    1b3c <func7+0x144>
    1ba4:	4d 63 d2             	movslq %r10d,%r10
    1ba7:	42 03 44 94 40       	add    0x40(%rsp,%r10,4),%eax
    1bac:	42 03 54 94 60       	add    0x60(%rsp,%r10,4),%edx
    1bb1:	48 8d 35 f8 45 00 00 	lea    0x45f8(%rip),%rsi        # 61b0 <row0>
    1bb8:	85 c0                	test   %eax,%eax
    1bba:	7e 0b                	jle    1bc7 <func7+0x1cf>
    1bbc:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    1bc0:	83 c1 01             	add    $0x1,%ecx
    1bc3:	39 c8                	cmp    %ecx,%eax
    1bc5:	75 f5                	jne    1bbc <func7+0x1c4>
    1bc7:	48 63 d2             	movslq %edx,%rdx
    1bca:	b9 00 00 00 00       	mov    $0x0,%ecx
    1bcf:	80 3c 16 01          	cmpb   $0x1,(%rsi,%rdx,1)
    1bd3:	74 90                	je     1b65 <func7+0x16d>
    1bd5:	48 8d 15 d4 45 00 00 	lea    0x45d4(%rip),%rdx        # 61b0 <row0>
    1bdc:	45 85 c0             	test   %r8d,%r8d
    1bdf:	7e 11                	jle    1bf2 <func7+0x1fa>
    1be1:	b8 00 00 00 00       	mov    $0x0,%eax
    1be6:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1bea:	83 c0 01             	add    $0x1,%eax
    1bed:	41 39 c0             	cmp    %eax,%r8d
    1bf0:	75 f4                	jne    1be6 <func7+0x1ee>
    1bf2:	49 63 c3             	movslq %r11d,%rax
    1bf5:	b9 00 00 00 00       	mov    $0x0,%ecx
    1bfa:	80 3c 02 01          	cmpb   $0x1,(%rdx,%rax,1)
    1bfe:	0f 84 61 ff ff ff    	je     1b65 <func7+0x16d>
    1c04:	41 8d 49 01          	lea    0x1(%r9),%ecx
    1c08:	44 89 da             	mov    %r11d,%edx
    1c0b:	44 89 c6             	mov    %r8d,%esi
    1c0e:	e8 e5 fd ff ff       	call   19f8 <func7>
    1c13:	89 c1                	mov    %eax,%ecx
    1c15:	e9 4b ff ff ff       	jmp    1b65 <func7+0x16d>
    1c1a:	e8 81 f4 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001c1f <secret_phase>:
    1c1f:	53                   	push   %rbx
    1c20:	48 8d 3d ce 15 00 00 	lea    0x15ce(%rip),%rdi        # 31f5 <_IO_stdin_used+0x1f5>
    1c27:	e8 44 f4 ff ff       	call   1070 <puts@plt>
    1c2c:	e8 48 04 00 00       	call   2079 <read_line>
    1c31:	48 89 c3             	mov    %rax,%rbx
    1c34:	48 89 c7             	mov    %rax,%rdi
    1c37:	e8 ba 00 00 00       	call   1cf6 <string_length>
    1c3c:	83 f8 14             	cmp    $0x14,%eax
    1c3f:	7f 2e                	jg     1c6f <secret_phase+0x50>
    1c41:	b9 00 00 00 00       	mov    $0x0,%ecx
    1c46:	ba 00 00 00 00       	mov    $0x0,%edx
    1c4b:	be 00 00 00 00       	mov    $0x0,%esi
    1c50:	48 89 df             	mov    %rbx,%rdi
    1c53:	e8 a0 fd ff ff       	call   19f8 <func7>
    1c58:	85 c0                	test   %eax,%eax
    1c5a:	74 1a                	je     1c76 <secret_phase+0x57>
    1c5c:	48 8d 3d 4d 15 00 00 	lea    0x154d(%rip),%rdi        # 31b0 <_IO_stdin_used+0x1b0>
    1c63:	e8 08 f4 ff ff       	call   1070 <puts@plt>
    1c68:	e8 46 05 00 00       	call   21b3 <phase_defused>
    1c6d:	5b                   	pop    %rbx
    1c6e:	c3                   	ret
    1c6f:	e8 04 03 00 00       	call   1f78 <explode_bomb>
    1c74:	eb cb                	jmp    1c41 <secret_phase+0x22>
    1c76:	e8 fd 02 00 00       	call   1f78 <explode_bomb>
    1c7b:	eb df                	jmp    1c5c <secret_phase+0x3d>

0000000000001c7d <sig_handler>:
    1c7d:	48 83 ec 08          	sub    $0x8,%rsp
    1c81:	48 8d 3d f8 15 00 00 	lea    0x15f8(%rip),%rdi        # 3280 <array.0+0x40>
    1c88:	e8 e3 f3 ff ff       	call   1070 <puts@plt>
    1c8d:	bf 03 00 00 00       	mov    $0x3,%edi
    1c92:	e8 19 f5 ff ff       	call   11b0 <sleep@plt>
    1c97:	48 8d 3d 5b 17 00 00 	lea    0x175b(%rip),%rdi        # 33f9 <array.0+0x1b9>
    1c9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1ca3:	e8 08 f4 ff ff       	call   10b0 <printf@plt>
    1ca8:	48 8b 3d d1 49 00 00 	mov    0x49d1(%rip),%rdi        # 6680 <stdout@GLIBC_2.2.5>
    1caf:	e8 8c f4 ff ff       	call   1140 <fflush@plt>
    1cb4:	bf 01 00 00 00       	mov    $0x1,%edi
    1cb9:	e8 f2 f4 ff ff       	call   11b0 <sleep@plt>
    1cbe:	48 8d 3d 3c 17 00 00 	lea    0x173c(%rip),%rdi        # 3401 <array.0+0x1c1>
    1cc5:	e8 a6 f3 ff ff       	call   1070 <puts@plt>
    1cca:	bf 10 00 00 00       	mov    $0x10,%edi
    1ccf:	e8 bc f4 ff ff       	call   1190 <exit@plt>

0000000000001cd4 <invalid_phase>:
    1cd4:	48 83 ec 08          	sub    $0x8,%rsp
    1cd8:	48 89 fe             	mov    %rdi,%rsi
    1cdb:	48 8d 3d 29 17 00 00 	lea    0x1729(%rip),%rdi        # 340b <array.0+0x1cb>
    1ce2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce7:	e8 c4 f3 ff ff       	call   10b0 <printf@plt>
    1cec:	bf 08 00 00 00       	mov    $0x8,%edi
    1cf1:	e8 9a f4 ff ff       	call   1190 <exit@plt>

0000000000001cf6 <string_length>:
    1cf6:	80 3f 00             	cmpb   $0x0,(%rdi)
    1cf9:	74 12                	je     1d0d <string_length+0x17>
    1cfb:	b8 00 00 00 00       	mov    $0x0,%eax
    1d00:	48 83 c7 01          	add    $0x1,%rdi
    1d04:	83 c0 01             	add    $0x1,%eax
    1d07:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d0a:	75 f4                	jne    1d00 <string_length+0xa>
    1d0c:	c3                   	ret
    1d0d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d12:	c3                   	ret

0000000000001d13 <strings_not_equal>:
    1d13:	41 54                	push   %r12
    1d15:	55                   	push   %rbp
    1d16:	53                   	push   %rbx
    1d17:	48 89 fb             	mov    %rdi,%rbx
    1d1a:	48 89 f5             	mov    %rsi,%rbp
    1d1d:	e8 d4 ff ff ff       	call   1cf6 <string_length>
    1d22:	41 89 c4             	mov    %eax,%r12d
    1d25:	48 89 ef             	mov    %rbp,%rdi
    1d28:	e8 c9 ff ff ff       	call   1cf6 <string_length>
    1d2d:	89 c2                	mov    %eax,%edx
    1d2f:	b8 01 00 00 00       	mov    $0x1,%eax
    1d34:	41 39 d4             	cmp    %edx,%r12d
    1d37:	75 31                	jne    1d6a <strings_not_equal+0x57>
    1d39:	0f b6 13             	movzbl (%rbx),%edx
    1d3c:	84 d2                	test   %dl,%dl
    1d3e:	74 1e                	je     1d5e <strings_not_equal+0x4b>
    1d40:	b8 00 00 00 00       	mov    $0x0,%eax
    1d45:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1d49:	75 1a                	jne    1d65 <strings_not_equal+0x52>
    1d4b:	48 83 c0 01          	add    $0x1,%rax
    1d4f:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1d53:	84 d2                	test   %dl,%dl
    1d55:	75 ee                	jne    1d45 <strings_not_equal+0x32>
    1d57:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5c:	eb 0c                	jmp    1d6a <strings_not_equal+0x57>
    1d5e:	b8 00 00 00 00       	mov    $0x0,%eax
    1d63:	eb 05                	jmp    1d6a <strings_not_equal+0x57>
    1d65:	b8 01 00 00 00       	mov    $0x1,%eax
    1d6a:	5b                   	pop    %rbx
    1d6b:	5d                   	pop    %rbp
    1d6c:	41 5c                	pop    %r12
    1d6e:	c3                   	ret

0000000000001d6f <initialize_bomb>:
    1d6f:	55                   	push   %rbp
    1d70:	53                   	push   %rbx
    1d71:	48 83 ec 58          	sub    $0x58,%rsp
    1d75:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d7c:	00 00 
    1d7e:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1d83:	31 c0                	xor    %eax,%eax
    1d85:	48 8d 35 f1 fe ff ff 	lea    -0x10f(%rip),%rsi        # 1c7d <sig_handler>
    1d8c:	bf 02 00 00 00       	mov    $0x2,%edi
    1d91:	e8 7a f3 ff ff       	call   1110 <signal@plt>
    1d96:	48 8b 3d e3 44 00 00 	mov    0x44e3(%rip),%rdi        # 6280 <host_table>
    1d9d:	48 85 ff             	test   %rdi,%rdi
    1da0:	74 23                	je     1dc5 <initialize_bomb+0x56>
    1da2:	48 8d 1d df 44 00 00 	lea    0x44df(%rip),%rbx        # 6288 <host_table+0x8>
    1da9:	48 89 e5             	mov    %rsp,%rbp
    1dac:	48 89 ee             	mov    %rbp,%rsi
    1daf:	e8 8c f2 ff ff       	call   1040 <strcasecmp@plt>
    1db4:	85 c0                	test   %eax,%eax
    1db6:	74 0d                	je     1dc5 <initialize_bomb+0x56>
    1db8:	48 83 c3 08          	add    $0x8,%rbx
    1dbc:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1dc0:	48 85 ff             	test   %rdi,%rdi
    1dc3:	75 e7                	jne    1dac <initialize_bomb+0x3d>
    1dc5:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 341c <array.0+0x1dc>
    1dcc:	e8 9f f2 ff ff       	call   1070 <puts@plt>
    1dd1:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 3428 <array.0+0x1e8>
    1dd8:	e8 93 f2 ff ff       	call   1070 <puts@plt>
    1ddd:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 3434 <array.0+0x1f4>
    1de4:	e8 87 f2 ff ff       	call   1070 <puts@plt>
    1de9:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 3440 <array.0+0x200>
    1df0:	e8 7b f2 ff ff       	call   1070 <puts@plt>
    1df5:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 344c <array.0+0x20c>
    1dfc:	e8 6f f2 ff ff       	call   1070 <puts@plt>
    1e01:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1e06:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e0d:	00 00 
    1e0f:	75 07                	jne    1e18 <initialize_bomb+0xa9>
    1e11:	48 83 c4 58          	add    $0x58,%rsp
    1e15:	5b                   	pop    %rbx
    1e16:	5d                   	pop    %rbp
    1e17:	c3                   	ret
    1e18:	e8 83 f2 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001e1d <initialize_bomb_solve>:
    1e1d:	c3                   	ret

0000000000001e1e <blank_line>:
    1e1e:	55                   	push   %rbp
    1e1f:	53                   	push   %rbx
    1e20:	48 83 ec 08          	sub    $0x8,%rsp
    1e24:	48 89 fd             	mov    %rdi,%rbp
    1e27:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1e2b:	84 db                	test   %bl,%bl
    1e2d:	74 1e                	je     1e4d <blank_line+0x2f>
    1e2f:	e8 8c f3 ff ff       	call   11c0 <__ctype_b_loc@plt>
    1e34:	48 83 c5 01          	add    $0x1,%rbp
    1e38:	48 0f be db          	movsbq %bl,%rbx
    1e3c:	48 8b 00             	mov    (%rax),%rax
    1e3f:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1e44:	75 e1                	jne    1e27 <blank_line+0x9>
    1e46:	b8 00 00 00 00       	mov    $0x0,%eax
    1e4b:	eb 05                	jmp    1e52 <blank_line+0x34>
    1e4d:	b8 01 00 00 00       	mov    $0x1,%eax
    1e52:	48 83 c4 08          	add    $0x8,%rsp
    1e56:	5b                   	pop    %rbx
    1e57:	5d                   	pop    %rbp
    1e58:	c3                   	ret

0000000000001e59 <skip>:
    1e59:	55                   	push   %rbp
    1e5a:	53                   	push   %rbx
    1e5b:	48 83 ec 08          	sub    $0x8,%rsp
    1e5f:	48 8d 2d da 48 00 00 	lea    0x48da(%rip),%rbp        # 6740 <input_strings>
    1e66:	48 63 15 cb 48 00 00 	movslq 0x48cb(%rip),%rdx        # 6738 <num_input_strings>
    1e6d:	48 89 d0             	mov    %rdx,%rax
    1e70:	48 c1 e0 04          	shl    $0x4,%rax
    1e74:	48 29 d0             	sub    %rdx,%rax
    1e77:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1e7c:	48 8b 15 2d 48 00 00 	mov    0x482d(%rip),%rdx        # 66b0 <infile>
    1e83:	be 78 00 00 00       	mov    $0x78,%esi
    1e88:	e8 63 f2 ff ff       	call   10f0 <fgets@plt>
    1e8d:	48 89 c3             	mov    %rax,%rbx
    1e90:	48 85 c0             	test   %rax,%rax
    1e93:	74 0c                	je     1ea1 <skip+0x48>
    1e95:	48 89 c7             	mov    %rax,%rdi
    1e98:	e8 81 ff ff ff       	call   1e1e <blank_line>
    1e9d:	85 c0                	test   %eax,%eax
    1e9f:	75 c5                	jne    1e66 <skip+0xd>
    1ea1:	48 89 d8             	mov    %rbx,%rax
    1ea4:	48 83 c4 08          	add    $0x8,%rsp
    1ea8:	5b                   	pop    %rbx
    1ea9:	5d                   	pop    %rbp
    1eaa:	c3                   	ret

0000000000001eab <send_msg>:
    1eab:	53                   	push   %rbx
    1eac:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1eb3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1eba:	00 00 
    1ebc:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1ec3:	00 
    1ec4:	31 c0                	xor    %eax,%eax
    1ec6:	44 8b 05 6b 48 00 00 	mov    0x486b(%rip),%r8d        # 6738 <num_input_strings>
    1ecd:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    1ed1:	48 98                	cltq
    1ed3:	48 89 c2             	mov    %rax,%rdx
    1ed6:	48 c1 e2 04          	shl    $0x4,%rdx
    1eda:	48 29 c2             	sub    %rax,%rdx
    1edd:	85 ff                	test   %edi,%edi
    1edf:	48 8d 0d 72 15 00 00 	lea    0x1572(%rip),%rcx        # 3458 <array.0+0x218>
    1ee6:	48 8d 05 73 15 00 00 	lea    0x1573(%rip),%rax        # 3460 <array.0+0x220>
    1eed:	48 0f 44 c8          	cmove  %rax,%rcx
    1ef1:	48 89 e3             	mov    %rsp,%rbx
    1ef4:	48 8d 05 45 48 00 00 	lea    0x4845(%rip),%rax        # 6740 <input_strings>
    1efb:	4c 8d 0c d0          	lea    (%rax,%rdx,8),%r9
    1eff:	8b 15 9f 42 00 00    	mov    0x429f(%rip),%edx        # 61a4 <bomb_id>
    1f05:	48 8d 35 5d 15 00 00 	lea    0x155d(%rip),%rsi        # 3469 <array.0+0x229>
    1f0c:	48 89 df             	mov    %rbx,%rdi
    1f0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f14:	e8 67 f2 ff ff       	call   1180 <sprintf@plt>
    1f19:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    1f20:	00 
    1f21:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f26:	48 89 da             	mov    %rbx,%rdx
    1f29:	48 8d 35 50 42 00 00 	lea    0x4250(%rip),%rsi        # 6180 <user_password>
    1f30:	48 8d 3d 61 42 00 00 	lea    0x4261(%rip),%rdi        # 6198 <userid>
    1f37:	e8 ac 0e 00 00       	call   2de8 <driver_post>
    1f3c:	85 c0                	test   %eax,%eax
    1f3e:	78 1c                	js     1f5c <send_msg+0xb1>
    1f40:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1f47:	00 
    1f48:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1f4f:	00 00 
    1f51:	75 20                	jne    1f73 <send_msg+0xc8>
    1f53:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1f5a:	5b                   	pop    %rbx
    1f5b:	c3                   	ret
    1f5c:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1f63:	00 
    1f64:	e8 07 f1 ff ff       	call   1070 <puts@plt>
    1f69:	bf 00 00 00 00       	mov    $0x0,%edi
    1f6e:	e8 1d f2 ff ff       	call   1190 <exit@plt>
    1f73:	e8 28 f1 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001f78 <explode_bomb>:
    1f78:	48 83 ec 08          	sub    $0x8,%rsp
    1f7c:	48 8d 3d 35 13 00 00 	lea    0x1335(%rip),%rdi        # 32b8 <array.0+0x78>
    1f83:	e8 e8 f0 ff ff       	call   1070 <puts@plt>
    1f88:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 3475 <array.0+0x235>
    1f8f:	e8 dc f0 ff ff       	call   1070 <puts@plt>
    1f94:	48 8d 3d f7 14 00 00 	lea    0x14f7(%rip),%rdi        # 3492 <array.0+0x252>
    1f9b:	e8 d0 f0 ff ff       	call   1070 <puts@plt>
    1fa0:	48 8d 3d 08 15 00 00 	lea    0x1508(%rip),%rdi        # 34af <array.0+0x26f>
    1fa7:	e8 c4 f0 ff ff       	call   1070 <puts@plt>
    1fac:	48 8d 3d 19 15 00 00 	lea    0x1519(%rip),%rdi        # 34cc <array.0+0x28c>
    1fb3:	e8 b8 f0 ff ff       	call   1070 <puts@plt>
    1fb8:	48 8d 3d 2a 15 00 00 	lea    0x152a(%rip),%rdi        # 34e9 <array.0+0x2a9>
    1fbf:	e8 ac f0 ff ff       	call   1070 <puts@plt>
    1fc4:	48 8d 3d 3a 15 00 00 	lea    0x153a(%rip),%rdi        # 3505 <array.0+0x2c5>
    1fcb:	e8 a0 f0 ff ff       	call   1070 <puts@plt>
    1fd0:	48 8d 3d 4b 15 00 00 	lea    0x154b(%rip),%rdi        # 3522 <array.0+0x2e2>
    1fd7:	e8 94 f0 ff ff       	call   1070 <puts@plt>
    1fdc:	48 8d 3d 5c 15 00 00 	lea    0x155c(%rip),%rdi        # 353f <array.0+0x2ff>
    1fe3:	e8 88 f0 ff ff       	call   1070 <puts@plt>
    1fe8:	48 8d 3d 6d 15 00 00 	lea    0x156d(%rip),%rdi        # 355c <array.0+0x31c>
    1fef:	e8 7c f0 ff ff       	call   1070 <puts@plt>
    1ff4:	48 8d 3d 7e 15 00 00 	lea    0x157e(%rip),%rdi        # 3579 <array.0+0x339>
    1ffb:	e8 70 f0 ff ff       	call   1070 <puts@plt>
    2000:	48 8d 3d 8f 15 00 00 	lea    0x158f(%rip),%rdi        # 3596 <array.0+0x356>
    2007:	e8 64 f0 ff ff       	call   1070 <puts@plt>
    200c:	48 8d 3d a0 15 00 00 	lea    0x15a0(%rip),%rdi        # 35b3 <array.0+0x373>
    2013:	e8 58 f0 ff ff       	call   1070 <puts@plt>
    2018:	bf 00 00 00 00       	mov    $0x0,%edi
    201d:	e8 89 fe ff ff       	call   1eab <send_msg>
    2022:	48 8d 3d d7 12 00 00 	lea    0x12d7(%rip),%rdi        # 3300 <array.0+0xc0>
    2029:	e8 42 f0 ff ff       	call   1070 <puts@plt>
    202e:	bf 08 00 00 00       	mov    $0x8,%edi
    2033:	e8 58 f1 ff ff       	call   1190 <exit@plt>

0000000000002038 <read_six_numbers>:
    2038:	48 83 ec 08          	sub    $0x8,%rsp
    203c:	48 89 f2             	mov    %rsi,%rdx
    203f:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2043:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2047:	50                   	push   %rax
    2048:	48 8d 46 10          	lea    0x10(%rsi),%rax
    204c:	50                   	push   %rax
    204d:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2051:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2055:	48 8d 35 6f 15 00 00 	lea    0x156f(%rip),%rsi        # 35cb <array.0+0x38b>
    205c:	b8 00 00 00 00       	mov    $0x0,%eax
    2061:	e8 ea f0 ff ff       	call   1150 <__isoc99_sscanf@plt>
    2066:	48 83 c4 10          	add    $0x10,%rsp
    206a:	83 f8 05             	cmp    $0x5,%eax
    206d:	7e 05                	jle    2074 <read_six_numbers+0x3c>
    206f:	48 83 c4 08          	add    $0x8,%rsp
    2073:	c3                   	ret
    2074:	e8 ff fe ff ff       	call   1f78 <explode_bomb>

0000000000002079 <read_line>:
    2079:	55                   	push   %rbp
    207a:	53                   	push   %rbx
    207b:	48 83 ec 08          	sub    $0x8,%rsp
    207f:	b8 00 00 00 00       	mov    $0x0,%eax
    2084:	e8 d0 fd ff ff       	call   1e59 <skip>
    2089:	48 85 c0             	test   %rax,%rax
    208c:	74 63                	je     20f1 <read_line+0x78>
    208e:	8b 1d a4 46 00 00    	mov    0x46a4(%rip),%ebx        # 6738 <num_input_strings>
    2094:	48 63 d3             	movslq %ebx,%rdx
    2097:	48 89 d0             	mov    %rdx,%rax
    209a:	48 c1 e0 04          	shl    $0x4,%rax
    209e:	48 29 d0             	sub    %rdx,%rax
    20a1:	48 8d 15 98 46 00 00 	lea    0x4698(%rip),%rdx        # 6740 <input_strings>
    20a8:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    20ac:	48 89 ef             	mov    %rbp,%rdi
    20af:	e8 dc ef ff ff       	call   1090 <strlen@plt>
    20b4:	83 f8 76             	cmp    $0x76,%eax
    20b7:	0f 8f ac 00 00 00    	jg     2169 <read_line+0xf0>
    20bd:	83 e8 01             	sub    $0x1,%eax
    20c0:	48 98                	cltq
    20c2:	48 63 cb             	movslq %ebx,%rcx
    20c5:	48 89 ca             	mov    %rcx,%rdx
    20c8:	48 c1 e2 04          	shl    $0x4,%rdx
    20cc:	48 29 ca             	sub    %rcx,%rdx
    20cf:	48 8d 0d 6a 46 00 00 	lea    0x466a(%rip),%rcx        # 6740 <input_strings>
    20d6:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    20da:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    20de:	83 c3 01             	add    $0x1,%ebx
    20e1:	89 1d 51 46 00 00    	mov    %ebx,0x4651(%rip)        # 6738 <num_input_strings>
    20e7:	48 89 e8             	mov    %rbp,%rax
    20ea:	48 83 c4 08          	add    $0x8,%rsp
    20ee:	5b                   	pop    %rbx
    20ef:	5d                   	pop    %rbp
    20f0:	c3                   	ret
    20f1:	48 8b 05 98 45 00 00 	mov    0x4598(%rip),%rax        # 6690 <stdin@GLIBC_2.2.5>
    20f8:	48 39 05 b1 45 00 00 	cmp    %rax,0x45b1(%rip)        # 66b0 <infile>
    20ff:	74 1b                	je     211c <read_line+0xa3>
    2101:	48 8d 3d f3 14 00 00 	lea    0x14f3(%rip),%rdi        # 35fb <array.0+0x3bb>
    2108:	e8 23 ef ff ff       	call   1030 <getenv@plt>
    210d:	48 85 c0             	test   %rax,%rax
    2110:	74 20                	je     2132 <read_line+0xb9>
    2112:	bf 00 00 00 00       	mov    $0x0,%edi
    2117:	e8 74 f0 ff ff       	call   1190 <exit@plt>
    211c:	48 8d 3d ba 14 00 00 	lea    0x14ba(%rip),%rdi        # 35dd <array.0+0x39d>
    2123:	e8 48 ef ff ff       	call   1070 <puts@plt>
    2128:	bf 08 00 00 00       	mov    $0x8,%edi
    212d:	e8 5e f0 ff ff       	call   1190 <exit@plt>
    2132:	48 8b 05 57 45 00 00 	mov    0x4557(%rip),%rax        # 6690 <stdin@GLIBC_2.2.5>
    2139:	48 89 05 70 45 00 00 	mov    %rax,0x4570(%rip)        # 66b0 <infile>
    2140:	b8 00 00 00 00       	mov    $0x0,%eax
    2145:	e8 0f fd ff ff       	call   1e59 <skip>
    214a:	48 85 c0             	test   %rax,%rax
    214d:	0f 85 3b ff ff ff    	jne    208e <read_line+0x15>
    2153:	48 8d 3d 83 14 00 00 	lea    0x1483(%rip),%rdi        # 35dd <array.0+0x39d>
    215a:	e8 11 ef ff ff       	call   1070 <puts@plt>
    215f:	bf 00 00 00 00       	mov    $0x0,%edi
    2164:	e8 27 f0 ff ff       	call   1190 <exit@plt>
    2169:	48 8d 3d 96 14 00 00 	lea    0x1496(%rip),%rdi        # 3606 <array.0+0x3c6>
    2170:	e8 fb ee ff ff       	call   1070 <puts@plt>
    2175:	8b 05 bd 45 00 00    	mov    0x45bd(%rip),%eax        # 6738 <num_input_strings>
    217b:	8d 50 01             	lea    0x1(%rax),%edx
    217e:	89 15 b4 45 00 00    	mov    %edx,0x45b4(%rip)        # 6738 <num_input_strings>
    2184:	48 98                	cltq
    2186:	48 6b c0 78          	imul   $0x78,%rax,%rax
    218a:	48 8d 15 af 45 00 00 	lea    0x45af(%rip),%rdx        # 6740 <input_strings>
    2191:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2198:	75 6e 63 
    219b:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    21a2:	2a 2a 00 
    21a5:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    21a9:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    21ae:	e8 c5 fd ff ff       	call   1f78 <explode_bomb>

00000000000021b3 <phase_defused>:
    21b3:	48 83 ec 08          	sub    $0x8,%rsp
    21b7:	bf 01 00 00 00       	mov    $0x1,%edi
    21bc:	e8 ea fc ff ff       	call   1eab <send_msg>
    21c1:	83 3d 70 45 00 00 06 	cmpl   $0x6,0x4570(%rip)        # 6738 <num_input_strings>
    21c8:	74 05                	je     21cf <phase_defused+0x1c>
    21ca:	48 83 c4 08          	add    $0x8,%rsp
    21ce:	c3                   	ret
    21cf:	0f b6 0d c2 47 00 00 	movzbl 0x47c2(%rip),%ecx        # 6998 <input_strings+0x258>
    21d6:	84 c9                	test   %cl,%cl
    21d8:	74 34                	je     220e <phase_defused+0x5b>
    21da:	b8 01 00 00 00       	mov    $0x1,%eax
    21df:	ba 00 00 00 00       	mov    $0x0,%edx
    21e4:	48 8d 3d ad 47 00 00 	lea    0x47ad(%rip),%rdi        # 6998 <input_strings+0x258>
    21eb:	80 f9 20             	cmp    $0x20,%cl
    21ee:	0f 94 c1             	sete   %cl
    21f1:	0f b6 c9             	movzbl %cl,%ecx
    21f4:	01 ca                	add    %ecx,%edx
    21f6:	89 c6                	mov    %eax,%esi
    21f8:	0f b6 0c 07          	movzbl (%rdi,%rax,1),%ecx
    21fc:	48 83 c0 01          	add    $0x1,%rax
    2200:	83 fa 05             	cmp    $0x5,%edx
    2203:	7f 04                	jg     2209 <phase_defused+0x56>
    2205:	84 c9                	test   %cl,%cl
    2207:	75 e2                	jne    21eb <phase_defused+0x38>
    2209:	83 fa 06             	cmp    $0x6,%edx
    220c:	74 1a                	je     2228 <phase_defused+0x75>
    220e:	48 8d 3d 73 11 00 00 	lea    0x1173(%rip),%rdi        # 3388 <array.0+0x148>
    2215:	e8 56 ee ff ff       	call   1070 <puts@plt>
    221a:	48 8d 3d 97 11 00 00 	lea    0x1197(%rip),%rdi        # 33b8 <array.0+0x178>
    2221:	e8 4a ee ff ff       	call   1070 <puts@plt>
    2226:	eb a2                	jmp    21ca <phase_defused+0x17>
    2228:	48 63 f6             	movslq %esi,%rsi
    222b:	48 8d 05 66 47 00 00 	lea    0x4766(%rip),%rax        # 6998 <input_strings+0x258>
    2232:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
    2236:	48 8d 35 e4 13 00 00 	lea    0x13e4(%rip),%rsi        # 3621 <array.0+0x3e1>
    223d:	e8 d1 fa ff ff       	call   1d13 <strings_not_equal>
    2242:	85 c0                	test   %eax,%eax
    2244:	75 c8                	jne    220e <phase_defused+0x5b>
    2246:	48 8d 3d db 10 00 00 	lea    0x10db(%rip),%rdi        # 3328 <array.0+0xe8>
    224d:	e8 1e ee ff ff       	call   1070 <puts@plt>
    2252:	48 8d 3d f7 10 00 00 	lea    0x10f7(%rip),%rdi        # 3350 <array.0+0x110>
    2259:	e8 12 ee ff ff       	call   1070 <puts@plt>
    225e:	b8 00 00 00 00       	mov    $0x0,%eax
    2263:	e8 b7 f9 ff ff       	call   1c1f <secret_phase>
    2268:	eb a4                	jmp    220e <phase_defused+0x5b>

000000000000226a <sigalrm_handler>:
    226a:	48 83 ec 08          	sub    $0x8,%rsp
    226e:	ba 00 00 00 00       	mov    $0x0,%edx
    2273:	48 8d 35 be 13 00 00 	lea    0x13be(%rip),%rsi        # 3638 <array.0+0x3f8>
    227a:	48 8b 3d 1f 44 00 00 	mov    0x441f(%rip),%rdi        # 66a0 <stderr@GLIBC_2.2.5>
    2281:	b8 00 00 00 00       	mov    $0x0,%eax
    2286:	e8 a5 ee ff ff       	call   1130 <fprintf@plt>
    228b:	bf 01 00 00 00       	mov    $0x1,%edi
    2290:	e8 fb ee ff ff       	call   1190 <exit@plt>

0000000000002295 <rio_writen>:
    2295:	41 56                	push   %r14
    2297:	41 55                	push   %r13
    2299:	41 54                	push   %r12
    229b:	55                   	push   %rbp
    229c:	53                   	push   %rbx
    229d:	49 89 d5             	mov    %rdx,%r13
    22a0:	48 85 d2             	test   %rdx,%rdx
    22a3:	74 3b                	je     22e0 <rio_writen+0x4b>
    22a5:	41 89 fc             	mov    %edi,%r12d
    22a8:	48 89 f5             	mov    %rsi,%rbp
    22ab:	48 89 d3             	mov    %rdx,%rbx
    22ae:	41 be 00 00 00 00    	mov    $0x0,%r14d
    22b4:	eb 08                	jmp    22be <rio_writen+0x29>
    22b6:	48 01 c5             	add    %rax,%rbp
    22b9:	48 29 c3             	sub    %rax,%rbx
    22bc:	74 22                	je     22e0 <rio_writen+0x4b>
    22be:	48 89 da             	mov    %rbx,%rdx
    22c1:	48 89 ee             	mov    %rbp,%rsi
    22c4:	44 89 e7             	mov    %r12d,%edi
    22c7:	e8 b4 ed ff ff       	call   1080 <write@plt>
    22cc:	48 85 c0             	test   %rax,%rax
    22cf:	7f e5                	jg     22b6 <rio_writen+0x21>
    22d1:	e8 7a ed ff ff       	call   1050 <__errno_location@plt>
    22d6:	83 38 04             	cmpl   $0x4,(%rax)
    22d9:	75 11                	jne    22ec <rio_writen+0x57>
    22db:	4c 89 f0             	mov    %r14,%rax
    22de:	eb d6                	jmp    22b6 <rio_writen+0x21>
    22e0:	4c 89 e8             	mov    %r13,%rax
    22e3:	5b                   	pop    %rbx
    22e4:	5d                   	pop    %rbp
    22e5:	41 5c                	pop    %r12
    22e7:	41 5d                	pop    %r13
    22e9:	41 5e                	pop    %r14
    22eb:	c3                   	ret
    22ec:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    22f3:	eb ee                	jmp    22e3 <rio_writen+0x4e>

00000000000022f5 <rio_readlineb>:
    22f5:	41 56                	push   %r14
    22f7:	41 55                	push   %r13
    22f9:	41 54                	push   %r12
    22fb:	55                   	push   %rbp
    22fc:	53                   	push   %rbx
    22fd:	49 89 f4             	mov    %rsi,%r12
    2300:	48 83 fa 01          	cmp    $0x1,%rdx
    2304:	0f 86 92 00 00 00    	jbe    239c <rio_readlineb+0xa7>
    230a:	48 89 fb             	mov    %rdi,%rbx
    230d:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    2312:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2318:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    231c:	eb 56                	jmp    2374 <rio_readlineb+0x7f>
    231e:	e8 2d ed ff ff       	call   1050 <__errno_location@plt>
    2323:	83 38 04             	cmpl   $0x4,(%rax)
    2326:	75 55                	jne    237d <rio_readlineb+0x88>
    2328:	ba 00 20 00 00       	mov    $0x2000,%edx
    232d:	48 89 ee             	mov    %rbp,%rsi
    2330:	8b 3b                	mov    (%rbx),%edi
    2332:	e8 a9 ed ff ff       	call   10e0 <read@plt>
    2337:	89 c2                	mov    %eax,%edx
    2339:	89 43 04             	mov    %eax,0x4(%rbx)
    233c:	85 c0                	test   %eax,%eax
    233e:	78 de                	js     231e <rio_readlineb+0x29>
    2340:	85 c0                	test   %eax,%eax
    2342:	74 42                	je     2386 <rio_readlineb+0x91>
    2344:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2348:	48 8b 43 08          	mov    0x8(%rbx),%rax
    234c:	0f b6 08             	movzbl (%rax),%ecx
    234f:	48 83 c0 01          	add    $0x1,%rax
    2353:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2357:	83 ea 01             	sub    $0x1,%edx
    235a:	89 53 04             	mov    %edx,0x4(%rbx)
    235d:	49 83 c4 01          	add    $0x1,%r12
    2361:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2366:	80 f9 0a             	cmp    $0xa,%cl
    2369:	74 3c                	je     23a7 <rio_readlineb+0xb2>
    236b:	41 83 c5 01          	add    $0x1,%r13d
    236f:	4d 39 f4             	cmp    %r14,%r12
    2372:	74 30                	je     23a4 <rio_readlineb+0xaf>
    2374:	8b 53 04             	mov    0x4(%rbx),%edx
    2377:	85 d2                	test   %edx,%edx
    2379:	7e ad                	jle    2328 <rio_readlineb+0x33>
    237b:	eb cb                	jmp    2348 <rio_readlineb+0x53>
    237d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2384:	eb 05                	jmp    238b <rio_readlineb+0x96>
    2386:	b8 00 00 00 00       	mov    $0x0,%eax
    238b:	85 c0                	test   %eax,%eax
    238d:	75 29                	jne    23b8 <rio_readlineb+0xc3>
    238f:	b8 00 00 00 00       	mov    $0x0,%eax
    2394:	41 83 fd 01          	cmp    $0x1,%r13d
    2398:	75 0d                	jne    23a7 <rio_readlineb+0xb2>
    239a:	eb 13                	jmp    23af <rio_readlineb+0xba>
    239c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    23a2:	eb 03                	jmp    23a7 <rio_readlineb+0xb2>
    23a4:	4d 89 f4             	mov    %r14,%r12
    23a7:	41 c6 04 24 00       	movb   $0x0,(%r12)
    23ac:	49 63 c5             	movslq %r13d,%rax
    23af:	5b                   	pop    %rbx
    23b0:	5d                   	pop    %rbp
    23b1:	41 5c                	pop    %r12
    23b3:	41 5d                	pop    %r13
    23b5:	41 5e                	pop    %r14
    23b7:	c3                   	ret
    23b8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23bf:	eb ee                	jmp    23af <rio_readlineb+0xba>

00000000000023c1 <submitr>:
    23c1:	41 57                	push   %r15
    23c3:	41 56                	push   %r14
    23c5:	41 55                	push   %r13
    23c7:	41 54                	push   %r12
    23c9:	55                   	push   %rbp
    23ca:	53                   	push   %rbx
    23cb:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    23d2:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    23d7:	89 f5                	mov    %esi,%ebp
    23d9:	49 89 d4             	mov    %rdx,%r12
    23dc:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    23e1:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    23e6:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    23eb:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    23f2:	00 
    23f3:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    23fa:	00 
    23fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2402:	00 00 
    2404:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    240b:	00 
    240c:	31 c0                	xor    %eax,%eax
    240e:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2415:	00 
    2416:	ba 00 00 00 00       	mov    $0x0,%edx
    241b:	be 01 00 00 00       	mov    $0x1,%esi
    2420:	bf 02 00 00 00       	mov    $0x2,%edi
    2425:	e8 a6 ed ff ff       	call   11d0 <socket@plt>
    242a:	85 c0                	test   %eax,%eax
    242c:	0f 88 0d 01 00 00    	js     253f <submitr+0x17e>
    2432:	41 89 c6             	mov    %eax,%r14d
    2435:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    243a:	e8 e1 ec ff ff       	call   1120 <gethostbyname@plt>
    243f:	48 85 c0             	test   %rax,%rax
    2442:	0f 84 47 01 00 00    	je     258f <submitr+0x1ce>
    2448:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    244d:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2454:	00 00 
    2456:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    245d:	00 00 
    245f:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2466:	48 63 50 14          	movslq 0x14(%rax),%rdx
    246a:	48 8b 40 18          	mov    0x18(%rax),%rax
    246e:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2473:	48 8b 30             	mov    (%rax),%rsi
    2476:	e8 e5 ec ff ff       	call   1160 <memmove@plt>
    247b:	66 c1 c5 08          	rol    $0x8,%bp
    247f:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    2484:	ba 10 00 00 00       	mov    $0x10,%edx
    2489:	4c 89 ee             	mov    %r13,%rsi
    248c:	44 89 f7             	mov    %r14d,%edi
    248f:	e8 0c ed ff ff       	call   11a0 <connect@plt>
    2494:	85 c0                	test   %eax,%eax
    2496:	0f 88 5e 01 00 00    	js     25fa <submitr+0x239>
    249c:	48 89 df             	mov    %rbx,%rdi
    249f:	e8 ec eb ff ff       	call   1090 <strlen@plt>
    24a4:	48 89 c5             	mov    %rax,%rbp
    24a7:	4c 89 e7             	mov    %r12,%rdi
    24aa:	e8 e1 eb ff ff       	call   1090 <strlen@plt>
    24af:	49 89 c5             	mov    %rax,%r13
    24b2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    24b7:	e8 d4 eb ff ff       	call   1090 <strlen@plt>
    24bc:	49 89 c4             	mov    %rax,%r12
    24bf:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    24c4:	e8 c7 eb ff ff       	call   1090 <strlen@plt>
    24c9:	48 89 c2             	mov    %rax,%rdx
    24cc:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    24d3:	00 
    24d4:	48 01 d0             	add    %rdx,%rax
    24d7:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    24dc:	48 01 d0             	add    %rdx,%rax
    24df:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    24e5:	0f 87 6c 01 00 00    	ja     2657 <submitr+0x296>
    24eb:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    24f2:	00 
    24f3:	b9 00 04 00 00       	mov    $0x400,%ecx
    24f8:	b8 00 00 00 00       	mov    $0x0,%eax
    24fd:	48 89 d7             	mov    %rdx,%rdi
    2500:	f3 48 ab             	rep stos %rax,(%rdi)
    2503:	48 89 df             	mov    %rbx,%rdi
    2506:	e8 85 eb ff ff       	call   1090 <strlen@plt>
    250b:	85 c0                	test   %eax,%eax
    250d:	0f 84 13 05 00 00    	je     2a26 <submitr+0x665>
    2513:	8d 40 ff             	lea    -0x1(%rax),%eax
    2516:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    251b:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2522:	00 
    2523:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    252a:	00 
    252b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2530:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    2537:	00 20 00 
    253a:	e9 a5 01 00 00       	jmp    26e4 <submitr+0x323>
    253f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2546:	3a 20 43 
    2549:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2550:	20 75 6e 
    2553:	49 89 07             	mov    %rax,(%r15)
    2556:	49 89 57 08          	mov    %rdx,0x8(%r15)
    255a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2561:	74 6f 20 
    2564:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    256b:	65 20 73 
    256e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2572:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2576:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    257d:	65 
    257e:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2585:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    258a:	e9 6e 03 00 00       	jmp    28fd <submitr+0x53c>
    258f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2596:	3a 20 44 
    2599:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    25a0:	20 75 6e 
    25a3:	49 89 07             	mov    %rax,(%r15)
    25a6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25b1:	74 6f 20 
    25b4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    25bb:	76 65 20 
    25be:	49 89 47 10          	mov    %rax,0x10(%r15)
    25c2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25c6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    25cd:	72 20 61 
    25d0:	49 89 47 20          	mov    %rax,0x20(%r15)
    25d4:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    25db:	65 
    25dc:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    25e3:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    25e8:	44 89 f7             	mov    %r14d,%edi
    25eb:	e8 e0 ea ff ff       	call   10d0 <close@plt>
    25f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25f5:	e9 03 03 00 00       	jmp    28fd <submitr+0x53c>
    25fa:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2601:	3a 20 55 
    2604:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    260b:	20 74 6f 
    260e:	49 89 07             	mov    %rax,(%r15)
    2611:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2615:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    261c:	65 63 74 
    261f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2626:	68 65 20 
    2629:	49 89 47 10          	mov    %rax,0x10(%r15)
    262d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2631:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2638:	76 
    2639:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2640:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2645:	44 89 f7             	mov    %r14d,%edi
    2648:	e8 83 ea ff ff       	call   10d0 <close@plt>
    264d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2652:	e9 a6 02 00 00       	jmp    28fd <submitr+0x53c>
    2657:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    265e:	3a 20 52 
    2661:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2668:	20 73 74 
    266b:	49 89 07             	mov    %rax,(%r15)
    266e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2672:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2679:	74 6f 6f 
    267c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2683:	65 2e 20 
    2686:	49 89 47 10          	mov    %rax,0x10(%r15)
    268a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    268e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2695:	61 73 65 
    2698:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    269f:	49 54 52 
    26a2:	49 89 47 20          	mov    %rax,0x20(%r15)
    26a6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    26aa:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    26b1:	55 46 00 
    26b4:	49 89 47 30          	mov    %rax,0x30(%r15)
    26b8:	44 89 f7             	mov    %r14d,%edi
    26bb:	e8 10 ea ff ff       	call   10d0 <close@plt>
    26c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26c5:	e9 33 02 00 00       	jmp    28fd <submitr+0x53c>
    26ca:	49 0f a3 c5          	bt     %rax,%r13
    26ce:	73 1e                	jae    26ee <submitr+0x32d>
    26d0:	88 55 00             	mov    %dl,0x0(%rbp)
    26d3:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    26d7:	48 83 c3 01          	add    $0x1,%rbx
    26db:	4c 39 e3             	cmp    %r12,%rbx
    26de:	0f 84 42 03 00 00    	je     2a26 <submitr+0x665>
    26e4:	0f b6 13             	movzbl (%rbx),%edx
    26e7:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    26ea:	3c 35                	cmp    $0x35,%al
    26ec:	76 dc                	jbe    26ca <submitr+0x309>
    26ee:	89 d0                	mov    %edx,%eax
    26f0:	83 e0 df             	and    $0xffffffdf,%eax
    26f3:	83 e8 41             	sub    $0x41,%eax
    26f6:	3c 19                	cmp    $0x19,%al
    26f8:	76 d6                	jbe    26d0 <submitr+0x30f>
    26fa:	80 fa 20             	cmp    $0x20,%dl
    26fd:	74 50                	je     274f <submitr+0x38e>
    26ff:	8d 42 e0             	lea    -0x20(%rdx),%eax
    2702:	3c 5f                	cmp    $0x5f,%al
    2704:	76 09                	jbe    270f <submitr+0x34e>
    2706:	80 fa 09             	cmp    $0x9,%dl
    2709:	0f 85 8a 02 00 00    	jne    2999 <submitr+0x5d8>
    270f:	0f b6 d2             	movzbl %dl,%edx
    2712:	48 8d 35 f6 0f 00 00 	lea    0xff6(%rip),%rsi        # 370f <array.0+0x4cf>
    2719:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    271e:	b8 00 00 00 00       	mov    $0x0,%eax
    2723:	e8 58 ea ff ff       	call   1180 <sprintf@plt>
    2728:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    272f:	00 
    2730:	88 45 00             	mov    %al,0x0(%rbp)
    2733:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    273a:	00 
    273b:	88 45 01             	mov    %al,0x1(%rbp)
    273e:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2745:	00 
    2746:	88 45 02             	mov    %al,0x2(%rbp)
    2749:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    274d:	eb 88                	jmp    26d7 <submitr+0x316>
    274f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2753:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2757:	e9 7b ff ff ff       	jmp    26d7 <submitr+0x316>
    275c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2763:	3a 20 43 
    2766:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    276d:	20 75 6e 
    2770:	49 89 07             	mov    %rax,(%r15)
    2773:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2777:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    277e:	74 6f 20 
    2781:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2788:	20 74 6f 
    278b:	49 89 47 10          	mov    %rax,0x10(%r15)
    278f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2793:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    279a:	73 65 72 
    279d:	49 89 47 20          	mov    %rax,0x20(%r15)
    27a1:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    27a8:	00 
    27a9:	44 89 f7             	mov    %r14d,%edi
    27ac:	e8 1f e9 ff ff       	call   10d0 <close@plt>
    27b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27b6:	e9 42 01 00 00       	jmp    28fd <submitr+0x53c>
    27bb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27c2:	3a 20 43 
    27c5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27cc:	20 75 6e 
    27cf:	49 89 07             	mov    %rax,(%r15)
    27d2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27d6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27dd:	74 6f 20 
    27e0:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    27e7:	20 74 6f 
    27ea:	49 89 47 10          	mov    %rax,0x10(%r15)
    27ee:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27f2:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    27f9:	73 65 72 
    27fc:	49 89 47 20          	mov    %rax,0x20(%r15)
    2800:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2807:	00 
    2808:	44 89 f7             	mov    %r14d,%edi
    280b:	e8 c0 e8 ff ff       	call   10d0 <close@plt>
    2810:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2815:	e9 e3 00 00 00       	jmp    28fd <submitr+0x53c>
    281a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2821:	3a 20 43 
    2824:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    282b:	20 75 6e 
    282e:	49 89 07             	mov    %rax,(%r15)
    2831:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2835:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    283c:	74 6f 20 
    283f:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2846:	66 69 72 
    2849:	49 89 47 10          	mov    %rax,0x10(%r15)
    284d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2851:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2858:	61 64 65 
    285b:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2862:	6d 20 73 
    2865:	49 89 47 20          	mov    %rax,0x20(%r15)
    2869:	49 89 57 28          	mov    %rdx,0x28(%r15)
    286d:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2874:	65 
    2875:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    287c:	44 89 f7             	mov    %r14d,%edi
    287f:	e8 4c e8 ff ff       	call   10d0 <close@plt>
    2884:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2889:	eb 72                	jmp    28fd <submitr+0x53c>
    288b:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    2892:	00 
    2893:	48 8d 35 c6 0d 00 00 	lea    0xdc6(%rip),%rsi        # 3660 <array.0+0x420>
    289a:	4c 89 ff             	mov    %r15,%rdi
    289d:	b8 00 00 00 00       	mov    $0x0,%eax
    28a2:	e8 d9 e8 ff ff       	call   1180 <sprintf@plt>
    28a7:	44 89 f7             	mov    %r14d,%edi
    28aa:	e8 21 e8 ff ff       	call   10d0 <close@plt>
    28af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28b4:	eb 47                	jmp    28fd <submitr+0x53c>
    28b6:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    28bd:	00 
    28be:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    28c3:	ba 00 20 00 00       	mov    $0x2000,%edx
    28c8:	e8 28 fa ff ff       	call   22f5 <rio_readlineb>
    28cd:	48 85 c0             	test   %rax,%rax
    28d0:	7e 54                	jle    2926 <submitr+0x565>
    28d2:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    28d9:	00 
    28da:	4c 89 ff             	mov    %r15,%rdi
    28dd:	e8 7e e7 ff ff       	call   1060 <strcpy@plt>
    28e2:	44 89 f7             	mov    %r14d,%edi
    28e5:	e8 e6 e7 ff ff       	call   10d0 <close@plt>
    28ea:	48 8d 35 43 0e 00 00 	lea    0xe43(%rip),%rsi        # 3734 <array.0+0x4f4>
    28f1:	4c 89 ff             	mov    %r15,%rdi
    28f4:	e8 07 e8 ff ff       	call   1100 <strcmp@plt>
    28f9:	f7 d8                	neg    %eax
    28fb:	19 c0                	sbb    %eax,%eax
    28fd:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2904:	00 
    2905:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    290c:	00 00 
    290e:	0f 85 be 02 00 00    	jne    2bd2 <submitr+0x811>
    2914:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    291b:	5b                   	pop    %rbx
    291c:	5d                   	pop    %rbp
    291d:	41 5c                	pop    %r12
    291f:	41 5d                	pop    %r13
    2921:	41 5e                	pop    %r14
    2923:	41 5f                	pop    %r15
    2925:	c3                   	ret
    2926:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    292d:	3a 20 43 
    2930:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2937:	20 75 6e 
    293a:	49 89 07             	mov    %rax,(%r15)
    293d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2941:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2948:	74 6f 20 
    294b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2952:	73 74 61 
    2955:	49 89 47 10          	mov    %rax,0x10(%r15)
    2959:	49 89 57 18          	mov    %rdx,0x18(%r15)
    295d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2964:	65 73 73 
    2967:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    296e:	72 6f 6d 
    2971:	49 89 47 20          	mov    %rax,0x20(%r15)
    2975:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2979:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2980:	65 72 00 
    2983:	49 89 47 30          	mov    %rax,0x30(%r15)
    2987:	44 89 f7             	mov    %r14d,%edi
    298a:	e8 41 e7 ff ff       	call   10d0 <close@plt>
    298f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2994:	e9 64 ff ff ff       	jmp    28fd <submitr+0x53c>
    2999:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    29a0:	3a 20 52 
    29a3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    29aa:	20 73 74 
    29ad:	49 89 07             	mov    %rax,(%r15)
    29b0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    29b4:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    29bb:	63 6f 6e 
    29be:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    29c5:	20 61 6e 
    29c8:	49 89 47 10          	mov    %rax,0x10(%r15)
    29cc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    29d0:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    29d7:	67 61 6c 
    29da:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    29e1:	6e 70 72 
    29e4:	49 89 47 20          	mov    %rax,0x20(%r15)
    29e8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    29ec:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    29f3:	6c 65 20 
    29f6:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    29fd:	63 74 65 
    2a00:	49 89 47 30          	mov    %rax,0x30(%r15)
    2a04:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2a08:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2a0f:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2a14:	44 89 f7             	mov    %r14d,%edi
    2a17:	e8 b4 e6 ff ff       	call   10d0 <close@plt>
    2a1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a21:	e9 d7 fe ff ff       	jmp    28fd <submitr+0x53c>
    2a26:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2a2d:	00 
    2a2e:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    2a35:	00 
    2a36:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    2a3b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    2a40:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    2a45:	48 8d 35 44 0c 00 00 	lea    0xc44(%rip),%rsi        # 3690 <array.0+0x450>
    2a4c:	48 89 df             	mov    %rbx,%rdi
    2a4f:	b8 00 00 00 00       	mov    $0x0,%eax
    2a54:	e8 27 e7 ff ff       	call   1180 <sprintf@plt>
    2a59:	48 89 df             	mov    %rbx,%rdi
    2a5c:	e8 2f e6 ff ff       	call   1090 <strlen@plt>
    2a61:	48 89 c2             	mov    %rax,%rdx
    2a64:	48 89 de             	mov    %rbx,%rsi
    2a67:	44 89 f7             	mov    %r14d,%edi
    2a6a:	e8 26 f8 ff ff       	call   2295 <rio_writen>
    2a6f:	48 85 c0             	test   %rax,%rax
    2a72:	0f 88 e4 fc ff ff    	js     275c <submitr+0x39b>
    2a78:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2a7f:	00 
    2a80:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    2a85:	48 8d 35 8a 0c 00 00 	lea    0xc8a(%rip),%rsi        # 3716 <array.0+0x4d6>
    2a8c:	48 89 df             	mov    %rbx,%rdi
    2a8f:	b8 00 00 00 00       	mov    $0x0,%eax
    2a94:	e8 e7 e6 ff ff       	call   1180 <sprintf@plt>
    2a99:	48 89 df             	mov    %rbx,%rdi
    2a9c:	e8 ef e5 ff ff       	call   1090 <strlen@plt>
    2aa1:	48 89 c2             	mov    %rax,%rdx
    2aa4:	48 89 de             	mov    %rbx,%rsi
    2aa7:	44 89 f7             	mov    %r14d,%edi
    2aaa:	e8 e6 f7 ff ff       	call   2295 <rio_writen>
    2aaf:	48 85 c0             	test   %rax,%rax
    2ab2:	0f 88 03 fd ff ff    	js     27bb <submitr+0x3fa>
    2ab8:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    2abd:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2ac4:	00 
    2ac5:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2aca:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    2acf:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2ad4:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2adb:	00 
    2adc:	ba 00 20 00 00       	mov    $0x2000,%edx
    2ae1:	e8 0f f8 ff ff       	call   22f5 <rio_readlineb>
    2ae6:	48 85 c0             	test   %rax,%rax
    2ae9:	0f 8e 2b fd ff ff    	jle    281a <submitr+0x459>
    2aef:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2af4:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2afb:	00 
    2afc:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2b03:	00 
    2b04:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2b0b:	00 
    2b0c:	48 8d 35 10 0c 00 00 	lea    0xc10(%rip),%rsi        # 3723 <array.0+0x4e3>
    2b13:	b8 00 00 00 00       	mov    $0x0,%eax
    2b18:	e8 33 e6 ff ff       	call   1150 <__isoc99_sscanf@plt>
    2b1d:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    2b21:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2b27:	0f 85 5e fd ff ff    	jne    288b <submitr+0x4ca>
    2b2d:	48 8d 1d ec 0b 00 00 	lea    0xbec(%rip),%rbx        # 3720 <array.0+0x4e0>
    2b34:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2b3b:	00 
    2b3c:	48 89 de             	mov    %rbx,%rsi
    2b3f:	e8 bc e5 ff ff       	call   1100 <strcmp@plt>
    2b44:	85 c0                	test   %eax,%eax
    2b46:	0f 84 6a fd ff ff    	je     28b6 <submitr+0x4f5>
    2b4c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2b53:	00 
    2b54:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2b59:	ba 00 20 00 00       	mov    $0x2000,%edx
    2b5e:	e8 92 f7 ff ff       	call   22f5 <rio_readlineb>
    2b63:	48 85 c0             	test   %rax,%rax
    2b66:	7f cc                	jg     2b34 <submitr+0x773>
    2b68:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b6f:	3a 20 43 
    2b72:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b79:	20 75 6e 
    2b7c:	49 89 07             	mov    %rax,(%r15)
    2b7f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2b83:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b8a:	74 6f 20 
    2b8d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2b94:	68 65 61 
    2b97:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b9b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b9f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2ba6:	66 72 6f 
    2ba9:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2bb0:	76 65 72 
    2bb3:	49 89 47 20          	mov    %rax,0x20(%r15)
    2bb7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2bbb:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2bc0:	44 89 f7             	mov    %r14d,%edi
    2bc3:	e8 08 e5 ff ff       	call   10d0 <close@plt>
    2bc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bcd:	e9 2b fd ff ff       	jmp    28fd <submitr+0x53c>
    2bd2:	e8 c9 e4 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000002bd7 <init_timeout>:
    2bd7:	85 ff                	test   %edi,%edi
    2bd9:	75 01                	jne    2bdc <init_timeout+0x5>
    2bdb:	c3                   	ret
    2bdc:	53                   	push   %rbx
    2bdd:	89 fb                	mov    %edi,%ebx
    2bdf:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 226a <sigalrm_handler>
    2be6:	bf 0e 00 00 00       	mov    $0xe,%edi
    2beb:	e8 20 e5 ff ff       	call   1110 <signal@plt>
    2bf0:	85 db                	test   %ebx,%ebx
    2bf2:	b8 00 00 00 00       	mov    $0x0,%eax
    2bf7:	0f 49 c3             	cmovns %ebx,%eax
    2bfa:	89 c7                	mov    %eax,%edi
    2bfc:	e8 bf e4 ff ff       	call   10c0 <alarm@plt>
    2c01:	5b                   	pop    %rbx
    2c02:	c3                   	ret

0000000000002c03 <init_driver>:
    2c03:	41 54                	push   %r12
    2c05:	55                   	push   %rbp
    2c06:	53                   	push   %rbx
    2c07:	48 83 ec 20          	sub    $0x20,%rsp
    2c0b:	48 89 fd             	mov    %rdi,%rbp
    2c0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c15:	00 00 
    2c17:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2c1c:	31 c0                	xor    %eax,%eax
    2c1e:	be 01 00 00 00       	mov    $0x1,%esi
    2c23:	bf 0d 00 00 00       	mov    $0xd,%edi
    2c28:	e8 e3 e4 ff ff       	call   1110 <signal@plt>
    2c2d:	be 01 00 00 00       	mov    $0x1,%esi
    2c32:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2c37:	e8 d4 e4 ff ff       	call   1110 <signal@plt>
    2c3c:	be 01 00 00 00       	mov    $0x1,%esi
    2c41:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2c46:	e8 c5 e4 ff ff       	call   1110 <signal@plt>
    2c4b:	ba 00 00 00 00       	mov    $0x0,%edx
    2c50:	be 01 00 00 00       	mov    $0x1,%esi
    2c55:	bf 02 00 00 00       	mov    $0x2,%edi
    2c5a:	e8 71 e5 ff ff       	call   11d0 <socket@plt>
    2c5f:	85 c0                	test   %eax,%eax
    2c61:	0f 88 97 00 00 00    	js     2cfe <init_driver+0xfb>
    2c67:	89 c3                	mov    %eax,%ebx
    2c69:	48 8d 3d c7 0a 00 00 	lea    0xac7(%rip),%rdi        # 3737 <array.0+0x4f7>
    2c70:	e8 ab e4 ff ff       	call   1120 <gethostbyname@plt>
    2c75:	48 85 c0             	test   %rax,%rax
    2c78:	0f 84 cc 00 00 00    	je     2d4a <init_driver+0x147>
    2c7e:	49 89 e4             	mov    %rsp,%r12
    2c81:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2c88:	00 
    2c89:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2c90:	00 00 
    2c92:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2c98:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2c9c:	48 8b 40 18          	mov    0x18(%rax),%rax
    2ca0:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2ca5:	48 8b 30             	mov    (%rax),%rsi
    2ca8:	e8 b3 e4 ff ff       	call   1160 <memmove@plt>
    2cad:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2cb4:	ba 10 00 00 00       	mov    $0x10,%edx
    2cb9:	4c 89 e6             	mov    %r12,%rsi
    2cbc:	89 df                	mov    %ebx,%edi
    2cbe:	e8 dd e4 ff ff       	call   11a0 <connect@plt>
    2cc3:	85 c0                	test   %eax,%eax
    2cc5:	0f 88 e7 00 00 00    	js     2db2 <init_driver+0x1af>
    2ccb:	89 df                	mov    %ebx,%edi
    2ccd:	e8 fe e3 ff ff       	call   10d0 <close@plt>
    2cd2:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2cd8:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2cdc:	b8 00 00 00 00       	mov    $0x0,%eax
    2ce1:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2ce6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2ced:	00 00 
    2cef:	0f 85 ee 00 00 00    	jne    2de3 <init_driver+0x1e0>
    2cf5:	48 83 c4 20          	add    $0x20,%rsp
    2cf9:	5b                   	pop    %rbx
    2cfa:	5d                   	pop    %rbp
    2cfb:	41 5c                	pop    %r12
    2cfd:	c3                   	ret
    2cfe:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d05:	3a 20 43 
    2d08:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d0f:	20 75 6e 
    2d12:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d16:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d1a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d21:	74 6f 20 
    2d24:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2d2b:	65 20 73 
    2d2e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d32:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d36:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2d3d:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2d43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d48:	eb 97                	jmp    2ce1 <init_driver+0xde>
    2d4a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2d51:	3a 20 44 
    2d54:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2d5b:	20 75 6e 
    2d5e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d62:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d66:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d6d:	74 6f 20 
    2d70:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2d77:	76 65 20 
    2d7a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d7e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d82:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2d89:	72 20 61 
    2d8c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d90:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2d97:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2d9d:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2da1:	89 df                	mov    %ebx,%edi
    2da3:	e8 28 e3 ff ff       	call   10d0 <close@plt>
    2da8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dad:	e9 2f ff ff ff       	jmp    2ce1 <init_driver+0xde>
    2db2:	b9 50 00 00 00       	mov    $0x50,%ecx
    2db7:	48 8d 15 79 09 00 00 	lea    0x979(%rip),%rdx        # 3737 <array.0+0x4f7>
    2dbe:	48 8d 35 1b 09 00 00 	lea    0x91b(%rip),%rsi        # 36e0 <array.0+0x4a0>
    2dc5:	48 89 ef             	mov    %rbp,%rdi
    2dc8:	b8 00 00 00 00       	mov    $0x0,%eax
    2dcd:	e8 ae e3 ff ff       	call   1180 <sprintf@plt>
    2dd2:	89 df                	mov    %ebx,%edi
    2dd4:	e8 f7 e2 ff ff       	call   10d0 <close@plt>
    2dd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dde:	e9 fe fe ff ff       	jmp    2ce1 <init_driver+0xde>
    2de3:	e8 b8 e2 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000002de8 <driver_post>:
    2de8:	53                   	push   %rbx
    2de9:	4c 89 c3             	mov    %r8,%rbx
    2dec:	85 c9                	test   %ecx,%ecx
    2dee:	75 17                	jne    2e07 <driver_post+0x1f>
    2df0:	48 85 ff             	test   %rdi,%rdi
    2df3:	74 05                	je     2dfa <driver_post+0x12>
    2df5:	80 3f 00             	cmpb   $0x0,(%rdi)
    2df8:	75 31                	jne    2e2b <driver_post+0x43>
    2dfa:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2dff:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2e03:	89 c8                	mov    %ecx,%eax
    2e05:	5b                   	pop    %rbx
    2e06:	c3                   	ret
    2e07:	48 89 d6             	mov    %rdx,%rsi
    2e0a:	48 8d 3d 31 09 00 00 	lea    0x931(%rip),%rdi        # 3742 <array.0+0x502>
    2e11:	b8 00 00 00 00       	mov    $0x0,%eax
    2e16:	e8 95 e2 ff ff       	call   10b0 <printf@plt>
    2e1b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2e20:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2e24:	b8 00 00 00 00       	mov    $0x0,%eax
    2e29:	eb da                	jmp    2e05 <driver_post+0x1d>
    2e2b:	41 50                	push   %r8
    2e2d:	52                   	push   %rdx
    2e2e:	4c 8d 0d 24 09 00 00 	lea    0x924(%rip),%r9        # 3759 <array.0+0x519>
    2e35:	49 89 f0             	mov    %rsi,%r8
    2e38:	48 89 f9             	mov    %rdi,%rcx
    2e3b:	48 8d 15 1f 09 00 00 	lea    0x91f(%rip),%rdx        # 3761 <array.0+0x521>
    2e42:	be 50 00 00 00       	mov    $0x50,%esi
    2e47:	48 8d 3d e9 08 00 00 	lea    0x8e9(%rip),%rdi        # 3737 <array.0+0x4f7>
    2e4e:	e8 6e f5 ff ff       	call   23c1 <submitr>
    2e53:	48 83 c4 10          	add    $0x10,%rsp
    2e57:	eb ac                	jmp    2e05 <driver_post+0x1d>
    2e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002e60 <__libc_csu_init>:
    2e60:	f3 0f 1e fa          	endbr64
    2e64:	41 57                	push   %r15
    2e66:	4c 8d 3d 7b 2f 00 00 	lea    0x2f7b(%rip),%r15        # 5de8 <__frame_dummy_init_array_entry>
    2e6d:	41 56                	push   %r14
    2e6f:	49 89 d6             	mov    %rdx,%r14
    2e72:	41 55                	push   %r13
    2e74:	49 89 f5             	mov    %rsi,%r13
    2e77:	41 54                	push   %r12
    2e79:	41 89 fc             	mov    %edi,%r12d
    2e7c:	55                   	push   %rbp
    2e7d:	48 8d 2d 6c 2f 00 00 	lea    0x2f6c(%rip),%rbp        # 5df0 <__do_global_dtors_aux_fini_array_entry>
    2e84:	53                   	push   %rbx
    2e85:	4c 29 fd             	sub    %r15,%rbp
    2e88:	48 83 ec 08          	sub    $0x8,%rsp
    2e8c:	e8 6f e1 ff ff       	call   1000 <_init>
    2e91:	48 c1 fd 03          	sar    $0x3,%rbp
    2e95:	74 1f                	je     2eb6 <__libc_csu_init+0x56>
    2e97:	31 db                	xor    %ebx,%ebx
    2e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ea0:	4c 89 f2             	mov    %r14,%rdx
    2ea3:	4c 89 ee             	mov    %r13,%rsi
    2ea6:	44 89 e7             	mov    %r12d,%edi
    2ea9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    2ead:	48 83 c3 01          	add    $0x1,%rbx
    2eb1:	48 39 dd             	cmp    %rbx,%rbp
    2eb4:	75 ea                	jne    2ea0 <__libc_csu_init+0x40>
    2eb6:	48 83 c4 08          	add    $0x8,%rsp
    2eba:	5b                   	pop    %rbx
    2ebb:	5d                   	pop    %rbp
    2ebc:	41 5c                	pop    %r12
    2ebe:	41 5d                	pop    %r13
    2ec0:	41 5e                	pop    %r14
    2ec2:	41 5f                	pop    %r15
    2ec4:	c3                   	ret
    2ec5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2ecc:	00 00 00 00 

0000000000002ed0 <__libc_csu_fini>:
    2ed0:	f3 0f 1e fa          	endbr64
    2ed4:	c3                   	ret

Disassembly of section .fini:

0000000000002ed8 <_fini>:
    2ed8:	f3 0f 1e fa          	endbr64
    2edc:	48 83 ec 08          	sub    $0x8,%rsp
    2ee0:	48 83 c4 08          	add    $0x8,%rsp
    2ee4:	c3                   	ret
