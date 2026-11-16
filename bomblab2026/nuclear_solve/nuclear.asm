
nuclear:     file format elf64-x86-64


Disassembly of section .init:

0000000000400ea8 <_init>:
  400ea8:	f3 0f 1e fa          	endbr64
  400eac:	48 83 ec 08          	sub    $0x8,%rsp
  400eb0:	48 8b 05 69 1d 00 00 	mov    0x1d69(%rip),%rax        # 402c20 <__gmon_start__>
  400eb7:	48 85 c0             	test   %rax,%rax
  400eba:	74 02                	je     400ebe <_init+0x16>
  400ebc:	ff d0                	call   *%rax
  400ebe:	48 83 c4 08          	add    $0x8,%rsp
  400ec2:	c3                   	ret

Disassembly of section .plt:

0000000000400ed0 <.plt>:
  400ed0:	ff 35 7a 1d 00 00    	push   0x1d7a(%rip)        # 402c50 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ed6:	ff 25 7c 1d 00 00    	jmp    *0x1d7c(%rip)        # 402c58 <_GLOBAL_OFFSET_TABLE_+0x10>
  400edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ee0 <close@plt>:
  400ee0:	ff 25 7a 1d 00 00    	jmp    *0x1d7a(%rip)        # 402c60 <close@GLIBC_2.2.5>
  400ee6:	68 00 00 00 00       	push   $0x0
  400eeb:	e9 e0 ff ff ff       	jmp    400ed0 <.plt>

0000000000400ef0 <__longjmp_chk@plt>:
  400ef0:	ff 25 72 1d 00 00    	jmp    *0x1d72(%rip)        # 402c68 <__longjmp_chk@GLIBC_2.11>
  400ef6:	68 01 00 00 00       	push   $0x1
  400efb:	e9 d0 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f00 <__fprintf_chk@plt>:
  400f00:	ff 25 6a 1d 00 00    	jmp    *0x1d6a(%rip)        # 402c70 <__fprintf_chk@GLIBC_2.3.4>
  400f06:	68 02 00 00 00       	push   $0x2
  400f0b:	e9 c0 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f10 <gethostbyname@plt>:
  400f10:	ff 25 62 1d 00 00    	jmp    *0x1d62(%rip)        # 402c78 <gethostbyname@GLIBC_2.2.5>
  400f16:	68 03 00 00 00       	push   $0x3
  400f1b:	e9 b0 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f20 <puts@plt>:
  400f20:	ff 25 5a 1d 00 00    	jmp    *0x1d5a(%rip)        # 402c80 <puts@GLIBC_2.2.5>
  400f26:	68 04 00 00 00       	push   $0x4
  400f2b:	e9 a0 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f30 <__isoc99_sscanf@plt>:
  400f30:	ff 25 52 1d 00 00    	jmp    *0x1d52(%rip)        # 402c88 <__isoc99_sscanf@GLIBC_2.7>
  400f36:	68 05 00 00 00       	push   $0x5
  400f3b:	e9 90 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f40 <exit@plt>:
  400f40:	ff 25 4a 1d 00 00    	jmp    *0x1d4a(%rip)        # 402c90 <exit@GLIBC_2.2.5>
  400f46:	68 06 00 00 00       	push   $0x6
  400f4b:	e9 80 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f50 <EVP_EncodeBlock@plt>:
  400f50:	ff 25 42 1d 00 00    	jmp    *0x1d42(%rip)        # 402c98 <EVP_EncodeBlock@OPENSSL_1_1_0>
  400f56:	68 07 00 00 00       	push   $0x7
  400f5b:	e9 70 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f60 <__printf_chk@plt>:
  400f60:	ff 25 3a 1d 00 00    	jmp    *0x1d3a(%rip)        # 402ca0 <__printf_chk@GLIBC_2.3.4>
  400f66:	68 08 00 00 00       	push   $0x8
  400f6b:	e9 60 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f70 <strcasecmp@plt>:
  400f70:	ff 25 32 1d 00 00    	jmp    *0x1d32(%rip)        # 402ca8 <strcasecmp@GLIBC_2.2.5>
  400f76:	68 09 00 00 00       	push   $0x9
  400f7b:	e9 50 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f80 <read@plt>:
  400f80:	ff 25 2a 1d 00 00    	jmp    *0x1d2a(%rip)        # 402cb0 <read@GLIBC_2.2.5>
  400f86:	68 0a 00 00 00       	push   $0xa
  400f8b:	e9 40 ff ff ff       	jmp    400ed0 <.plt>

0000000000400f90 <malloc@plt>:
  400f90:	ff 25 22 1d 00 00    	jmp    *0x1d22(%rip)        # 402cb8 <malloc@GLIBC_2.2.5>
  400f96:	68 0b 00 00 00       	push   $0xb
  400f9b:	e9 30 ff ff ff       	jmp    400ed0 <.plt>

0000000000400fa0 <__readlink_chk@plt>:
  400fa0:	ff 25 1a 1d 00 00    	jmp    *0x1d1a(%rip)        # 402cc0 <__readlink_chk@GLIBC_2.4>
  400fa6:	68 0c 00 00 00       	push   $0xc
  400fab:	e9 20 ff ff ff       	jmp    400ed0 <.plt>

0000000000400fb0 <fgets@plt>:
  400fb0:	ff 25 12 1d 00 00    	jmp    *0x1d12(%rip)        # 402cc8 <fgets@GLIBC_2.2.5>
  400fb6:	68 0d 00 00 00       	push   $0xd
  400fbb:	e9 10 ff ff ff       	jmp    400ed0 <.plt>

0000000000400fc0 <iconv_open@plt>:
  400fc0:	ff 25 0a 1d 00 00    	jmp    *0x1d0a(%rip)        # 402cd0 <iconv_open@GLIBC_2.2.5>
  400fc6:	68 0e 00 00 00       	push   $0xe
  400fcb:	e9 00 ff ff ff       	jmp    400ed0 <.plt>

0000000000400fd0 <__gethostname_chk@plt>:
  400fd0:	ff 25 02 1d 00 00    	jmp    *0x1d02(%rip)        # 402cd8 <__gethostname_chk@GLIBC_2.4>
  400fd6:	68 0f 00 00 00       	push   $0xf
  400fdb:	e9 f0 fe ff ff       	jmp    400ed0 <.plt>

0000000000400fe0 <strlen@plt>:
  400fe0:	ff 25 fa 1c 00 00    	jmp    *0x1cfa(%rip)        # 402ce0 <strlen@GLIBC_2.2.5>
  400fe6:	68 10 00 00 00       	push   $0x10
  400feb:	e9 e0 fe ff ff       	jmp    400ed0 <.plt>

0000000000400ff0 <MD5@plt>:
  400ff0:	ff 25 f2 1c 00 00    	jmp    *0x1cf2(%rip)        # 402ce8 <MD5@OPENSSL_1_1_0>
  400ff6:	68 11 00 00 00       	push   $0x11
  400ffb:	e9 d0 fe ff ff       	jmp    400ed0 <.plt>

0000000000401000 <__xpg_basename@plt>:
  401000:	ff 25 ea 1c 00 00    	jmp    *0x1cea(%rip)        # 402cf0 <__xpg_basename@GLIBC_2.2.5>
  401006:	68 12 00 00 00       	push   $0x12
  40100b:	e9 c0 fe ff ff       	jmp    400ed0 <.plt>

0000000000401010 <__read_chk@plt>:
  401010:	ff 25 e2 1c 00 00    	jmp    *0x1ce2(%rip)        # 402cf8 <__read_chk@GLIBC_2.4>
  401016:	68 13 00 00 00       	push   $0x13
  40101b:	e9 b0 fe ff ff       	jmp    400ed0 <.plt>

0000000000401020 <iconv@plt>:
  401020:	ff 25 da 1c 00 00    	jmp    *0x1cda(%rip)        # 402d00 <iconv@GLIBC_2.2.5>
  401026:	68 14 00 00 00       	push   $0x14
  40102b:	e9 a0 fe ff ff       	jmp    400ed0 <.plt>

0000000000401030 <readlink@plt>:
  401030:	ff 25 d2 1c 00 00    	jmp    *0x1cd2(%rip)        # 402d08 <readlink@GLIBC_2.2.5>
  401036:	68 15 00 00 00       	push   $0x15
  40103b:	e9 90 fe ff ff       	jmp    400ed0 <.plt>

0000000000401040 <connect@plt>:
  401040:	ff 25 ca 1c 00 00    	jmp    *0x1cca(%rip)        # 402d10 <connect@GLIBC_2.2.5>
  401046:	68 16 00 00 00       	push   $0x16
  40104b:	e9 80 fe ff ff       	jmp    400ed0 <.plt>

0000000000401050 <gethostname@plt>:
  401050:	ff 25 c2 1c 00 00    	jmp    *0x1cc2(%rip)        # 402d18 <gethostname@GLIBC_2.2.5>
  401056:	68 17 00 00 00       	push   $0x17
  40105b:	e9 70 fe ff ff       	jmp    400ed0 <.plt>

0000000000401060 <signal@plt>:
  401060:	ff 25 ba 1c 00 00    	jmp    *0x1cba(%rip)        # 402d20 <signal@GLIBC_2.2.5>
  401066:	68 18 00 00 00       	push   $0x18
  40106b:	e9 60 fe ff ff       	jmp    400ed0 <.plt>

0000000000401070 <socket@plt>:
  401070:	ff 25 b2 1c 00 00    	jmp    *0x1cb2(%rip)        # 402d28 <socket@GLIBC_2.2.5>
  401076:	68 19 00 00 00       	push   $0x19
  40107b:	e9 50 fe ff ff       	jmp    400ed0 <.plt>

0000000000401080 <alarm@plt>:
  401080:	ff 25 aa 1c 00 00    	jmp    *0x1caa(%rip)        # 402d30 <alarm@GLIBC_2.2.5>
  401086:	68 1a 00 00 00       	push   $0x1a
  40108b:	e9 40 fe ff ff       	jmp    400ed0 <.plt>

0000000000401090 <__stack_chk_fail@plt>:
  401090:	ff 25 a2 1c 00 00    	jmp    *0x1ca2(%rip)        # 402d38 <__stack_chk_fail@GLIBC_2.4>
  401096:	68 1b 00 00 00       	push   $0x1b
  40109b:	e9 30 fe ff ff       	jmp    400ed0 <.plt>

00000000004010a0 <__memset_chk@plt>:
  4010a0:	ff 25 9a 1c 00 00    	jmp    *0x1c9a(%rip)        # 402d40 <__memset_chk@GLIBC_2.3.4>
  4010a6:	68 1c 00 00 00       	push   $0x1c
  4010ab:	e9 20 fe ff ff       	jmp    400ed0 <.plt>

00000000004010b0 <memcmp@plt>:
  4010b0:	ff 25 92 1c 00 00    	jmp    *0x1c92(%rip)        # 402d48 <memcmp@GLIBC_2.2.5>
  4010b6:	68 1d 00 00 00       	push   $0x1d
  4010bb:	e9 10 fe ff ff       	jmp    400ed0 <.plt>

00000000004010c0 <strncpy@plt>:
  4010c0:	ff 25 8a 1c 00 00    	jmp    *0x1c8a(%rip)        # 402d50 <strncpy@GLIBC_2.2.5>
  4010c6:	68 1e 00 00 00       	push   $0x1e
  4010cb:	e9 00 fe ff ff       	jmp    400ed0 <.plt>

00000000004010d0 <__sprintf_chk@plt>:
  4010d0:	ff 25 82 1c 00 00    	jmp    *0x1c82(%rip)        # 402d58 <__sprintf_chk@GLIBC_2.3.4>
  4010d6:	68 1f 00 00 00       	push   $0x1f
  4010db:	e9 f0 fd ff ff       	jmp    400ed0 <.plt>

00000000004010e0 <getppid@plt>:
  4010e0:	ff 25 7a 1c 00 00    	jmp    *0x1c7a(%rip)        # 402d60 <getppid@GLIBC_2.2.5>
  4010e6:	68 20 00 00 00       	push   $0x20
  4010eb:	e9 e0 fd ff ff       	jmp    400ed0 <.plt>

00000000004010f0 <__sigsetjmp@plt>:
  4010f0:	ff 25 72 1c 00 00    	jmp    *0x1c72(%rip)        # 402d68 <__sigsetjmp@GLIBC_2.2.5>
  4010f6:	68 21 00 00 00       	push   $0x21
  4010fb:	e9 d0 fd ff ff       	jmp    400ed0 <.plt>

0000000000401100 <__memmove_chk@plt>:
  401100:	ff 25 6a 1c 00 00    	jmp    *0x1c6a(%rip)        # 402d70 <__memmove_chk@GLIBC_2.3.4>
  401106:	68 22 00 00 00       	push   $0x22
  40110b:	e9 c0 fd ff ff       	jmp    400ed0 <.plt>

0000000000401110 <write@plt>:
  401110:	ff 25 62 1c 00 00    	jmp    *0x1c62(%rip)        # 402d78 <write@GLIBC_2.2.5>
  401116:	68 23 00 00 00       	push   $0x23
  40111b:	e9 b0 fd ff ff       	jmp    400ed0 <.plt>

Disassembly of section .plt.got:

0000000000401120 <__cxa_finalize@plt>:
  401120:	ff 25 1a 1b 00 00    	jmp    *0x1b1a(%rip)        # 402c40 <__cxa_finalize@GLIBC_2.2.5>
  401126:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000401130 <hothothot.cold>:
  401130:	48 89 e0             	mov    %rsp,%rax
  401133:	ff e0                	jmp    *%rax
  401135:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40113c:	00 00 00 
  40113f:	90                   	nop

0000000000401140 <_entry>:
  401140:	f3 0f 1e fa          	endbr64
  401144:	41 54                	push   %r12
  401146:	4c 8d 25 f3 24 00 00 	lea    0x24f3(%rip),%r12        # 403640 <bomb_explode>
  40114d:	bf 0b 00 00 00       	mov    $0xb,%edi
  401152:	4c 89 e6             	mov    %r12,%rsi
  401155:	e8 06 ff ff ff       	call   401060 <signal@plt>
  40115a:	4c 89 e6             	mov    %r12,%rsi
  40115d:	bf 08 00 00 00       	mov    $0x8,%edi
  401162:	e8 f9 fe ff ff       	call   401060 <signal@plt>
  401167:	4c 89 e6             	mov    %r12,%rsi
  40116a:	bf 04 00 00 00       	mov    $0x4,%edi
  40116f:	e8 ec fe ff ff       	call   401060 <signal@plt>
  401174:	48 89 e8             	mov    %rbp,%rax
  401177:	48 31 ed             	xor    %rbp,%rbp
  40117a:	48 89 05 f7 33 00 00 	mov    %rax,0x33f7(%rip)        # 404578 <inputListBegin+0x8>
  401181:	48 8d 05 58 00 00 00 	lea    0x58(%rip),%rax        # 4011e0 <main>
  401188:	c6 00 f3             	movb   $0xf3,(%rax)
  40118b:	48 8b 05 e6 33 00 00 	mov    0x33e6(%rip),%rax        # 404578 <inputListBegin+0x8>
  401192:	48 89 c5             	mov    %rax,%rbp
  401195:	41 5c                	pop    %r12
  401197:	c3                   	ret
  401198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40119f:	00 

00000000004011a0 <_entry_hothothot>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	48 83 ec 08          	sub    $0x8,%rsp
  4011a8:	48 8d 35 11 05 00 00 	lea    0x511(%rip),%rsi        # 4016c0 <$handler>
  4011af:	bf 05 00 00 00       	mov    $0x5,%edi
  4011b4:	e8 a7 fe ff ff       	call   401060 <signal@plt>
  4011b9:	be 01 00 00 00       	mov    $0x1,%esi
  4011be:	48 8d 3d db 32 00 00 	lea    0x32db(%rip),%rdi        # 4044a0 <buf>
  4011c5:	e8 26 ff ff ff       	call   4010f0 <__sigsetjmp@plt>
  4011ca:	f3 0f 1e fa          	endbr64
  4011ce:	85 c0                	test   %eax,%eax
  4011d0:	75 05                	jne    4011d7 <_entry_hothothot+0x37>
  4011d2:	48 83 c4 08          	add    $0x8,%rsp
  4011d6:	c3                   	ret
  4011d7:	31 c0                	xor    %eax,%eax
  4011d9:	e8 62 24 00 00       	call   403640 <bomb_explode>
  4011de:	eb f2                	jmp    4011d2 <_entry_hothothot+0x32>

00000000004011e0 <main>:
  4011e0:	f3 0f 1e fa          	endbr64
  4011e4:	53                   	push   %rbx
  4011e5:	48 89 f3             	mov    %rsi,%rbx
  4011e8:	83 ff 03             	cmp    $0x3,%edi
  4011eb:	0f 85 6d 01 00 00    	jne    40135e <main+0x17e>
  4011f1:	48 8b 76 08          	mov    0x8(%rsi),%rsi
  4011f5:	ba 80 00 00 00       	mov    $0x80,%edx
  4011fa:	48 8d 3d 7f 33 00 00 	lea    0x337f(%rip),%rdi        # 404580 <userid>
  401201:	e8 ba fe ff ff       	call   4010c0 <strncpy@plt>
  401206:	c6 05 f2 33 00 00 00 	movb   $0x0,0x33f2(%rip)        # 4045ff <userid+0x7f>
  40120d:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  401211:	ba 80 00 00 00       	mov    $0x80,%edx
  401216:	48 8d 3d e3 33 00 00 	lea    0x33e3(%rip),%rdi        # 404600 <userpwd>
  40121d:	e8 9e fe ff ff       	call   4010c0 <strncpy@plt>
  401222:	31 c0                	xor    %eax,%eax
  401224:	c6 05 54 34 00 00 00 	movb   $0x0,0x3454(%rip)        # 40467f <userpwd+0x7f>
  40122b:	e8 a0 23 00 00       	call   4035d0 <bomb_initialize>
  401230:	48 8d 15 ab 11 00 00 	lea    0x11ab(%rip),%rdx        # 4023e2 <serverhost+0x102>
  401237:	48 8d 35 aa 11 00 00 	lea    0x11aa(%rip),%rsi        # 4023e8 <serverhost+0x108>
  40123e:	31 c0                	xor    %eax,%eax
  401240:	bf 01 00 00 00       	mov    $0x1,%edi
  401245:	e8 16 fd ff ff       	call   400f60 <__printf_chk@plt>
  40124a:	bf 80 00 00 00       	mov    $0x80,%edi
  40124f:	e8 5c 0b 00 00       	call   401db0 <readNextLine>
  401254:	e8 d7 05 00 00       	call   401830 <pupil>
  401259:	31 c0                	xor    %eax,%eax
  40125b:	e8 30 21 00 00       	call   403390 <bomb_defused>
  401260:	48 8d 15 86 11 00 00 	lea    0x1186(%rip),%rdx        # 4023ed <serverhost+0x10d>
  401267:	48 8d 35 7a 11 00 00 	lea    0x117a(%rip),%rsi        # 4023e8 <serverhost+0x108>
  40126e:	31 c0                	xor    %eax,%eax
  401270:	bf 01 00 00 00       	mov    $0x1,%edi
  401275:	e8 e6 fc ff ff       	call   400f60 <__printf_chk@plt>
  40127a:	bf 80 00 00 00       	mov    $0x80,%edi
  40127f:	e8 2c 0b 00 00       	call   401db0 <readNextLine>
  401284:	31 c0                	xor    %eax,%eax
  401286:	e8 15 06 00 00       	call   4018a0 <tr1vial>
  40128b:	31 c0                	xor    %eax,%eax
  40128d:	e8 fe 20 00 00       	call   403390 <bomb_defused>
  401292:	48 8d 15 5c 11 00 00 	lea    0x115c(%rip),%rdx        # 4023f5 <serverhost+0x115>
  401299:	48 8d 35 48 11 00 00 	lea    0x1148(%rip),%rsi        # 4023e8 <serverhost+0x108>
  4012a0:	31 c0                	xor    %eax,%eax
  4012a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4012a7:	e8 b4 fc ff ff       	call   400f60 <__printf_chk@plt>
  4012ac:	bf 80 00 00 00       	mov    $0x80,%edi
  4012b1:	e8 fa 0a 00 00       	call   401db0 <readNextLine>
  4012b6:	31 c0                	xor    %eax,%eax
  4012b8:	e8 c3 06 00 00       	call   401980 <rainb0w>
  4012bd:	31 c0                	xor    %eax,%eax
  4012bf:	e8 cc 20 00 00       	call   403390 <bomb_defused>
  4012c4:	48 8d 15 32 11 00 00 	lea    0x1132(%rip),%rdx        # 4023fd <serverhost+0x11d>
  4012cb:	48 8d 35 16 11 00 00 	lea    0x1116(%rip),%rsi        # 4023e8 <serverhost+0x108>
  4012d2:	31 c0                	xor    %eax,%eax
  4012d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4012d9:	e8 82 fc ff ff       	call   400f60 <__printf_chk@plt>
  4012de:	bf 80 00 00 00       	mov    $0x80,%edi
  4012e3:	e8 c8 0a 00 00       	call   401db0 <readNextLine>
  4012e8:	31 c0                	xor    %eax,%eax
  4012ea:	e8 a1 07 00 00       	call   401a90 <q_math>
  4012ef:	31 c0                	xor    %eax,%eax
  4012f1:	e8 9a 20 00 00       	call   403390 <bomb_defused>
  4012f6:	48 8d 15 07 11 00 00 	lea    0x1107(%rip),%rdx        # 402404 <serverhost+0x124>
  4012fd:	48 8d 35 e4 10 00 00 	lea    0x10e4(%rip),%rsi        # 4023e8 <serverhost+0x108>
  401304:	31 c0                	xor    %eax,%eax
  401306:	bf 01 00 00 00       	mov    $0x1,%edi
  40130b:	e8 50 fc ff ff       	call   400f60 <__printf_chk@plt>
  401310:	bf 80 00 00 00       	mov    $0x80,%edi
  401315:	e8 96 0a 00 00       	call   401db0 <readNextLine>
  40131a:	31 c0                	xor    %eax,%eax
  40131c:	e8 6f 09 00 00       	call   401c90 <hothothot>
  401321:	31 c0                	xor    %eax,%eax
  401323:	e8 68 20 00 00       	call   403390 <bomb_defused>
  401328:	48 8d 15 df 10 00 00 	lea    0x10df(%rip),%rdx        # 40240e <serverhost+0x12e>
  40132f:	48 8d 35 b2 10 00 00 	lea    0x10b2(%rip),%rsi        # 4023e8 <serverhost+0x108>
  401336:	31 c0                	xor    %eax,%eax
  401338:	bf 01 00 00 00       	mov    $0x1,%edi
  40133d:	e8 1e fc ff ff       	call   400f60 <__printf_chk@plt>
  401342:	bf 80 00 00 00       	mov    $0x80,%edi
  401347:	e8 64 0a 00 00       	call   401db0 <readNextLine>
  40134c:	31 c0                	xor    %eax,%eax
  40134e:	e8 bd 09 00 00       	call   401d10 <tran$f0rm>
  401353:	31 c0                	xor    %eax,%eax
  401355:	e8 36 20 00 00       	call   403390 <bomb_defused>
  40135a:	31 c0                	xor    %eax,%eax
  40135c:	5b                   	pop    %rbx
  40135d:	c3                   	ret
  40135e:	48 8b 0e             	mov    (%rsi),%rcx
  401361:	48 8b 3d f8 2f 00 00 	mov    0x2ff8(%rip),%rdi        # 404360 <stderr@GLIBC_2.2.5>
  401368:	be 01 00 00 00       	mov    $0x1,%esi
  40136d:	31 c0                	xor    %eax,%eax
  40136f:	48 8d 15 4e 10 00 00 	lea    0x104e(%rip),%rdx        # 4023c4 <serverhost+0xe4>
  401376:	e8 85 fb ff ff       	call   400f00 <__fprintf_chk@plt>
  40137b:	bf 08 00 00 00       	mov    $0x8,%edi
  401380:	e8 bb fb ff ff       	call   400f40 <exit@plt>
  401385:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40138c:	00 00 00 
  40138f:	90                   	nop

0000000000401390 <_start>:
  401390:	f3 0f 1e fa          	endbr64
  401394:	31 ed                	xor    %ebp,%ebp
  401396:	49 89 d1             	mov    %rdx,%r9
  401399:	5e                   	pop    %rsi
  40139a:	48 89 e2             	mov    %rsp,%rdx
  40139d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4013a1:	50                   	push   %rax
  4013a2:	54                   	push   %rsp
  4013a3:	4c 8d 05 b6 0b 00 00 	lea    0xbb6(%rip),%r8        # 401f60 <__libc_csu_fini>
  4013aa:	48 8d 0d 3f 0b 00 00 	lea    0xb3f(%rip),%rcx        # 401ef0 <__libc_csu_init>
  4013b1:	48 8d 3d 28 fe ff ff 	lea    -0x1d8(%rip),%rdi        # 4011e0 <main>
  4013b8:	ff 15 6a 18 00 00    	call   *0x186a(%rip)        # 402c28 <__libc_start_main@GLIBC_2.2.5>
  4013be:	f4                   	hlt
  4013bf:	90                   	nop

00000000004013c0 <deregister_tm_clones>:
  4013c0:	48 8d 3d e9 1d 00 00 	lea    0x1de9(%rip),%rdi        # 4031b0 <check_host_connectivity>
  4013c7:	48 8d 05 e2 1d 00 00 	lea    0x1de2(%rip),%rax        # 4031b0 <check_host_connectivity>
  4013ce:	48 39 f8             	cmp    %rdi,%rax
  4013d1:	74 15                	je     4013e8 <deregister_tm_clones+0x28>
  4013d3:	48 8b 05 56 18 00 00 	mov    0x1856(%rip),%rax        # 402c30 <_ITM_deregisterTMCloneTable>
  4013da:	48 85 c0             	test   %rax,%rax
  4013dd:	74 09                	je     4013e8 <deregister_tm_clones+0x28>
  4013df:	ff e0                	jmp    *%rax
  4013e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4013e8:	c3                   	ret
  4013e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004013f0 <register_tm_clones>:
  4013f0:	48 8d 3d b9 1d 00 00 	lea    0x1db9(%rip),%rdi        # 4031b0 <check_host_connectivity>
  4013f7:	48 8d 35 b2 1d 00 00 	lea    0x1db2(%rip),%rsi        # 4031b0 <check_host_connectivity>
  4013fe:	48 29 fe             	sub    %rdi,%rsi
  401401:	48 89 f0             	mov    %rsi,%rax
  401404:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401408:	48 c1 f8 03          	sar    $0x3,%rax
  40140c:	48 01 c6             	add    %rax,%rsi
  40140f:	48 d1 fe             	sar    $1,%rsi
  401412:	74 14                	je     401428 <register_tm_clones+0x38>
  401414:	48 8b 05 1d 18 00 00 	mov    0x181d(%rip),%rax        # 402c38 <_ITM_registerTMCloneTable>
  40141b:	48 85 c0             	test   %rax,%rax
  40141e:	74 08                	je     401428 <register_tm_clones+0x38>
  401420:	ff e0                	jmp    *%rax
  401422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401428:	c3                   	ret
  401429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401430 <__do_global_dtors_aux>:
  401430:	f3 0f 1e fa          	endbr64
  401434:	80 3d 2d 2f 00 00 00 	cmpb   $0x0,0x2f2d(%rip)        # 404368 <completed.8060>
  40143b:	75 2b                	jne    401468 <__do_global_dtors_aux+0x38>
  40143d:	55                   	push   %rbp
  40143e:	48 83 3d fa 17 00 00 	cmpq   $0x0,0x17fa(%rip)        # 402c40 <__cxa_finalize@GLIBC_2.2.5>
  401445:	00 
  401446:	48 89 e5             	mov    %rsp,%rbp
  401449:	74 0c                	je     401457 <__do_global_dtors_aux+0x27>
  40144b:	48 8b 3d 36 19 00 00 	mov    0x1936(%rip),%rdi        # 402d88 <__dso_handle>
  401452:	e8 c9 fc ff ff       	call   401120 <__cxa_finalize@plt>
  401457:	e8 64 ff ff ff       	call   4013c0 <deregister_tm_clones>
  40145c:	c6 05 05 2f 00 00 01 	movb   $0x1,0x2f05(%rip)        # 404368 <completed.8060>
  401463:	5d                   	pop    %rbp
  401464:	c3                   	ret
  401465:	0f 1f 00             	nopl   (%rax)
  401468:	c3                   	ret
  401469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401470 <frame_dummy>:
  401470:	f3 0f 1e fa          	endbr64
  401474:	e9 77 ff ff ff       	jmp    4013f0 <register_tm_clones>
  401479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401480 <__bswap_16>:
  401480:	89 f8                	mov    %edi,%eax
  401482:	66 c1 c0 08          	rol    $0x8,%ax
  401486:	c3                   	ret
  401487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40148e:	00 00 

0000000000401490 <check_debugger>:
  401490:	f3 0f 1e fa          	endbr64
  401494:	55                   	push   %rbp
  401495:	48 89 e5             	mov    %rsp,%rbp
  401498:	48 81 ec 50 08 00 00 	sub    $0x850,%rsp
  40149f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014a6:	00 00 
  4014a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4014ac:	31 c0                	xor    %eax,%eax
  4014ae:	c7 85 b8 f7 ff ff 00 	movl   $0x0,-0x848(%rbp)
  4014b5:	00 00 00 
  4014b8:	e8 23 fc ff ff       	call   4010e0 <getppid@plt>
  4014bd:	89 85 bc f7 ff ff    	mov    %eax,-0x844(%rbp)
  4014c3:	48 8d 85 f0 f7 ff ff 	lea    -0x810(%rbp),%rax
  4014ca:	48 89 85 e0 f7 ff ff 	mov    %rax,-0x820(%rbp)
  4014d1:	48 8d 05 28 0d 00 00 	lea    0xd28(%rip),%rax        # 402200 <_IO_stdin_used+0x280>
  4014d8:	48 89 85 e8 f7 ff ff 	mov    %rax,-0x818(%rbp)
  4014df:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4014e6:	8b 8d bc f7 ff ff    	mov    -0x844(%rbp),%ecx
  4014ec:	48 8b 95 e8 f7 ff ff 	mov    -0x818(%rbp),%rdx
  4014f3:	48 8b 85 e0 f7 ff ff 	mov    -0x820(%rbp),%rax
  4014fa:	41 89 c8             	mov    %ecx,%r8d
  4014fd:	48 89 d1             	mov    %rdx,%rcx
  401500:	48 89 f2             	mov    %rsi,%rdx
  401503:	be 01 00 00 00       	mov    $0x1,%esi
  401508:	48 89 c7             	mov    %rax,%rdi
  40150b:	b8 00 00 00 00       	mov    $0x0,%eax
  401510:	e8 bb fb ff ff       	call   4010d0 <__sprintf_chk@plt>
  401515:	48 8d 85 f0 f7 ff ff 	lea    -0x810(%rbp),%rax
  40151c:	48 89 85 c8 f7 ff ff 	mov    %rax,-0x838(%rbp)
  401523:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  40152a:	48 89 85 d0 f7 ff ff 	mov    %rax,-0x830(%rbp)
  401531:	48 c7 85 d8 f7 ff ff 	movq   $0x400,-0x828(%rbp)
  401538:	00 04 00 00 
  40153c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401543:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401547:	74 50                	je     401599 <check_debugger+0x109>
  401549:	ba 00 00 00 00       	mov    $0x0,%edx
  40154e:	85 d2                	test   %edx,%edx
  401550:	75 1f                	jne    401571 <check_debugger+0xe1>
  401552:	48 8b 95 d8 f7 ff ff 	mov    -0x828(%rbp),%rdx
  401559:	48 8b b5 d0 f7 ff ff 	mov    -0x830(%rbp),%rsi
  401560:	48 8b bd c8 f7 ff ff 	mov    -0x838(%rbp),%rdi
  401567:	48 89 c1             	mov    %rax,%rcx
  40156a:	e8 31 fa ff ff       	call   400fa0 <__readlink_chk@plt>
  40156f:	eb 48                	jmp    4015b9 <check_debugger+0x129>
  401571:	48 39 85 d8 f7 ff ff 	cmp    %rax,-0x828(%rbp)
  401578:	76 1f                	jbe    401599 <check_debugger+0x109>
  40157a:	48 8b 95 d8 f7 ff ff 	mov    -0x828(%rbp),%rdx
  401581:	48 8b b5 d0 f7 ff ff 	mov    -0x830(%rbp),%rsi
  401588:	48 8b bd c8 f7 ff ff 	mov    -0x838(%rbp),%rdi
  40158f:	48 89 c1             	mov    %rax,%rcx
  401592:	e8 09 fa ff ff       	call   400fa0 <__readlink_chk@plt>
  401597:	eb 20                	jmp    4015b9 <check_debugger+0x129>
  401599:	48 8b 95 d8 f7 ff ff 	mov    -0x828(%rbp),%rdx
  4015a0:	48 8b 8d d0 f7 ff ff 	mov    -0x830(%rbp),%rcx
  4015a7:	48 8b 85 c8 f7 ff ff 	mov    -0x838(%rbp),%rax
  4015ae:	48 89 ce             	mov    %rcx,%rsi
  4015b1:	48 89 c7             	mov    %rax,%rdi
  4015b4:	e8 77 fa ff ff       	call   401030 <readlink@plt>
  4015b9:	89 85 b8 f7 ff ff    	mov    %eax,-0x848(%rbp)
  4015bf:	8b 85 b8 f7 ff ff    	mov    -0x848(%rbp),%eax
  4015c5:	48 98                	cltq
  4015c7:	c6 84 05 f0 fb ff ff 	movb   $0x0,-0x410(%rbp,%rax,1)
  4015ce:	00 
  4015cf:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4015d6:	48 89 c7             	mov    %rax,%rdi
  4015d9:	e8 22 fa ff ff       	call   401000 <__xpg_basename@plt>
  4015de:	48 89 85 c0 f7 ff ff 	mov    %rax,-0x840(%rbp)
  4015e5:	48 8b 85 c0 f7 ff ff 	mov    -0x840(%rbp),%rax
  4015ec:	48 89 c7             	mov    %rax,%rdi
  4015ef:	e8 ec f9 ff ff       	call   400fe0 <strlen@plt>
  4015f4:	48 83 e8 02          	sub    $0x2,%rax
  4015f8:	48 01 85 c0 f7 ff ff 	add    %rax,-0x840(%rbp)
  4015ff:	48 8b 85 c0 f7 ff ff 	mov    -0x840(%rbp),%rax
  401606:	0f b7 00             	movzwl (%rax),%eax
  401609:	66 0d 20 20          	or     $0x2020,%ax
  40160d:	0f b7 c0             	movzwl %ax,%eax
  401610:	2d 64 62 00 00       	sub    $0x6264,%eax
  401615:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
  40161a:	89 c1                	mov    %eax,%ecx
  40161c:	b8 00 00 00 80       	mov    $0x80000000,%eax
  401621:	99                   	cltd
  401622:	f7 f9                	idiv   %ecx
  401624:	89 05 3e 2e 00 00    	mov    %eax,0x2e3e(%rip)        # 404468 <bomb_explode_flag+0xe8>
  40162a:	b8 01 00 00 00       	mov    $0x1,%eax
  40162f:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401636 <check_debugger+0x1a6>
  401635:	eb 10                	jmp    401647 <check_debugger+0x1b7>
  401637:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  40163e:	05 f3 ff 
  401641:	ff                   	(bad)
  401642:	ff 8b 05 1f 2e 00    	decl   0x2e1f05(%rbx)
  401648:	00 c1                	add    %al,%cl
  40164a:	f8                   	clc
  40164b:	1f                   	(bad)
  40164c:	89 05 16 2e 00 00    	mov    %eax,0x2e16(%rip)        # 404468 <bomb_explode_flag+0xe8>
  401652:	b8 01 00 00 00       	mov    $0x1,%eax
  401657:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 40165e <check_debugger+0x1ce>
  40165d:	eb 10                	jmp    40166f <check_debugger+0x1df>
  40165f:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401666:	05 f3 ff 
  401669:	ff                   	(bad)
  40166a:	ff 8b 05 f7 2d 00    	decl   0x2df705(%rbx)
  401670:	00 f7                	add    %dh,%bh
  401672:	d8 89 05 ef 2d 00    	fmuls  0x2def05(%rcx)
  401678:	00 8b 05 e9 2d 00    	add    %cl,0x2de905(%rbx)
  40167e:	00 89 c0 88 05 01    	add    %cl,0x10588c0(%rcx)
  401684:	00 00                	add    %al,(%rax)
  401686:	00 eb                	add    %ch,%bl
  401688:	10 48 b8             	adc    %cl,-0x48(%rax)
  40168b:	10 00                	adc    %al,(%rax)
  40168d:	00 00                	add    %al,(%rax)
  40168f:	88 05 f3 ff ff ff    	mov    %al,-0xd(%rip)        # 401688 <check_debugger+0x1f8>
  401695:	90                   	nop
  401696:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40169a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016a1:	00 00 
  4016a3:	74 05                	je     4016aa <check_debugger+0x21a>
  4016a5:	e8 e6 f9 ff ff       	call   401090 <__stack_chk_fail@plt>
  4016aa:	c9                   	leave
  4016ab:	c3                   	ret
  4016ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016b0 <restore_main_int3>:
  4016b0:	f3 0f 1e fa          	endbr64
  4016b4:	48 8d 05 25 fb ff ff 	lea    -0x4db(%rip),%rax        # 4011e0 <main>
  4016bb:	c6 00 f3             	movb   $0xf3,(%rax)
  4016be:	c3                   	ret
  4016bf:	90                   	nop

00000000004016c0 <$handler>:
  4016c0:	f3 0f 1e fa          	endbr64
  4016c4:	83 ff 05             	cmp    $0x5,%edi
  4016c7:	74 07                	je     4016d0 <$handler+0x10>
  4016c9:	31 c0                	xor    %eax,%eax
  4016cb:	e9 70 1f 00 00       	jmp    403640 <bomb_explode>
  4016d0:	50                   	push   %rax
  4016d1:	be 01 00 00 00       	mov    $0x1,%esi
  4016d6:	48 8d 3d c3 2d 00 00 	lea    0x2dc3(%rip),%rdi        # 4044a0 <buf>
  4016dd:	e8 0e f8 ff ff       	call   400ef0 <__longjmp_chk@plt>
  4016e2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4016e9:	00 00 00 00 
  4016ed:	0f 1f 00             	nopl   (%rax)

00000000004016f0 <hothothot_you_shouldnt_read_this.part.0>:
  4016f0:	48 83 ec 08          	sub    $0x8,%rsp
  4016f4:	8b 05 6e 2d 00 00    	mov    0x2d6e(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  4016fa:	89 c0                	mov    %eax,%eax
  4016fc:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401703 <hothothot_you_shouldnt_read_this.part.0+0x13>
  401702:	eb 10                	jmp    401714 <hothothot_you_shouldnt_read_this.part.0+0x24>
  401704:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  40170b:	05 f3 ff 
  40170e:	ff                   	(bad)
  40170f:	ff 48 8d             	decl   -0x73(%rax)
  401712:	35 a9 ff ff ff       	xor    $0xffffffa9,%eax
  401717:	bf 0b 00 00 00       	mov    $0xb,%edi
  40171c:	e8 3f f9 ff ff       	call   401060 <signal@plt>
  401721:	48 89 05 68 2d 00 00 	mov    %rax,0x2d68(%rip)        # 404490 <segv.10350>
  401728:	8b 05 3a 2d 00 00    	mov    0x2d3a(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  40172e:	89 c0                	mov    %eax,%eax
  401730:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401737 <hothothot_you_shouldnt_read_this.part.0+0x47>
  401736:	eb 10                	jmp    401748 <hothothot_you_shouldnt_read_this.part.0+0x58>
  401738:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  40173f:	05 f3 ff 
  401742:	ff                   	(bad)
  401743:	ff 48 8d             	decl   -0x73(%rax)
  401746:	35 75 ff ff ff       	xor    $0xffffff75,%eax
  40174b:	bf 04 00 00 00       	mov    $0x4,%edi
  401750:	e8 0b f9 ff ff       	call   401060 <signal@plt>
  401755:	48 89 05 2c 2d 00 00 	mov    %rax,0x2d2c(%rip)        # 404488 <ill.10351>
  40175c:	8b 05 06 2d 00 00    	mov    0x2d06(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  401762:	89 c0                	mov    %eax,%eax
  401764:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 40176b <hothothot_you_shouldnt_read_this.part.0+0x7b>
  40176a:	eb 10                	jmp    40177c <hothothot_you_shouldnt_read_this.part.0+0x8c>
  40176c:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401773:	05 f3 ff 
  401776:	ff                   	(bad)
  401777:	ff 48 8d             	decl   -0x73(%rax)
  40177a:	35 41 ff ff ff       	xor    $0xffffff41,%eax
  40177f:	bf 08 00 00 00       	mov    $0x8,%edi
  401784:	e8 d7 f8 ff ff       	call   401060 <signal@plt>
  401789:	48 89 05 f0 2c 00 00 	mov    %rax,0x2cf0(%rip)        # 404480 <fpe.10352>
  401790:	48 83 c4 08          	add    $0x8,%rsp
  401794:	c3                   	ret
  401795:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40179c:	00 00 00 00 

00000000004017a0 <pupil_pow_mod>:
  4017a0:	f3 0f 1e fa          	endbr64
  4017a4:	b8 01 00 00 00       	mov    $0x1,%eax
  4017a9:	85 f6                	test   %esi,%esi
  4017ab:	75 03                	jne    4017b0 <pupil_pow_mod+0x10>
  4017ad:	c3                   	ret
  4017ae:	66 90                	xchg   %ax,%ax
  4017b0:	55                   	push   %rbp
  4017b1:	89 fd                	mov    %edi,%ebp
  4017b3:	53                   	push   %rbx
  4017b4:	89 f3                	mov    %esi,%ebx
  4017b6:	d1 fe                	sar    $1,%esi
  4017b8:	48 83 ec 08          	sub    $0x8,%rsp
  4017bc:	e8 df ff ff ff       	call   4017a0 <pupil_pow_mod>
  4017c1:	48 be 31 83 77 1d 02 	movabs $0x226b9021d778331,%rsi
  4017c8:	b9 26 02 
  4017cb:	48 63 c8             	movslq %eax,%rcx
  4017ce:	48 0f af c9          	imul   %rcx,%rcx
  4017d2:	48 89 c8             	mov    %rcx,%rax
  4017d5:	48 f7 ee             	imul   %rsi
  4017d8:	48 89 d0             	mov    %rdx,%rax
  4017db:	48 89 ca             	mov    %rcx,%rdx
  4017de:	48 c1 f8 17          	sar    $0x17,%rax
  4017e2:	48 c1 fa 3f          	sar    $0x3f,%rdx
  4017e6:	48 29 d0             	sub    %rdx,%rax
  4017e9:	48 69 c0 01 00 80 3b 	imul   $0x3b800001,%rax,%rax
  4017f0:	48 29 c1             	sub    %rax,%rcx
  4017f3:	83 e3 01             	and    $0x1,%ebx
  4017f6:	48 89 c8             	mov    %rcx,%rax
  4017f9:	74 29                	je     401824 <pupil_pow_mod+0x84>
  4017fb:	48 63 fd             	movslq %ebp,%rdi
  4017fe:	48 0f af f9          	imul   %rcx,%rdi
  401802:	48 89 f8             	mov    %rdi,%rax
  401805:	48 f7 ee             	imul   %rsi
  401808:	48 89 f8             	mov    %rdi,%rax
  40180b:	48 c1 f8 3f          	sar    $0x3f,%rax
  40180f:	48 89 d6             	mov    %rdx,%rsi
  401812:	48 c1 fe 17          	sar    $0x17,%rsi
  401816:	48 29 c6             	sub    %rax,%rsi
  401819:	89 f8                	mov    %edi,%eax
  40181b:	48 69 f6 01 00 80 3b 	imul   $0x3b800001,%rsi,%rsi
  401822:	29 f0                	sub    %esi,%eax
  401824:	48 83 c4 08          	add    $0x8,%rsp
  401828:	5b                   	pop    %rbx
  401829:	5d                   	pop    %rbp
  40182a:	c3                   	ret
  40182b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401830 <pupil>:
  401830:	f3 0f 1e fa          	endbr64
  401834:	48 83 ec 18          	sub    $0x18,%rsp
  401838:	48 8b 3d 41 2e 00 00 	mov    0x2e41(%rip),%rdi        # 404680 <now_input>
  40183f:	48 8d 35 76 0b 00 00 	lea    0xb76(%rip),%rsi        # 4023bc <serverhost+0xdc>
  401846:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40184d:	00 00 
  40184f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401854:	31 c0                	xor    %eax,%eax
  401856:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  40185b:	e8 d0 f6 ff ff       	call   400f30 <__isoc99_sscanf@plt>
  401860:	83 f8 01             	cmp    $0x1,%eax
  401863:	74 07                	je     40186c <pupil+0x3c>
  401865:	31 c0                	xor    %eax,%eax
  401867:	e8 d4 1d 00 00       	call   403640 <bomb_explode>
  40186c:	8b 74 24 04          	mov    0x4(%rsp),%esi
  401870:	bf 75 8f 03 00       	mov    $0x38f75,%edi
  401875:	e8 26 ff ff ff       	call   4017a0 <pupil_pow_mod>
  40187a:	83 f8 01             	cmp    $0x1,%eax
  40187d:	74 07                	je     401886 <pupil+0x56>
  40187f:	31 c0                	xor    %eax,%eax
  401881:	e8 ba 1d 00 00       	call   403640 <bomb_explode>
  401886:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40188b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401892:	00 00 
  401894:	75 05                	jne    40189b <pupil+0x6b>
  401896:	48 83 c4 18          	add    $0x18,%rsp
  40189a:	c3                   	ret
  40189b:	e8 f0 f7 ff ff       	call   401090 <__stack_chk_fail@plt>

00000000004018a0 <tr1vial>:
  4018a0:	f3 0f 1e fa          	endbr64
  4018a4:	55                   	push   %rbp
  4018a5:	48 89 e5             	mov    %rsp,%rbp
  4018a8:	41 54                	push   %r12
  4018aa:	48 83 ec 18          	sub    $0x18,%rsp
  4018ae:	4c 8b 25 cb 2d 00 00 	mov    0x2dcb(%rip),%r12        # 404680 <now_input>
  4018b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4018bc:	00 00 
  4018be:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4018c2:	31 c0                	xor    %eax,%eax
  4018c4:	4c 89 e7             	mov    %r12,%rdi
  4018c7:	e8 14 f7 ff ff       	call   400fe0 <strlen@plt>
  4018cc:	48 89 e7             	mov    %rsp,%rdi
  4018cf:	48 be ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rsi
  4018d6:	aa aa aa 
  4018d9:	48 8d 50 02          	lea    0x2(%rax),%rdx
  4018dd:	48 89 c1             	mov    %rax,%rcx
  4018e0:	48 89 d0             	mov    %rdx,%rax
  4018e3:	48 f7 e6             	mul    %rsi
  4018e6:	48 d1 ea             	shr    $1,%rdx
  4018e9:	48 8d 04 95 10 00 00 	lea    0x10(,%rdx,4),%rax
  4018f0:	00 
  4018f1:	48 89 c2             	mov    %rax,%rdx
  4018f4:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4018fa:	48 29 c7             	sub    %rax,%rdi
  4018fd:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  401901:	48 89 f8             	mov    %rdi,%rax
  401904:	48 39 c4             	cmp    %rax,%rsp
  401907:	74 15                	je     40191e <tr1vial+0x7e>
  401909:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401910:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  401917:	00 00 
  401919:	48 39 c4             	cmp    %rax,%rsp
  40191c:	75 eb                	jne    401909 <tr1vial+0x69>
  40191e:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  401924:	48 29 d4             	sub    %rdx,%rsp
  401927:	48 85 d2             	test   %rdx,%rdx
  40192a:	75 44                	jne    401970 <tr1vial+0xd0>
  40192c:	89 ca                	mov    %ecx,%edx
  40192e:	4c 89 e6             	mov    %r12,%rsi
  401931:	48 89 e7             	mov    %rsp,%rdi
  401934:	e8 17 f6 ff ff       	call   400f50 <EVP_EncodeBlock@plt>
  401939:	48 89 e6             	mov    %rsp,%rsi
  40193c:	b9 11 00 00 00       	mov    $0x11,%ecx
  401941:	48 8d 3d 43 0a 00 00 	lea    0xa43(%rip),%rdi        # 40238b <serverhost+0xab>
  401948:	f3 a6                	repz cmpsb (%rdi),(%rsi)
  40194a:	0f 97 c0             	seta   %al
  40194d:	1c 00                	sbb    $0x0,%al
  40194f:	84 c0                	test   %al,%al
  401951:	74 07                	je     40195a <tr1vial+0xba>
  401953:	31 c0                	xor    %eax,%eax
  401955:	e8 e6 1c 00 00       	call   403640 <bomb_explode>
  40195a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40195e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401965:	00 00 
  401967:	75 0f                	jne    401978 <tr1vial+0xd8>
  401969:	4c 8b 65 f8          	mov    -0x8(%rbp),%r12
  40196d:	c9                   	leave
  40196e:	c3                   	ret
  40196f:	90                   	nop
  401970:	48 83 4c 14 f8 00    	orq    $0x0,-0x8(%rsp,%rdx,1)
  401976:	eb b4                	jmp    40192c <tr1vial+0x8c>
  401978:	e8 13 f7 ff ff       	call   401090 <__stack_chk_fail@plt>
  40197d:	0f 1f 00             	nopl   (%rax)

0000000000401980 <rainb0w>:
  401980:	f3 0f 1e fa          	endbr64
  401984:	41 55                	push   %r13
  401986:	41 54                	push   %r12
  401988:	55                   	push   %rbp
  401989:	53                   	push   %rbx
  40198a:	48 83 ec 48          	sub    $0x48,%rsp
  40198e:	4c 8b 25 eb 2c 00 00 	mov    0x2ceb(%rip),%r12        # 404680 <now_input>
  401995:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40199c:	00 00 
  40199e:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4019a3:	31 c0                	xor    %eax,%eax
  4019a5:	48 89 e5             	mov    %rsp,%rbp
  4019a8:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4019ad:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
  4019b2:	4c 89 e7             	mov    %r12,%rdi
  4019b5:	e8 26 f6 ff ff       	call   400fe0 <strlen@plt>
  4019ba:	4c 89 e7             	mov    %r12,%rdi
  4019bd:	48 89 ea             	mov    %rbp,%rdx
  4019c0:	4c 8d 25 d5 09 00 00 	lea    0x9d5(%rip),%r12        # 40239c <serverhost+0xbc>
  4019c7:	48 89 c6             	mov    %rax,%rsi
  4019ca:	e8 21 f6 ff ff       	call   400ff0 <MD5@plt>
  4019cf:	90                   	nop
  4019d0:	44 0f be 45 00       	movsbl 0x0(%rbp),%r8d
  4019d5:	48 89 df             	mov    %rbx,%rdi
  4019d8:	4c 89 e1             	mov    %r12,%rcx
  4019db:	be 01 00 00 00       	mov    $0x1,%esi
  4019e0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4019e7:	31 c0                	xor    %eax,%eax
  4019e9:	48 83 c3 02          	add    $0x2,%rbx
  4019ed:	48 83 c5 01          	add    $0x1,%rbp
  4019f1:	e8 da f6 ff ff       	call   4010d0 <__sprintf_chk@plt>
  4019f6:	4c 39 eb             	cmp    %r13,%rbx
  4019f9:	75 d5                	jne    4019d0 <rainb0w+0x50>
  4019fb:	81 7c 24 10 38 31 35 	cmpl   $0x33353138,0x10(%rsp)
  401a02:	33 
  401a03:	74 2b                	je     401a30 <rainb0w+0xb0>
  401a05:	31 c0                	xor    %eax,%eax
  401a07:	e8 34 1c 00 00       	call   403640 <bomb_explode>
  401a0c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  401a11:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401a18:	00 00 
  401a1a:	75 1f                	jne    401a3b <rainb0w+0xbb>
  401a1c:	48 83 c4 48          	add    $0x48,%rsp
  401a20:	5b                   	pop    %rbx
  401a21:	5d                   	pop    %rbp
  401a22:	41 5c                	pop    %r12
  401a24:	41 5d                	pop    %r13
  401a26:	c3                   	ret
  401a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a2e:	00 00 
  401a30:	66 81 7c 24 14 33 41 	cmpw   $0x4133,0x14(%rsp)
  401a37:	75 cc                	jne    401a05 <rainb0w+0x85>
  401a39:	eb d1                	jmp    401a0c <rainb0w+0x8c>
  401a3b:	e8 50 f6 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000401a40 <t00rerauqs>:
  401a40:	f3 0f 1e fa          	endbr64
  401a44:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401a48:	f3 0f 2a c7          	cvtsi2ss %edi,%xmm0
  401a4c:	66 0f 7e c0          	movd   %xmm0,%eax
  401a50:	0f 28 d0             	movaps %xmm0,%xmm2
  401a53:	d1 e8                	shr    $1,%eax
  401a55:	03 05 45 17 00 00    	add    0x1745(%rip),%eax        # 4031a0 <magic>
  401a5b:	66 0f 6e c8          	movd   %eax,%xmm1
  401a5f:	f3 0f 5e d1          	divss  %xmm1,%xmm2
  401a63:	f3 0f 58 ca          	addss  %xmm2,%xmm1
  401a67:	f3 0f 10 15 51 09 00 	movss  0x951(%rip),%xmm2        # 4023c0 <serverhost+0xe0>
  401a6e:	00 
  401a6f:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
  401a73:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  401a77:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  401a7b:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  401a7f:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
  401a83:	c3                   	ret
  401a84:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401a8b:	00 00 00 00 
  401a8f:	90                   	nop

0000000000401a90 <q_math>:
  401a90:	f3 0f 1e fa          	endbr64
  401a94:	55                   	push   %rbp
  401a95:	48 8d 35 11 09 00 00 	lea    0x911(%rip),%rsi        # 4023ad <serverhost+0xcd>
  401a9c:	53                   	push   %rbx
  401a9d:	48 83 ec 18          	sub    $0x18,%rsp
  401aa1:	48 8b 3d d8 2b 00 00 	mov    0x2bd8(%rip),%rdi        # 404680 <now_input>
  401aa8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401aaf:	00 00 
  401ab1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401ab6:	31 c0                	xor    %eax,%eax
  401ab8:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  401abd:	e8 6e f4 ff ff       	call   400f30 <__isoc99_sscanf@plt>
  401ac2:	8b 05 d8 16 00 00    	mov    0x16d8(%rip),%eax        # 4031a0 <magic>
  401ac8:	ba 56 55 55 55       	mov    $0x55555556,%edx
  401acd:	f7 e2                	mul    %edx
  401acf:	89 15 cb 16 00 00    	mov    %edx,0x16cb(%rip)        # 4031a0 <magic>
  401ad5:	8b 54 24 04          	mov    0x4(%rsp),%edx
  401ad9:	89 d7                	mov    %edx,%edi
  401adb:	e8 60 ff ff ff       	call   401a40 <t00rerauqs>
  401ae0:	8d 68 01             	lea    0x1(%rax),%ebp
  401ae3:	81 fd 2f 75 00 00    	cmp    $0x752f,%ebp
  401ae9:	7e 65                	jle    401b50 <q_math+0xc0>
  401aeb:	81 fd 40 9c 00 00    	cmp    $0x9c40,%ebp
  401af1:	7f 4d                	jg     401b40 <q_math+0xb0>
  401af3:	bb 02 00 00 00       	mov    $0x2,%ebx
  401af8:	eb 11                	jmp    401b0b <q_math+0x7b>
  401afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401b00:	83 c3 01             	add    $0x1,%ebx
  401b03:	39 eb                	cmp    %ebp,%ebx
  401b05:	77 1c                	ja     401b23 <q_math+0x93>
  401b07:	8b 54 24 04          	mov    0x4(%rsp),%edx
  401b0b:	89 d0                	mov    %edx,%eax
  401b0d:	31 d2                	xor    %edx,%edx
  401b0f:	f7 f3                	div    %ebx
  401b11:	85 d2                	test   %edx,%edx
  401b13:	75 eb                	jne    401b00 <q_math+0x70>
  401b15:	31 c0                	xor    %eax,%eax
  401b17:	83 c3 01             	add    $0x1,%ebx
  401b1a:	e8 21 1b 00 00       	call   403640 <bomb_explode>
  401b1f:	39 eb                	cmp    %ebp,%ebx
  401b21:	76 e4                	jbe    401b07 <q_math+0x77>
  401b23:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401b28:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401b2f:	00 00 
  401b31:	75 2f                	jne    401b62 <q_math+0xd2>
  401b33:	48 83 c4 18          	add    $0x18,%rsp
  401b37:	5b                   	pop    %rbx
  401b38:	5d                   	pop    %rbp
  401b39:	c3                   	ret
  401b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401b40:	31 c0                	xor    %eax,%eax
  401b42:	e8 f9 1a 00 00       	call   403640 <bomb_explode>
  401b47:	8b 54 24 04          	mov    0x4(%rsp),%edx
  401b4b:	eb a6                	jmp    401af3 <q_math+0x63>
  401b4d:	0f 1f 00             	nopl   (%rax)
  401b50:	31 c0                	xor    %eax,%eax
  401b52:	e8 e9 1a 00 00       	call   403640 <bomb_explode>
  401b57:	8b 54 24 04          	mov    0x4(%rsp),%edx
  401b5b:	83 fd 01             	cmp    $0x1,%ebp
  401b5e:	77 93                	ja     401af3 <q_math+0x63>
  401b60:	eb c1                	jmp    401b23 <q_math+0x93>
  401b62:	e8 29 f5 ff ff       	call   401090 <__stack_chk_fail@plt>
  401b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401b6e:	00 00 

0000000000401b70 <convert_text_enc0ding>:
  401b70:	f3 0f 1e fa          	endbr64
  401b74:	48 83 ec 38          	sub    $0x38,%rsp
  401b78:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401b7d:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  401b82:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401b87:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b8e:	00 00 
  401b90:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401b95:	31 c0                	xor    %eax,%eax
  401b97:	e8 44 f4 ff ff       	call   400fe0 <strlen@plt>
  401b9c:	48 8d 35 0d 08 00 00 	lea    0x80d(%rip),%rsi        # 4023b0 <serverhost+0xd0>
  401ba3:	48 8d 3d 0c 08 00 00 	lea    0x80c(%rip),%rdi        # 4023b6 <serverhost+0xd6>
  401baa:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401baf:	e8 0c f4 ff ff       	call   400fc0 <iconv_open@plt>
  401bb4:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  401bb9:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401bbe:	48 89 c7             	mov    %rax,%rdi
  401bc1:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  401bc6:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
  401bcb:	e8 50 f4 ff ff       	call   401020 <iconv@plt>
  401bd0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401bd5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401bdc:	00 00 
  401bde:	75 05                	jne    401be5 <convert_text_enc0ding+0x75>
  401be0:	48 83 c4 38          	add    $0x38,%rsp
  401be4:	c3                   	ret
  401be5:	e8 a6 f4 ff ff       	call   401090 <__stack_chk_fail@plt>
  401bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401bf0 <hothothot_you_shouldnt_read_this>:
  401bf0:	f3 0f 1e fa          	endbr64
  401bf4:	85 ff                	test   %edi,%edi
  401bf6:	74 08                	je     401c00 <hothothot_you_shouldnt_read_this+0x10>
  401bf8:	e9 f3 fa ff ff       	jmp    4016f0 <hothothot_you_shouldnt_read_this.part.0>
  401bfd:	0f 1f 00             	nopl   (%rax)
  401c00:	48 83 ec 08          	sub    $0x8,%rsp
  401c04:	8b 05 5e 28 00 00    	mov    0x285e(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  401c0a:	89 c0                	mov    %eax,%eax
  401c0c:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401c13 <hothothot_you_shouldnt_read_this+0x23>
  401c12:	eb 10                	jmp    401c24 <hothothot_you_shouldnt_read_this+0x34>
  401c14:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401c1b:	05 f3 ff 
  401c1e:	ff                   	(bad)
  401c1f:	ff 48 8b             	decl   -0x75(%rax)
  401c22:	35 69 28 00 00       	xor    $0x2869,%eax
  401c27:	bf 0b 00 00 00       	mov    $0xb,%edi
  401c2c:	e8 2f f4 ff ff       	call   401060 <signal@plt>
  401c31:	8b 05 31 28 00 00    	mov    0x2831(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  401c37:	89 c0                	mov    %eax,%eax
  401c39:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401c40 <hothothot_you_shouldnt_read_this+0x50>
  401c3f:	eb 10                	jmp    401c51 <hothothot_you_shouldnt_read_this+0x61>
  401c41:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401c48:	05 f3 ff 
  401c4b:	ff                   	(bad)
  401c4c:	ff 48 8b             	decl   -0x75(%rax)
  401c4f:	35 34 28 00 00       	xor    $0x2834,%eax
  401c54:	bf 04 00 00 00       	mov    $0x4,%edi
  401c59:	e8 02 f4 ff ff       	call   401060 <signal@plt>
  401c5e:	8b 05 04 28 00 00    	mov    0x2804(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  401c64:	89 c0                	mov    %eax,%eax
  401c66:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401c6d <hothothot_you_shouldnt_read_this+0x7d>
  401c6c:	eb 10                	jmp    401c7e <hothothot_you_shouldnt_read_this+0x8e>
  401c6e:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401c75:	05 f3 ff 
  401c78:	ff                   	(bad)
  401c79:	ff 48 8b             	decl   -0x75(%rax)
  401c7c:	35 ff 27 00 00       	xor    $0x27ff,%eax
  401c81:	bf 08 00 00 00       	mov    $0x8,%edi
  401c86:	e8 d5 f3 ff ff       	call   401060 <signal@plt>
  401c8b:	48 83 c4 08          	add    $0x8,%rsp
  401c8f:	c3                   	ret

0000000000401c90 <hothothot>:
  401c90:	f3 0f 1e fa          	endbr64
  401c94:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  401c9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ca2:	00 00 
  401ca4:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  401cab:	00 
  401cac:	31 c0                	xor    %eax,%eax
  401cae:	e8 3d fa ff ff       	call   4016f0 <hothothot_you_shouldnt_read_this.part.0>
  401cb3:	48 8b 3d c6 29 00 00 	mov    0x29c6(%rip),%rdi        # 404680 <now_input>
  401cba:	48 89 e6             	mov    %rsp,%rsi
  401cbd:	ba 80 00 00 00       	mov    $0x80,%edx
  401cc2:	e8 a9 fe ff ff       	call   401b70 <convert_text_enc0ding>
  401cc7:	be 01 00 00 00       	mov    $0x1,%esi
  401ccc:	48 8d 3d cd 27 00 00 	lea    0x27cd(%rip),%rdi        # 4044a0 <buf>
  401cd3:	e8 18 f4 ff ff       	call   4010f0 <__sigsetjmp@plt>
  401cd8:	f3 0f 1e fa          	endbr64
  401cdc:	85 c0                	test   %eax,%eax
  401cde:	0f 84 4c f4 ff ff    	je     401130 <hothothot.cold>
  401ce4:	31 ff                	xor    %edi,%edi
  401ce6:	e8 05 ff ff ff       	call   401bf0 <hothothot_you_shouldnt_read_this>
  401ceb:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  401cf2:	00 
  401cf3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401cfa:	00 00 
  401cfc:	75 08                	jne    401d06 <hothothot+0x76>
  401cfe:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401d05:	c3                   	ret
  401d06:	e8 85 f3 ff ff       	call   401090 <__stack_chk_fail@plt>
  401d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401d10 <tran$f0rm>:
  401d10:	f3 0f 1e fa          	endbr64
  401d14:	53                   	push   %rbx
  401d15:	48 8d 35 9e 06 00 00 	lea    0x69e(%rip),%rsi        # 4023ba <serverhost+0xda>
  401d1c:	48 83 ec 20          	sub    $0x20,%rsp
  401d20:	48 8b 3d 59 29 00 00 	mov    0x2959(%rip),%rdi        # 404680 <now_input>
  401d27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d2e:	00 00 
  401d30:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  401d35:	31 c0                	xor    %eax,%eax
  401d37:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  401d3c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401d41:	e8 ea f1 ff ff       	call   400f30 <__isoc99_sscanf@plt>
  401d46:	b8 01 00 00 00       	mov    $0x1,%eax
  401d4b:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 401d52 <tran$f0rm+0x42>
  401d51:	eb 10                	jmp    401d63 <tran$f0rm+0x53>
  401d53:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  401d5a:	05 f3 ff 
  401d5d:	ff                   	(bad)
  401d5e:	ff 8b 74 24 0c 89    	decl   -0x76f3db8c(%rbx)
  401d64:	f0 e8 e6 00 00 00    	lock call 401e50 <ma1f0rm>
  401d6a:	89 d6                	mov    %edx,%esi
  401d6c:	83 7c 24 0c 64       	cmpl   $0x64,0xc(%rsp)
  401d71:	89 74 24 14          	mov    %esi,0x14(%rsp)
  401d75:	7e 29                	jle    401da0 <tran$f0rm+0x90>
  401d77:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d7b:	39 44 24 10          	cmp    %eax,0x10(%rsp)
  401d7f:	74 07                	je     401d88 <tran$f0rm+0x78>
  401d81:	31 c0                	xor    %eax,%eax
  401d83:	e8 b8 18 00 00       	call   403640 <bomb_explode>
  401d88:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401d8d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d94:	00 00 
  401d96:	75 11                	jne    401da9 <tran$f0rm+0x99>
  401d98:	48 83 c4 20          	add    $0x20,%rsp
  401d9c:	5b                   	pop    %rbx
  401d9d:	c3                   	ret
  401d9e:	66 90                	xchg   %ax,%ax
  401da0:	31 c0                	xor    %eax,%eax
  401da2:	e8 99 18 00 00       	call   403640 <bomb_explode>
  401da7:	eb ce                	jmp    401d77 <tran$f0rm+0x67>
  401da9:	e8 e2 f2 ff ff       	call   401090 <__stack_chk_fail@plt>
  401dae:	66 90                	xchg   %ax,%ax

0000000000401db0 <readNextLine>:
  401db0:	f3 0f 1e fa          	endbr64
  401db4:	55                   	push   %rbp
  401db5:	89 fd                	mov    %edi,%ebp
  401db7:	bf 10 00 00 00       	mov    $0x10,%edi
  401dbc:	53                   	push   %rbx
  401dbd:	48 83 ec 08          	sub    $0x8,%rsp
  401dc1:	e8 ca f1 ff ff       	call   400f90 <malloc@plt>
  401dc6:	48 63 fd             	movslq %ebp,%rdi
  401dc9:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401dd0:	00 
  401dd1:	48 89 c3             	mov    %rax,%rbx
  401dd4:	e8 b7 f1 ff ff       	call   400f90 <malloc@plt>
  401dd9:	48 8b 15 60 25 00 00 	mov    0x2560(%rip),%rdx        # 404340 <stdin@GLIBC_2.2.5>
  401de0:	89 ee                	mov    %ebp,%esi
  401de2:	48 89 03             	mov    %rax,(%rbx)
  401de5:	48 89 c7             	mov    %rax,%rdi
  401de8:	e8 c3 f1 ff ff       	call   400fb0 <fgets@plt>
  401ded:	48 8b 2b             	mov    (%rbx),%rbp
  401df0:	48 89 ef             	mov    %rbp,%rdi
  401df3:	e8 e8 f1 ff ff       	call   400fe0 <strlen@plt>
  401df8:	48 98                	cltq
  401dfa:	48 8d 44 05 ff       	lea    -0x1(%rbp,%rax,1),%rax
  401dff:	80 38 0a             	cmpb   $0xa,(%rax)
  401e02:	75 31                	jne    401e35 <readNextLine+0x85>
  401e04:	48 8b 15 9d 13 00 00 	mov    0x139d(%rip),%rdx        # 4031a8 <inputNextPtr>
  401e0b:	48 89 1a             	mov    %rbx,(%rdx)
  401e0e:	48 83 c3 08          	add    $0x8,%rbx
  401e12:	c6 00 00             	movb   $0x0,(%rax)
  401e15:	48 8b 43 f8          	mov    -0x8(%rbx),%rax
  401e19:	83 05 48 27 00 00 01 	addl   $0x1,0x2748(%rip)        # 404568 <inputListLength>
  401e20:	48 89 1d 81 13 00 00 	mov    %rbx,0x1381(%rip)        # 4031a8 <inputNextPtr>
  401e27:	48 89 05 52 28 00 00 	mov    %rax,0x2852(%rip)        # 404680 <now_input>
  401e2e:	48 83 c4 08          	add    $0x8,%rsp
  401e32:	5b                   	pop    %rbx
  401e33:	5d                   	pop    %rbp
  401e34:	c3                   	ret
  401e35:	48 8d 3d dc 05 00 00 	lea    0x5dc(%rip),%rdi        # 402418 <serverhost+0x138>
  401e3c:	e8 df f0 ff ff       	call   400f20 <puts@plt>
  401e41:	bf 08 00 00 00       	mov    $0x8,%edi
  401e46:	e8 f5 f0 ff ff       	call   400f40 <exit@plt>
  401e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401e50 <ma1f0rm>:
  401e50:	48 31 d2             	xor    %rdx,%rdx

0000000000401e53 <ma2f1rm>:
  401e53:	8a 1d 17 00 00 00    	mov    0x17(%rip),%bl        # 401e70 <ma3f2rm>
  401e59:	84 db                	test   %bl,%bl
  401e5b:	74 05                	je     401e62 <skip_120>
  401e5d:	e8 4f 00 00 00       	call   401eb1 <mchange>

0000000000401e62 <skip_120>:
  401e62:	48 83 f8 02          	cmp    $0x2,%rax
  401e66:	7f 09                	jg     401e71 <ma4f3rm>
  401e68:	48 01 c2             	add    %rax,%rdx
  401e6b:	c3                   	ret
  401e6c:	90                   	nop
  401e6d:	90                   	nop
  401e6e:	90                   	nop
  401e6f:	90                   	nop

0000000000401e70 <ma3f2rm>:
	...

0000000000401e71 <ma4f3rm>:
  401e71:	48 ff c2             	inc    %rdx
  401e74:	50                   	push   %rax
  401e75:	48 ff c8             	dec    %rax
  401e78:	e8 d6 ff ff ff       	call   401e53 <ma2f1rm>
  401e7d:	58                   	pop    %rax
  401e7e:	eb 31                	jmp    401eb1 <mchange>
	...

0000000000401e91 <dchange>:
  401e91:	01 00                	add    %eax,(%rax)
  401e93:	7c 00                	jl     401e95 <dchange+0x4>
  401e95:	52                   	push   %rdx
  401e96:	00 3e                	add    %bh,(%rsi)
  401e98:	20 ea                	and    %ch,%dl
  401e9a:	3d 27 ff ff 58       	cmp    $0x58ffff27,%eax
  401e9f:	eb 31                	jmp    401ed2 <mchange_next+0xa>
	...

0000000000401eb1 <mchange>:
  401eb1:	50                   	push   %rax
  401eb2:	53                   	push   %rbx
  401eb3:	51                   	push   %rcx
  401eb4:	52                   	push   %rdx
  401eb5:	48 8d 1d b4 ff ff ff 	lea    -0x4c(%rip),%rbx        # 401e70 <ma3f2rm>
  401ebc:	48 8d 05 ce ff ff ff 	lea    -0x32(%rip),%rax        # 401e91 <dchange>
  401ec3:	b9 20 00 00 00       	mov    $0x20,%ecx

0000000000401ec8 <mchange_next>:
  401ec8:	8a 13                	mov    (%rbx),%dl
  401eca:	32 10                	xor    (%rax),%dl
  401ecc:	88 13                	mov    %dl,(%rbx)
  401ece:	48 ff c3             	inc    %rbx
  401ed1:	48 ff c0             	inc    %rax
  401ed4:	48 ff c9             	dec    %rcx
  401ed7:	75 ef                	jne    401ec8 <mchange_next>
  401ed9:	5a                   	pop    %rdx
  401eda:	59                   	pop    %rcx
  401edb:	5b                   	pop    %rbx
  401edc:	58                   	pop    %rax

0000000000401edd <mchange_ret>:
  401edd:	8a 1d 8d ff ff ff    	mov    -0x73(%rip),%bl        # 401e70 <ma3f2rm>
  401ee3:	84 db                	test   %bl,%bl
  401ee5:	75 8a                	jne    401e71 <ma4f3rm>
  401ee7:	c3                   	ret
  401ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401eef:	00 

0000000000401ef0 <__libc_csu_init>:
  401ef0:	f3 0f 1e fa          	endbr64
  401ef4:	41 57                	push   %r15
  401ef6:	4c 8d 3d fb 0a 00 00 	lea    0xafb(%rip),%r15        # 4029f8 <__frame_dummy_init_array_entry>
  401efd:	41 56                	push   %r14
  401eff:	49 89 d6             	mov    %rdx,%r14
  401f02:	41 55                	push   %r13
  401f04:	49 89 f5             	mov    %rsi,%r13
  401f07:	41 54                	push   %r12
  401f09:	41 89 fc             	mov    %edi,%r12d
  401f0c:	55                   	push   %rbp
  401f0d:	48 8d 2d 04 0b 00 00 	lea    0xb04(%rip),%rbp        # 402a18 <__do_global_dtors_aux_fini_array_entry>
  401f14:	53                   	push   %rbx
  401f15:	4c 29 fd             	sub    %r15,%rbp
  401f18:	48 83 ec 08          	sub    $0x8,%rsp
  401f1c:	e8 87 ef ff ff       	call   400ea8 <_init>
  401f21:	48 c1 fd 03          	sar    $0x3,%rbp
  401f25:	74 1f                	je     401f46 <__libc_csu_init+0x56>
  401f27:	31 db                	xor    %ebx,%ebx
  401f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401f30:	4c 89 f2             	mov    %r14,%rdx
  401f33:	4c 89 ee             	mov    %r13,%rsi
  401f36:	44 89 e7             	mov    %r12d,%edi
  401f39:	41 ff 14 df          	call   *(%r15,%rbx,8)
  401f3d:	48 83 c3 01          	add    $0x1,%rbx
  401f41:	48 39 dd             	cmp    %rbx,%rbp
  401f44:	75 ea                	jne    401f30 <__libc_csu_init+0x40>
  401f46:	48 83 c4 08          	add    $0x8,%rsp
  401f4a:	5b                   	pop    %rbx
  401f4b:	5d                   	pop    %rbp
  401f4c:	41 5c                	pop    %r12
  401f4e:	41 5d                	pop    %r13
  401f50:	41 5e                	pop    %r14
  401f52:	41 5f                	pop    %r15
  401f54:	c3                   	ret
  401f55:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401f5c:	00 00 00 00 

0000000000401f60 <__libc_csu_fini>:
  401f60:	f3 0f 1e fa          	endbr64
  401f64:	c3                   	ret

Disassembly of section .fini:

0000000000401f68 <_fini>:
  401f68:	f3 0f 1e fa          	endbr64
  401f6c:	48 83 ec 08          	sub    $0x8,%rsp
  401f70:	48 83 c4 08          	add    $0x8,%rsp
  401f74:	c3                   	ret

Disassembly of section .data.driver:

00000000004031b0 <check_host_connectivity>:
  4031b0:	f3 0f 1e fa          	endbr64
  4031b4:	55                   	push   %rbp
  4031b5:	48 89 e5             	mov    %rsp,%rbp
  4031b8:	48 83 ec 70          	sub    $0x70,%rsp
  4031bc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4031c3:	00 00 
  4031c5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4031c9:	31 c0                	xor    %eax,%eax
  4031cb:	be 01 00 00 00       	mov    $0x1,%esi
  4031d0:	bf 0d 00 00 00       	mov    $0xd,%edi
  4031d5:	e8 86 de ff ff       	call   401060 <signal@plt>
  4031da:	be 01 00 00 00       	mov    $0x1,%esi
  4031df:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4031e4:	e8 77 de ff ff       	call   401060 <signal@plt>
  4031e9:	be 01 00 00 00       	mov    $0x1,%esi
  4031ee:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4031f3:	e8 68 de ff ff       	call   401060 <signal@plt>
  4031f8:	ba 00 00 00 00       	mov    $0x0,%edx
  4031fd:	be 01 00 00 00       	mov    $0x1,%esi
  403202:	bf 02 00 00 00       	mov    $0x2,%edi
  403207:	e8 64 de ff ff       	call   401070 <socket@plt>
  40320c:	89 45 94             	mov    %eax,-0x6c(%rbp)
  40320f:	83 7d 94 00          	cmpl   $0x0,-0x6c(%rbp)
  403213:	79 2b                	jns    403240 <check_host_connectivity+0x90>
  403215:	48 8d 05 74 ed ff ff 	lea    -0x128c(%rip),%rax        # 401f90 <_IO_stdin_used+0x10>
  40321c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  403220:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  403224:	48 89 c6             	mov    %rax,%rsi
  403227:	bf 01 00 00 00       	mov    $0x1,%edi
  40322c:	b8 00 00 00 00       	mov    $0x0,%eax
  403231:	e8 2a dd ff ff       	call   400f60 <__printf_chk@plt>
  403236:	bf 08 00 00 00       	mov    $0x8,%edi
  40323b:	e8 00 dd ff ff       	call   400f40 <exit@plt>
  403240:	48 8d 3d 99 f0 ff ff 	lea    -0xf67(%rip),%rdi        # 4022e0 <serverhost>
  403247:	e8 c4 dc ff ff       	call   400f10 <gethostbyname@plt>
  40324c:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  403250:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
  403255:	75 35                	jne    40328c <check_host_connectivity+0xdc>
  403257:	48 8d 05 5a ed ff ff 	lea    -0x12a6(%rip),%rax        # 401fb8 <_IO_stdin_used+0x38>
  40325e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  403262:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  403266:	48 89 c6             	mov    %rax,%rsi
  403269:	bf 01 00 00 00       	mov    $0x1,%edi
  40326e:	b8 00 00 00 00       	mov    $0x0,%eax
  403273:	e8 e8 dc ff ff       	call   400f60 <__printf_chk@plt>
  403278:	8b 45 94             	mov    -0x6c(%rbp),%eax
  40327b:	89 c7                	mov    %eax,%edi
  40327d:	e8 5e dc ff ff       	call   400ee0 <close@plt>
  403282:	bf 08 00 00 00       	mov    $0x8,%edi
  403287:	e8 b4 dc ff ff       	call   400f40 <exit@plt>
  40328c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  403290:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  403294:	48 c7 45 d0 10 00 00 	movq   $0x10,-0x30(%rbp)
  40329b:	00 
  40329c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4032a3:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4032a7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4032ab:	be 00 00 00 00       	mov    $0x0,%esi
  4032b0:	48 89 c7             	mov    %rax,%rdi
  4032b3:	e8 e8 dd ff ff       	call   4010a0 <__memset_chk@plt>
  4032b8:	90                   	nop
  4032b9:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  4032bf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  4032c3:	8b 40 14             	mov    0x14(%rax),%eax
  4032c6:	48 98                	cltq
  4032c8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  4032cc:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  4032d0:	48 8b 12             	mov    (%rdx),%rdx
  4032d3:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
  4032d7:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  4032db:	48 83 c2 04          	add    $0x4,%rdx
  4032df:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  4032e3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4032e7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4032ee:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4032f2:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  4032f6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4032fa:	48 89 c7             	mov    %rax,%rdi
  4032fd:	e8 fe dd ff ff       	call   401100 <__memmove_chk@plt>
  403302:	90                   	nop
  403303:	8b 05 b7 ef ff ff    	mov    -0x1049(%rip),%eax        # 4022c0 <serverport>
  403309:	0f b7 c0             	movzwl %ax,%eax
  40330c:	89 c7                	mov    %eax,%edi
  40330e:	e8 6d e1 ff ff       	call   401480 <__bswap_16>
  403313:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  403317:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  40331b:	8b 45 94             	mov    -0x6c(%rbp),%eax
  40331e:	ba 10 00 00 00       	mov    $0x10,%edx
  403323:	48 89 ce             	mov    %rcx,%rsi
  403326:	89 c7                	mov    %eax,%edi
  403328:	e8 13 dd ff ff       	call   401040 <connect@plt>
  40332d:	85 c0                	test   %eax,%eax
  40332f:	79 3c                	jns    40336d <check_host_connectivity+0x1bd>
  403331:	48 8d 05 b8 ec ff ff 	lea    -0x1348(%rip),%rax        # 401ff0 <_IO_stdin_used+0x70>
  403338:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40333c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  403340:	48 8d 15 99 ef ff ff 	lea    -0x1067(%rip),%rdx        # 4022e0 <serverhost>
  403347:	48 89 c6             	mov    %rax,%rsi
  40334a:	bf 01 00 00 00       	mov    $0x1,%edi
  40334f:	b8 00 00 00 00       	mov    $0x0,%eax
  403354:	e8 07 dc ff ff       	call   400f60 <__printf_chk@plt>
  403359:	8b 45 94             	mov    -0x6c(%rbp),%eax
  40335c:	89 c7                	mov    %eax,%edi
  40335e:	e8 7d db ff ff       	call   400ee0 <close@plt>
  403363:	bf 08 00 00 00       	mov    $0x8,%edi
  403368:	e8 d3 db ff ff       	call   400f40 <exit@plt>
  40336d:	8b 45 94             	mov    -0x6c(%rbp),%eax
  403370:	89 c7                	mov    %eax,%edi
  403372:	e8 69 db ff ff       	call   400ee0 <close@plt>
  403377:	90                   	nop
  403378:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40337c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  403383:	00 00 
  403385:	74 05                	je     40338c <check_host_connectivity+0x1dc>
  403387:	e8 04 dd ff ff       	call   401090 <__stack_chk_fail@plt>
  40338c:	c9                   	leave
  40338d:	c3                   	ret
  40338e:	66 90                	xchg   %ax,%ax

0000000000403390 <bomb_defused>:
  403390:	f3 0f 1e fa          	endbr64
  403394:	55                   	push   %rbp
  403395:	48 89 e5             	mov    %rsp,%rbp
  403398:	48 83 ec 10          	sub    $0x10,%rsp
  40339c:	8b 15 c6 11 00 00    	mov    0x11c6(%rip),%edx        # 404568 <inputListLength>
  4033a2:	48 8d 05 a7 ec ff ff 	lea    -0x1359(%rip),%rax        # 402050 <_IO_stdin_used+0xd0>
  4033a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4033ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4033b1:	48 89 c6             	mov    %rax,%rsi
  4033b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4033b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4033be:	e8 9d db ff ff       	call   400f60 <__printf_chk@plt>
  4033c3:	8b 05 f7 ee ff ff    	mov    -0x1109(%rip),%eax        # 4022c0 <serverport>
  4033c9:	48 8d 15 9f ec ff ff 	lea    -0x1361(%rip),%rdx        # 40206f <_IO_stdin_used+0xef>
  4033d0:	89 c6                	mov    %eax,%esi
  4033d2:	48 8d 3d 07 ef ff ff 	lea    -0x10f9(%rip),%rdi        # 4022e0 <serverhost>
  4033d9:	e8 c2 02 00 00       	call   4036a0 <bomb_explode+0x60>
  4033de:	90                   	nop
  4033df:	c9                   	leave
  4033e0:	c3                   	ret
  4033e1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4033e8:	00 00 00 
  4033eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004033f0 <check_hostname>:
  4033f0:	f3 0f 1e fa          	endbr64
  4033f4:	55                   	push   %rbp
  4033f5:	48 89 e5             	mov    %rsp,%rbp
  4033f8:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  4033ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403406:	00 00 
  403408:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40340c:	31 c0                	xor    %eax,%eax
  40340e:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
  403415:	00 00 00 
  403418:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40341f:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  403426:	48 c7 85 60 ff ff ff 	movq   $0x80,-0xa0(%rbp)
  40342d:	80 00 00 00 
  403431:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  403438:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40343c:	74 48                	je     403486 <check_hostname+0x96>
  40343e:	ba 00 00 00 00       	mov    $0x0,%edx
  403443:	85 d2                	test   %edx,%edx
  403445:	75 1b                	jne    403462 <check_hostname+0x72>
  403447:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  40344e:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
  403455:	48 89 c2             	mov    %rax,%rdx
  403458:	48 89 cf             	mov    %rcx,%rdi
  40345b:	e8 70 db ff ff       	call   400fd0 <__gethostname_chk@plt>
  403460:	eb 3d                	jmp    40349f <check_hostname+0xaf>
  403462:	48 39 85 60 ff ff ff 	cmp    %rax,-0xa0(%rbp)
  403469:	76 1b                	jbe    403486 <check_hostname+0x96>
  40346b:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
  403472:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
  403479:	48 89 c2             	mov    %rax,%rdx
  40347c:	48 89 cf             	mov    %rcx,%rdi
  40347f:	e8 4c db ff ff       	call   400fd0 <__gethostname_chk@plt>
  403484:	eb 19                	jmp    40349f <check_hostname+0xaf>
  403486:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
  40348d:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  403494:	48 89 d6             	mov    %rdx,%rsi
  403497:	48 89 c7             	mov    %rax,%rdi
  40349a:	e8 b1 db ff ff       	call   401050 <gethostname@plt>
  40349f:	85 c0                	test   %eax,%eax
  4034a1:	74 4d                	je     4034f0 <check_hostname+0x100>
  4034a3:	8b 05 bf 0f 00 00    	mov    0xfbf(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  4034a9:	89 c0                	mov    %eax,%eax
  4034ab:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 4034b2 <check_hostname+0xc2>
  4034b1:	eb 10                	jmp    4034c3 <check_hostname+0xd3>
  4034b3:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  4034ba:	05 f3 ff 
  4034bd:	ff                   	(bad)
  4034be:	ff 48 8d             	decl   -0x73(%rax)
  4034c1:	05 4a ed ff ff       	add    $0xffffed4a,%eax
  4034c6:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  4034cd:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  4034d4:	48 89 c6             	mov    %rax,%rsi
  4034d7:	bf 01 00 00 00       	mov    $0x1,%edi
  4034dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4034e1:	e8 7a da ff ff       	call   400f60 <__printf_chk@plt>
  4034e6:	bf 08 00 00 00       	mov    $0x8,%edi
  4034eb:	e8 50 da ff ff       	call   400f40 <exit@plt>
  4034f0:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%rbp)
  4034f7:	00 00 00 
  4034fa:	eb 60                	jmp    40355c <check_hostname+0x16c>
  4034fc:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  403502:	48 98                	cltq
  403504:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40350b:	00 
  40350c:	48 8d 05 8d f8 ff ff 	lea    -0x773(%rip),%rax        # 402da0 <host_table>
  403513:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
  403517:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  40351e:	48 89 d6             	mov    %rdx,%rsi
  403521:	48 89 c7             	mov    %rax,%rdi
  403524:	e8 47 da ff ff       	call   400f70 <strcasecmp@plt>
  403529:	85 c0                	test   %eax,%eax
  40352b:	75 28                	jne    403555 <check_hostname+0x165>
  40352d:	8b 05 35 0f 00 00    	mov    0xf35(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  403533:	89 c0                	mov    %eax,%eax
  403535:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 40353c <check_hostname+0x14c>
  40353b:	eb 10                	jmp    40354d <check_hostname+0x15d>
  40353d:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  403544:	05 f3 ff 
  403547:	ff                   	(bad)
  403548:	ff c7                	inc    %edi
  40354a:	85 54 ff ff          	test   %edx,-0x1(%rdi,%rdi,8)
  40354e:	ff 01                	incl   (%rcx)
  403550:	00 00                	add    %al,(%rax)
  403552:	00 eb                	add    %ch,%bl
  403554:	27                   	(bad)
  403555:	83 85 50 ff ff ff 01 	addl   $0x1,-0xb0(%rbp)
  40355c:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
  403562:	48 98                	cltq
  403564:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40356b:	00 
  40356c:	48 8d 05 2d f8 ff ff 	lea    -0x7d3(%rip),%rax        # 402da0 <host_table>
  403573:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
  403577:	48 85 c0             	test   %rax,%rax
  40357a:	75 80                	jne    4034fc <check_hostname+0x10c>
  40357c:	90                   	nop
  40357d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403581:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  403588:	00 00 
  40358a:	74 05                	je     403591 <check_hostname+0x1a1>
  40358c:	e8 ff da ff ff       	call   401090 <__stack_chk_fail@plt>
  403591:	c9                   	leave
  403592:	c3                   	ret
  403593:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40359a:	00 00 00 00 
  40359e:	66 90                	xchg   %ax,%ax

00000000004035a0 <debugger_check_caller>:
  4035a0:	f3 0f 1e fa          	endbr64
  4035a4:	55                   	push   %rbp
  4035a5:	48 89 e5             	mov    %rsp,%rbp
  4035a8:	48 89 e8             	mov    %rbp,%rax
  4035ab:	48 31 ed             	xor    %rbp,%rbp
  4035ae:	48 89 05 c3 0f 00 00 	mov    %rax,0xfc3(%rip)        # 404578 <inputListBegin+0x8>
  4035b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4035ba:	e8 d1 de ff ff       	call   401490 <check_debugger>
  4035bf:	48 8b 05 b2 0f 00 00 	mov    0xfb2(%rip),%rax        # 404578 <inputListBegin+0x8>
  4035c6:	48 89 c5             	mov    %rax,%rbp
  4035c9:	90                   	nop
  4035ca:	5d                   	pop    %rbp
  4035cb:	c3                   	ret
  4035cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004035d0 <bomb_initialize>:
  4035d0:	f3 0f 1e fa          	endbr64
  4035d4:	55                   	push   %rbp
  4035d5:	48 89 e5             	mov    %rsp,%rbp
  4035d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4035dd:	e8 be ff ff ff       	call   4035a0 <debugger_check_caller>
  4035e2:	8b 05 80 0e 00 00    	mov    0xe80(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  4035e8:	89 c0                	mov    %eax,%eax
  4035ea:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 4035f1 <bomb_initialize+0x21>
  4035f0:	eb 10                	jmp    403602 <bomb_initialize+0x32>
  4035f2:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  4035f9:	05 f3 ff 
  4035fc:	ff                   	(bad)
  4035fd:	ff                   	(bad)
  4035fe:	b8 00 00 00 00       	mov    $0x0,%eax
  403603:	e8 e8 fd ff ff       	call   4033f0 <check_hostname>
  403608:	8b 05 5a 0e 00 00    	mov    0xe5a(%rip),%eax        # 404468 <bomb_explode_flag+0xe8>
  40360e:	89 c0                	mov    %eax,%eax
  403610:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 403617 <bomb_initialize+0x47>
  403616:	eb 10                	jmp    403628 <bomb_initialize+0x58>
  403618:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  40361f:	05 f3 ff 
  403622:	ff                   	(bad)
  403623:	ff                   	(bad)
  403624:	b8 00 00 00 00       	mov    $0x0,%eax
  403629:	e8 82 fb ff ff       	call   4031b0 <check_host_connectivity>
  40362e:	90                   	nop
  40362f:	5d                   	pop    %rbp
  403630:	c3                   	ret
  403631:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  403638:	00 00 00 
  40363b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403640 <bomb_explode>:
  403640:	f3 0f 1e fa          	endbr64
  403644:	55                   	push   %rbp
  403645:	48 89 e5             	mov    %rsp,%rbp
  403648:	48 83 ec 10          	sub    $0x10,%rsp
  40364c:	48 8d 05 c5 e9 ff ff 	lea    -0x163b(%rip),%rax        # 402018 <_IO_stdin_used+0x98>
  403653:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403657:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40365b:	48 89 c6             	mov    %rax,%rsi
  40365e:	bf 01 00 00 00       	mov    $0x1,%edi
  403663:	b8 00 00 00 00       	mov    $0x0,%eax
  403668:	e8 f3 d8 ff ff       	call   400f60 <__printf_chk@plt>
  40366d:	8b 05 4d ec ff ff    	mov    -0x13b3(%rip),%eax        # 4022c0 <serverport>
  403673:	48 8d 15 cb e9 ff ff 	lea    -0x1635(%rip),%rdx        # 402045 <_IO_stdin_used+0xc5>
  40367a:	89 c6                	mov    %eax,%esi
  40367c:	48 8d 3d 5d ec ff ff 	lea    -0x13a3(%rip),%rdi        # 4022e0 <serverhost>
  403683:	e8 18 00 00 00       	call   4036a0 <bomb_explode+0x60>
  403688:	bf 08 00 00 00       	mov    $0x8,%edi
  40368d:	e8 ae d8 ff ff       	call   400f40 <exit@plt>
  403692:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  403699:	00 00 00 
  40369c:	0f 1f 40 00          	nopl   0x0(%rax)
  4036a0:	f3 0f 1e fa          	endbr64
  4036a4:	55                   	push   %rbp
  4036a5:	48 89 e5             	mov    %rsp,%rbp
  4036a8:	48 81 ec 00 05 00 00 	sub    $0x500,%rsp
  4036af:	48 89 bd 18 fb ff ff 	mov    %rdi,-0x4e8(%rbp)
  4036b6:	89 b5 14 fb ff ff    	mov    %esi,-0x4ec(%rbp)
  4036bc:	48 89 95 08 fb ff ff 	mov    %rdx,-0x4f8(%rbp)
  4036c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4036ca:	00 00 
  4036cc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4036d0:	31 c0                	xor    %eax,%eax
  4036d2:	ba 00 00 00 00       	mov    $0x0,%edx
  4036d7:	be 01 00 00 00       	mov    $0x1,%esi
  4036dc:	bf 02 00 00 00       	mov    $0x2,%edi
  4036e1:	e8 8a d9 ff ff       	call   401070 <socket@plt>
  4036e6:	89 85 2c fb ff ff    	mov    %eax,-0x4d4(%rbp)
  4036ec:	83 bd 2c fb ff ff 00 	cmpl   $0x0,-0x4d4(%rbp)
  4036f3:	79 31                	jns    403726 <bomb_explode+0xe6>
  4036f5:	48 8d 05 7c e9 ff ff 	lea    -0x1684(%rip),%rax        # 402078 <_IO_stdin_used+0xf8>
  4036fc:	48 89 85 50 fb ff ff 	mov    %rax,-0x4b0(%rbp)
  403703:	48 8b 85 50 fb ff ff 	mov    -0x4b0(%rbp),%rax
  40370a:	48 89 c6             	mov    %rax,%rsi
  40370d:	bf 01 00 00 00       	mov    $0x1,%edi
  403712:	b8 00 00 00 00       	mov    $0x0,%eax
  403717:	e8 44 d8 ff ff       	call   400f60 <__printf_chk@plt>
  40371c:	bf 08 00 00 00       	mov    $0x8,%edi
  403721:	e8 1a d8 ff ff       	call   400f40 <exit@plt>
  403726:	48 8b 85 18 fb ff ff 	mov    -0x4e8(%rbp),%rax
  40372d:	48 89 c7             	mov    %rax,%rdi
  403730:	e8 db d7 ff ff       	call   400f10 <gethostbyname@plt>
  403735:	48 89 85 48 fb ff ff 	mov    %rax,-0x4b8(%rbp)
  40373c:	48 83 bd 48 fb ff ff 	cmpq   $0x0,-0x4b8(%rbp)
  403743:	00 
  403744:	75 31                	jne    403777 <bomb_explode+0x137>
  403746:	48 8d 05 53 e9 ff ff 	lea    -0x16ad(%rip),%rax        # 4020a0 <_IO_stdin_used+0x120>
  40374d:	48 89 85 58 fb ff ff 	mov    %rax,-0x4a8(%rbp)
  403754:	48 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%rax
  40375b:	48 89 c6             	mov    %rax,%rsi
  40375e:	bf 01 00 00 00       	mov    $0x1,%edi
  403763:	b8 00 00 00 00       	mov    $0x0,%eax
  403768:	e8 f3 d7 ff ff       	call   400f60 <__printf_chk@plt>
  40376d:	bf 08 00 00 00       	mov    $0x8,%edi
  403772:	e8 c9 d7 ff ff       	call   400f40 <exit@plt>
  403777:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
  40377e:	48 89 85 78 fb ff ff 	mov    %rax,-0x488(%rbp)
  403785:	48 c7 85 80 fb ff ff 	movq   $0x10,-0x480(%rbp)
  40378c:	10 00 00 00 
  403790:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403797:	48 8b 95 80 fb ff ff 	mov    -0x480(%rbp),%rdx
  40379e:	48 8b 85 78 fb ff ff 	mov    -0x488(%rbp),%rax
  4037a5:	be 00 00 00 00       	mov    $0x0,%esi
  4037aa:	48 89 c7             	mov    %rax,%rdi
  4037ad:	e8 ee d8 ff ff       	call   4010a0 <__memset_chk@plt>
  4037b2:	90                   	nop
  4037b3:	66 c7 85 e0 fb ff ff 	movw   $0x2,-0x420(%rbp)
  4037ba:	02 00 
  4037bc:	48 8b 85 48 fb ff ff 	mov    -0x4b8(%rbp),%rax
  4037c3:	8b 40 14             	mov    0x14(%rax),%eax
  4037c6:	48 98                	cltq
  4037c8:	48 8b 95 48 fb ff ff 	mov    -0x4b8(%rbp),%rdx
  4037cf:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  4037d3:	48 8b 12             	mov    (%rdx),%rdx
  4037d6:	48 89 95 60 fb ff ff 	mov    %rdx,-0x4a0(%rbp)
  4037dd:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  4037e4:	48 83 c2 04          	add    $0x4,%rdx
  4037e8:	48 89 95 68 fb ff ff 	mov    %rdx,-0x498(%rbp)
  4037ef:	48 89 85 70 fb ff ff 	mov    %rax,-0x490(%rbp)
  4037f6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4037fd:	48 8b 95 70 fb ff ff 	mov    -0x490(%rbp),%rdx
  403804:	48 8b b5 60 fb ff ff 	mov    -0x4a0(%rbp),%rsi
  40380b:	48 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%rax
  403812:	48 89 c7             	mov    %rax,%rdi
  403815:	e8 e6 d8 ff ff       	call   401100 <__memmove_chk@plt>
  40381a:	90                   	nop
  40381b:	8b 85 14 fb ff ff    	mov    -0x4ec(%rbp),%eax
  403821:	0f b7 c0             	movzwl %ax,%eax
  403824:	89 c7                	mov    %eax,%edi
  403826:	e8 55 dc ff ff       	call   401480 <__bswap_16>
  40382b:	66 89 85 e2 fb ff ff 	mov    %ax,-0x41e(%rbp)
  403832:	48 8d 8d e0 fb ff ff 	lea    -0x420(%rbp),%rcx
  403839:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  40383f:	ba 10 00 00 00       	mov    $0x10,%edx
  403844:	48 89 ce             	mov    %rcx,%rsi
  403847:	89 c7                	mov    %eax,%edi
  403849:	e8 f2 d7 ff ff       	call   401040 <connect@plt>
  40384e:	85 c0                	test   %eax,%eax
  403850:	79 31                	jns    403883 <bomb_explode+0x243>
  403852:	48 8d 05 77 e8 ff ff 	lea    -0x1789(%rip),%rax        # 4020d0 <_IO_stdin_used+0x150>
  403859:	48 89 85 88 fb ff ff 	mov    %rax,-0x478(%rbp)
  403860:	48 8b 85 88 fb ff ff 	mov    -0x478(%rbp),%rax
  403867:	48 89 c6             	mov    %rax,%rsi
  40386a:	bf 01 00 00 00       	mov    $0x1,%edi
  40386f:	b8 00 00 00 00       	mov    $0x0,%eax
  403874:	e8 e7 d6 ff ff       	call   400f60 <__printf_chk@plt>
  403879:	bf 08 00 00 00       	mov    $0x8,%edi
  40387e:	e8 bd d6 ff ff       	call   400f40 <exit@plt>
  403883:	48 8b 05 e6 0c 00 00 	mov    0xce6(%rip),%rax        # 404570 <inputListBegin>
  40388a:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
  403891:	c7 85 28 fb ff ff 00 	movl   $0x0,-0x4d8(%rbp)
  403898:	00 00 00 
  40389b:	eb 37                	jmp    4038d4 <bomb_explode+0x294>
  40389d:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  4038a4:	48 8b 00             	mov    (%rax),%rax
  4038a7:	48 89 c7             	mov    %rax,%rdi
  4038aa:	e8 31 d7 ff ff       	call   400fe0 <strlen@plt>
  4038af:	89 c2                	mov    %eax,%edx
  4038b1:	8b 85 28 fb ff ff    	mov    -0x4d8(%rbp),%eax
  4038b7:	01 d0                	add    %edx,%eax
  4038b9:	83 c0 01             	add    $0x1,%eax
  4038bc:	89 85 28 fb ff ff    	mov    %eax,-0x4d8(%rbp)
  4038c2:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  4038c9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4038cd:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
  4038d4:	48 83 bd 38 fb ff ff 	cmpq   $0x0,-0x4c8(%rbp)
  4038db:	00 
  4038dc:	75 bf                	jne    40389d <bomb_explode+0x25d>
  4038de:	8b 0d 84 0c 00 00    	mov    0xc84(%rip),%ecx        # 404568 <inputListLength>
  4038e4:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4038eb:	48 89 85 c0 fb ff ff 	mov    %rax,-0x440(%rbp)
  4038f2:	48 8d 05 ff e7 ff ff 	lea    -0x1801(%rip),%rax        # 4020f8 <_IO_stdin_used+0x178>
  4038f9:	48 89 85 c8 fb ff ff 	mov    %rax,-0x438(%rbp)
  403900:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  403907:	48 8b 95 c8 fb ff ff 	mov    -0x438(%rbp),%rdx
  40390e:	48 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%rax
  403915:	48 83 ec 08          	sub    $0x8,%rsp
  403919:	51                   	push   %rcx
  40391a:	ff b5 08 fb ff ff    	push   -0x4f8(%rbp)
  403920:	48 8d 0d 19 e9 ff ff 	lea    -0x16e7(%rip),%rcx        # 402240 <labname>
  403927:	51                   	push   %rcx
  403928:	4c 8d 0d d1 0c 00 00 	lea    0xcd1(%rip),%r9        # 404600 <userpwd>
  40392f:	4c 8d 05 4a 0c 00 00 	lea    0xc4a(%rip),%r8        # 404580 <userid>
  403936:	48 89 d1             	mov    %rdx,%rcx
  403939:	48 89 f2             	mov    %rsi,%rdx
  40393c:	be 01 00 00 00       	mov    $0x1,%esi
  403941:	48 89 c7             	mov    %rax,%rdi
  403944:	b8 00 00 00 00       	mov    $0x0,%eax
  403949:	e8 82 d7 ff ff       	call   4010d0 <__sprintf_chk@plt>
  40394e:	48 83 c4 20          	add    $0x20,%rsp
  403952:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403959:	48 89 c7             	mov    %rax,%rdi
  40395c:	e8 7f d6 ff ff       	call   400fe0 <strlen@plt>
  403961:	48 89 c2             	mov    %rax,%rdx
  403964:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  40396b:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403971:	48 89 ce             	mov    %rcx,%rsi
  403974:	89 c7                	mov    %eax,%edi
  403976:	e8 95 d7 ff ff       	call   401110 <write@plt>
  40397b:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403982:	48 89 85 b0 fb ff ff 	mov    %rax,-0x450(%rbp)
  403989:	48 8d 05 b4 e7 ff ff 	lea    -0x184c(%rip),%rax        # 402144 <_IO_stdin_used+0x1c4>
  403990:	48 89 85 b8 fb ff ff 	mov    %rax,-0x448(%rbp)
  403997:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40399e:	48 8b 8d 18 fb ff ff 	mov    -0x4e8(%rbp),%rcx
  4039a5:	48 8b 95 b8 fb ff ff 	mov    -0x448(%rbp),%rdx
  4039ac:	48 8b 85 b0 fb ff ff 	mov    -0x450(%rbp),%rax
  4039b3:	49 89 c8             	mov    %rcx,%r8
  4039b6:	48 89 d1             	mov    %rdx,%rcx
  4039b9:	48 89 f2             	mov    %rsi,%rdx
  4039bc:	be 01 00 00 00       	mov    $0x1,%esi
  4039c1:	48 89 c7             	mov    %rax,%rdi
  4039c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4039c9:	e8 02 d7 ff ff       	call   4010d0 <__sprintf_chk@plt>
  4039ce:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4039d5:	48 89 c7             	mov    %rax,%rdi
  4039d8:	e8 03 d6 ff ff       	call   400fe0 <strlen@plt>
  4039dd:	48 89 c2             	mov    %rax,%rdx
  4039e0:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  4039e7:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  4039ed:	48 89 ce             	mov    %rcx,%rsi
  4039f0:	89 c7                	mov    %eax,%edi
  4039f2:	e8 19 d7 ff ff       	call   401110 <write@plt>
  4039f7:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4039fe:	48 89 85 a0 fb ff ff 	mov    %rax,-0x460(%rbp)
  403a05:	48 8d 05 43 e7 ff ff 	lea    -0x18bd(%rip),%rax        # 40214f <_IO_stdin_used+0x1cf>
  403a0c:	48 89 85 a8 fb ff ff 	mov    %rax,-0x458(%rbp)
  403a13:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  403a1a:	8b 8d 28 fb ff ff    	mov    -0x4d8(%rbp),%ecx
  403a20:	48 8b 95 a8 fb ff ff 	mov    -0x458(%rbp),%rdx
  403a27:	48 8b 85 a0 fb ff ff 	mov    -0x460(%rbp),%rax
  403a2e:	41 89 c8             	mov    %ecx,%r8d
  403a31:	48 89 d1             	mov    %rdx,%rcx
  403a34:	48 89 f2             	mov    %rsi,%rdx
  403a37:	be 01 00 00 00       	mov    $0x1,%esi
  403a3c:	48 89 c7             	mov    %rax,%rdi
  403a3f:	b8 00 00 00 00       	mov    $0x0,%eax
  403a44:	e8 87 d6 ff ff       	call   4010d0 <__sprintf_chk@plt>
  403a49:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403a50:	48 89 c7             	mov    %rax,%rdi
  403a53:	e8 88 d5 ff ff       	call   400fe0 <strlen@plt>
  403a58:	48 89 c2             	mov    %rax,%rdx
  403a5b:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  403a62:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403a68:	48 89 ce             	mov    %rcx,%rsi
  403a6b:	89 c7                	mov    %eax,%edi
  403a6d:	e8 9e d6 ff ff       	call   401110 <write@plt>
  403a72:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403a79:	48 89 85 90 fb ff ff 	mov    %rax,-0x470(%rbp)
  403a80:	48 8d 05 dd e6 ff ff 	lea    -0x1923(%rip),%rax        # 402164 <_IO_stdin_used+0x1e4>
  403a87:	48 89 85 98 fb ff ff 	mov    %rax,-0x468(%rbp)
  403a8e:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  403a95:	48 8b 95 98 fb ff ff 	mov    -0x468(%rbp),%rdx
  403a9c:	48 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%rax
  403aa3:	48 89 d1             	mov    %rdx,%rcx
  403aa6:	48 89 f2             	mov    %rsi,%rdx
  403aa9:	be 01 00 00 00       	mov    $0x1,%esi
  403aae:	48 89 c7             	mov    %rax,%rdi
  403ab1:	b8 00 00 00 00       	mov    $0x0,%eax
  403ab6:	e8 15 d6 ff ff       	call   4010d0 <__sprintf_chk@plt>
  403abb:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403ac2:	48 89 c7             	mov    %rax,%rdi
  403ac5:	e8 16 d5 ff ff       	call   400fe0 <strlen@plt>
  403aca:	48 89 c2             	mov    %rax,%rdx
  403acd:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  403ad4:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403ada:	48 89 ce             	mov    %rcx,%rsi
  403add:	89 c7                	mov    %eax,%edi
  403adf:	e8 2c d6 ff ff       	call   401110 <write@plt>
  403ae4:	48 8b 05 85 0a 00 00 	mov    0xa85(%rip),%rax        # 404570 <inputListBegin>
  403aeb:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
  403af2:	eb 5a                	jmp    403b4e <bomb_explode+0x50e>
  403af4:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  403afb:	48 8b 00             	mov    (%rax),%rax
  403afe:	48 89 c7             	mov    %rax,%rdi
  403b01:	e8 da d4 ff ff       	call   400fe0 <strlen@plt>
  403b06:	48 89 c2             	mov    %rax,%rdx
  403b09:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  403b10:	48 8b 08             	mov    (%rax),%rcx
  403b13:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403b19:	48 89 ce             	mov    %rcx,%rsi
  403b1c:	89 c7                	mov    %eax,%edi
  403b1e:	e8 ed d5 ff ff       	call   401110 <write@plt>
  403b23:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403b29:	ba 01 00 00 00       	mov    $0x1,%edx
  403b2e:	48 8d 35 4b e6 ff ff 	lea    -0x19b5(%rip),%rsi        # 402180 <_IO_stdin_used+0x200>
  403b35:	89 c7                	mov    %eax,%edi
  403b37:	e8 d4 d5 ff ff       	call   401110 <write@plt>
  403b3c:	48 8b 85 38 fb ff ff 	mov    -0x4c8(%rbp),%rax
  403b43:	48 8b 40 08          	mov    0x8(%rax),%rax
  403b47:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
  403b4e:	48 83 bd 38 fb ff ff 	cmpq   $0x0,-0x4c8(%rbp)
  403b55:	00 
  403b56:	75 9c                	jne    403af4 <bomb_explode+0x4b4>
  403b58:	c7 85 30 fb ff ff 00 	movl   $0x0,-0x4d0(%rbp)
  403b5f:	00 00 00 
  403b62:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  403b69:	48 89 85 40 fb ff ff 	mov    %rax,-0x4c0(%rbp)
  403b70:	eb 0f                	jmp    403b81 <bomb_explode+0x541>
  403b72:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
  403b78:	48 98                	cltq
  403b7a:	48 01 85 40 fb ff ff 	add    %rax,-0x4c0(%rbp)
  403b81:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403b87:	89 85 34 fb ff ff    	mov    %eax,-0x4cc(%rbp)
  403b8d:	48 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%rax
  403b94:	48 89 85 d0 fb ff ff 	mov    %rax,-0x430(%rbp)
  403b9b:	48 c7 85 d8 fb ff ff 	movq   $0x1,-0x428(%rbp)
  403ba2:	01 00 00 00 
  403ba6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  403bad:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  403bb1:	74 4e                	je     403c01 <bomb_explode+0x5c1>
  403bb3:	ba 00 00 00 00       	mov    $0x0,%edx
  403bb8:	85 d2                	test   %edx,%edx
  403bba:	75 1e                	jne    403bda <bomb_explode+0x59a>
  403bbc:	48 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%rdx
  403bc3:	48 8b b5 d0 fb ff ff 	mov    -0x430(%rbp),%rsi
  403bca:	8b bd 34 fb ff ff    	mov    -0x4cc(%rbp),%edi
  403bd0:	48 89 c1             	mov    %rax,%rcx
  403bd3:	e8 38 d4 ff ff       	call   401010 <__read_chk@plt>
  403bd8:	eb 45                	jmp    403c1f <bomb_explode+0x5df>
  403bda:	48 39 85 d8 fb ff ff 	cmp    %rax,-0x428(%rbp)
  403be1:	76 1e                	jbe    403c01 <bomb_explode+0x5c1>
  403be3:	48 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%rdx
  403bea:	48 8b b5 d0 fb ff ff 	mov    -0x430(%rbp),%rsi
  403bf1:	8b bd 34 fb ff ff    	mov    -0x4cc(%rbp),%edi
  403bf7:	48 89 c1             	mov    %rax,%rcx
  403bfa:	e8 11 d4 ff ff       	call   401010 <__read_chk@plt>
  403bff:	eb 1e                	jmp    403c1f <bomb_explode+0x5df>
  403c01:	48 8b 95 d8 fb ff ff 	mov    -0x428(%rbp),%rdx
  403c08:	48 8b 8d d0 fb ff ff 	mov    -0x430(%rbp),%rcx
  403c0f:	8b 85 34 fb ff ff    	mov    -0x4cc(%rbp),%eax
  403c15:	48 89 ce             	mov    %rcx,%rsi
  403c18:	89 c7                	mov    %eax,%edi
  403c1a:	e8 61 d3 ff ff       	call   400f80 <read@plt>
  403c1f:	89 85 30 fb ff ff    	mov    %eax,-0x4d0(%rbp)
  403c25:	48 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%rax
  403c2c:	0f b6 00             	movzbl (%rax),%eax
  403c2f:	3c 0a                	cmp    $0xa,%al
  403c31:	0f 85 3b ff ff ff    	jne    403b72 <bomb_explode+0x532>
  403c37:	48 8b 85 40 fb ff ff 	mov    -0x4c0(%rbp),%rax
  403c3e:	48 83 c0 01          	add    $0x1,%rax
  403c42:	c6 00 00             	movb   $0x0,(%rax)
  403c45:	8b 85 2c fb ff ff    	mov    -0x4d4(%rbp),%eax
  403c4b:	89 c7                	mov    %eax,%edi
  403c4d:	e8 8e d2 ff ff       	call   400ee0 <close@plt>
  403c52:	90                   	nop
  403c53:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403c57:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  403c5e:	00 00 
  403c60:	74 05                	je     403c67 <bomb_explode+0x627>
  403c62:	e8 29 d4 ff ff       	call   401090 <__stack_chk_fail@plt>
  403c67:	c9                   	leave
  403c68:	c3                   	ret
  403c69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403c70:	f3 0f 1e fa          	endbr64
  403c74:	55                   	push   %rbp
  403c75:	48 89 e5             	mov    %rsp,%rbp
  403c78:	b8 01 00 00 00       	mov    $0x1,%eax
  403c7d:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 403c84 <bomb_explode+0x644>
  403c83:	eb 10                	jmp    403c95 <bomb_explode+0x655>
  403c85:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  403c8c:	05 f3 ff 
  403c8f:	ff                   	(bad)
  403c90:	ff 48 8d             	decl   -0x73(%rax)
  403c93:	35 78 00 00 00       	xor    $0x78,%eax
  403c98:	bf 0e 00 00 00       	mov    $0xe,%edi
  403c9d:	e8 be d3 ff ff       	call   401060 <signal@plt>
  403ca2:	b8 01 00 00 00       	mov    $0x1,%eax
  403ca7:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 403cae <bomb_explode+0x66e>
  403cad:	eb 10                	jmp    403cbf <bomb_explode+0x67f>
  403caf:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  403cb6:	05 f3 ff 
  403cb9:	ff                   	(bad)
  403cba:	ff                   	(bad)
  403cbb:	bf 01 00 00 00       	mov    $0x1,%edi
  403cc0:	e8 bb d3 ff ff       	call   401080 <alarm@plt>
  403cc5:	b8 01 00 00 00       	mov    $0x1,%eax
  403cca:	88 05 01 00 00 00    	mov    %al,0x1(%rip)        # 403cd1 <bomb_explode+0x691>
  403cd0:	eb 10                	jmp    403ce2 <bomb_explode+0x6a2>
  403cd2:	48 b8 10 00 00 00 88 	movabs $0xfff3058800000010,%rax
  403cd9:	05 f3 ff 
  403cdc:	ff                   	(bad)
  403cdd:	ff                   	(bad)
  403cde:	be 01 00 00 00       	mov    $0x1,%esi
  403ce3:	48 8d 3d b6 06 00 00 	lea    0x6b6(%rip),%rdi        # 4043a0 <bomb_explode_flag+0x20>
  403cea:	e8 01 d4 ff ff       	call   4010f0 <__sigsetjmp@plt>
  403cef:	f3 0f 1e fa          	endbr64
  403cf3:	85 c0                	test   %eax,%eax
  403cf5:	74 0a                	je     403d01 <bomb_explode+0x6c1>
  403cf7:	b8 00 00 00 00       	mov    $0x0,%eax
  403cfc:	e8 3f f9 ff ff       	call   403640 <bomb_explode>
  403d01:	90                   	nop
  403d02:	5d                   	pop    %rbp
  403d03:	c3                   	ret
  403d04:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  403d0b:	00 00 00 00 
  403d0f:	90                   	nop
  403d10:	f3 0f 1e fa          	endbr64
  403d14:	55                   	push   %rbp
  403d15:	48 89 e5             	mov    %rsp,%rbp
  403d18:	48 83 ec 60          	sub    $0x60,%rsp
  403d1c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403d23:	00 00 
  403d25:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403d29:	31 c0                	xor    %eax,%eax
  403d2b:	48 8b 0d ce 05 00 00 	mov    0x5ce(%rip),%rcx        # 404300 <driver_size>
  403d32:	48 8b 05 bf 05 00 00 	mov    0x5bf(%rip),%rax        # 4042f8 <driver_start>
  403d39:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  403d3d:	48 89 ce             	mov    %rcx,%rsi
  403d40:	48 89 c7             	mov    %rax,%rdi
  403d43:	e8 a8 d2 ff ff       	call   400ff0 <MD5@plt>
  403d48:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
  403d4f:	eb 58                	jmp    403da9 <bomb_explode+0x769>
  403d51:	8b 45 ac             	mov    -0x54(%rbp),%eax
  403d54:	48 98                	cltq
  403d56:	0f b6 44 05 c0       	movzbl -0x40(%rbp,%rax,1),%eax
  403d5b:	0f b6 c8             	movzbl %al,%ecx
  403d5e:	8b 45 ac             	mov    -0x54(%rbp),%eax
  403d61:	01 c0                	add    %eax,%eax
  403d63:	48 98                	cltq
  403d65:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  403d69:	48 01 d0             	add    %rdx,%rax
  403d6c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  403d70:	48 8d 05 0d e2 ff ff 	lea    -0x1df3(%rip),%rax        # 401f84 <_IO_stdin_used+0x4>
  403d77:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  403d7b:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  403d82:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  403d86:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  403d8a:	41 89 c8             	mov    %ecx,%r8d
  403d8d:	48 89 d1             	mov    %rdx,%rcx
  403d90:	48 89 f2             	mov    %rsi,%rdx
  403d93:	be 01 00 00 00       	mov    $0x1,%esi
  403d98:	48 89 c7             	mov    %rax,%rdi
  403d9b:	b8 00 00 00 00       	mov    $0x0,%eax
  403da0:	e8 2b d3 ff ff       	call   4010d0 <__sprintf_chk@plt>
  403da5:	83 45 ac 01          	addl   $0x1,-0x54(%rbp)
  403da9:	83 7d ac 0f          	cmpl   $0xf,-0x54(%rbp)
  403dad:	7e a2                	jle    403d51 <bomb_explode+0x711>
  403daf:	48 89 e8             	mov    %rbp,%rax
  403db2:	48 31 ed             	xor    %rbp,%rbp
  403db5:	48 89 05 bc 07 00 00 	mov    %rax,0x7bc(%rip)        # 404578 <inputListBegin+0x8>
  403dbc:	b8 00 00 00 00       	mov    $0x0,%eax
  403dc1:	e8 7a 00 00 00       	call   403e40 <bomb_explode+0x800>
  403dc6:	48 8b 05 ab 07 00 00 	mov    0x7ab(%rip),%rax        # 404578 <inputListBegin+0x8>
  403dcd:	48 89 c5             	mov    %rax,%rbp
  403dd0:	48 8b 05 a9 05 00 00 	mov    0x5a9(%rip),%rax        # 404380 <bomb_explode_flag>
  403dd7:	48 85 c0             	test   %rax,%rax
  403dda:	74 0a                	je     403de6 <bomb_explode+0x7a6>
  403ddc:	bf 08 00 00 00       	mov    $0x8,%edi
  403de1:	e8 5a d1 ff ff       	call   400f40 <exit@plt>
  403de6:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  403dea:	ba 20 00 00 00       	mov    $0x20,%edx
  403def:	48 8d 35 12 05 00 00 	lea    0x512(%rip),%rsi        # 404308 <magic>
  403df6:	48 89 c7             	mov    %rax,%rdi
  403df9:	e8 b2 d2 ff ff       	call   4010b0 <memcmp@plt>
  403dfe:	85 c0                	test   %eax,%eax
  403e00:	74 1b                	je     403e1d <bomb_explode+0x7dd>
  403e02:	48 8d 05 37 f8 ff ff 	lea    -0x7c9(%rip),%rax        # 403640 <bomb_explode>
  403e09:	c6 00 f3             	movb   $0xf3,(%rax)
  403e0c:	be 01 00 00 00       	mov    $0x1,%esi
  403e11:	48 8d 3d 88 05 00 00 	lea    0x588(%rip),%rdi        # 4043a0 <bomb_explode_flag+0x20>
  403e18:	e8 d3 d0 ff ff       	call   400ef0 <__longjmp_chk@plt>
  403e1d:	bf 01 00 00 00       	mov    $0x1,%edi
  403e22:	e8 59 d2 ff ff       	call   401080 <alarm@plt>
  403e27:	90                   	nop
  403e28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403e2c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  403e33:	00 00 
  403e35:	74 05                	je     403e3c <bomb_explode+0x7fc>
  403e37:	e8 54 d2 ff ff       	call   401090 <__stack_chk_fail@plt>
  403e3c:	c9                   	leave
  403e3d:	c3                   	ret
  403e3e:	66 90                	xchg   %ax,%ax
  403e40:	f3 0f 1e fa          	endbr64
  403e44:	55                   	push   %rbp
  403e45:	48 89 e5             	mov    %rsp,%rbp
  403e48:	48 81 ec d0 04 00 00 	sub    $0x4d0,%rsp
  403e4f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403e56:	00 00 
  403e58:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403e5c:	31 c0                	xor    %eax,%eax
  403e5e:	ba 00 00 00 00       	mov    $0x0,%edx
  403e63:	be 01 00 00 00       	mov    $0x1,%esi
  403e68:	bf 02 00 00 00       	mov    $0x2,%edi
  403e6d:	e8 fe d1 ff ff       	call   401070 <socket@plt>
  403e72:	89 85 40 fb ff ff    	mov    %eax,-0x4c0(%rbp)
  403e78:	83 bd 40 fb ff ff 00 	cmpl   $0x0,-0x4c0(%rbp)
  403e7f:	79 31                	jns    403eb2 <bomb_explode+0x872>
  403e81:	48 8d 05 f0 e1 ff ff 	lea    -0x1e10(%rip),%rax        # 402078 <_IO_stdin_used+0xf8>
  403e88:	48 89 85 68 fb ff ff 	mov    %rax,-0x498(%rbp)
  403e8f:	48 8b 85 68 fb ff ff 	mov    -0x498(%rbp),%rax
  403e96:	48 89 c6             	mov    %rax,%rsi
  403e99:	bf 01 00 00 00       	mov    $0x1,%edi
  403e9e:	b8 00 00 00 00       	mov    $0x0,%eax
  403ea3:	e8 b8 d0 ff ff       	call   400f60 <__printf_chk@plt>
  403ea8:	bf 08 00 00 00       	mov    $0x8,%edi
  403ead:	e8 8e d0 ff ff       	call   400f40 <exit@plt>
  403eb2:	48 8d 3d 27 e4 ff ff 	lea    -0x1bd9(%rip),%rdi        # 4022e0 <serverhost>
  403eb9:	e8 52 d0 ff ff       	call   400f10 <gethostbyname@plt>
  403ebe:	48 89 85 60 fb ff ff 	mov    %rax,-0x4a0(%rbp)
  403ec5:	48 83 bd 60 fb ff ff 	cmpq   $0x0,-0x4a0(%rbp)
  403ecc:	00 
  403ecd:	75 31                	jne    403f00 <bomb_explode+0x8c0>
  403ecf:	48 8d 05 ca e1 ff ff 	lea    -0x1e36(%rip),%rax        # 4020a0 <_IO_stdin_used+0x120>
  403ed6:	48 89 85 70 fb ff ff 	mov    %rax,-0x490(%rbp)
  403edd:	48 8b 85 70 fb ff ff 	mov    -0x490(%rbp),%rax
  403ee4:	48 89 c6             	mov    %rax,%rsi
  403ee7:	bf 01 00 00 00       	mov    $0x1,%edi
  403eec:	b8 00 00 00 00       	mov    $0x0,%eax
  403ef1:	e8 6a d0 ff ff       	call   400f60 <__printf_chk@plt>
  403ef6:	bf 08 00 00 00       	mov    $0x8,%edi
  403efb:	e8 40 d0 ff ff       	call   400f40 <exit@plt>
  403f00:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
  403f07:	48 89 85 90 fb ff ff 	mov    %rax,-0x470(%rbp)
  403f0e:	48 c7 85 98 fb ff ff 	movq   $0x10,-0x468(%rbp)
  403f15:	10 00 00 00 
  403f19:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403f20:	48 8b 95 98 fb ff ff 	mov    -0x468(%rbp),%rdx
  403f27:	48 8b 85 90 fb ff ff 	mov    -0x470(%rbp),%rax
  403f2e:	be 00 00 00 00       	mov    $0x0,%esi
  403f33:	48 89 c7             	mov    %rax,%rdi
  403f36:	e8 65 d1 ff ff       	call   4010a0 <__memset_chk@plt>
  403f3b:	90                   	nop
  403f3c:	66 c7 85 e0 fb ff ff 	movw   $0x2,-0x420(%rbp)
  403f43:	02 00 
  403f45:	48 8b 85 60 fb ff ff 	mov    -0x4a0(%rbp),%rax
  403f4c:	8b 40 14             	mov    0x14(%rax),%eax
  403f4f:	48 98                	cltq
  403f51:	48 8b 95 60 fb ff ff 	mov    -0x4a0(%rbp),%rdx
  403f58:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  403f5c:	48 8b 12             	mov    (%rdx),%rdx
  403f5f:	48 89 95 78 fb ff ff 	mov    %rdx,-0x488(%rbp)
  403f66:	48 8d 95 e0 fb ff ff 	lea    -0x420(%rbp),%rdx
  403f6d:	48 83 c2 04          	add    $0x4,%rdx
  403f71:	48 89 95 80 fb ff ff 	mov    %rdx,-0x480(%rbp)
  403f78:	48 89 85 88 fb ff ff 	mov    %rax,-0x478(%rbp)
  403f7f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403f86:	48 8b 95 88 fb ff ff 	mov    -0x478(%rbp),%rdx
  403f8d:	48 8b b5 78 fb ff ff 	mov    -0x488(%rbp),%rsi
  403f94:	48 8b 85 80 fb ff ff 	mov    -0x480(%rbp),%rax
  403f9b:	48 89 c7             	mov    %rax,%rdi
  403f9e:	e8 5d d1 ff ff       	call   401100 <__memmove_chk@plt>
  403fa3:	90                   	nop
  403fa4:	8b 05 16 e3 ff ff    	mov    -0x1cea(%rip),%eax        # 4022c0 <serverport>
  403faa:	0f b7 c0             	movzwl %ax,%eax
  403fad:	89 c7                	mov    %eax,%edi
  403faf:	e8 cc d4 ff ff       	call   401480 <__bswap_16>
  403fb4:	66 89 85 e2 fb ff ff 	mov    %ax,-0x41e(%rbp)
  403fbb:	48 8d 8d e0 fb ff ff 	lea    -0x420(%rbp),%rcx
  403fc2:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
  403fc8:	ba 10 00 00 00       	mov    $0x10,%edx
  403fcd:	48 89 ce             	mov    %rcx,%rsi
  403fd0:	89 c7                	mov    %eax,%edi
  403fd2:	e8 69 d0 ff ff       	call   401040 <connect@plt>
  403fd7:	85 c0                	test   %eax,%eax
  403fd9:	79 31                	jns    40400c <bomb_explode+0x9cc>
  403fdb:	48 8d 05 ee e0 ff ff 	lea    -0x1f12(%rip),%rax        # 4020d0 <_IO_stdin_used+0x150>
  403fe2:	48 89 85 a0 fb ff ff 	mov    %rax,-0x460(%rbp)
  403fe9:	48 8b 85 a0 fb ff ff 	mov    -0x460(%rbp),%rax
  403ff0:	48 89 c6             	mov    %rax,%rsi
  403ff3:	bf 01 00 00 00       	mov    $0x1,%edi
  403ff8:	b8 00 00 00 00       	mov    $0x0,%eax
  403ffd:	e8 5e cf ff ff       	call   400f60 <__printf_chk@plt>
  404002:	bf 08 00 00 00       	mov    $0x8,%edi
  404007:	e8 34 cf ff ff       	call   400f40 <exit@plt>
  40400c:	48 8b 05 5d 05 00 00 	mov    0x55d(%rip),%rax        # 404570 <inputListBegin>
  404013:	48 89 85 50 fb ff ff 	mov    %rax,-0x4b0(%rbp)
  40401a:	c7 85 3c fb ff ff 00 	movl   $0x0,-0x4c4(%rbp)
  404021:	00 00 00 
  404024:	eb 37                	jmp    40405d <bomb_explode+0xa1d>
  404026:	48 8b 85 50 fb ff ff 	mov    -0x4b0(%rbp),%rax
  40402d:	48 8b 00             	mov    (%rax),%rax
  404030:	48 89 c7             	mov    %rax,%rdi
  404033:	e8 a8 cf ff ff       	call   400fe0 <strlen@plt>
  404038:	89 c2                	mov    %eax,%edx
  40403a:	8b 85 3c fb ff ff    	mov    -0x4c4(%rbp),%eax
  404040:	01 d0                	add    %edx,%eax
  404042:	83 c0 01             	add    $0x1,%eax
  404045:	89 85 3c fb ff ff    	mov    %eax,-0x4c4(%rbp)
  40404b:	48 8b 85 50 fb ff ff 	mov    -0x4b0(%rbp),%rax
  404052:	48 8b 40 08          	mov    0x8(%rax),%rax
  404056:	48 89 85 50 fb ff ff 	mov    %rax,-0x4b0(%rbp)
  40405d:	48 83 bd 50 fb ff ff 	cmpq   $0x0,-0x4b0(%rbp)
  404064:	00 
  404065:	75 bf                	jne    404026 <bomb_explode+0x9e6>
  404067:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  40406e:	48 89 85 b8 fb ff ff 	mov    %rax,-0x448(%rbp)
  404075:	48 8d 05 0c e1 ff ff 	lea    -0x1ef4(%rip),%rax        # 402188 <_IO_stdin_used+0x208>
  40407c:	48 89 85 c0 fb ff ff 	mov    %rax,-0x440(%rbp)
  404083:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40408a:	48 8b 95 c0 fb ff ff 	mov    -0x440(%rbp),%rdx
  404091:	48 8b 85 b8 fb ff ff 	mov    -0x448(%rbp),%rax
  404098:	48 83 ec 08          	sub    $0x8,%rsp
  40409c:	48 8d 0d 9d e1 ff ff 	lea    -0x1e63(%rip),%rcx        # 402240 <labname>
  4040a3:	51                   	push   %rcx
  4040a4:	4c 8d 0d 55 05 00 00 	lea    0x555(%rip),%r9        # 404600 <userpwd>
  4040ab:	4c 8d 05 ce 04 00 00 	lea    0x4ce(%rip),%r8        # 404580 <userid>
  4040b2:	48 89 d1             	mov    %rdx,%rcx
  4040b5:	48 89 f2             	mov    %rsi,%rdx
  4040b8:	be 01 00 00 00       	mov    $0x1,%esi
  4040bd:	48 89 c7             	mov    %rax,%rdi
  4040c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4040c5:	e8 06 d0 ff ff       	call   4010d0 <__sprintf_chk@plt>
  4040ca:	48 83 c4 10          	add    $0x10,%rsp
  4040ce:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4040d5:	48 89 c7             	mov    %rax,%rdi
  4040d8:	e8 03 cf ff ff       	call   400fe0 <strlen@plt>
  4040dd:	48 89 c2             	mov    %rax,%rdx
  4040e0:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  4040e7:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
  4040ed:	48 89 ce             	mov    %rcx,%rsi
  4040f0:	89 c7                	mov    %eax,%edi
  4040f2:	e8 19 d0 ff ff       	call   401110 <write@plt>
  4040f7:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  4040fe:	48 89 85 a8 fb ff ff 	mov    %rax,-0x458(%rbp)
  404105:	48 8d 05 b3 e0 ff ff 	lea    -0x1f4d(%rip),%rax        # 4021bf <_IO_stdin_used+0x23f>
  40410c:	48 89 85 b0 fb ff ff 	mov    %rax,-0x450(%rbp)
  404113:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40411a:	48 8b 95 b0 fb ff ff 	mov    -0x450(%rbp),%rdx
  404121:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
  404128:	4c 8d 05 b1 e1 ff ff 	lea    -0x1e4f(%rip),%r8        # 4022e0 <serverhost>
  40412f:	48 89 d1             	mov    %rdx,%rcx
  404132:	48 89 f2             	mov    %rsi,%rdx
  404135:	be 01 00 00 00       	mov    $0x1,%esi
  40413a:	48 89 c7             	mov    %rax,%rdi
  40413d:	b8 00 00 00 00       	mov    $0x0,%eax
  404142:	e8 89 cf ff ff       	call   4010d0 <__sprintf_chk@plt>
  404147:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  40414e:	48 89 c7             	mov    %rax,%rdi
  404151:	e8 8a ce ff ff       	call   400fe0 <strlen@plt>
  404156:	48 89 c2             	mov    %rax,%rdx
  404159:	48 8d 8d f0 fb ff ff 	lea    -0x410(%rbp),%rcx
  404160:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
  404166:	48 89 ce             	mov    %rcx,%rsi
  404169:	89 c7                	mov    %eax,%edi
  40416b:	e8 a0 cf ff ff       	call   401110 <write@plt>
  404170:	c6 85 f0 fb ff ff 00 	movb   $0x0,-0x410(%rbp)
  404177:	c7 85 44 fb ff ff 00 	movl   $0x0,-0x4bc(%rbp)
  40417e:	00 00 00 
  404181:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  404188:	48 89 85 58 fb ff ff 	mov    %rax,-0x4a8(%rbp)
  40418f:	eb 0f                	jmp    4041a0 <bomb_explode+0xb60>
  404191:	8b 85 44 fb ff ff    	mov    -0x4bc(%rbp),%eax
  404197:	48 98                	cltq
  404199:	48 01 85 58 fb ff ff 	add    %rax,-0x4a8(%rbp)
  4041a0:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
  4041a6:	89 85 4c fb ff ff    	mov    %eax,-0x4b4(%rbp)
  4041ac:	48 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%rax
  4041b3:	48 89 85 c8 fb ff ff 	mov    %rax,-0x438(%rbp)
  4041ba:	48 c7 85 d0 fb ff ff 	movq   $0x1,-0x430(%rbp)
  4041c1:	01 00 00 00 
  4041c5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4041cc:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4041d0:	74 4e                	je     404220 <bomb_explode+0xbe0>
  4041d2:	ba 00 00 00 00       	mov    $0x0,%edx
  4041d7:	85 d2                	test   %edx,%edx
  4041d9:	75 1e                	jne    4041f9 <bomb_explode+0xbb9>
  4041db:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
  4041e2:	48 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%rsi
  4041e9:	8b bd 4c fb ff ff    	mov    -0x4b4(%rbp),%edi
  4041ef:	48 89 c1             	mov    %rax,%rcx
  4041f2:	e8 19 ce ff ff       	call   401010 <__read_chk@plt>
  4041f7:	eb 45                	jmp    40423e <bomb_explode+0xbfe>
  4041f9:	48 39 85 d0 fb ff ff 	cmp    %rax,-0x430(%rbp)
  404200:	76 1e                	jbe    404220 <bomb_explode+0xbe0>
  404202:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
  404209:	48 8b b5 c8 fb ff ff 	mov    -0x438(%rbp),%rsi
  404210:	8b bd 4c fb ff ff    	mov    -0x4b4(%rbp),%edi
  404216:	48 89 c1             	mov    %rax,%rcx
  404219:	e8 f2 cd ff ff       	call   401010 <__read_chk@plt>
  40421e:	eb 1e                	jmp    40423e <bomb_explode+0xbfe>
  404220:	48 8b 95 d0 fb ff ff 	mov    -0x430(%rbp),%rdx
  404227:	48 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%rcx
  40422e:	8b 85 4c fb ff ff    	mov    -0x4b4(%rbp),%eax
  404234:	48 89 ce             	mov    %rcx,%rsi
  404237:	89 c7                	mov    %eax,%edi
  404239:	e8 42 cd ff ff       	call   400f80 <read@plt>
  40423e:	89 85 44 fb ff ff    	mov    %eax,-0x4bc(%rbp)
  404244:	48 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%rax
  40424b:	0f b6 00             	movzbl (%rax),%eax
  40424e:	3c 0a                	cmp    $0xa,%al
  404250:	0f 85 3b ff ff ff    	jne    404191 <bomb_explode+0xb51>
  404256:	48 8b 85 58 fb ff ff 	mov    -0x4a8(%rbp),%rax
  40425d:	48 83 c0 01          	add    $0x1,%rax
  404261:	c6 00 00             	movb   $0x0,(%rax)
  404264:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
  40426a:	89 c7                	mov    %eax,%edi
  40426c:	e8 6f cc ff ff       	call   400ee0 <close@plt>
  404271:	48 8d 95 38 fb ff ff 	lea    -0x4c8(%rbp),%rdx
  404278:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
  40427f:	48 8d 35 46 df ff ff 	lea    -0x20ba(%rip),%rsi        # 4021cc <_IO_stdin_used+0x24c>
  404286:	48 89 c7             	mov    %rax,%rdi
  404289:	b8 00 00 00 00       	mov    $0x0,%eax
  40428e:	e8 9d cc ff ff       	call   400f30 <__isoc99_sscanf@plt>
  404293:	89 85 48 fb ff ff    	mov    %eax,-0x4b8(%rbp)
  404299:	83 bd 48 fb ff ff 01 	cmpl   $0x1,-0x4b8(%rbp)
  4042a0:	75 0d                	jne    4042af <bomb_explode+0xc6f>
  4042a2:	8b 85 38 fb ff ff    	mov    -0x4c8(%rbp),%eax
  4042a8:	3d c8 00 00 00       	cmp    $0xc8,%eax
  4042ad:	74 32                	je     4042e1 <bomb_explode+0xca1>
  4042af:	48 8d 05 22 df ff ff 	lea    -0x20de(%rip),%rax        # 4021d8 <_IO_stdin_used+0x258>
  4042b6:	48 89 85 d8 fb ff ff 	mov    %rax,-0x428(%rbp)
  4042bd:	48 8b 85 d8 fb ff ff 	mov    -0x428(%rbp),%rax
  4042c4:	48 89 c6             	mov    %rax,%rsi
  4042c7:	bf 01 00 00 00       	mov    $0x1,%edi
  4042cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4042d1:	e8 8a cc ff ff       	call   400f60 <__printf_chk@plt>
  4042d6:	48 c7 05 9f 00 00 00 	movq   $0x1,0x9f(%rip)        # 404380 <bomb_explode_flag>
  4042dd:	01 00 00 00 
  4042e1:	90                   	nop
  4042e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4042e6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4042ed:	00 00 
  4042ef:	74 05                	je     4042f6 <bomb_explode+0xcb6>
  4042f1:	e8 9a cd ff ff       	call   401090 <__stack_chk_fail@plt>
  4042f6:	c9                   	leave
  4042f7:	c3                   	ret
