
bufbomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 2f 00 00 	mov    0x2fd1(%rip),%rax        # 403fe0 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)
  401030:	f3 0f 1e fa          	endbr64
  401034:	68 00 00 00 00       	push   $0x0
  401039:	e9 e2 ff ff ff       	jmp    401020 <_init+0x20>
  40103e:	66 90                	xchg   %ax,%ax
  401040:	f3 0f 1e fa          	endbr64
  401044:	68 01 00 00 00       	push   $0x1
  401049:	e9 d2 ff ff ff       	jmp    401020 <_init+0x20>
  40104e:	66 90                	xchg   %ax,%ax
  401050:	f3 0f 1e fa          	endbr64
  401054:	68 02 00 00 00       	push   $0x2
  401059:	e9 c2 ff ff ff       	jmp    401020 <_init+0x20>
  40105e:	66 90                	xchg   %ax,%ax
  401060:	f3 0f 1e fa          	endbr64
  401064:	68 03 00 00 00       	push   $0x3
  401069:	e9 b2 ff ff ff       	jmp    401020 <_init+0x20>
  40106e:	66 90                	xchg   %ax,%ax
  401070:	f3 0f 1e fa          	endbr64
  401074:	68 04 00 00 00       	push   $0x4
  401079:	e9 a2 ff ff ff       	jmp    401020 <_init+0x20>
  40107e:	66 90                	xchg   %ax,%ax
  401080:	f3 0f 1e fa          	endbr64
  401084:	68 05 00 00 00       	push   $0x5
  401089:	e9 92 ff ff ff       	jmp    401020 <_init+0x20>
  40108e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.sec:

0000000000401090 <puts@plt>:
  401090:	f3 0f 1e fa          	endbr64
  401094:	ff 25 66 2f 00 00    	jmp    *0x2f66(%rip)        # 404000 <puts@GLIBC_2.2.5>
  40109a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010a0 <printf@plt>:
  4010a0:	f3 0f 1e fa          	endbr64
  4010a4:	ff 25 5e 2f 00 00    	jmp    *0x2f5e(%rip)        # 404008 <printf@GLIBC_2.2.5>
  4010aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010b0 <strcmp@plt>:
  4010b0:	f3 0f 1e fa          	endbr64
  4010b4:	ff 25 56 2f 00 00    	jmp    *0x2f56(%rip)        # 404010 <strcmp@GLIBC_2.2.5>
  4010ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010c0 <signal@plt>:
  4010c0:	f3 0f 1e fa          	endbr64
  4010c4:	ff 25 4e 2f 00 00    	jmp    *0x2f4e(%rip)        # 404018 <signal@GLIBC_2.2.5>
  4010ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010d0 <exit@plt>:
  4010d0:	f3 0f 1e fa          	endbr64
  4010d4:	ff 25 46 2f 00 00    	jmp    *0x2f46(%rip)        # 404020 <exit@GLIBC_2.2.5>
  4010da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004010e0 <getc@plt>:
  4010e0:	f3 0f 1e fa          	endbr64
  4010e4:	ff 25 3e 2f 00 00    	jmp    *0x2f3e(%rip)        # 404028 <getc@GLIBC_2.2.5>
  4010ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004010f0 <_start>:
  4010f0:	f3 0f 1e fa          	endbr64
  4010f4:	31 ed                	xor    %ebp,%ebp
  4010f6:	49 89 d1             	mov    %rdx,%r9
  4010f9:	5e                   	pop    %rsi
  4010fa:	48 89 e2             	mov    %rsp,%rdx
  4010fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401101:	50                   	push   %rax
  401102:	54                   	push   %rsp
  401103:	45 31 c0             	xor    %r8d,%r8d
  401106:	31 c9                	xor    %ecx,%ecx
  401108:	48 c7 c7 d5 13 40 00 	mov    $0x4013d5,%rdi
  40110f:	ff 15 c3 2e 00 00    	call   *0x2ec3(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401115:	f4                   	hlt
  401116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40111d:	00 00 00 

0000000000401120 <_dl_relocate_static_pie>:
  401120:	f3 0f 1e fa          	endbr64
  401124:	c3                   	ret
  401125:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40112c:	00 00 00 
  40112f:	90                   	nop

0000000000401130 <deregister_tm_clones>:
  401130:	b8 40 40 40 00       	mov    $0x404040,%eax
  401135:	48 3d 40 40 40 00    	cmp    $0x404040,%rax
  40113b:	74 13                	je     401150 <deregister_tm_clones+0x20>
  40113d:	b8 00 00 00 00       	mov    $0x0,%eax
  401142:	48 85 c0             	test   %rax,%rax
  401145:	74 09                	je     401150 <deregister_tm_clones+0x20>
  401147:	bf 40 40 40 00       	mov    $0x404040,%edi
  40114c:	ff e0                	jmp    *%rax
  40114e:	66 90                	xchg   %ax,%ax
  401150:	c3                   	ret
  401151:	0f 1f 40 00          	nopl   0x0(%rax)
  401155:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40115c:	00 00 00 00 

0000000000401160 <register_tm_clones>:
  401160:	be 40 40 40 00       	mov    $0x404040,%esi
  401165:	48 81 ee 40 40 40 00 	sub    $0x404040,%rsi
  40116c:	48 89 f0             	mov    %rsi,%rax
  40116f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401173:	48 c1 f8 03          	sar    $0x3,%rax
  401177:	48 01 c6             	add    %rax,%rsi
  40117a:	48 d1 fe             	sar    $1,%rsi
  40117d:	74 11                	je     401190 <register_tm_clones+0x30>
  40117f:	b8 00 00 00 00       	mov    $0x0,%eax
  401184:	48 85 c0             	test   %rax,%rax
  401187:	74 07                	je     401190 <register_tm_clones+0x30>
  401189:	bf 40 40 40 00       	mov    $0x404040,%edi
  40118e:	ff e0                	jmp    *%rax
  401190:	c3                   	ret
  401191:	0f 1f 40 00          	nopl   0x0(%rax)
  401195:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40119c:	00 00 00 00 

00000000004011a0 <__do_global_dtors_aux>:
  4011a0:	f3 0f 1e fa          	endbr64
  4011a4:	80 3d 9d 2e 00 00 00 	cmpb   $0x0,0x2e9d(%rip)        # 404048 <completed.0>
  4011ab:	75 13                	jne    4011c0 <__do_global_dtors_aux+0x20>
  4011ad:	55                   	push   %rbp
  4011ae:	48 89 e5             	mov    %rsp,%rbp
  4011b1:	e8 7a ff ff ff       	call   401130 <deregister_tm_clones>
  4011b6:	c6 05 8b 2e 00 00 01 	movb   $0x1,0x2e8b(%rip)        # 404048 <completed.0>
  4011bd:	5d                   	pop    %rbp
  4011be:	c3                   	ret
  4011bf:	90                   	nop
  4011c0:	c3                   	ret
  4011c1:	0f 1f 40 00          	nopl   0x0(%rax)
  4011c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011cc:	00 00 00 00 

00000000004011d0 <frame_dummy>:
  4011d0:	f3 0f 1e fa          	endbr64
  4011d4:	eb 8a                	jmp    401160 <register_tm_clones>

00000000004011d6 <valid>:
  4011d6:	f3 0f 1e fa          	endbr64
  4011da:	55                   	push   %rbp
  4011db:	48 89 e5             	mov    %rsp,%rbp
  4011de:	48 83 ec 10          	sub    $0x10,%rsp
  4011e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4011e6:	48 8d 15 1b 0e 00 00 	lea    0xe1b(%rip),%rdx        # 402008 <_IO_stdin_used+0x8>
  4011ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011f1:	48 89 d6             	mov    %rdx,%rsi
  4011f4:	48 89 c7             	mov    %rax,%rdi
  4011f7:	e8 b4 fe ff ff       	call   4010b0 <strcmp@plt>
  4011fc:	85 c0                	test   %eax,%eax
  4011fe:	0f 94 c0             	sete   %al
  401201:	0f b6 c0             	movzbl %al,%eax
  401204:	c9                   	leave
  401205:	c3                   	ret

0000000000401206 <danger>:
  401206:	f3 0f 1e fa          	endbr64
  40120a:	55                   	push   %rbp
  40120b:	48 89 e5             	mov    %rsp,%rbp
  40120e:	48 8d 05 fd 0d 00 00 	lea    0xdfd(%rip),%rax        # 402012 <_IO_stdin_used+0x12>
  401215:	48 89 c7             	mov    %rax,%rdi
  401218:	e8 73 fe ff ff       	call   401090 <puts@plt>
  40121d:	48 8d 05 0c 0e 00 00 	lea    0xe0c(%rip),%rax        # 402030 <_IO_stdin_used+0x30>
  401224:	48 89 c7             	mov    %rax,%rdi
  401227:	e8 64 fe ff ff       	call   401090 <puts@plt>
  40122c:	90                   	nop
  40122d:	5d                   	pop    %rbp
  40122e:	c3                   	ret

000000000040122f <protect>:
  40122f:	f3 0f 1e fa          	endbr64
  401233:	55                   	push   %rbp
  401234:	48 89 e5             	mov    %rsp,%rbp
  401237:	48 83 ec 10          	sub    $0x10,%rsp
  40123b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40123f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401243:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401247:	48 89 c7             	mov    %rax,%rdi
  40124a:	e8 87 ff ff ff       	call   4011d6 <valid>
  40124f:	85 c0                	test   %eax,%eax
  401251:	74 05                	je     401258 <protect+0x29>
  401253:	e8 ae ff ff ff       	call   401206 <danger>
  401258:	90                   	nop
  401259:	c9                   	leave
  40125a:	c3                   	ret

000000000040125b <smoke>:
  40125b:	f3 0f 1e fa          	endbr64
  40125f:	55                   	push   %rbp
  401260:	48 89 e5             	mov    %rsp,%rbp
  401263:	48 8d 05 ef 0d 00 00 	lea    0xdef(%rip),%rax        # 402059 <_IO_stdin_used+0x59>
  40126a:	48 89 c7             	mov    %rax,%rdi
  40126d:	e8 1e fe ff ff       	call   401090 <puts@plt>
  401272:	bf 00 00 00 00       	mov    $0x0,%edi
  401277:	e8 54 fe ff ff       	call   4010d0 <exit@plt>

000000000040127c <fizz>:
  40127c:	f3 0f 1e fa          	endbr64
  401280:	55                   	push   %rbp
  401281:	48 89 e5             	mov    %rsp,%rbp
  401284:	48 83 ec 10          	sub    $0x10,%rsp
  401288:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40128b:	81 7d fc 04 03 02 01 	cmpl   $0x1020304,-0x4(%rbp)
  401292:	75 1b                	jne    4012af <fizz+0x33>
  401294:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401297:	48 8d 15 d6 0d 00 00 	lea    0xdd6(%rip),%rdx        # 402074 <_IO_stdin_used+0x74>
  40129e:	89 c6                	mov    %eax,%esi
  4012a0:	48 89 d7             	mov    %rdx,%rdi
  4012a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a8:	e8 f3 fd ff ff       	call   4010a0 <printf@plt>
  4012ad:	eb 19                	jmp    4012c8 <fizz+0x4c>
  4012af:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012b2:	48 8d 15 df 0d 00 00 	lea    0xddf(%rip),%rdx        # 402098 <_IO_stdin_used+0x98>
  4012b9:	89 c6                	mov    %eax,%esi
  4012bb:	48 89 d7             	mov    %rdx,%rdi
  4012be:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c3:	e8 d8 fd ff ff       	call   4010a0 <printf@plt>
  4012c8:	bf 00 00 00 00       	mov    $0x0,%edi
  4012cd:	e8 fe fd ff ff       	call   4010d0 <exit@plt>

00000000004012d2 <Gets>:
  4012d2:	f3 0f 1e fa          	endbr64
  4012d6:	55                   	push   %rbp
  4012d7:	48 89 e5             	mov    %rsp,%rbp
  4012da:	48 83 ec 20          	sub    $0x20,%rsp
  4012de:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4012e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4012ea:	eb 11                	jmp    4012fd <Gets+0x2b>
  4012ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012f0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4012f4:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  4012f8:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4012fb:	88 10                	mov    %dl,(%rax)
  4012fd:	48 8b 05 4c 2d 00 00 	mov    0x2d4c(%rip),%rax        # 404050 <infile>
  401304:	48 89 c7             	mov    %rax,%rdi
  401307:	e8 d4 fd ff ff       	call   4010e0 <getc@plt>
  40130c:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40130f:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  401313:	74 06                	je     40131b <Gets+0x49>
  401315:	83 7d f4 0a          	cmpl   $0xa,-0xc(%rbp)
  401319:	75 d1                	jne    4012ec <Gets+0x1a>
  40131b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40131f:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401323:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  401327:	c6 00 00             	movb   $0x0,(%rax)
  40132a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40132e:	c9                   	leave
  40132f:	c3                   	ret

0000000000401330 <bushandler>:
  401330:	f3 0f 1e fa          	endbr64
  401334:	55                   	push   %rbp
  401335:	48 89 e5             	mov    %rsp,%rbp
  401338:	48 83 ec 10          	sub    $0x10,%rsp
  40133c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40133f:	48 8d 05 72 0d 00 00 	lea    0xd72(%rip),%rax        # 4020b8 <_IO_stdin_used+0xb8>
  401346:	48 89 c7             	mov    %rax,%rdi
  401349:	e8 42 fd ff ff       	call   401090 <puts@plt>
  40134e:	48 8d 05 83 0d 00 00 	lea    0xd83(%rip),%rax        # 4020d8 <_IO_stdin_used+0xd8>
  401355:	48 89 c7             	mov    %rax,%rdi
  401358:	e8 33 fd ff ff       	call   401090 <puts@plt>
  40135d:	bf 00 00 00 00       	mov    $0x0,%edi
  401362:	e8 69 fd ff ff       	call   4010d0 <exit@plt>

0000000000401367 <seghandler>:
  401367:	f3 0f 1e fa          	endbr64
  40136b:	55                   	push   %rbp
  40136c:	48 89 e5             	mov    %rsp,%rbp
  40136f:	48 83 ec 10          	sub    $0x10,%rsp
  401373:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401376:	48 8d 05 73 0d 00 00 	lea    0xd73(%rip),%rax        # 4020f0 <_IO_stdin_used+0xf0>
  40137d:	48 89 c7             	mov    %rax,%rdi
  401380:	e8 0b fd ff ff       	call   401090 <puts@plt>
  401385:	48 8d 05 4c 0d 00 00 	lea    0xd4c(%rip),%rax        # 4020d8 <_IO_stdin_used+0xd8>
  40138c:	48 89 c7             	mov    %rax,%rdi
  40138f:	e8 fc fc ff ff       	call   401090 <puts@plt>
  401394:	bf 00 00 00 00       	mov    $0x0,%edi
  401399:	e8 32 fd ff ff       	call   4010d0 <exit@plt>

000000000040139e <illegalhandler>:
  40139e:	f3 0f 1e fa          	endbr64
  4013a2:	55                   	push   %rbp
  4013a3:	48 89 e5             	mov    %rsp,%rbp
  4013a6:	48 83 ec 10          	sub    $0x10,%rsp
  4013aa:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4013ad:	48 8d 05 64 0d 00 00 	lea    0xd64(%rip),%rax        # 402118 <_IO_stdin_used+0x118>
  4013b4:	48 89 c7             	mov    %rax,%rdi
  4013b7:	e8 d4 fc ff ff       	call   401090 <puts@plt>
  4013bc:	48 8d 05 15 0d 00 00 	lea    0xd15(%rip),%rax        # 4020d8 <_IO_stdin_used+0xd8>
  4013c3:	48 89 c7             	mov    %rax,%rdi
  4013c6:	e8 c5 fc ff ff       	call   401090 <puts@plt>
  4013cb:	bf 00 00 00 00       	mov    $0x0,%edi
  4013d0:	e8 fb fc ff ff       	call   4010d0 <exit@plt>

00000000004013d5 <main>:
  4013d5:	f3 0f 1e fa          	endbr64
  4013d9:	55                   	push   %rbp
  4013da:	48 89 e5             	mov    %rsp,%rbp
  4013dd:	48 83 ec 10          	sub    $0x10,%rsp
  4013e1:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4013e4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4013e8:	48 8d 05 78 ff ff ff 	lea    -0x88(%rip),%rax        # 401367 <seghandler>
  4013ef:	48 89 c6             	mov    %rax,%rsi
  4013f2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4013f7:	e8 c4 fc ff ff       	call   4010c0 <signal@plt>
  4013fc:	48 8d 05 2d ff ff ff 	lea    -0xd3(%rip),%rax        # 401330 <bushandler>
  401403:	48 89 c6             	mov    %rax,%rsi
  401406:	bf 07 00 00 00       	mov    $0x7,%edi
  40140b:	e8 b0 fc ff ff       	call   4010c0 <signal@plt>
  401410:	48 8d 05 87 ff ff ff 	lea    -0x79(%rip),%rax        # 40139e <illegalhandler>
  401417:	48 89 c6             	mov    %rax,%rsi
  40141a:	bf 04 00 00 00       	mov    $0x4,%edi
  40141f:	e8 9c fc ff ff       	call   4010c0 <signal@plt>
  401424:	48 8b 05 15 2c 00 00 	mov    0x2c15(%rip),%rax        # 404040 <stdin@GLIBC_2.2.5>
  40142b:	48 89 05 1e 2c 00 00 	mov    %rax,0x2c1e(%rip)        # 404050 <infile>
  401432:	e8 16 00 00 00       	call   40144d <getbuf>
  401437:	48 8d 05 0a 0d 00 00 	lea    0xd0a(%rip),%rax        # 402148 <_IO_stdin_used+0x148>
  40143e:	48 89 c7             	mov    %rax,%rdi
  401441:	e8 4a fc ff ff       	call   401090 <puts@plt>
  401446:	b8 00 00 00 00       	mov    $0x0,%eax
  40144b:	c9                   	leave
  40144c:	c3                   	ret

000000000040144d <getbuf>:
  40144d:	f3 0f 1e fa          	endbr64
  401451:	55                   	push   %rbp
  401452:	48 89 e5             	mov    %rsp,%rbp
  401455:	48 83 ec 20          	sub    $0x20,%rsp
  401459:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40145d:	48 8d 15 08 0d 00 00 	lea    0xd08(%rip),%rdx        # 40216c <_IO_stdin_used+0x16c>
  401464:	48 89 c6             	mov    %rax,%rsi
  401467:	48 89 d7             	mov    %rdx,%rdi
  40146a:	b8 00 00 00 00       	mov    $0x0,%eax
  40146f:	e8 2c fc ff ff       	call   4010a0 <printf@plt>
  401474:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401478:	48 89 c7             	mov    %rax,%rdi
  40147b:	e8 52 fe ff ff       	call   4012d2 <Gets>
  401480:	b8 01 00 00 00       	mov    $0x1,%eax
  401485:	c9                   	leave
  401486:	c3                   	ret

Disassembly of section .fini:

0000000000401488 <_fini>:
  401488:	f3 0f 1e fa          	endbr64
  40148c:	48 83 ec 08          	sub    $0x8,%rsp
  401490:	48 83 c4 08          	add    $0x8,%rsp
  401494:	c3                   	ret
