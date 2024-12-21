
asteroid:     file format elf64-x86-64


Disassembly of section .text:

0000000000609290 <_start>:
  609290:	f3 0f 1e fa          	endbr64
  609294:	31 ed                	xor    %ebp,%ebp
  609296:	49 89 d1             	mov    %rdx,%r9
  609299:	5e                   	pop    %rsi
  60929a:	48 89 e2             	mov    %rsp,%rdx
  60929d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  6092a1:	50                   	push   %rax
  6092a2:	54                   	push   %rsp
  6092a3:	45 31 c0             	xor    %r8d,%r8d
  6092a6:	31 c9                	xor    %ecx,%ecx
  6092a8:	48 8b 3d f1 95 20 00 	mov    0x2095f1(%rip),%rdi        # 8128a0 <main+0x208247>
  6092af:	ff 15 f3 95 20 00    	call   *0x2095f3(%rip)        # 8128a8 <__libc_start_main@GLIBC_2.34>
  6092b5:	f4                   	hlt
  6092b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  6092bd:	00 00 00 

00000000006092c0 <_dl_relocate_static_pie>:
  6092c0:	f3 0f 1e fa          	endbr64
  6092c4:	c3                   	ret

00000000006092c5 <init_window>:
  6092c5:	55                   	push   %rbp
  6092c6:	48 89 e5             	mov    %rsp,%rbp
  6092c9:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  6092d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  6092d4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  6092d8:	b8 20 00 00 00       	mov    $0x20,%eax
  6092dd:	48 89 c7             	mov    %rax,%rdi
  6092e0:	e8 33 71 00 00       	call   610418 <SDL_Init@plt>
  6092e5:	0f b6 c0             	movzbl %al,%eax
  6092e8:	83 f8 00             	cmp    $0x0,%eax
  6092eb:	0f 85 24 00 00 00    	jne    609315 <init_window+0x50>
  6092f1:	e8 32 71 00 00       	call   610428 <SDL_GetError@plt>
  6092f6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6092fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6092fe:	48 89 c6             	mov    %rax,%rsi
  609301:	48 8d 05 88 73 20 00 	lea    0x207388(%rip),%rax        # 810690 <L.35>
  609308:	48 89 c7             	mov    %rax,%rdi
  60930b:	b8 00 00 00 00       	mov    $0x0,%eax
  609310:	e8 23 71 00 00       	call   610438 <SDL_Log@plt>
  609315:	b8 03 00 00 00       	mov    $0x3,%eax
  60931a:	48 89 c6             	mov    %rax,%rsi
  60931d:	b8 11 00 00 00       	mov    $0x11,%eax
  609322:	48 89 c7             	mov    %rax,%rdi
  609325:	e8 1e 71 00 00       	call   610448 <SDL_GL_SetAttribute@plt>
  60932a:	b8 03 00 00 00       	mov    $0x3,%eax
  60932f:	48 89 c6             	mov    %rax,%rsi
  609332:	b8 12 00 00 00       	mov    $0x12,%eax
  609337:	48 89 c7             	mov    %rax,%rdi
  60933a:	e8 09 71 00 00       	call   610448 <SDL_GL_SetAttribute@plt>
  60933f:	b8 01 00 00 00       	mov    $0x1,%eax
  609344:	48 89 c6             	mov    %rax,%rsi
  609347:	b8 14 00 00 00       	mov    $0x14,%eax
  60934c:	48 89 c7             	mov    %rax,%rdi
  60934f:	e8 f4 70 00 00       	call   610448 <SDL_GL_SetAttribute@plt>
  609354:	48 b8 02 00 00 00 00 	movabs $0x2,%rax
  60935b:	00 00 00 
  60935e:	49 89 c3             	mov    %rax,%r11
  609361:	8b 45 f0             	mov    -0x10(%rbp),%eax
  609364:	49 89 c2             	mov    %rax,%r10
  609367:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60936a:	48 89 c6             	mov    %rax,%rsi
  60936d:	48 8d 05 3b 73 20 00 	lea    0x20733b(%rip),%rax        # 8106af <L.36>
  609374:	48 89 c7             	mov    %rax,%rdi
  609377:	4c 89 d2             	mov    %r10,%rdx
  60937a:	4c 89 d9             	mov    %r11,%rcx
  60937d:	e8 d6 70 00 00       	call   610458 <SDL_CreateWindow@plt>
  609382:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  609386:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60938a:	48 83 f8 00          	cmp    $0x0,%rax
  60938e:	0f 85 31 00 00 00    	jne    6093c5 <init_window+0x100>
  609394:	e8 8f 70 00 00       	call   610428 <SDL_GetError@plt>
  609399:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60939d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6093a1:	48 89 c6             	mov    %rax,%rsi
  6093a4:	48 8d 05 0d 73 20 00 	lea    0x20730d(%rip),%rax        # 8106b8 <L.37>
  6093ab:	48 89 c7             	mov    %rax,%rdi
  6093ae:	b8 00 00 00 00       	mov    $0x0,%eax
  6093b3:	e8 80 70 00 00       	call   610438 <SDL_Log@plt>
  6093b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  6093bd:	48 89 c7             	mov    %rax,%rdi
  6093c0:	e8 a3 70 00 00       	call   610468 <exit@plt>
  6093c5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6093c9:	48 89 c7             	mov    %rax,%rdi
  6093cc:	e8 a7 70 00 00       	call   610478 <SDL_GL_CreateContext@plt>
  6093d1:	48 83 f8 00          	cmp    $0x0,%rax
  6093d5:	0f 85 31 00 00 00    	jne    60940c <init_window+0x147>
  6093db:	e8 48 70 00 00       	call   610428 <SDL_GetError@plt>
  6093e0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6093e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6093e8:	48 89 c6             	mov    %rax,%rsi
  6093eb:	48 8d 05 e2 72 20 00 	lea    0x2072e2(%rip),%rax        # 8106d4 <L.38>
  6093f2:	48 89 c7             	mov    %rax,%rdi
  6093f5:	b8 00 00 00 00       	mov    $0x0,%eax
  6093fa:	e8 39 70 00 00       	call   610438 <SDL_Log@plt>
  6093ff:	b8 01 00 00 00       	mov    $0x1,%eax
  609404:	48 89 c7             	mov    %rax,%rdi
  609407:	e8 5c 70 00 00       	call   610468 <exit@plt>
  60940c:	48 8b 05 9d 94 20 00 	mov    0x20949d(%rip),%rax        # 8128b0 <SDL_GL_GetProcAddress@SDL3_0.0.0>
  609413:	48 89 c7             	mov    %rax,%rdi
  609416:	e8 5b 68 00 00       	call   60fc76 <gladLoadGLLoader>
  60941b:	83 f8 00             	cmp    $0x0,%eax
  60941e:	0f 85 21 00 00 00    	jne    609445 <init_window+0x180>
  609424:	48 8d 05 c6 72 20 00 	lea    0x2072c6(%rip),%rax        # 8106f1 <L.39>
  60942b:	48 89 c7             	mov    %rax,%rdi
  60942e:	b8 00 00 00 00       	mov    $0x0,%eax
  609433:	e8 00 70 00 00       	call   610438 <SDL_Log@plt>
  609438:	b8 01 00 00 00       	mov    $0x1,%eax
  60943d:	48 89 c7             	mov    %rax,%rdi
  609440:	e8 23 70 00 00       	call   610468 <exit@plt>
  609445:	48 8d 05 c0 72 20 00 	lea    0x2072c0(%rip),%rax        # 81070c <L.40>
  60944c:	48 89 c7             	mov    %rax,%rdi
  60944f:	b8 00 00 00 00       	mov    $0x0,%eax
  609454:	e8 df 6f 00 00       	call   610438 <SDL_Log@plt>
  609459:	b8 00 1f 00 00       	mov    $0x1f00,%eax
  60945e:	48 89 c7             	mov    %rax,%rdi
  609461:	4c 8b 1d 50 94 20 00 	mov    0x209450(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  609468:	4d 8b 1b             	mov    (%r11),%r11
  60946b:	41 ff d3             	call   *%r11
  60946e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  609472:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  609476:	48 89 c6             	mov    %rax,%rsi
  609479:	48 8d 05 96 72 20 00 	lea    0x207296(%rip),%rax        # 810716 <L.41>
  609480:	48 89 c7             	mov    %rax,%rdi
  609483:	b8 00 00 00 00       	mov    $0x0,%eax
  609488:	e8 ab 6f 00 00       	call   610438 <SDL_Log@plt>
  60948d:	b8 01 1f 00 00       	mov    $0x1f01,%eax
  609492:	48 89 c7             	mov    %rax,%rdi
  609495:	4c 8b 1d 1c 94 20 00 	mov    0x20941c(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60949c:	4d 8b 1b             	mov    (%r11),%r11
  60949f:	41 ff d3             	call   *%r11
  6094a2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6094a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6094aa:	48 89 c6             	mov    %rax,%rsi
  6094ad:	48 8d 05 6d 72 20 00 	lea    0x20726d(%rip),%rax        # 810721 <L.42>
  6094b4:	48 89 c7             	mov    %rax,%rdi
  6094b7:	b8 00 00 00 00       	mov    $0x0,%eax
  6094bc:	e8 77 6f 00 00       	call   610438 <SDL_Log@plt>
  6094c1:	b8 02 1f 00 00       	mov    $0x1f02,%eax
  6094c6:	48 89 c7             	mov    %rax,%rdi
  6094c9:	4c 8b 1d e8 93 20 00 	mov    0x2093e8(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  6094d0:	4d 8b 1b             	mov    (%r11),%r11
  6094d3:	41 ff d3             	call   *%r11
  6094d6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  6094da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  6094de:	48 89 c6             	mov    %rax,%rsi
  6094e1:	48 8d 05 46 72 20 00 	lea    0x207246(%rip),%rax        # 81072e <L.43>
  6094e8:	48 89 c7             	mov    %rax,%rdi
  6094eb:	b8 00 00 00 00       	mov    $0x0,%eax
  6094f0:	e8 43 6f 00 00       	call   610438 <SDL_Log@plt>
  6094f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6094f9:	c9                   	leave
  6094fa:	c3                   	ret

00000000006094fb <renderer_init>:
  6094fb:	55                   	push   %rbp
  6094fc:	48 89 e5             	mov    %rsp,%rbp
  6094ff:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  609506:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60950a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60950d:	89 45 f4             	mov    %eax,-0xc(%rbp)
  609510:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  609514:	48 89 c6             	mov    %rax,%rsi
  609517:	b8 01 00 00 00       	mov    $0x1,%eax
  60951c:	48 89 c7             	mov    %rax,%rdi
  60951f:	4c 8b 1d 9a 93 20 00 	mov    0x20939a(%rip),%r11        # 8128c0 <glad_glGenVertexArrays-0x200ff8>
  609526:	4d 8b 1b             	mov    (%r11),%r11
  609529:	41 ff d3             	call   *%r11
  60952c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  609530:	48 89 c6             	mov    %rax,%rsi
  609533:	b8 01 00 00 00       	mov    $0x1,%eax
  609538:	48 89 c7             	mov    %rax,%rdi
  60953b:	4c 8b 1d 86 93 20 00 	mov    0x209386(%rip),%r11        # 8128c8 <glad_glGenBuffers-0x200fc0>
  609542:	4d 8b 1b             	mov    (%r11),%r11
  609545:	41 ff d3             	call   *%r11
  609548:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60954b:	48 89 c7             	mov    %rax,%rdi
  60954e:	4c 8b 1d 7b 93 20 00 	mov    0x20937b(%rip),%r11        # 8128d0 <glad_glBindVertexArray-0x200d08>
  609555:	4d 8b 1b             	mov    (%r11),%r11
  609558:	41 ff d3             	call   *%r11
  60955b:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60955e:	48 89 c6             	mov    %rax,%rsi
  609561:	b8 92 88 00 00       	mov    $0x8892,%eax
  609566:	48 89 c7             	mov    %rax,%rdi
  609569:	4c 8b 1d 68 93 20 00 	mov    0x209368(%rip),%r11        # 8128d8 <glad_glBindBuffer-0x200cb8>
  609570:	4d 8b 1b             	mov    (%r11),%r11
  609573:	41 ff d3             	call   *%r11
  609576:	8b 45 f8             	mov    -0x8(%rbp),%eax
  609579:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  60957d:	b8 e8 88 00 00       	mov    $0x88e8,%eax
  609582:	49 89 c3             	mov    %rax,%r11
  609585:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60958c:	00 00 00 
  60958f:	49 89 c2             	mov    %rax,%r10
  609592:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  609596:	48 89 c6             	mov    %rax,%rsi
  609599:	b8 92 88 00 00       	mov    $0x8892,%eax
  60959e:	48 89 c7             	mov    %rax,%rdi
  6095a1:	4c 89 d2             	mov    %r10,%rdx
  6095a4:	4c 89 d9             	mov    %r11,%rcx
  6095a7:	4c 8b 1d 32 93 20 00 	mov    0x209332(%rip),%r11        # 8128e0 <glad_glBufferData-0x200d30>
  6095ae:	4d 8b 1b             	mov    (%r11),%r11
  6095b1:	41 ff d3             	call   *%r11
  6095b4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6095bb:	00 00 00 
  6095be:	49 89 c1             	mov    %rax,%r9
  6095c1:	b8 0c 00 00 00       	mov    $0xc,%eax
  6095c6:	49 89 c0             	mov    %rax,%r8
  6095c9:	b8 00 00 00 00       	mov    $0x0,%eax
  6095ce:	49 89 c3             	mov    %rax,%r11
  6095d1:	b8 06 14 00 00       	mov    $0x1406,%eax
  6095d6:	49 89 c2             	mov    %rax,%r10
  6095d9:	b8 03 00 00 00       	mov    $0x3,%eax
  6095de:	48 89 c6             	mov    %rax,%rsi
  6095e1:	b8 00 00 00 00       	mov    $0x0,%eax
  6095e6:	48 89 c7             	mov    %rax,%rdi
  6095e9:	4c 89 d2             	mov    %r10,%rdx
  6095ec:	4c 89 d9             	mov    %r11,%rcx
  6095ef:	4c 8b 1d f2 92 20 00 	mov    0x2092f2(%rip),%r11        # 8128e8 <glad_glVertexAttribPointer-0x2017e0>
  6095f6:	4d 8b 1b             	mov    (%r11),%r11
  6095f9:	41 ff d3             	call   *%r11
  6095fc:	b8 00 00 00 00       	mov    $0x0,%eax
  609601:	48 89 c7             	mov    %rax,%rdi
  609604:	4c 8b 1d e5 92 20 00 	mov    0x2092e5(%rip),%r11        # 8128f0 <glad_glEnableVertexAttribArray-0x200f18>
  60960b:	4d 8b 1b             	mov    (%r11),%r11
  60960e:	41 ff d3             	call   *%r11
  609611:	48 8b 45 ec          	mov    -0x14(%rbp),%rax
  609615:	48 8b 55 f4          	mov    -0xc(%rbp),%rdx
  609619:	c9                   	leave
  60961a:	c3                   	ret

000000000060961b <update_renderer>:
  60961b:	55                   	push   %rbp
  60961c:	48 89 e5             	mov    %rsp,%rbp
  60961f:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  609626:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60962a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60962e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  609632:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  609636:	48 83 c0 08          	add    $0x8,%rax
  60963a:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  60963d:	8b 00                	mov    (%rax),%eax
  60963f:	39 c1                	cmp    %eax,%ecx
  609641:	0f 86 75 00 00 00    	jbe    6096bc <update_renderer+0xa1>
  609647:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60964b:	48 83 c0 04          	add    $0x4,%rax
  60964f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  609653:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  609657:	8b 00                	mov    (%rax),%eax
  609659:	48 89 c6             	mov    %rax,%rsi
  60965c:	b8 92 88 00 00       	mov    $0x8892,%eax
  609661:	48 89 c7             	mov    %rax,%rdi
  609664:	4c 8b 1d 6d 92 20 00 	mov    0x20926d(%rip),%r11        # 8128d8 <glad_glBindBuffer-0x200cb8>
  60966b:	4d 8b 1b             	mov    (%r11),%r11
  60966e:	41 ff d3             	call   *%r11
  609671:	8b 45 e8             	mov    -0x18(%rbp),%eax
  609674:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  609678:	b8 e8 88 00 00       	mov    $0x88e8,%eax
  60967d:	49 89 c3             	mov    %rax,%r11
  609680:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  609687:	00 00 00 
  60968a:	49 89 c2             	mov    %rax,%r10
  60968d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  609691:	48 89 c6             	mov    %rax,%rsi
  609694:	b8 92 88 00 00       	mov    $0x8892,%eax
  609699:	48 89 c7             	mov    %rax,%rdi
  60969c:	4c 89 d2             	mov    %r10,%rdx
  60969f:	4c 89 d9             	mov    %r11,%rcx
  6096a2:	4c 8b 1d 37 92 20 00 	mov    0x209237(%rip),%r11        # 8128e0 <glad_glBufferData-0x200d30>
  6096a9:	4d 8b 1b             	mov    (%r11),%r11
  6096ac:	41 ff d3             	call   *%r11
  6096af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6096b3:	48 83 c0 08          	add    $0x8,%rax
  6096b7:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  6096ba:	89 08                	mov    %ecx,(%rax)
  6096bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6096c0:	48 83 c0 04          	add    $0x4,%rax
  6096c4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6096c8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6096cc:	8b 00                	mov    (%rax),%eax
  6096ce:	48 89 c6             	mov    %rax,%rsi
  6096d1:	b8 92 88 00 00       	mov    $0x8892,%eax
  6096d6:	48 89 c7             	mov    %rax,%rdi
  6096d9:	4c 8b 1d f8 91 20 00 	mov    0x2091f8(%rip),%r11        # 8128d8 <glad_glBindBuffer-0x200cb8>
  6096e0:	4d 8b 1b             	mov    (%r11),%r11
  6096e3:	41 ff d3             	call   *%r11
  6096e6:	8b 45 e8             	mov    -0x18(%rbp),%eax
  6096e9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6096ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6096f1:	49 89 c3             	mov    %rax,%r11
  6096f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6096f8:	49 89 c2             	mov    %rax,%r10
  6096fb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  609702:	00 00 00 
  609705:	48 89 c6             	mov    %rax,%rsi
  609708:	b8 92 88 00 00       	mov    $0x8892,%eax
  60970d:	48 89 c7             	mov    %rax,%rdi
  609710:	4c 89 d2             	mov    %r10,%rdx
  609713:	4c 89 d9             	mov    %r11,%rcx
  609716:	4c 8b 1d db 91 20 00 	mov    0x2091db(%rip),%r11        # 8128f8 <glad_glBufferSubData-0x200d20>
  60971d:	4d 8b 1b             	mov    (%r11),%r11
  609720:	41 ff d3             	call   *%r11
  609723:	c9                   	leave
  609724:	c3                   	ret

0000000000609725 <vector2_scale>:
  609725:	55                   	push   %rbp
  609726:	48 89 e5             	mov    %rsp,%rbp
  609729:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  609730:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  609735:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  60973a:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  60973f:	f3 0f 59 45 f0       	mulss  -0x10(%rbp),%xmm0
  609744:	66 0f 7e 45 e8       	movd   %xmm0,-0x18(%rbp)
  609749:	66 0f 6e 45 fc       	movd   -0x4(%rbp),%xmm0
  60974e:	f3 0f 59 45 f0       	mulss  -0x10(%rbp),%xmm0
  609753:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  609758:	f3 0f 7e 45 e8       	movq   -0x18(%rbp),%xmm0
  60975d:	c9                   	leave
  60975e:	c3                   	ret

000000000060975f <vector2_add>:
  60975f:	55                   	push   %rbp
  609760:	48 89 e5             	mov    %rsp,%rbp
  609763:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60976a:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  60976f:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  609774:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60977b:	00 00 00 
  60977e:	49 89 c2             	mov    %rax,%r10
  609781:	b8 00 00 00 00       	mov    $0x0,%eax
  609786:	48 89 c6             	mov    %rax,%rsi
  609789:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  60978d:	48 89 c7             	mov    %rax,%rdi
  609790:	4c 89 d2             	mov    %r10,%rdx
  609793:	b8 00 00 00 00       	mov    $0x0,%eax
  609798:	e8 eb 6c 00 00       	call   610488 <memset@plt>
  60979d:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  6097a2:	f3 0f 58 45 f0       	addss  -0x10(%rbp),%xmm0
  6097a7:	66 0f 7e 45 e8       	movd   %xmm0,-0x18(%rbp)
  6097ac:	66 0f 6e 45 fc       	movd   -0x4(%rbp),%xmm0
  6097b1:	f3 0f 58 45 f4       	addss  -0xc(%rbp),%xmm0
  6097b6:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  6097bb:	f3 0f 7e 45 e8       	movq   -0x18(%rbp),%xmm0
  6097c0:	c9                   	leave
  6097c1:	c3                   	ret

00000000006097c2 <vector2_modf>:
  6097c2:	55                   	push   %rbp
  6097c3:	48 89 e5             	mov    %rsp,%rbp
  6097c6:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  6097cd:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  6097d2:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  6097d7:	66 0f d6 55 e8       	movq   %xmm2,-0x18(%rbp)
  6097dc:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  6097e3:	00 00 00 
  6097e6:	49 89 c2             	mov    %rax,%r10
  6097e9:	b8 00 00 00 00       	mov    $0x0,%eax
  6097ee:	48 89 c6             	mov    %rax,%rsi
  6097f1:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6097f5:	48 89 c7             	mov    %rax,%rdi
  6097f8:	4c 89 d2             	mov    %r10,%rdx
  6097fb:	b8 00 00 00 00       	mov    $0x0,%eax
  609800:	e8 83 6c 00 00       	call   610488 <memset@plt>
  609805:	66 0f 6e 4d f0       	movd   -0x10(%rbp),%xmm1
  60980a:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  60980f:	e8 84 6c 00 00       	call   610498 <SDL_fmodf@plt>
  609814:	f3 0f 58 45 f0       	addss  -0x10(%rbp),%xmm0
  609819:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  60981e:	66 0f 6e 4d f0       	movd   -0x10(%rbp),%xmm1
  609823:	66 0f 6e 45 dc       	movd   -0x24(%rbp),%xmm0
  609828:	e8 6b 6c 00 00       	call   610498 <SDL_fmodf@plt>
  60982d:	66 0f 7e 45 e0       	movd   %xmm0,-0x20(%rbp)
  609832:	66 0f 6e 4d e8       	movd   -0x18(%rbp),%xmm1
  609837:	66 0f 6e 45 fc       	movd   -0x4(%rbp),%xmm0
  60983c:	e8 57 6c 00 00       	call   610498 <SDL_fmodf@plt>
  609841:	f3 0f 58 45 e8       	addss  -0x18(%rbp),%xmm0
  609846:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  60984b:	66 0f 6e 4d e8       	movd   -0x18(%rbp),%xmm1
  609850:	66 0f 6e 45 dc       	movd   -0x24(%rbp),%xmm0
  609855:	e8 3e 6c 00 00       	call   610498 <SDL_fmodf@plt>
  60985a:	66 0f 7e 45 e4       	movd   %xmm0,-0x1c(%rbp)
  60985f:	f3 0f 7e 45 e0       	movq   -0x20(%rbp),%xmm0
  609864:	c9                   	leave
  609865:	c3                   	ret

0000000000609866 <draw>:
  609866:	55                   	push   %rbp
  609867:	48 89 e5             	mov    %rsp,%rbp
  60986a:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
  609871:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  609875:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
  60987a:	66 0f d6 4d e8       	movq   %xmm1,-0x18(%rbp)
  60987f:	66 0f d6 55 e0       	movq   %xmm2,-0x20(%rbp)
  609884:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  609888:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  60988c:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  609890:	48 89 c7             	mov    %rax,%rdi
  609893:	e8 9e 1f 00 00       	call   60b836 <mat4x4_identity>
  609898:	66 0f 6e 15 9c 6e 20 	movd   0x206e9c(%rip),%xmm2        # 81073c <L.44>
  60989f:	00 
  6098a0:	66 0f 6e 4d f4       	movd   -0xc(%rbp),%xmm1
  6098a5:	66 0f 6e 45 f0       	movd   -0x10(%rbp),%xmm0
  6098aa:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  6098ae:	48 89 c7             	mov    %rax,%rdi
  6098b1:	e8 54 22 00 00       	call   60bb0a <mat4x4_translate_in_place>
  6098b6:	66 0f 6e 5d e0       	movd   -0x20(%rbp),%xmm3
  6098bb:	66 0f 6e 15 7d 6e 20 	movd   0x206e7d(%rip),%xmm2        # 810740 <L.45>
  6098c2:	00 
  6098c3:	66 0f 6e 0d 79 6e 20 	movd   0x206e79(%rip),%xmm1        # 810744 <L.46>
  6098ca:	00 
  6098cb:	66 0f 6e 05 75 6e 20 	movd   0x206e75(%rip),%xmm0        # 810748 <L.47>
  6098d2:	00 
  6098d3:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  6098d7:	48 89 c6             	mov    %rax,%rsi
  6098da:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  6098e1:	48 89 c7             	mov    %rax,%rdi
  6098e4:	e8 17 23 00 00       	call   60bc00 <mat4x4_rotate>
  6098e9:	66 0f 6e 15 5b 6e 20 	movd   0x206e5b(%rip),%xmm2        # 81074c <L.48>
  6098f0:	00 
  6098f1:	66 0f 6e 4d ec       	movd   -0x14(%rbp),%xmm1
  6098f6:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  6098fb:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  609902:	48 89 c6             	mov    %rax,%rsi
  609905:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  609909:	48 89 c7             	mov    %rax,%rdi
  60990c:	e8 d7 1f 00 00       	call   60b8e8 <mat4x4_scale_aniso>
  609911:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  609915:	49 89 c2             	mov    %rax,%r10
  609918:	48 8b 05 e1 8f 20 00 	mov    0x208fe1(%rip),%rax        # 812900 <projection-0x201810>
  60991f:	48 89 c6             	mov    %rax,%rsi
  609922:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  609929:	48 89 c7             	mov    %rax,%rdi
  60992c:	4c 89 d2             	mov    %r10,%rdx
  60992f:	e8 8b 20 00 00       	call   60b9bf <mat4x4_mul>
  609934:	48 8b 05 cd 8f 20 00 	mov    0x208fcd(%rip),%rax        # 812908 <shader-0x201848>
  60993b:	8b 00                	mov    (%rax),%eax
  60993d:	48 89 c7             	mov    %rax,%rdi
  609940:	4c 8b 1d c9 8f 20 00 	mov    0x208fc9(%rip),%r11        # 812910 <glad_glUseProgram-0x201598>
  609947:	4d 8b 1b             	mov    (%r11),%r11
  60994a:	41 ff d3             	call   *%r11
  60994d:	48 8d 05 fc 6d 20 00 	lea    0x206dfc(%rip),%rax        # 810750 <L.49>
  609954:	48 89 c6             	mov    %rax,%rsi
  609957:	48 8b 05 aa 8f 20 00 	mov    0x208faa(%rip),%rax        # 812908 <shader-0x201848>
  60995e:	8b 00                	mov    (%rax),%eax
  609960:	48 89 c7             	mov    %rax,%rdi
  609963:	4c 8b 1d ae 8f 20 00 	mov    0x208fae(%rip),%r11        # 812918 <glad_glGetUniformLocation-0x201160>
  60996a:	4d 8b 1b             	mov    (%r11),%r11
  60996d:	41 ff d3             	call   *%r11
  609970:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  609976:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  60997d:	49 89 c3             	mov    %rax,%r11
  609980:	b8 00 00 00 00       	mov    $0x0,%eax
  609985:	49 89 c2             	mov    %rax,%r10
  609988:	b8 01 00 00 00       	mov    $0x1,%eax
  60998d:	48 89 c6             	mov    %rax,%rsi
  609990:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
  609996:	48 89 c7             	mov    %rax,%rdi
  609999:	4c 89 d2             	mov    %r10,%rdx
  60999c:	4c 89 d9             	mov    %r11,%rcx
  60999f:	4c 8b 1d 7a 8f 20 00 	mov    0x208f7a(%rip),%r11        # 812920 <glad_glUniformMatrix4fv-0x201568>
  6099a6:	4d 8b 1b             	mov    (%r11),%r11
  6099a9:	41 ff d3             	call   *%r11
  6099ac:	8b 45 d8             	mov    -0x28(%rbp),%eax
  6099af:	48 89 c7             	mov    %rax,%rdi
  6099b2:	4c 8b 1d 17 8f 20 00 	mov    0x208f17(%rip),%r11        # 8128d0 <glad_glBindVertexArray-0x200d08>
  6099b9:	4d 8b 1b             	mov    (%r11),%r11
  6099bc:	41 ff d3             	call   *%r11
  6099bf:	8b 45 d0             	mov    -0x30(%rbp),%eax
  6099c2:	49 89 c2             	mov    %rax,%r10
  6099c5:	b8 00 00 00 00       	mov    $0x0,%eax
  6099ca:	48 89 c6             	mov    %rax,%rsi
  6099cd:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6099d0:	48 89 c7             	mov    %rax,%rdi
  6099d3:	4c 89 d2             	mov    %r10,%rdx
  6099d6:	4c 8b 1d 4b 8f 20 00 	mov    0x208f4b(%rip),%r11        # 812928 <glad_glDrawArrays-0x200e88>
  6099dd:	4d 8b 1b             	mov    (%r11),%r11
  6099e0:	41 ff d3             	call   *%r11
  6099e3:	c9                   	leave
  6099e4:	c3                   	ret

00000000006099e5 <get_direction>:
  6099e5:	55                   	push   %rbp
  6099e6:	48 89 e5             	mov    %rsp,%rbp
  6099e9:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  6099f0:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  6099f5:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  6099fc:	00 00 00 
  6099ff:	49 89 c2             	mov    %rax,%r10
  609a02:	b8 00 00 00 00       	mov    $0x0,%eax
  609a07:	48 89 c6             	mov    %rax,%rsi
  609a0a:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  609a0e:	48 89 c7             	mov    %rax,%rdi
  609a11:	4c 89 d2             	mov    %r10,%rdx
  609a14:	b8 00 00 00 00       	mov    $0x0,%eax
  609a19:	e8 6a 6a 00 00       	call   610488 <memset@plt>
  609a1e:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  609a23:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609a26:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609a29:	f3 0f 7e 0d 2f 6d 20 	movq   0x206d2f(%rip),%xmm1        # 810760 <L.50>
  609a30:	00 
  609a31:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  609a35:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  609a39:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  609a3d:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  609a42:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  609a47:	e8 5c 6a 00 00       	call   6104a8 <SDL_cosf@plt>
  609a4c:	66 0f 7e 45 f0       	movd   %xmm0,-0x10(%rbp)
  609a51:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  609a56:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609a59:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609a5c:	f3 0f 7e 0d 04 6d 20 	movq   0x206d04(%rip),%xmm1        # 810768 <L.51>
  609a63:	00 
  609a64:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  609a68:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  609a6c:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  609a70:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  609a75:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  609a7a:	e8 39 6a 00 00       	call   6104b8 <SDL_sinf@plt>
  609a7f:	66 0f 7e 45 f4       	movd   %xmm0,-0xc(%rbp)
  609a84:	f3 0f 7e 45 f0       	movq   -0x10(%rbp),%xmm0
  609a89:	c9                   	leave
  609a8a:	c3                   	ret

0000000000609a8b <vao_init>:
  609a8b:	55                   	push   %rbp
  609a8c:	48 89 e5             	mov    %rsp,%rbp
  609a8f:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  609a96:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  609a9a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  609a9e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  609aa2:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  609aa6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  609aaa:	48 89 c6             	mov    %rax,%rsi
  609aad:	b8 01 00 00 00       	mov    $0x1,%eax
  609ab2:	48 89 c7             	mov    %rax,%rdi
  609ab5:	4c 8b 1d 04 8e 20 00 	mov    0x208e04(%rip),%r11        # 8128c0 <glad_glGenVertexArrays-0x200ff8>
  609abc:	4d 8b 1b             	mov    (%r11),%r11
  609abf:	41 ff d3             	call   *%r11
  609ac2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  609ac6:	48 89 c6             	mov    %rax,%rsi
  609ac9:	b8 01 00 00 00       	mov    $0x1,%eax
  609ace:	48 89 c7             	mov    %rax,%rdi
  609ad1:	4c 8b 1d f0 8d 20 00 	mov    0x208df0(%rip),%r11        # 8128c8 <glad_glGenBuffers-0x200fc0>
  609ad8:	4d 8b 1b             	mov    (%r11),%r11
  609adb:	41 ff d3             	call   *%r11
  609ade:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  609ae2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  609ae6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  609aea:	8b 00                	mov    (%rax),%eax
  609aec:	48 89 c7             	mov    %rax,%rdi
  609aef:	4c 8b 1d da 8d 20 00 	mov    0x208dda(%rip),%r11        # 8128d0 <glad_glBindVertexArray-0x200d08>
  609af6:	4d 8b 1b             	mov    (%r11),%r11
  609af9:	41 ff d3             	call   *%r11
  609afc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  609b00:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  609b04:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  609b08:	8b 00                	mov    (%rax),%eax
  609b0a:	48 89 c6             	mov    %rax,%rsi
  609b0d:	b8 92 88 00 00       	mov    $0x8892,%eax
  609b12:	48 89 c7             	mov    %rax,%rdi
  609b15:	4c 8b 1d bc 8d 20 00 	mov    0x208dbc(%rip),%r11        # 8128d8 <glad_glBindBuffer-0x200cb8>
  609b1c:	4d 8b 1b             	mov    (%r11),%r11
  609b1f:	41 ff d3             	call   *%r11
  609b22:	b8 e4 88 00 00       	mov    $0x88e4,%eax
  609b27:	49 89 c3             	mov    %rax,%r11
  609b2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  609b2e:	49 89 c2             	mov    %rax,%r10
  609b31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  609b35:	48 89 c6             	mov    %rax,%rsi
  609b38:	b8 92 88 00 00       	mov    $0x8892,%eax
  609b3d:	48 89 c7             	mov    %rax,%rdi
  609b40:	4c 89 d2             	mov    %r10,%rdx
  609b43:	4c 89 d9             	mov    %r11,%rcx
  609b46:	4c 8b 1d 93 8d 20 00 	mov    0x208d93(%rip),%r11        # 8128e0 <glad_glBufferData-0x200d30>
  609b4d:	4d 8b 1b             	mov    (%r11),%r11
  609b50:	41 ff d3             	call   *%r11
  609b53:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  609b5a:	00 00 00 
  609b5d:	49 89 c1             	mov    %rax,%r9
  609b60:	b8 0c 00 00 00       	mov    $0xc,%eax
  609b65:	49 89 c0             	mov    %rax,%r8
  609b68:	b8 00 00 00 00       	mov    $0x0,%eax
  609b6d:	49 89 c3             	mov    %rax,%r11
  609b70:	b8 06 14 00 00       	mov    $0x1406,%eax
  609b75:	49 89 c2             	mov    %rax,%r10
  609b78:	b8 03 00 00 00       	mov    $0x3,%eax
  609b7d:	48 89 c6             	mov    %rax,%rsi
  609b80:	b8 00 00 00 00       	mov    $0x0,%eax
  609b85:	48 89 c7             	mov    %rax,%rdi
  609b88:	4c 89 d2             	mov    %r10,%rdx
  609b8b:	4c 89 d9             	mov    %r11,%rcx
  609b8e:	4c 8b 1d 53 8d 20 00 	mov    0x208d53(%rip),%r11        # 8128e8 <glad_glVertexAttribPointer-0x2017e0>
  609b95:	4d 8b 1b             	mov    (%r11),%r11
  609b98:	41 ff d3             	call   *%r11
  609b9b:	b8 00 00 00 00       	mov    $0x0,%eax
  609ba0:	48 89 c7             	mov    %rax,%rdi
  609ba3:	4c 8b 1d 46 8d 20 00 	mov    0x208d46(%rip),%r11        # 8128f0 <glad_glEnableVertexAttribArray-0x200f18>
  609baa:	4d 8b 1b             	mov    (%r11),%r11
  609bad:	41 ff d3             	call   *%r11
  609bb0:	c9                   	leave
  609bb1:	c3                   	ret

0000000000609bb2 <check_shader_err>:
  609bb2:	55                   	push   %rbp
  609bb3:	48 89 e5             	mov    %rsp,%rbp
  609bb6:	48 81 ec 20 02 00 00 	sub    $0x220,%rsp
  609bbd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  609bc1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  609bc5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  609bc9:	8b 45 f0             	mov    -0x10(%rbp),%eax
  609bcc:	81 f8 82 8b 00 00    	cmp    $0x8b82,%eax
  609bd2:	0f 85 28 00 00 00    	jne    609c00 <check_shader_err+0x4e>
  609bd8:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
  609bdc:	49 89 c2             	mov    %rax,%r10
  609bdf:	8b 45 f0             	mov    -0x10(%rbp),%eax
  609be2:	48 89 c6             	mov    %rax,%rsi
  609be5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  609be8:	48 89 c7             	mov    %rax,%rdi
  609beb:	4c 89 d2             	mov    %r10,%rdx
  609bee:	4c 8b 1d 3b 8d 20 00 	mov    0x208d3b(%rip),%r11        # 812930 <glad_glGetProgramiv-0x201070>
  609bf5:	4d 8b 1b             	mov    (%r11),%r11
  609bf8:	41 ff d3             	call   *%r11
  609bfb:	e9 23 00 00 00       	jmp    609c23 <check_shader_err+0x71>
  609c00:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
  609c04:	49 89 c2             	mov    %rax,%r10
  609c07:	8b 45 f0             	mov    -0x10(%rbp),%eax
  609c0a:	48 89 c6             	mov    %rax,%rsi
  609c0d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  609c10:	48 89 c7             	mov    %rax,%rdi
  609c13:	4c 89 d2             	mov    %r10,%rdx
  609c16:	4c 8b 1d 1b 8d 20 00 	mov    0x208d1b(%rip),%r11        # 812938 <glad_glGetShaderiv-0x2010d0>
  609c1d:	4d 8b 1b             	mov    (%r11),%r11
  609c20:	41 ff d3             	call   *%r11
  609c23:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  609c26:	83 f8 00             	cmp    $0x0,%eax
  609c29:	0f 85 60 00 00 00    	jne    609c8f <check_shader_err+0xdd>
  609c2f:	48 8d 85 e4 fd ff ff 	lea    -0x21c(%rbp),%rax
  609c36:	49 89 c3             	mov    %rax,%r11
  609c39:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  609c40:	00 00 00 
  609c43:	49 89 c2             	mov    %rax,%r10
  609c46:	b8 00 02 00 00       	mov    $0x200,%eax
  609c4b:	48 89 c6             	mov    %rax,%rsi
  609c4e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  609c51:	48 89 c7             	mov    %rax,%rdi
  609c54:	4c 89 d2             	mov    %r10,%rdx
  609c57:	4c 89 d9             	mov    %r11,%rcx
  609c5a:	4c 8b 1d df 8c 20 00 	mov    0x208cdf(%rip),%r11        # 812940 <glad_glGetShaderInfoLog-0x2010b8>
  609c61:	4d 8b 1b             	mov    (%r11),%r11
  609c64:	41 ff d3             	call   *%r11
  609c67:	48 8d 85 e4 fd ff ff 	lea    -0x21c(%rbp),%rax
  609c6e:	49 89 c2             	mov    %rax,%r10
  609c71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  609c75:	48 89 c6             	mov    %rax,%rsi
  609c78:	48 8d 05 f1 6a 20 00 	lea    0x206af1(%rip),%rax        # 810770 <L.52>
  609c7f:	48 89 c7             	mov    %rax,%rdi
  609c82:	4c 89 d2             	mov    %r10,%rdx
  609c85:	b8 00 00 00 00       	mov    $0x0,%eax
  609c8a:	e8 a9 67 00 00       	call   610438 <SDL_Log@plt>
  609c8f:	c9                   	leave
  609c90:	c3                   	ret

0000000000609c91 <draw_line>:
  609c91:	55                   	push   %rbp
  609c92:	48 89 e5             	mov    %rsp,%rbp
  609c95:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  609c9c:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  609ca1:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  609ca6:	66 0f d6 55 e8       	movq   %xmm2,-0x18(%rbp)
  609cab:	66 0f d6 5d e0       	movq   %xmm3,-0x20(%rbp)
  609cb0:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  609cb5:	f3 0f 5c 45 f8       	subss  -0x8(%rbp),%xmm0
  609cba:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  609cbf:	66 0f 6e 45 e0       	movd   -0x20(%rbp),%xmm0
  609cc4:	f3 0f 5c 45 f0       	subss  -0x10(%rbp),%xmm0
  609cc9:	66 0f 7e 45 d8       	movd   %xmm0,-0x28(%rbp)
  609cce:	66 0f 6e 45 dc       	movd   -0x24(%rbp),%xmm0
  609cd3:	f3 0f 59 45 dc       	mulss  -0x24(%rbp),%xmm0
  609cd8:	66 0f 6e 4d d8       	movd   -0x28(%rbp),%xmm1
  609cdd:	f3 0f 59 4d d8       	mulss  -0x28(%rbp),%xmm1
  609ce2:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  609ce6:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609ce9:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609cec:	66 0f d6 45 c8       	movq   %xmm0,-0x38(%rbp)
  609cf1:	f3 0f 7e 45 c8       	movq   -0x38(%rbp),%xmm0
  609cf6:	e8 cd 67 00 00       	call   6104c8 <SDL_sqrt@plt>
  609cfb:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  609cff:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  609d03:	66 0f 7e 45 d4       	movd   %xmm0,-0x2c(%rbp)
  609d08:	66 0f 6e 45 d8       	movd   -0x28(%rbp),%xmm0
  609d0d:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609d10:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609d13:	66 0f 6e 4d dc       	movd   -0x24(%rbp),%xmm1
  609d18:	0f 14 c9             	unpcklps %xmm1,%xmm1
  609d1b:	0f 5a c9             	cvtps2pd %xmm1,%xmm1
  609d1e:	66 0f d6 45 c8       	movq   %xmm0,-0x38(%rbp)
  609d23:	66 0f d6 4d b8       	movq   %xmm1,-0x48(%rbp)
  609d28:	f3 0f 7e 4d b8       	movq   -0x48(%rbp),%xmm1
  609d2d:	f3 0f 7e 45 c8       	movq   -0x38(%rbp),%xmm0
  609d32:	e8 a1 67 00 00       	call   6104d8 <SDL_atan2@plt>
  609d37:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  609d3b:	66 0f 5a c0          	cvtpd2ps %xmm0,%xmm0
  609d3f:	66 0f 7e 45 c4       	movd   %xmm0,-0x3c(%rbp)
  609d44:	48 b8 18 00 00 00 00 	movabs $0x18,%rax
  609d4b:	00 00 00 
  609d4e:	49 89 c2             	mov    %rax,%r10
  609d51:	b8 00 00 00 00       	mov    $0x0,%eax
  609d56:	48 89 c6             	mov    %rax,%rsi
  609d59:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  609d5d:	48 89 c7             	mov    %rax,%rdi
  609d60:	4c 89 d2             	mov    %r10,%rdx
  609d63:	b8 00 00 00 00       	mov    $0x0,%eax
  609d68:	e8 1b 67 00 00       	call   610488 <memset@plt>
  609d6d:	66 0f 6e 05 23 6a 20 	movd   0x206a23(%rip),%xmm0        # 810798 <L.53>
  609d74:	00 
  609d75:	66 0f 7e 45 a0       	movd   %xmm0,-0x60(%rbp)
  609d7a:	66 0f 6e 05 1a 6a 20 	movd   0x206a1a(%rip),%xmm0        # 81079c <L.54>
  609d81:	00 
  609d82:	66 0f 7e 45 a4       	movd   %xmm0,-0x5c(%rbp)
  609d87:	66 0f 6e 05 11 6a 20 	movd   0x206a11(%rip),%xmm0        # 8107a0 <L.55>
  609d8e:	00 
  609d8f:	66 0f 7e 45 a8       	movd   %xmm0,-0x58(%rbp)
  609d94:	66 0f 6e 05 08 6a 20 	movd   0x206a08(%rip),%xmm0        # 8107a4 <L.56>
  609d9b:	00 
  609d9c:	66 0f 7e 45 ac       	movd   %xmm0,-0x54(%rbp)
  609da1:	66 0f 6e 05 ff 69 20 	movd   0x2069ff(%rip),%xmm0        # 8107a8 <L.57>
  609da8:	00 
  609da9:	66 0f 7e 45 b0       	movd   %xmm0,-0x50(%rbp)
  609dae:	66 0f 6e 05 f6 69 20 	movd   0x2069f6(%rip),%xmm0        # 8107ac <L.58>
  609db5:	00 
  609db6:	66 0f 7e 45 b4       	movd   %xmm0,-0x4c(%rbp)
  609dbb:	48 b8 18 00 00 00 00 	movabs $0x18,%rax
  609dc2:	00 00 00 
  609dc5:	49 89 c3             	mov    %rax,%r11
  609dc8:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  609dcc:	49 89 c2             	mov    %rax,%r10
  609dcf:	48 8d 45 98          	lea    -0x68(%rbp),%rax
  609dd3:	48 89 c6             	mov    %rax,%rsi
  609dd6:	48 8d 45 9c          	lea    -0x64(%rbp),%rax
  609dda:	48 89 c7             	mov    %rax,%rdi
  609ddd:	4c 89 d2             	mov    %r10,%rdx
  609de0:	4c 89 d9             	mov    %r11,%rcx
  609de3:	e8 a3 fc ff ff       	call   609a8b <vao_init>
  609de8:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  609def:	00 00 00 
  609df2:	49 89 c2             	mov    %rax,%r10
  609df5:	b8 00 00 00 00       	mov    $0x0,%eax
  609dfa:	48 89 c6             	mov    %rax,%rsi
  609dfd:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  609e01:	48 89 c7             	mov    %rax,%rdi
  609e04:	4c 89 d2             	mov    %r10,%rdx
  609e07:	b8 00 00 00 00       	mov    $0x0,%eax
  609e0c:	e8 77 66 00 00       	call   610488 <memset@plt>
  609e11:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  609e16:	66 0f 7e 45 90       	movd   %xmm0,-0x70(%rbp)
  609e1b:	66 0f 6e 45 f0       	movd   -0x10(%rbp),%xmm0
  609e20:	66 0f 7e 45 94       	movd   %xmm0,-0x6c(%rbp)
  609e25:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  609e2c:	00 00 00 
  609e2f:	49 89 c2             	mov    %rax,%r10
  609e32:	b8 00 00 00 00       	mov    $0x0,%eax
  609e37:	48 89 c6             	mov    %rax,%rsi
  609e3a:	48 8d 45 88          	lea    -0x78(%rbp),%rax
  609e3e:	48 89 c7             	mov    %rax,%rdi
  609e41:	4c 89 d2             	mov    %r10,%rdx
  609e44:	b8 00 00 00 00       	mov    $0x0,%eax
  609e49:	e8 3a 66 00 00       	call   610488 <memset@plt>
  609e4e:	66 0f 6e 45 d4       	movd   -0x2c(%rbp),%xmm0
  609e53:	66 0f 7e 45 88       	movd   %xmm0,-0x78(%rbp)
  609e58:	66 0f 6e 05 50 69 20 	movd   0x206950(%rip),%xmm0        # 8107b0 <L.59>
  609e5f:	00 
  609e60:	66 0f 7e 45 8c       	movd   %xmm0,-0x74(%rbp)
  609e65:	b8 02 00 00 00       	mov    $0x2,%eax
  609e6a:	49 89 c2             	mov    %rax,%r10
  609e6d:	8b 45 9c             	mov    -0x64(%rbp),%eax
  609e70:	48 89 c6             	mov    %rax,%rsi
  609e73:	66 0f 6e 55 c4       	movd   -0x3c(%rbp),%xmm2
  609e78:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
  609e7d:	f3 0f 7e 45 90       	movq   -0x70(%rbp),%xmm0
  609e82:	b8 01 00 00 00       	mov    $0x1,%eax
  609e87:	48 89 c7             	mov    %rax,%rdi
  609e8a:	4c 89 d2             	mov    %r10,%rdx
  609e8d:	e8 d4 f9 ff ff       	call   609866 <draw>
  609e92:	c9                   	leave
  609e93:	c3                   	ret

0000000000609e94 <draw_line_v>:
  609e94:	55                   	push   %rbp
  609e95:	48 89 e5             	mov    %rsp,%rbp
  609e98:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  609e9f:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  609ea4:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  609ea9:	66 0f 6e 5d f4       	movd   -0xc(%rbp),%xmm3
  609eae:	66 0f 6e 55 f0       	movd   -0x10(%rbp),%xmm2
  609eb3:	66 0f 6e 4d fc       	movd   -0x4(%rbp),%xmm1
  609eb8:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  609ebd:	e8 cf fd ff ff       	call   609c91 <draw_line>
  609ec2:	c9                   	leave
  609ec3:	c3                   	ret

0000000000609ec4 <draw_asteroid>:
  609ec4:	55                   	push   %rbp
  609ec5:	48 89 e5             	mov    %rsp,%rbp
  609ec8:	48 81 ec 70 00 00 00 	sub    $0x70,%rsp
  609ecf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  609ed3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  609ed7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  609edb:	48 83 c0 10          	add    $0x10,%rax
  609edf:	8b 00                	mov    (%rax),%eax
  609ee1:	48 63 c0             	movslq %eax,%rax
  609ee4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  609ee8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  609eec:	48 89 c7             	mov    %rax,%rdi
  609eef:	e8 f4 65 00 00       	call   6104e8 <SDL_srand@plt>
  609ef4:	b8 07 00 00 00       	mov    $0x7,%eax
  609ef9:	48 89 c7             	mov    %rax,%rdi
  609efc:	e8 f7 65 00 00       	call   6104f8 <SDL_rand@plt>
  609f01:	83 c0 07             	add    $0x7,%eax
  609f04:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  609f07:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  609f0a:	b9 03 00 00 00       	mov    $0x3,%ecx
  609f0f:	0f af c1             	imul   %ecx,%eax
  609f12:	48 63 c0             	movslq %eax,%rax
  609f15:	48 c1 e0 02          	shl    $0x2,%rax
  609f19:	48 c1 e0 20          	shl    $0x20,%rax
  609f1d:	48 c1 e8 20          	shr    $0x20,%rax
  609f21:	89 45 e0             	mov    %eax,-0x20(%rbp)
  609f24:	48 89 65 d0          	mov    %rsp,-0x30(%rbp)
  609f28:	8b 45 e0             	mov    -0x20(%rbp),%eax
  609f2b:	48 2b e0             	sub    %rax,%rsp
  609f2e:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  609f32:	48 89 65 d8          	mov    %rsp,-0x28(%rbp)
  609f36:	b8 00 00 00 00       	mov    $0x0,%eax
  609f3b:	89 45 cc             	mov    %eax,-0x34(%rbp)
  609f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  609f43:	89 45 c8             	mov    %eax,-0x38(%rbp)
  609f46:	8b 45 c8             	mov    -0x38(%rbp),%eax
  609f49:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  609f4c:	39 c8                	cmp    %ecx,%eax
  609f4e:	0f 8d 2f 01 00 00    	jge    60a083 <draw_asteroid+0x1bf>
  609f54:	e9 0d 00 00 00       	jmp    609f66 <draw_asteroid+0xa2>
  609f59:	8b 45 c8             	mov    -0x38(%rbp),%eax
  609f5c:	89 c1                	mov    %eax,%ecx
  609f5e:	83 c0 01             	add    $0x1,%eax
  609f61:	89 45 c8             	mov    %eax,-0x38(%rbp)
  609f64:	eb e0                	jmp    609f46 <draw_asteroid+0x82>
  609f66:	e8 9d 65 00 00       	call   610508 <SDL_randf@plt>
  609f6b:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609f6e:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609f71:	f3 0f 7e 0d 3f 68 20 	movq   0x20683f(%rip),%xmm1        # 8107b8 <L.60>
  609f78:	00 
  609f79:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  609f7d:	f3 0f 7e 0d 3b 68 20 	movq   0x20683b(%rip),%xmm1        # 8107c0 <L.61>
  609f84:	00 
  609f85:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  609f89:	f3 0f 7e 05 37 68 20 	movq   0x206837(%rip),%xmm0        # 8107c8 <L.62>
  609f90:	00 
  609f91:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  609f95:	f3 0f 7e 0d 33 68 20 	movq   0x206833(%rip),%xmm1        # 8107d0 <L.63>
  609f9c:	00 
  609f9d:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  609fa1:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  609fa5:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  609fa9:	66 0f 7e 4d c4       	movd   %xmm1,-0x3c(%rbp)
  609fae:	8b 45 c8             	mov    -0x38(%rbp),%eax
  609fb1:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  609fb5:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609fb8:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609fbb:	f3 0f 7e 0d 15 68 20 	movq   0x206815(%rip),%xmm1        # 8107d8 <L.64>
  609fc2:	00 
  609fc3:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  609fc7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  609fca:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
  609fce:	0f 14 c0             	unpcklps %xmm0,%xmm0
  609fd1:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  609fd4:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  609fd8:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  609fdc:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  609fe0:	66 0f 7e 4d c0       	movd   %xmm1,-0x40(%rbp)
  609fe5:	66 0f 6e 45 c0       	movd   -0x40(%rbp),%xmm0
  609fea:	e8 b9 64 00 00       	call   6104a8 <SDL_cosf@plt>
  609fef:	66 0f 6e 4d c4       	movd   -0x3c(%rbp),%xmm1
  609ff4:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  609ff8:	66 0f 7e 4d bc       	movd   %xmm1,-0x44(%rbp)
  609ffd:	66 0f 6e 45 c0       	movd   -0x40(%rbp),%xmm0
  60a002:	e8 b1 64 00 00       	call   6104b8 <SDL_sinf@plt>
  60a007:	66 0f 6e 4d c4       	movd   -0x3c(%rbp),%xmm1
  60a00c:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  60a010:	66 0f 7e 4d b8       	movd   %xmm1,-0x48(%rbp)
  60a015:	8b 45 cc             	mov    -0x34(%rbp),%eax
  60a018:	89 c1                	mov    %eax,%ecx
  60a01a:	83 c0 01             	add    $0x1,%eax
  60a01d:	89 45 cc             	mov    %eax,-0x34(%rbp)
  60a020:	48 63 c9             	movslq %ecx,%rcx
  60a023:	48 c1 e1 02          	shl    $0x2,%rcx
  60a027:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60a02b:	48 01 c8             	add    %rcx,%rax
  60a02e:	66 0f 6e 45 bc       	movd   -0x44(%rbp),%xmm0
  60a033:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a037:	8b 45 cc             	mov    -0x34(%rbp),%eax
  60a03a:	89 c1                	mov    %eax,%ecx
  60a03c:	83 c0 01             	add    $0x1,%eax
  60a03f:	89 45 cc             	mov    %eax,-0x34(%rbp)
  60a042:	48 63 c9             	movslq %ecx,%rcx
  60a045:	48 c1 e1 02          	shl    $0x2,%rcx
  60a049:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60a04d:	48 01 c8             	add    %rcx,%rax
  60a050:	66 0f 6e 45 b8       	movd   -0x48(%rbp),%xmm0
  60a055:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a059:	8b 45 cc             	mov    -0x34(%rbp),%eax
  60a05c:	89 c1                	mov    %eax,%ecx
  60a05e:	83 c0 01             	add    $0x1,%eax
  60a061:	89 45 cc             	mov    %eax,-0x34(%rbp)
  60a064:	48 63 c9             	movslq %ecx,%rcx
  60a067:	48 c1 e1 02          	shl    $0x2,%rcx
  60a06b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60a06f:	48 01 c8             	add    %rcx,%rax
  60a072:	66 0f 6e 05 66 67 20 	movd   0x206766(%rip),%xmm0        # 8107e0 <L.65>
  60a079:	00 
  60a07a:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a07e:	e9 d6 fe ff ff       	jmp    609f59 <draw_asteroid+0x95>
  60a083:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60a086:	b9 03 00 00 00       	mov    $0x3,%ecx
  60a08b:	0f af c1             	imul   %ecx,%eax
  60a08e:	48 63 c0             	movslq %eax,%rax
  60a091:	48 c1 e0 02          	shl    $0x2,%rax
  60a095:	48 c1 e0 20          	shl    $0x20,%rax
  60a099:	48 c1 e8 20          	shr    $0x20,%rax
  60a09d:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  60a0a0:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  60a0a3:	49 89 c2             	mov    %rax,%r10
  60a0a6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60a0aa:	48 89 c6             	mov    %rax,%rsi
  60a0ad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60a0b1:	48 89 c7             	mov    %rax,%rdi
  60a0b4:	4c 89 d2             	mov    %r10,%rdx
  60a0b7:	e8 5f f5 ff ff       	call   60961b <update_renderer>
  60a0bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a0c0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a0c4:	48 83 c1 08          	add    $0x8,%rcx
  60a0c8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60a0cc:	48 83 c2 14          	add    $0x14,%rdx
  60a0d0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60a0d4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60a0d8:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  60a0dc:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
  60a0e0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  60a0e4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60a0e7:	49 89 c2             	mov    %rax,%r10
  60a0ea:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  60a0ee:	8b 00                	mov    (%rax),%eax
  60a0f0:	48 89 c6             	mov    %rax,%rsi
  60a0f3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  60a0f7:	66 0f 6e 10          	movd   (%rax),%xmm2
  60a0fb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  60a0ff:	f3 0f 7e 08          	movq   (%rax),%xmm1
  60a103:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60a107:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60a10b:	b8 02 00 00 00       	mov    $0x2,%eax
  60a110:	48 89 c7             	mov    %rax,%rdi
  60a113:	4c 89 d2             	mov    %r10,%rdx
  60a116:	e8 4b f7 ff ff       	call   609866 <draw>
  60a11b:	48 8b 65 d0          	mov    -0x30(%rbp),%rsp
  60a11f:	c9                   	leave
  60a120:	c3                   	ret

000000000060a121 <has_Vector2_intersection>:
  60a121:	55                   	push   %rbp
  60a122:	48 89 e5             	mov    %rsp,%rbp
  60a125:	48 81 ec 40 00 00 00 	sub    $0x40,%rsp
  60a12c:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  60a131:	66 0f d6 4d f0       	movq   %xmm1,-0x10(%rbp)
  60a136:	66 0f d6 55 e8       	movq   %xmm2,-0x18(%rbp)
  60a13b:	66 0f d6 5d e0       	movq   %xmm3,-0x20(%rbp)
  60a140:	48 b8 10 00 00 00 00 	movabs $0x10,%rax
  60a147:	00 00 00 
  60a14a:	49 89 c2             	mov    %rax,%r10
  60a14d:	b8 00 00 00 00       	mov    $0x0,%eax
  60a152:	48 89 c6             	mov    %rax,%rsi
  60a155:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  60a159:	48 89 c7             	mov    %rax,%rdi
  60a15c:	4c 89 d2             	mov    %r10,%rdx
  60a15f:	b8 00 00 00 00       	mov    $0x0,%eax
  60a164:	e8 1f 63 00 00       	call   610488 <memset@plt>
  60a169:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  60a16e:	66 0f 7e 45 d0       	movd   %xmm0,-0x30(%rbp)
  60a173:	66 0f 6e 45 fc       	movd   -0x4(%rbp),%xmm0
  60a178:	66 0f 7e 45 d4       	movd   %xmm0,-0x2c(%rbp)
  60a17d:	66 0f 6e 45 f0       	movd   -0x10(%rbp),%xmm0
  60a182:	66 0f 7e 45 d8       	movd   %xmm0,-0x28(%rbp)
  60a187:	66 0f 6e 45 f4       	movd   -0xc(%rbp),%xmm0
  60a18c:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  60a191:	48 b8 10 00 00 00 00 	movabs $0x10,%rax
  60a198:	00 00 00 
  60a19b:	49 89 c2             	mov    %rax,%r10
  60a19e:	b8 00 00 00 00       	mov    $0x0,%eax
  60a1a3:	48 89 c6             	mov    %rax,%rsi
  60a1a6:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  60a1aa:	48 89 c7             	mov    %rax,%rdi
  60a1ad:	4c 89 d2             	mov    %r10,%rdx
  60a1b0:	b8 00 00 00 00       	mov    $0x0,%eax
  60a1b5:	e8 ce 62 00 00       	call   610488 <memset@plt>
  60a1ba:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60a1bf:	66 0f 7e 45 c0       	movd   %xmm0,-0x40(%rbp)
  60a1c4:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  60a1c9:	66 0f 7e 45 c4       	movd   %xmm0,-0x3c(%rbp)
  60a1ce:	66 0f 6e 45 e0       	movd   -0x20(%rbp),%xmm0
  60a1d3:	66 0f 7e 45 c8       	movd   %xmm0,-0x38(%rbp)
  60a1d8:	66 0f 6e 45 e4       	movd   -0x1c(%rbp),%xmm0
  60a1dd:	66 0f 7e 45 cc       	movd   %xmm0,-0x34(%rbp)
  60a1e2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  60a1e6:	48 89 c6             	mov    %rax,%rsi
  60a1e9:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  60a1ed:	48 89 c7             	mov    %rax,%rdi
  60a1f0:	e8 23 63 00 00       	call   610518 <SDL_HasRectIntersectionFloat@plt>
  60a1f5:	0f b6 c0             	movzbl %al,%eax
  60a1f8:	c9                   	leave
  60a1f9:	c3                   	ret

000000000060a1fa <angle_ast>:
  60a1fa:	55                   	push   %rbp
  60a1fb:	48 89 e5             	mov    %rsp,%rbp
  60a1fe:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60a205:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60a209:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60a20d:	b8 00 00 00 00       	mov    $0x0,%eax
  60a212:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60a215:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60a218:	83 f8 0c             	cmp    $0xc,%eax
  60a21b:	0f 8d 58 00 00 00    	jge    60a279 <angle_ast+0x7f>
  60a221:	e9 0d 00 00 00       	jmp    60a233 <angle_ast+0x39>
  60a226:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60a229:	89 c1                	mov    %eax,%ecx
  60a22b:	83 c0 01             	add    $0x1,%eax
  60a22e:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60a231:	eb e2                	jmp    60a215 <angle_ast+0x1b>
  60a233:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60a236:	48 63 c0             	movslq %eax,%rax
  60a239:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60a240:	00 00 00 
  60a243:	48 0f af c1          	imul   %rcx,%rax
  60a247:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60a24b:	48 01 c1             	add    %rax,%rcx
  60a24e:	48 83 c1 14          	add    $0x14,%rcx
  60a252:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a256:	48 83 c0 14          	add    $0x14,%rax
  60a25a:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60a25e:	0f 2e 00             	ucomiss (%rax),%xmm0
  60a261:	0f 8a 10 00 00 00    	jp     60a277 <angle_ast+0x7d>
  60a267:	0f 85 0a 00 00 00    	jne    60a277 <angle_ast+0x7d>
  60a26d:	b8 00 00 00 00       	mov    $0x0,%eax
  60a272:	e9 07 00 00 00       	jmp    60a27e <angle_ast+0x84>
  60a277:	eb ad                	jmp    60a226 <angle_ast+0x2c>
  60a279:	b8 01 00 00 00       	mov    $0x1,%eax
  60a27e:	c9                   	leave
  60a27f:	c3                   	ret

000000000060a280 <b_append_pos>:
  60a280:	55                   	push   %rbp
  60a281:	48 89 e5             	mov    %rsp,%rbp
  60a284:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60a28b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60a28f:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
  60a294:	66 0f d6 4d e8       	movq   %xmm1,-0x18(%rbp)
  60a299:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a29d:	48 83 c0 04          	add    $0x4,%rax
  60a2a1:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a2a5:	8b 09                	mov    (%rcx),%ecx
  60a2a7:	48 63 c9             	movslq %ecx,%rcx
  60a2aa:	48 c1 e1 03          	shl    $0x3,%rcx
  60a2ae:	48 01 c8             	add    %rcx,%rax
  60a2b1:	66 0f 6e 45 f0       	movd   -0x10(%rbp),%xmm0
  60a2b6:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a2ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a2be:	48 83 c0 04          	add    $0x4,%rax
  60a2c2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a2c6:	8b 09                	mov    (%rcx),%ecx
  60a2c8:	48 63 c9             	movslq %ecx,%rcx
  60a2cb:	48 c1 e1 03          	shl    $0x3,%rcx
  60a2cf:	48 01 c8             	add    %rcx,%rax
  60a2d2:	48 83 c0 04          	add    $0x4,%rax
  60a2d6:	66 0f 6e 45 f4       	movd   -0xc(%rbp),%xmm0
  60a2db:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a2df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a2e3:	48 81 c0 04 08 00 00 	add    $0x804,%rax
  60a2ea:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a2ee:	8b 09                	mov    (%rcx),%ecx
  60a2f0:	48 63 c9             	movslq %ecx,%rcx
  60a2f3:	48 c1 e1 03          	shl    $0x3,%rcx
  60a2f7:	48 01 c8             	add    %rcx,%rax
  60a2fa:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60a2ff:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a303:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a307:	48 81 c0 04 08 00 00 	add    $0x804,%rax
  60a30e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a312:	8b 09                	mov    (%rcx),%ecx
  60a314:	48 63 c9             	movslq %ecx,%rcx
  60a317:	48 c1 e1 03          	shl    $0x3,%rcx
  60a31b:	48 01 c8             	add    %rcx,%rax
  60a31e:	48 83 c0 04          	add    $0x4,%rax
  60a322:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  60a327:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a32b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a32f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  60a333:	8b 00                	mov    (%rax),%eax
  60a335:	89 c1                	mov    %eax,%ecx
  60a337:	83 c0 01             	add    $0x1,%eax
  60a33a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  60a33e:	89 02                	mov    %eax,(%rdx)
  60a340:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a344:	8b 00                	mov    (%rax),%eax
  60a346:	81 f8 00 01 00 00    	cmp    $0x100,%eax
  60a34c:	0f 8c 0b 00 00 00    	jl     60a35d <b_append_pos+0xdd>
  60a352:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a356:	b9 00 00 00 00       	mov    $0x0,%ecx
  60a35b:	89 08                	mov    %ecx,(%rax)
  60a35d:	c9                   	leave
  60a35e:	c3                   	ret

000000000060a35f <shoot>:
  60a35f:	55                   	push   %rbp
  60a360:	48 89 e5             	mov    %rsp,%rbp
  60a363:	48 81 ec 70 00 00 00 	sub    $0x70,%rsp
  60a36a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60a36e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60a372:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a376:	8b 00                	mov    (%rax),%eax
  60a378:	b9 06 00 00 00       	mov    $0x6,%ecx
  60a37d:	0f af c1             	imul   %ecx,%eax
  60a380:	48 63 c0             	movslq %eax,%rax
  60a383:	48 c1 e0 02          	shl    $0x2,%rax
  60a387:	48 c1 e0 20          	shl    $0x20,%rax
  60a38b:	48 c1 e8 20          	shr    $0x20,%rax
  60a38f:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60a392:	48 89 65 d8          	mov    %rsp,-0x28(%rbp)
  60a396:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60a399:	48 2b e0             	sub    %rax,%rsp
  60a39c:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  60a3a0:	48 89 65 e0          	mov    %rsp,-0x20(%rbp)
  60a3a4:	b8 00 00 00 00       	mov    $0x0,%eax
  60a3a9:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a3ac:	b8 00 00 00 00       	mov    $0x0,%eax
  60a3b1:	89 45 d0             	mov    %eax,-0x30(%rbp)
  60a3b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a3b8:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  60a3bb:	8b 00                	mov    (%rax),%eax
  60a3bd:	39 c1                	cmp    %eax,%ecx
  60a3bf:	0f 8d 85 01 00 00    	jge    60a54a <shoot+0x1eb>
  60a3c5:	e9 0d 00 00 00       	jmp    60a3d7 <shoot+0x78>
  60a3ca:	8b 45 d0             	mov    -0x30(%rbp),%eax
  60a3cd:	89 c1                	mov    %eax,%ecx
  60a3cf:	83 c0 01             	add    $0x1,%eax
  60a3d2:	89 45 d0             	mov    %eax,-0x30(%rbp)
  60a3d5:	eb dd                	jmp    60a3b4 <shoot+0x55>
  60a3d7:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a3da:	89 c1                	mov    %eax,%ecx
  60a3dc:	83 c0 01             	add    $0x1,%eax
  60a3df:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a3e2:	48 63 c9             	movslq %ecx,%rcx
  60a3e5:	48 c1 e1 02          	shl    $0x2,%rcx
  60a3e9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a3ed:	48 01 c8             	add    %rcx,%rax
  60a3f0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a3f4:	48 83 c1 04          	add    $0x4,%rcx
  60a3f8:	8b 55 d0             	mov    -0x30(%rbp),%edx
  60a3fb:	48 63 d2             	movslq %edx,%rdx
  60a3fe:	48 c1 e2 03          	shl    $0x3,%rdx
  60a402:	48 01 d1             	add    %rdx,%rcx
  60a405:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60a409:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a40d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a410:	89 c1                	mov    %eax,%ecx
  60a412:	83 c0 01             	add    $0x1,%eax
  60a415:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a418:	48 63 c9             	movslq %ecx,%rcx
  60a41b:	48 c1 e1 02          	shl    $0x2,%rcx
  60a41f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a423:	48 01 c8             	add    %rcx,%rax
  60a426:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a42a:	48 83 c1 04          	add    $0x4,%rcx
  60a42e:	8b 55 d0             	mov    -0x30(%rbp),%edx
  60a431:	48 63 d2             	movslq %edx,%rdx
  60a434:	48 c1 e2 03          	shl    $0x3,%rdx
  60a438:	48 01 d1             	add    %rdx,%rcx
  60a43b:	48 83 c1 04          	add    $0x4,%rcx
  60a43f:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60a443:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a447:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a44a:	89 c1                	mov    %eax,%ecx
  60a44c:	83 c0 01             	add    $0x1,%eax
  60a44f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a452:	48 63 c9             	movslq %ecx,%rcx
  60a455:	48 c1 e1 02          	shl    $0x2,%rcx
  60a459:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a45d:	48 01 c8             	add    %rcx,%rax
  60a460:	66 0f 6e 05 7c 63 20 	movd   0x20637c(%rip),%xmm0        # 8107e4 <L.66>
  60a467:	00 
  60a468:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a46c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a470:	48 83 c0 04          	add    $0x4,%rax
  60a474:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  60a477:	48 63 c9             	movslq %ecx,%rcx
  60a47a:	48 c1 e1 03          	shl    $0x3,%rcx
  60a47e:	48 01 c8             	add    %rcx,%rax
  60a481:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60a485:	48 81 c1 04 08 00 00 	add    $0x804,%rcx
  60a48c:	8b 55 d0             	mov    -0x30(%rbp),%edx
  60a48f:	48 63 d2             	movslq %edx,%rdx
  60a492:	48 c1 e2 03          	shl    $0x3,%rdx
  60a496:	48 01 d1             	add    %rdx,%rcx
  60a499:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  60a49d:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  60a4a1:	66 0f 6e 0d 3f 63 20 	movd   0x20633f(%rip),%xmm1        # 8107e8 <L.67>
  60a4a8:	00 
  60a4a9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  60a4ad:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60a4b1:	e8 6f f2 ff ff       	call   609725 <vector2_scale>
  60a4b6:	66 0f d6 45 b0       	movq   %xmm0,-0x50(%rbp)
  60a4bb:	f3 0f 7e 4d b0       	movq   -0x50(%rbp),%xmm1
  60a4c0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  60a4c4:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60a4c8:	e8 92 f2 ff ff       	call   60975f <vector2_add>
  60a4cd:	66 0f d6 45 a8       	movq   %xmm0,-0x58(%rbp)
  60a4d2:	48 8d 75 a8          	lea    -0x58(%rbp),%rsi
  60a4d6:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  60a4da:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60a4dc:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a4df:	89 c1                	mov    %eax,%ecx
  60a4e1:	83 c0 01             	add    $0x1,%eax
  60a4e4:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a4e7:	48 63 c9             	movslq %ecx,%rcx
  60a4ea:	48 c1 e1 02          	shl    $0x2,%rcx
  60a4ee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a4f2:	48 01 c8             	add    %rcx,%rax
  60a4f5:	66 0f 6e 45 c8       	movd   -0x38(%rbp),%xmm0
  60a4fa:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a4fe:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a501:	89 c1                	mov    %eax,%ecx
  60a503:	83 c0 01             	add    $0x1,%eax
  60a506:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a509:	48 63 c9             	movslq %ecx,%rcx
  60a50c:	48 c1 e1 02          	shl    $0x2,%rcx
  60a510:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a514:	48 01 c8             	add    %rcx,%rax
  60a517:	66 0f 6e 45 cc       	movd   -0x34(%rbp),%xmm0
  60a51c:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a520:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a523:	89 c1                	mov    %eax,%ecx
  60a525:	83 c0 01             	add    $0x1,%eax
  60a528:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  60a52b:	48 63 c9             	movslq %ecx,%rcx
  60a52e:	48 c1 e1 02          	shl    $0x2,%rcx
  60a532:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a536:	48 01 c8             	add    %rcx,%rax
  60a539:	66 0f 6e 05 ab 62 20 	movd   0x2062ab(%rip),%xmm0        # 8107ec <L.68>
  60a540:	00 
  60a541:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60a545:	e9 80 fe ff ff       	jmp    60a3ca <shoot+0x6b>
  60a54a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60a54e:	8b 00                	mov    (%rax),%eax
  60a550:	b9 06 00 00 00       	mov    $0x6,%ecx
  60a555:	0f af c1             	imul   %ecx,%eax
  60a558:	48 63 c0             	movslq %eax,%rax
  60a55b:	48 c1 e0 02          	shl    $0x2,%rax
  60a55f:	48 c1 e0 20          	shl    $0x20,%rax
  60a563:	48 c1 e8 20          	shr    $0x20,%rax
  60a567:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  60a56a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60a56d:	49 89 c2             	mov    %rax,%r10
  60a570:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60a574:	48 89 c6             	mov    %rax,%rsi
  60a577:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60a57b:	48 89 c7             	mov    %rax,%rdi
  60a57e:	4c 89 d2             	mov    %r10,%rdx
  60a581:	e8 95 f0 ff ff       	call   60961b <update_renderer>
  60a586:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60a58d:	00 00 00 
  60a590:	49 89 c2             	mov    %rax,%r10
  60a593:	b8 00 00 00 00       	mov    $0x0,%eax
  60a598:	48 89 c6             	mov    %rax,%rsi
  60a59b:	48 8d 45 9c          	lea    -0x64(%rbp),%rax
  60a59f:	48 89 c7             	mov    %rax,%rdi
  60a5a2:	4c 89 d2             	mov    %r10,%rdx
  60a5a5:	b8 00 00 00 00       	mov    $0x0,%eax
  60a5aa:	e8 d9 5e 00 00       	call   610488 <memset@plt>
  60a5af:	66 0f 6e 05 39 62 20 	movd   0x206239(%rip),%xmm0        # 8107f0 <L.69>
  60a5b6:	00 
  60a5b7:	66 0f 7e 45 9c       	movd   %xmm0,-0x64(%rbp)
  60a5bc:	66 0f 6e 05 30 62 20 	movd   0x206230(%rip),%xmm0        # 8107f4 <L.70>
  60a5c3:	00 
  60a5c4:	66 0f 7e 45 a0       	movd   %xmm0,-0x60(%rbp)
  60a5c9:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60a5d0:	00 00 00 
  60a5d3:	49 89 c2             	mov    %rax,%r10
  60a5d6:	b8 00 00 00 00       	mov    $0x0,%eax
  60a5db:	48 89 c6             	mov    %rax,%rsi
  60a5de:	48 8d 45 94          	lea    -0x6c(%rbp),%rax
  60a5e2:	48 89 c7             	mov    %rax,%rdi
  60a5e5:	4c 89 d2             	mov    %r10,%rdx
  60a5e8:	b8 00 00 00 00       	mov    $0x0,%eax
  60a5ed:	e8 96 5e 00 00       	call   610488 <memset@plt>
  60a5f2:	66 0f 6e 05 fe 61 20 	movd   0x2061fe(%rip),%xmm0        # 8107f8 <L.71>
  60a5f9:	00 
  60a5fa:	66 0f 7e 45 94       	movd   %xmm0,-0x6c(%rbp)
  60a5ff:	66 0f 6e 05 f5 61 20 	movd   0x2061f5(%rip),%xmm0        # 8107fc <L.72>
  60a606:	00 
  60a607:	66 0f 7e 45 98       	movd   %xmm0,-0x68(%rbp)
  60a60c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60a610:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  60a614:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  60a617:	b9 03 00 00 00       	mov    $0x3,%ecx
  60a61c:	99                   	cltd
  60a61d:	f7 f9                	idiv   %ecx
  60a61f:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  60a622:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60a625:	49 89 c2             	mov    %rax,%r10
  60a628:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  60a62c:	8b 00                	mov    (%rax),%eax
  60a62e:	48 89 c6             	mov    %rax,%rsi
  60a631:	66 0f 6e 15 c7 61 20 	movd   0x2061c7(%rip),%xmm2        # 810800 <L.73>
  60a638:	00 
  60a639:	f3 0f 7e 4d 94       	movq   -0x6c(%rbp),%xmm1
  60a63e:	f3 0f 7e 45 9c       	movq   -0x64(%rbp),%xmm0
  60a643:	b8 01 00 00 00       	mov    $0x1,%eax
  60a648:	48 89 c7             	mov    %rax,%rdi
  60a64b:	4c 89 d2             	mov    %r10,%rdx
  60a64e:	e8 13 f2 ff ff       	call   609866 <draw>
  60a653:	48 8b 65 d8          	mov    -0x28(%rbp),%rsp
  60a657:	c9                   	leave
  60a658:	c3                   	ret

000000000060a659 <main>:
  60a659:	55                   	push   %rbp
  60a65a:	48 89 e5             	mov    %rsp,%rbp
  60a65d:	48 81 ec c0 13 00 00 	sub    $0x13c0,%rsp
  60a664:	b8 d0 02 00 00       	mov    $0x2d0,%eax
  60a669:	48 89 c6             	mov    %rax,%rsi
  60a66c:	b8 00 05 00 00       	mov    $0x500,%eax
  60a671:	48 89 c7             	mov    %rax,%rdi
  60a674:	e8 4c ec ff ff       	call   6092c5 <init_window>
  60a679:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  60a67d:	b8 01 00 00 00       	mov    $0x1,%eax
  60a682:	88 45 f7             	mov    %al,-0x9(%rbp)
  60a685:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60a68c:	00 00 00 
  60a68f:	48 89 c7             	mov    %rax,%rdi
  60a692:	e8 51 5e 00 00       	call   6104e8 <SDL_srand@plt>
  60a697:	48 b8 6c 00 00 00 00 	movabs $0x6c,%rax
  60a69e:	00 00 00 
  60a6a1:	49 89 c2             	mov    %rax,%r10
  60a6a4:	b8 00 00 00 00       	mov    $0x0,%eax
  60a6a9:	48 89 c6             	mov    %rax,%rsi
  60a6ac:	48 8d 45 88          	lea    -0x78(%rbp),%rax
  60a6b0:	48 89 c7             	mov    %rax,%rdi
  60a6b3:	4c 89 d2             	mov    %r10,%rdx
  60a6b6:	b8 00 00 00 00       	mov    $0x0,%eax
  60a6bb:	e8 c8 5d 00 00       	call   610488 <memset@plt>
  60a6c0:	66 0f 6e 05 3c 61 20 	movd   0x20613c(%rip),%xmm0        # 810804 <L.74>
  60a6c7:	00 
  60a6c8:	66 0f 7e 45 88       	movd   %xmm0,-0x78(%rbp)
  60a6cd:	66 0f 6e 05 33 61 20 	movd   0x206133(%rip),%xmm0        # 810808 <L.75>
  60a6d4:	00 
  60a6d5:	66 0f 7e 45 8c       	movd   %xmm0,-0x74(%rbp)
  60a6da:	66 0f 6e 05 2a 61 20 	movd   0x20612a(%rip),%xmm0        # 81080c <L.76>
  60a6e1:	00 
  60a6e2:	66 0f 7e 45 90       	movd   %xmm0,-0x70(%rbp)
  60a6e7:	66 0f 6e 05 21 61 20 	movd   0x206121(%rip),%xmm0        # 810810 <L.77>
  60a6ee:	00 
  60a6ef:	66 0f 7e 45 94       	movd   %xmm0,-0x6c(%rbp)
  60a6f4:	66 0f 6e 05 18 61 20 	movd   0x206118(%rip),%xmm0        # 810814 <L.78>
  60a6fb:	00 
  60a6fc:	66 0f 7e 45 98       	movd   %xmm0,-0x68(%rbp)
  60a701:	66 0f 6e 05 0f 61 20 	movd   0x20610f(%rip),%xmm0        # 810818 <L.79>
  60a708:	00 
  60a709:	66 0f 7e 45 9c       	movd   %xmm0,-0x64(%rbp)
  60a70e:	66 0f 6e 05 06 61 20 	movd   0x206106(%rip),%xmm0        # 81081c <L.80>
  60a715:	00 
  60a716:	66 0f 7e 45 a0       	movd   %xmm0,-0x60(%rbp)
  60a71b:	66 0f 6e 05 fd 60 20 	movd   0x2060fd(%rip),%xmm0        # 810820 <L.81>
  60a722:	00 
  60a723:	66 0f 7e 45 a4       	movd   %xmm0,-0x5c(%rbp)
  60a728:	66 0f 6e 05 f4 60 20 	movd   0x2060f4(%rip),%xmm0        # 810824 <L.82>
  60a72f:	00 
  60a730:	66 0f 7e 45 a8       	movd   %xmm0,-0x58(%rbp)
  60a735:	66 0f 6e 05 eb 60 20 	movd   0x2060eb(%rip),%xmm0        # 810828 <L.83>
  60a73c:	00 
  60a73d:	66 0f 7e 45 ac       	movd   %xmm0,-0x54(%rbp)
  60a742:	66 0f 6e 05 e2 60 20 	movd   0x2060e2(%rip),%xmm0        # 81082c <L.84>
  60a749:	00 
  60a74a:	66 0f 7e 45 b0       	movd   %xmm0,-0x50(%rbp)
  60a74f:	66 0f 6e 05 d9 60 20 	movd   0x2060d9(%rip),%xmm0        # 810830 <L.85>
  60a756:	00 
  60a757:	66 0f 7e 45 b4       	movd   %xmm0,-0x4c(%rbp)
  60a75c:	66 0f 6e 05 d0 60 20 	movd   0x2060d0(%rip),%xmm0        # 810834 <L.86>
  60a763:	00 
  60a764:	66 0f 7e 45 b8       	movd   %xmm0,-0x48(%rbp)
  60a769:	66 0f 6e 05 c7 60 20 	movd   0x2060c7(%rip),%xmm0        # 810838 <L.87>
  60a770:	00 
  60a771:	66 0f 7e 45 bc       	movd   %xmm0,-0x44(%rbp)
  60a776:	66 0f 6e 05 be 60 20 	movd   0x2060be(%rip),%xmm0        # 81083c <L.88>
  60a77d:	00 
  60a77e:	66 0f 7e 45 c0       	movd   %xmm0,-0x40(%rbp)
  60a783:	66 0f 6e 05 b5 60 20 	movd   0x2060b5(%rip),%xmm0        # 810840 <L.89>
  60a78a:	00 
  60a78b:	66 0f 7e 45 c4       	movd   %xmm0,-0x3c(%rbp)
  60a790:	66 0f 6e 05 ac 60 20 	movd   0x2060ac(%rip),%xmm0        # 810844 <L.90>
  60a797:	00 
  60a798:	66 0f 7e 45 c8       	movd   %xmm0,-0x38(%rbp)
  60a79d:	66 0f 6e 05 a3 60 20 	movd   0x2060a3(%rip),%xmm0        # 810848 <L.91>
  60a7a4:	00 
  60a7a5:	66 0f 7e 45 cc       	movd   %xmm0,-0x34(%rbp)
  60a7aa:	66 0f 6e 05 9a 60 20 	movd   0x20609a(%rip),%xmm0        # 81084c <L.92>
  60a7b1:	00 
  60a7b2:	66 0f 7e 45 d0       	movd   %xmm0,-0x30(%rbp)
  60a7b7:	66 0f 6e 05 91 60 20 	movd   0x206091(%rip),%xmm0        # 810850 <L.93>
  60a7be:	00 
  60a7bf:	66 0f 7e 45 d4       	movd   %xmm0,-0x2c(%rbp)
  60a7c4:	66 0f 6e 05 88 60 20 	movd   0x206088(%rip),%xmm0        # 810854 <L.94>
  60a7cb:	00 
  60a7cc:	66 0f 7e 45 d8       	movd   %xmm0,-0x28(%rbp)
  60a7d1:	66 0f 6e 05 7f 60 20 	movd   0x20607f(%rip),%xmm0        # 810858 <L.95>
  60a7d8:	00 
  60a7d9:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  60a7de:	66 0f 6e 05 76 60 20 	movd   0x206076(%rip),%xmm0        # 81085c <L.96>
  60a7e5:	00 
  60a7e6:	66 0f 7e 45 e0       	movd   %xmm0,-0x20(%rbp)
  60a7eb:	66 0f 6e 05 6d 60 20 	movd   0x20606d(%rip),%xmm0        # 810860 <L.97>
  60a7f2:	00 
  60a7f3:	66 0f 7e 45 e4       	movd   %xmm0,-0x1c(%rbp)
  60a7f8:	66 0f 6e 05 64 60 20 	movd   0x206064(%rip),%xmm0        # 810864 <L.98>
  60a7ff:	00 
  60a800:	66 0f 7e 45 e8       	movd   %xmm0,-0x18(%rbp)
  60a805:	66 0f 6e 05 5b 60 20 	movd   0x20605b(%rip),%xmm0        # 810868 <L.99>
  60a80c:	00 
  60a80d:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  60a812:	66 0f 6e 05 52 60 20 	movd   0x206052(%rip),%xmm0        # 81086c <L.100>
  60a819:	00 
  60a81a:	66 0f 7e 45 f0       	movd   %xmm0,-0x10(%rbp)
  60a81f:	48 b8 6c 00 00 00 00 	movabs $0x6c,%rax
  60a826:	00 00 00 
  60a829:	49 89 c3             	mov    %rax,%r11
  60a82c:	48 8d 45 88          	lea    -0x78(%rbp),%rax
  60a830:	49 89 c2             	mov    %rax,%r10
  60a833:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  60a837:	48 89 c6             	mov    %rax,%rsi
  60a83a:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  60a83e:	48 89 c7             	mov    %rax,%rdi
  60a841:	4c 89 d2             	mov    %r10,%rdx
  60a844:	4c 89 d9             	mov    %r11,%rcx
  60a847:	e8 3f f2 ff ff       	call   609a8b <vao_init>
  60a84c:	48 8d 05 1d 60 20 00 	lea    0x20601d(%rip),%rax        # 810870 <L.101>
  60a853:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
  60a85a:	b8 31 8b 00 00       	mov    $0x8b31,%eax
  60a85f:	48 89 c7             	mov    %rax,%rdi
  60a862:	4c 8b 1d df 80 20 00 	mov    0x2080df(%rip),%r11        # 812948 <glad_glCreateShader-0x200dd0>
  60a869:	4d 8b 1b             	mov    (%r11),%r11
  60a86c:	41 ff d3             	call   *%r11
  60a86f:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
  60a875:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60a87c:	00 00 00 
  60a87f:	49 89 c3             	mov    %rax,%r11
  60a882:	48 8d 85 28 fe ff ff 	lea    -0x1d8(%rbp),%rax
  60a889:	49 89 c2             	mov    %rax,%r10
  60a88c:	b8 01 00 00 00       	mov    $0x1,%eax
  60a891:	48 89 c6             	mov    %rax,%rsi
  60a894:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
  60a89a:	48 89 c7             	mov    %rax,%rdi
  60a89d:	4c 89 d2             	mov    %r10,%rdx
  60a8a0:	4c 89 d9             	mov    %r11,%rcx
  60a8a3:	4c 8b 1d a6 80 20 00 	mov    0x2080a6(%rip),%r11        # 812950 <glad_glShaderSource-0x201348>
  60a8aa:	4d 8b 1b             	mov    (%r11),%r11
  60a8ad:	41 ff d3             	call   *%r11
  60a8b0:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
  60a8b6:	48 89 c7             	mov    %rax,%rdi
  60a8b9:	4c 8b 1d 98 80 20 00 	mov    0x208098(%rip),%r11        # 812958 <glad_glCompileShader-0x200d50>
  60a8c0:	4d 8b 1b             	mov    (%r11),%r11
  60a8c3:	41 ff d3             	call   *%r11
  60a8c6:	48 8d 05 34 60 20 00 	lea    0x206034(%rip),%rax        # 810901 <L.102>
  60a8cd:	49 89 c2             	mov    %rax,%r10
  60a8d0:	b8 81 8b 00 00       	mov    $0x8b81,%eax
  60a8d5:	48 89 c6             	mov    %rax,%rsi
  60a8d8:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
  60a8de:	48 89 c7             	mov    %rax,%rdi
  60a8e1:	4c 89 d2             	mov    %r10,%rdx
  60a8e4:	e8 c9 f2 ff ff       	call   609bb2 <check_shader_err>
  60a8e9:	48 8d 05 18 60 20 00 	lea    0x206018(%rip),%rax        # 810908 <L.103>
  60a8f0:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
  60a8f7:	b8 30 8b 00 00       	mov    $0x8b30,%eax
  60a8fc:	48 89 c7             	mov    %rax,%rdi
  60a8ff:	4c 8b 1d 42 80 20 00 	mov    0x208042(%rip),%r11        # 812948 <glad_glCreateShader-0x200dd0>
  60a906:	4d 8b 1b             	mov    (%r11),%r11
  60a909:	41 ff d3             	call   *%r11
  60a90c:	89 85 14 fe ff ff    	mov    %eax,-0x1ec(%rbp)
  60a912:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60a919:	00 00 00 
  60a91c:	49 89 c3             	mov    %rax,%r11
  60a91f:	48 8d 85 18 fe ff ff 	lea    -0x1e8(%rbp),%rax
  60a926:	49 89 c2             	mov    %rax,%r10
  60a929:	b8 01 00 00 00       	mov    $0x1,%eax
  60a92e:	48 89 c6             	mov    %rax,%rsi
  60a931:	8b 85 14 fe ff ff    	mov    -0x1ec(%rbp),%eax
  60a937:	48 89 c7             	mov    %rax,%rdi
  60a93a:	4c 89 d2             	mov    %r10,%rdx
  60a93d:	4c 89 d9             	mov    %r11,%rcx
  60a940:	4c 8b 1d 09 80 20 00 	mov    0x208009(%rip),%r11        # 812950 <glad_glShaderSource-0x201348>
  60a947:	4d 8b 1b             	mov    (%r11),%r11
  60a94a:	41 ff d3             	call   *%r11
  60a94d:	8b 85 14 fe ff ff    	mov    -0x1ec(%rbp),%eax
  60a953:	48 89 c7             	mov    %rax,%rdi
  60a956:	4c 8b 1d fb 7f 20 00 	mov    0x207ffb(%rip),%r11        # 812958 <glad_glCompileShader-0x200d50>
  60a95d:	4d 8b 1b             	mov    (%r11),%r11
  60a960:	41 ff d3             	call   *%r11
  60a963:	48 8d 05 01 60 20 00 	lea    0x206001(%rip),%rax        # 81096b <L.104>
  60a96a:	49 89 c2             	mov    %rax,%r10
  60a96d:	b8 81 8b 00 00       	mov    $0x8b81,%eax
  60a972:	48 89 c6             	mov    %rax,%rsi
  60a975:	8b 85 14 fe ff ff    	mov    -0x1ec(%rbp),%eax
  60a97b:	48 89 c7             	mov    %rax,%rdi
  60a97e:	4c 89 d2             	mov    %r10,%rdx
  60a981:	e8 2c f2 ff ff       	call   609bb2 <check_shader_err>
  60a986:	4c 8b 1d d3 7f 20 00 	mov    0x207fd3(%rip),%r11        # 812960 <glad_glCreateProgram-0x200db0>
  60a98d:	4d 8b 1b             	mov    (%r11),%r11
  60a990:	41 ff d3             	call   *%r11
  60a993:	4c 8b 1d 6e 7f 20 00 	mov    0x207f6e(%rip),%r11        # 812908 <shader-0x201848>
  60a99a:	41 89 03             	mov    %eax,(%r11)
  60a99d:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
  60a9a3:	48 89 c6             	mov    %rax,%rsi
  60a9a6:	48 8b 05 5b 7f 20 00 	mov    0x207f5b(%rip),%rax        # 812908 <shader-0x201848>
  60a9ad:	8b 00                	mov    (%rax),%eax
  60a9af:	48 89 c7             	mov    %rax,%rdi
  60a9b2:	4c 8b 1d af 7f 20 00 	mov    0x207faf(%rip),%r11        # 812968 <glad_glAttachShader-0x200c00>
  60a9b9:	4d 8b 1b             	mov    (%r11),%r11
  60a9bc:	41 ff d3             	call   *%r11
  60a9bf:	8b 85 14 fe ff ff    	mov    -0x1ec(%rbp),%eax
  60a9c5:	48 89 c6             	mov    %rax,%rsi
  60a9c8:	48 8b 05 39 7f 20 00 	mov    0x207f39(%rip),%rax        # 812908 <shader-0x201848>
  60a9cf:	8b 00                	mov    (%rax),%eax
  60a9d1:	48 89 c7             	mov    %rax,%rdi
  60a9d4:	4c 8b 1d 8d 7f 20 00 	mov    0x207f8d(%rip),%r11        # 812968 <glad_glAttachShader-0x200c00>
  60a9db:	4d 8b 1b             	mov    (%r11),%r11
  60a9de:	41 ff d3             	call   *%r11
  60a9e1:	48 8b 05 20 7f 20 00 	mov    0x207f20(%rip),%rax        # 812908 <shader-0x201848>
  60a9e8:	8b 00                	mov    (%rax),%eax
  60a9ea:	48 89 c7             	mov    %rax,%rdi
  60a9ed:	4c 8b 1d 7c 7f 20 00 	mov    0x207f7c(%rip),%r11        # 812970 <glad_glLinkProgram-0x2011c8>
  60a9f4:	4d 8b 1b             	mov    (%r11),%r11
  60a9f7:	41 ff d3             	call   *%r11
  60a9fa:	48 8d 05 73 5f 20 00 	lea    0x205f73(%rip),%rax        # 810974 <L.105>
  60aa01:	49 89 c2             	mov    %rax,%r10
  60aa04:	b8 82 8b 00 00       	mov    $0x8b82,%eax
  60aa09:	48 89 c6             	mov    %rax,%rsi
  60aa0c:	48 8b 05 f5 7e 20 00 	mov    0x207ef5(%rip),%rax        # 812908 <shader-0x201848>
  60aa13:	8b 00                	mov    (%rax),%eax
  60aa15:	48 89 c7             	mov    %rax,%rdi
  60aa18:	4c 89 d2             	mov    %r10,%rdx
  60aa1b:	e8 92 f1 ff ff       	call   609bb2 <check_shader_err>
  60aa20:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
  60aa26:	48 89 c7             	mov    %rax,%rdi
  60aa29:	4c 8b 1d 48 7f 20 00 	mov    0x207f48(%rip),%r11        # 812978 <glad_glDeleteShader-0x200de0>
  60aa30:	4d 8b 1b             	mov    (%r11),%r11
  60aa33:	41 ff d3             	call   *%r11
  60aa36:	8b 85 14 fe ff ff    	mov    -0x1ec(%rbp),%eax
  60aa3c:	48 89 c7             	mov    %rax,%rdi
  60aa3f:	4c 8b 1d 32 7f 20 00 	mov    0x207f32(%rip),%r11        # 812978 <glad_glDeleteShader-0x200de0>
  60aa46:	4d 8b 1b             	mov    (%r11),%r11
  60aa49:	41 ff d3             	call   *%r11
  60aa4c:	e8 d7 5a 00 00       	call   610528 <SDL_GetPerformanceFrequency@plt>
  60aa51:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
  60aa58:	e8 db 5a 00 00       	call   610538 <SDL_GetPerformanceCounter@plt>
  60aa5d:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
  60aa64:	66 0f 6e 05 10 5f 20 	movd   0x205f10(%rip),%xmm0        # 81097c <L.106>
  60aa6b:	00 
  60aa6c:	66 0f 7e 85 f4 fd ff 	movd   %xmm0,-0x20c(%rbp)
  60aa73:	ff 
  60aa74:	66 0f 6e 2d 04 5f 20 	movd   0x205f04(%rip),%xmm5        # 810980 <L.107>
  60aa7b:	00 
  60aa7c:	66 0f 6e 25 00 5f 20 	movd   0x205f00(%rip),%xmm4        # 810984 <L.108>
  60aa83:	00 
  60aa84:	66 0f 6e 1d fc 5e 20 	movd   0x205efc(%rip),%xmm3        # 810988 <L.109>
  60aa8b:	00 
  60aa8c:	66 0f 6e 15 f8 5e 20 	movd   0x205ef8(%rip),%xmm2        # 81098c <L.110>
  60aa93:	00 
  60aa94:	66 0f 6e 0d f4 5e 20 	movd   0x205ef4(%rip),%xmm1        # 810990 <L.111>
  60aa9b:	00 
  60aa9c:	66 0f 6e 05 f0 5e 20 	movd   0x205ef0(%rip),%xmm0        # 810994 <L.112>
  60aaa3:	00 
  60aaa4:	48 8b 05 55 7e 20 00 	mov    0x207e55(%rip),%rax        # 812900 <projection-0x201810>
  60aaab:	48 89 c7             	mov    %rax,%rdi
  60aaae:	e8 7e 14 00 00       	call   60bf31 <mat4x4_ortho>
  60aab3:	b8 00 00 00 00       	mov    $0x0,%eax
  60aab8:	88 85 f3 fd ff ff    	mov    %al,-0x20d(%rbp)
  60aabe:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60aac5:	00 00 00 
  60aac8:	49 89 c2             	mov    %rax,%r10
  60aacb:	b8 00 00 00 00       	mov    $0x0,%eax
  60aad0:	48 89 c6             	mov    %rax,%rsi
  60aad3:	48 8d 85 e8 fd ff ff 	lea    -0x218(%rbp),%rax
  60aada:	48 89 c7             	mov    %rax,%rdi
  60aadd:	4c 89 d2             	mov    %r10,%rdx
  60aae0:	b8 00 00 00 00       	mov    $0x0,%eax
  60aae5:	e8 9e 59 00 00       	call   610488 <memset@plt>
  60aaea:	66 0f 6e 05 a6 5e 20 	movd   0x205ea6(%rip),%xmm0        # 810998 <L.113>
  60aaf1:	00 
  60aaf2:	66 0f 7e 85 e8 fd ff 	movd   %xmm0,-0x218(%rbp)
  60aaf9:	ff 
  60aafa:	66 0f 6e 05 9a 5e 20 	movd   0x205e9a(%rip),%xmm0        # 81099c <L.114>
  60ab01:	00 
  60ab02:	66 0f 7e 85 ec fd ff 	movd   %xmm0,-0x214(%rbp)
  60ab09:	ff 
  60ab0a:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60ab11:	00 00 00 
  60ab14:	49 89 c2             	mov    %rax,%r10
  60ab17:	b8 00 00 00 00       	mov    $0x0,%eax
  60ab1c:	48 89 c6             	mov    %rax,%rsi
  60ab1f:	48 8d 85 e0 fd ff ff 	lea    -0x220(%rbp),%rax
  60ab26:	48 89 c7             	mov    %rax,%rdi
  60ab29:	4c 89 d2             	mov    %r10,%rdx
  60ab2c:	b8 00 00 00 00       	mov    $0x0,%eax
  60ab31:	e8 52 59 00 00       	call   610488 <memset@plt>
  60ab36:	66 0f 6e 05 62 5e 20 	movd   0x205e62(%rip),%xmm0        # 8109a0 <L.115>
  60ab3d:	00 
  60ab3e:	66 0f 7e 85 e0 fd ff 	movd   %xmm0,-0x220(%rbp)
  60ab45:	ff 
  60ab46:	66 0f 6e 05 56 5e 20 	movd   0x205e56(%rip),%xmm0        # 8109a4 <L.116>
  60ab4d:	00 
  60ab4e:	66 0f 7e 85 e4 fd ff 	movd   %xmm0,-0x21c(%rbp)
  60ab55:	ff 
  60ab56:	b8 01 00 00 00       	mov    $0x1,%eax
  60ab5b:	89 85 dc fd ff ff    	mov    %eax,-0x224(%rbp)
  60ab61:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ab67:	83 f8 0c             	cmp    $0xc,%eax
  60ab6a:	0f 8d 53 02 00 00    	jge    60adc3 <main+0x76a>
  60ab70:	e9 13 00 00 00       	jmp    60ab88 <main+0x52f>
  60ab75:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ab7b:	89 c1                	mov    %eax,%ecx
  60ab7d:	83 c0 01             	add    $0x1,%eax
  60ab80:	89 85 dc fd ff ff    	mov    %eax,-0x224(%rbp)
  60ab86:	eb d9                	jmp    60ab61 <main+0x508>
  60ab88:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ab8e:	48 63 c0             	movslq %eax,%rax
  60ab91:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60ab98:	00 00 00 
  60ab9b:	48 0f af c1          	imul   %rcx,%rax
  60ab9f:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60aba6:	48 01 c1             	add    %rax,%rcx
  60aba9:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60abb0:	e8 53 59 00 00       	call   610508 <SDL_randf@plt>
  60abb5:	66 0f 6e 0d eb 5d 20 	movd   0x205deb(%rip),%xmm1        # 8109a8 <L.117>
  60abbc:	00 
  60abbd:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  60abc1:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60abc8:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60abcc:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60abd2:	48 63 c0             	movslq %eax,%rax
  60abd5:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60abdc:	00 00 00 
  60abdf:	48 0f af c1          	imul   %rcx,%rax
  60abe3:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60abea:	48 01 c1             	add    %rax,%rcx
  60abed:	48 83 c1 04          	add    $0x4,%rcx
  60abf1:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60abf8:	e8 0b 59 00 00       	call   610508 <SDL_randf@plt>
  60abfd:	66 0f 6e 0d a7 5d 20 	movd   0x205da7(%rip),%xmm1        # 8109ac <L.118>
  60ac04:	00 
  60ac05:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  60ac09:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60ac10:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60ac14:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ac1a:	48 63 c0             	movslq %eax,%rax
  60ac1d:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60ac24:	00 00 00 
  60ac27:	48 0f af c1          	imul   %rcx,%rax
  60ac2b:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60ac32:	48 01 c1             	add    %rax,%rcx
  60ac35:	48 83 c1 08          	add    $0x8,%rcx
  60ac39:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60ac40:	e8 c3 58 00 00       	call   610508 <SDL_randf@plt>
  60ac45:	66 0f 6e 0d 63 5d 20 	movd   0x205d63(%rip),%xmm1        # 8109b0 <L.119>
  60ac4c:	00 
  60ac4d:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  60ac51:	66 0f 6e 0d 5b 5d 20 	movd   0x205d5b(%rip),%xmm1        # 8109b4 <L.120>
  60ac58:	00 
  60ac59:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60ac5d:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60ac64:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60ac68:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ac6e:	48 63 c0             	movslq %eax,%rax
  60ac71:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60ac78:	00 00 00 
  60ac7b:	48 0f af c1          	imul   %rcx,%rax
  60ac7f:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60ac86:	48 01 c1             	add    %rax,%rcx
  60ac89:	48 83 c1 08          	add    $0x8,%rcx
  60ac8d:	48 83 c1 04          	add    $0x4,%rcx
  60ac91:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60ac98:	e8 6b 58 00 00       	call   610508 <SDL_randf@plt>
  60ac9d:	66 0f 6e 0d 13 5d 20 	movd   0x205d13(%rip),%xmm1        # 8109b8 <L.121>
  60aca4:	00 
  60aca5:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  60aca9:	66 0f 6e 0d 0b 5d 20 	movd   0x205d0b(%rip),%xmm1        # 8109bc <L.122>
  60acb0:	00 
  60acb1:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60acb5:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60acbc:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60acc0:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60acc6:	48 63 c0             	movslq %eax,%rax
  60acc9:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60acd0:	00 00 00 
  60acd3:	48 0f af c1          	imul   %rcx,%rax
  60acd7:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60acde:	48 01 c1             	add    %rax,%rcx
  60ace1:	48 83 c1 14          	add    $0x14,%rcx
  60ace5:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60acec:	e8 17 58 00 00       	call   610508 <SDL_randf@plt>
  60acf1:	0f 14 c0             	unpcklps %xmm0,%xmm0
  60acf4:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  60acf7:	f3 0f 7e 0d c1 5c 20 	movq   0x205cc1(%rip),%xmm1        # 8109c0 <L.123>
  60acfe:	00 
  60acff:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60ad03:	f3 0f 7e 0d bd 5c 20 	movq   0x205cbd(%rip),%xmm1        # 8109c8 <L.124>
  60ad0a:	00 
  60ad0b:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  60ad0f:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  60ad13:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  60ad17:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60ad1e:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60ad22:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ad28:	48 63 c0             	movslq %eax,%rax
  60ad2b:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60ad32:	00 00 00 
  60ad35:	48 0f af c1          	imul   %rcx,%rax
  60ad39:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60ad40:	48 01 c1             	add    %rax,%rcx
  60ad43:	48 83 c1 18          	add    $0x18,%rcx
  60ad47:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60ad4e:	e8 b5 57 00 00       	call   610508 <SDL_randf@plt>
  60ad53:	0f 14 c0             	unpcklps %xmm0,%xmm0
  60ad56:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  60ad59:	f3 0f 7e 0d 6f 5c 20 	movq   0x205c6f(%rip),%xmm1        # 8109d0 <L.125>
  60ad60:	00 
  60ad61:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60ad65:	f3 0f 7e 0d 6b 5c 20 	movq   0x205c6b(%rip),%xmm1        # 8109d8 <L.126>
  60ad6c:	00 
  60ad6d:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  60ad71:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  60ad75:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  60ad79:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60ad80:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60ad84:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
  60ad8a:	48 63 c0             	movslq %eax,%rax
  60ad8d:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60ad94:	00 00 00 
  60ad97:	48 0f af c1          	imul   %rcx,%rax
  60ad9b:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60ada2:	48 01 c1             	add    %rax,%rcx
  60ada5:	48 83 c1 10          	add    $0x10,%rcx
  60ada9:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60adb0:	e8 93 57 00 00       	call   610548 <SDL_rand_bits@plt>
  60adb5:	48 8b 8d d0 fd ff ff 	mov    -0x230(%rbp),%rcx
  60adbc:	89 01                	mov    %eax,(%rcx)
  60adbe:	e9 b2 fd ff ff       	jmp    60ab75 <main+0x51c>
  60adc3:	66 0f 6e 05 15 5c 20 	movd   0x205c15(%rip),%xmm0        # 8109e0 <L.127>
  60adca:	00 
  60adcb:	66 0f 7e 85 cc fd ff 	movd   %xmm0,-0x234(%rbp)
  60add2:	ff 
  60add3:	48 b8 04 10 00 00 00 	movabs $0x1004,%rax
  60adda:	00 00 00 
  60addd:	49 89 c2             	mov    %rax,%r10
  60ade0:	b8 00 00 00 00       	mov    $0x0,%eax
  60ade5:	48 89 c6             	mov    %rax,%rsi
  60ade8:	48 8d 85 c8 ed ff ff 	lea    -0x1238(%rbp),%rax
  60adef:	48 89 c7             	mov    %rax,%rdi
  60adf2:	4c 89 d2             	mov    %r10,%rdx
  60adf5:	b8 00 00 00 00       	mov    $0x0,%eax
  60adfa:	e8 89 56 00 00       	call   610488 <memset@plt>
  60adff:	66 0f 6e 85 cc fd ff 	movd   -0x234(%rbp),%xmm0
  60ae06:	ff 
  60ae07:	e8 d9 eb ff ff       	call   6099e5 <get_direction>
  60ae0c:	66 0f d6 85 b8 ed ff 	movq   %xmm0,-0x1248(%rbp)
  60ae13:	ff 
  60ae14:	48 8d b5 b8 ed ff ff 	lea    -0x1248(%rbp),%rsi
  60ae1b:	48 8d bd c0 ed ff ff 	lea    -0x1240(%rbp),%rdi
  60ae22:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60ae24:	b8 00 00 00 00       	mov    $0x0,%eax
  60ae29:	48 89 c7             	mov    %rax,%rdi
  60ae2c:	e8 ca e6 ff ff       	call   6094fb <renderer_init>
  60ae31:	48 89 85 9c ed ff ff 	mov    %rax,-0x1264(%rbp)
  60ae38:	48 89 95 a4 ed ff ff 	mov    %rdx,-0x125c(%rbp)
  60ae3f:	48 8d b5 9c ed ff ff 	lea    -0x1264(%rbp),%rsi
  60ae46:	48 8d bd ac ed ff ff 	lea    -0x1254(%rbp),%rdi
  60ae4d:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60ae4f:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  60ae50:	b8 00 00 00 00       	mov    $0x0,%eax
  60ae55:	48 89 c7             	mov    %rax,%rdi
  60ae58:	e8 9e e6 ff ff       	call   6094fb <renderer_init>
  60ae5d:	48 89 85 80 ed ff ff 	mov    %rax,-0x1280(%rbp)
  60ae64:	48 89 95 88 ed ff ff 	mov    %rdx,-0x1278(%rbp)
  60ae6b:	48 8d b5 80 ed ff ff 	lea    -0x1280(%rbp),%rsi
  60ae72:	48 8d bd 90 ed ff ff 	lea    -0x1270(%rbp),%rdi
  60ae79:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60ae7b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  60ae7c:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  60ae80:	83 f8 00             	cmp    $0x0,%eax
  60ae83:	0f 84 95 09 00 00    	je     60b81e <main+0x11c5>
  60ae89:	b8 06 00 00 00       	mov    $0x6,%eax
  60ae8e:	89 85 7c ed ff ff    	mov    %eax,-0x1284(%rbp)
  60ae94:	48 8d 85 f8 ec ff ff 	lea    -0x1308(%rbp),%rax
  60ae9b:	48 89 c7             	mov    %rax,%rdi
  60ae9e:	e8 b5 56 00 00       	call   610558 <SDL_PollEvent@plt>
  60aea3:	0f b6 c0             	movzbl %al,%eax
  60aea6:	83 f8 00             	cmp    $0x0,%eax
  60aea9:	0f 84 b7 00 00 00    	je     60af66 <main+0x90d>
  60aeaf:	e9 8a 00 00 00       	jmp    60af3e <main+0x8e5>
  60aeb4:	b8 00 00 00 00       	mov    $0x0,%eax
  60aeb9:	88 45 f7             	mov    %al,-0x9(%rbp)
  60aebc:	e9 a0 00 00 00       	jmp    60af61 <main+0x908>
  60aec1:	8b 85 10 ed ff ff    	mov    -0x12f0(%rbp),%eax
  60aec7:	83 f8 0d             	cmp    $0xd,%eax
  60aeca:	0f 85 69 00 00 00    	jne    60af39 <main+0x8e0>
  60aed0:	66 0f 6e 0d 0c 5b 20 	movd   0x205b0c(%rip),%xmm1        # 8109e4 <L.128>
  60aed7:	00 
  60aed8:	f3 0f 7e 85 c0 ed ff 	movq   -0x1240(%rbp),%xmm0
  60aedf:	ff 
  60aee0:	e8 40 e8 ff ff       	call   609725 <vector2_scale>
  60aee5:	66 0f d6 85 e8 ec ff 	movq   %xmm0,-0x1318(%rbp)
  60aeec:	ff 
  60aeed:	f3 0f 7e 8d e8 ec ff 	movq   -0x1318(%rbp),%xmm1
  60aef4:	ff 
  60aef5:	f3 0f 7e 85 e8 fd ff 	movq   -0x218(%rbp),%xmm0
  60aefc:	ff 
  60aefd:	e8 5d e8 ff ff       	call   60975f <vector2_add>
  60af02:	66 0f d6 85 e0 ec ff 	movq   %xmm0,-0x1320(%rbp)
  60af09:	ff 
  60af0a:	48 8d b5 e0 ec ff ff 	lea    -0x1320(%rbp),%rsi
  60af11:	48 8d bd f0 ec ff ff 	lea    -0x1310(%rbp),%rdi
  60af18:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60af1a:	f3 0f 7e 8d c0 ed ff 	movq   -0x1240(%rbp),%xmm1
  60af21:	ff 
  60af22:	f3 0f 7e 85 f0 ec ff 	movq   -0x1310(%rbp),%xmm0
  60af29:	ff 
  60af2a:	48 8d 85 c8 ed ff ff 	lea    -0x1238(%rbp),%rax
  60af31:	48 89 c7             	mov    %rax,%rdi
  60af34:	e8 47 f3 ff ff       	call   60a280 <b_append_pos>
  60af39:	e9 23 00 00 00       	jmp    60af61 <main+0x908>
  60af3e:	8b 85 f8 ec ff ff    	mov    -0x1308(%rbp),%eax
  60af44:	81 f8 00 01 00 00    	cmp    $0x100,%eax
  60af4a:	0f 84 64 ff ff ff    	je     60aeb4 <main+0x85b>
  60af50:	81 f8 00 03 00 00    	cmp    $0x300,%eax
  60af56:	0f 84 65 ff ff ff    	je     60aec1 <main+0x868>
  60af5c:	e9 00 00 00 00       	jmp    60af61 <main+0x908>
  60af61:	e9 2e ff ff ff       	jmp    60ae94 <main+0x83b>
  60af66:	66 0f 6e 1d 7a 5a 20 	movd   0x205a7a(%rip),%xmm3        # 8109e8 <L.129>
  60af6d:	00 
  60af6e:	66 0f 6e 15 76 5a 20 	movd   0x205a76(%rip),%xmm2        # 8109ec <L.130>
  60af75:	00 
  60af76:	66 0f 6e 0d 72 5a 20 	movd   0x205a72(%rip),%xmm1        # 8109f0 <L.131>
  60af7d:	00 
  60af7e:	66 0f 6e 05 6e 5a 20 	movd   0x205a6e(%rip),%xmm0        # 8109f4 <L.132>
  60af85:	00 
  60af86:	4c 8b 1d f3 79 20 00 	mov    0x2079f3(%rip),%r11        # 812980 <glad_glClearColor-0x200cd8>
  60af8d:	4d 8b 1b             	mov    (%r11),%r11
  60af90:	41 ff d3             	call   *%r11
  60af93:	b8 00 40 00 00       	mov    $0x4000,%eax
  60af98:	48 89 c7             	mov    %rax,%rdi
  60af9b:	4c 8b 1d e6 79 20 00 	mov    0x2079e6(%rip),%r11        # 812988 <glad_glClear-0x200ca8>
  60afa2:	4d 8b 1b             	mov    (%r11),%r11
  60afa5:	41 ff d3             	call   *%r11
  60afa8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60afaf:	00 00 00 
  60afb2:	48 89 c7             	mov    %rax,%rdi
  60afb5:	e8 ae 55 00 00       	call   610568 <SDL_GetKeyboardState@plt>
  60afba:	48 89 85 d8 ec ff ff 	mov    %rax,-0x1328(%rbp)
  60afc1:	48 8b 85 d8 ec ff ff 	mov    -0x1328(%rbp),%rax
  60afc8:	48 83 c0 1a          	add    $0x1a,%rax
  60afcc:	0f be 00             	movsbl (%rax),%eax
  60afcf:	83 f8 00             	cmp    $0x0,%eax
  60afd2:	0f 84 89 00 00 00    	je     60b061 <main+0xa08>
  60afd8:	66 0f 6e 05 18 5a 20 	movd   0x205a18(%rip),%xmm0        # 8109f8 <L.133>
  60afdf:	00 
  60afe0:	66 0f 6e 8d f4 fd ff 	movd   -0x20c(%rbp),%xmm1
  60afe7:	ff 
  60afe8:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  60afec:	66 0f 7e 8d d4 ec ff 	movd   %xmm1,-0x132c(%rbp)
  60aff3:	ff 
  60aff4:	66 0f 6e 8d d4 ec ff 	movd   -0x132c(%rbp),%xmm1
  60affb:	ff 
  60affc:	f3 0f 7e 85 c0 ed ff 	movq   -0x1240(%rbp),%xmm0
  60b003:	ff 
  60b004:	e8 1c e7 ff ff       	call   609725 <vector2_scale>
  60b009:	66 0f d6 85 cc ec ff 	movq   %xmm0,-0x1334(%rbp)
  60b010:	ff 
  60b011:	f3 0f 7e 8d cc ec ff 	movq   -0x1334(%rbp),%xmm1
  60b018:	ff 
  60b019:	f3 0f 7e 85 e0 fd ff 	movq   -0x220(%rbp),%xmm0
  60b020:	ff 
  60b021:	e8 39 e7 ff ff       	call   60975f <vector2_add>
  60b026:	66 0f d6 85 c4 ec ff 	movq   %xmm0,-0x133c(%rbp)
  60b02d:	ff 
  60b02e:	48 8d b5 c4 ec ff ff 	lea    -0x133c(%rbp),%rsi
  60b035:	48 8d bd e0 fd ff ff 	lea    -0x220(%rbp),%rdi
  60b03c:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b03e:	0f b6 85 f3 fd ff ff 	movzbl -0x20d(%rbp),%eax
  60b045:	b9 03 00 00 00       	mov    $0x3,%ecx
  60b04a:	99                   	cltd
  60b04b:	f7 f9                	idiv   %ecx
  60b04d:	83 fa 00             	cmp    $0x0,%edx
  60b050:	0f 85 0b 00 00 00    	jne    60b061 <main+0xa08>
  60b056:	b8 09 00 00 00       	mov    $0x9,%eax
  60b05b:	89 85 7c ed ff ff    	mov    %eax,-0x1284(%rbp)
  60b061:	48 8b 85 d8 ec ff ff 	mov    -0x1328(%rbp),%rax
  60b068:	48 83 c0 14          	add    $0x14,%rax
  60b06c:	0f be 00             	movsbl (%rax),%eax
  60b06f:	83 f8 00             	cmp    $0x0,%eax
  60b072:	0f 84 72 00 00 00    	je     60b0ea <main+0xa91>
  60b078:	66 0f 6e 85 f4 fd ff 	movd   -0x20c(%rbp),%xmm0
  60b07f:	ff 
  60b080:	0f 14 c0             	unpcklps %xmm0,%xmm0
  60b083:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  60b086:	f3 0f 7e 0d 72 59 20 	movq   0x205972(%rip),%xmm1        # 810a00 <L.134>
  60b08d:	00 
  60b08e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60b092:	f3 0f 7e 0d 6e 59 20 	movq   0x20596e(%rip),%xmm1        # 810a08 <L.135>
  60b099:	00 
  60b09a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60b09e:	66 0f 6e 8d cc fd ff 	movd   -0x234(%rbp),%xmm1
  60b0a5:	ff 
  60b0a6:	0f 14 c9             	unpcklps %xmm1,%xmm1
  60b0a9:	0f 5a c9             	cvtps2pd %xmm1,%xmm1
  60b0ac:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
  60b0b0:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  60b0b4:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  60b0b8:	66 0f 7e 8d cc fd ff 	movd   %xmm1,-0x234(%rbp)
  60b0bf:	ff 
  60b0c0:	66 0f 6e 85 cc fd ff 	movd   -0x234(%rbp),%xmm0
  60b0c7:	ff 
  60b0c8:	e8 18 e9 ff ff       	call   6099e5 <get_direction>
  60b0cd:	66 0f d6 85 bc ec ff 	movq   %xmm0,-0x1344(%rbp)
  60b0d4:	ff 
  60b0d5:	48 8d b5 bc ec ff ff 	lea    -0x1344(%rbp),%rsi
  60b0dc:	48 8d bd c0 ed ff ff 	lea    -0x1240(%rbp),%rdi
  60b0e3:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b0e5:	e9 84 00 00 00       	jmp    60b16e <main+0xb15>
  60b0ea:	48 8b 85 d8 ec ff ff 	mov    -0x1328(%rbp),%rax
  60b0f1:	48 83 c0 08          	add    $0x8,%rax
  60b0f5:	0f be 00             	movsbl (%rax),%eax
  60b0f8:	83 f8 00             	cmp    $0x0,%eax
  60b0fb:	0f 84 6d 00 00 00    	je     60b16e <main+0xb15>
  60b101:	66 0f 6e 85 f4 fd ff 	movd   -0x20c(%rbp),%xmm0
  60b108:	ff 
  60b109:	0f 14 c0             	unpcklps %xmm0,%xmm0
  60b10c:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  60b10f:	f3 0f 7e 0d f9 58 20 	movq   0x2058f9(%rip),%xmm1        # 810a10 <L.136>
  60b116:	00 
  60b117:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60b11b:	f3 0f 7e 0d f5 58 20 	movq   0x2058f5(%rip),%xmm1        # 810a18 <L.137>
  60b122:	00 
  60b123:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  60b127:	66 0f 6e 8d cc fd ff 	movd   -0x234(%rbp),%xmm1
  60b12e:	ff 
  60b12f:	0f 14 c9             	unpcklps %xmm1,%xmm1
  60b132:	0f 5a c9             	cvtps2pd %xmm1,%xmm1
  60b135:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  60b139:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  60b13d:	66 0f 5a c9          	cvtpd2ps %xmm1,%xmm1
  60b141:	66 0f 7e 8d cc fd ff 	movd   %xmm1,-0x234(%rbp)
  60b148:	ff 
  60b149:	66 0f 6e 85 cc fd ff 	movd   -0x234(%rbp),%xmm0
  60b150:	ff 
  60b151:	e8 8f e8 ff ff       	call   6099e5 <get_direction>
  60b156:	66 0f d6 85 b4 ec ff 	movq   %xmm0,-0x134c(%rbp)
  60b15d:	ff 
  60b15e:	48 8d b5 b4 ec ff ff 	lea    -0x134c(%rbp),%rsi
  60b165:	48 8d bd c0 ed ff ff 	lea    -0x1240(%rbp),%rdi
  60b16c:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b16e:	66 0f 6e 0d aa 58 20 	movd   0x2058aa(%rip),%xmm1        # 810a20 <L.138>
  60b175:	00 
  60b176:	f3 0f 7e 85 e0 fd ff 	movq   -0x220(%rbp),%xmm0
  60b17d:	ff 
  60b17e:	e8 a2 e5 ff ff       	call   609725 <vector2_scale>
  60b183:	66 0f d6 85 ac ec ff 	movq   %xmm0,-0x1354(%rbp)
  60b18a:	ff 
  60b18b:	48 8d b5 ac ec ff ff 	lea    -0x1354(%rbp),%rsi
  60b192:	48 8d bd e0 fd ff ff 	lea    -0x220(%rbp),%rdi
  60b199:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b19b:	f3 0f 7e 8d e0 fd ff 	movq   -0x220(%rbp),%xmm1
  60b1a2:	ff 
  60b1a3:	f3 0f 7e 85 e8 fd ff 	movq   -0x218(%rbp),%xmm0
  60b1aa:	ff 
  60b1ab:	e8 af e5 ff ff       	call   60975f <vector2_add>
  60b1b0:	66 0f d6 85 a4 ec ff 	movq   %xmm0,-0x135c(%rbp)
  60b1b7:	ff 
  60b1b8:	48 8d b5 a4 ec ff ff 	lea    -0x135c(%rbp),%rsi
  60b1bf:	48 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%rdi
  60b1c6:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b1c8:	66 0f 6e 15 54 58 20 	movd   0x205854(%rip),%xmm2        # 810a24 <L.139>
  60b1cf:	00 
  60b1d0:	66 0f 6e 0d 50 58 20 	movd   0x205850(%rip),%xmm1        # 810a28 <L.140>
  60b1d7:	00 
  60b1d8:	f3 0f 7e 85 e8 fd ff 	movq   -0x218(%rbp),%xmm0
  60b1df:	ff 
  60b1e0:	e8 dd e5 ff ff       	call   6097c2 <vector2_modf>
  60b1e5:	66 0f d6 85 9c ec ff 	movq   %xmm0,-0x1364(%rbp)
  60b1ec:	ff 
  60b1ed:	48 8d b5 9c ec ff ff 	lea    -0x1364(%rbp),%rsi
  60b1f4:	48 8d bd e8 fd ff ff 	lea    -0x218(%rbp),%rdi
  60b1fb:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b1fd:	b8 00 00 00 00       	mov    $0x0,%eax
  60b202:	89 85 98 ec ff ff    	mov    %eax,-0x1368(%rbp)
  60b208:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b20e:	83 f8 0c             	cmp    $0xc,%eax
  60b211:	0f 8d bf 01 00 00    	jge    60b3d6 <main+0xd7d>
  60b217:	e9 13 00 00 00       	jmp    60b22f <main+0xbd6>
  60b21c:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b222:	89 c1                	mov    %eax,%ecx
  60b224:	83 c0 01             	add    $0x1,%eax
  60b227:	89 85 98 ec ff ff    	mov    %eax,-0x1368(%rbp)
  60b22d:	eb d9                	jmp    60b208 <main+0xbaf>
  60b22f:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b235:	48 63 c0             	movslq %eax,%rax
  60b238:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60b23f:	00 00 00 
  60b242:	48 0f af c1          	imul   %rcx,%rax
  60b246:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60b24d:	48 01 c1             	add    %rax,%rcx
  60b250:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b256:	48 63 c0             	movslq %eax,%rax
  60b259:	48 ba 1c 00 00 00 00 	movabs $0x1c,%rdx
  60b260:	00 00 00 
  60b263:	48 0f af c2          	imul   %rdx,%rax
  60b267:	48 8d 95 30 fe ff ff 	lea    -0x1d0(%rbp),%rdx
  60b26e:	48 01 c2             	add    %rax,%rdx
  60b271:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b277:	48 63 c0             	movslq %eax,%rax
  60b27a:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60b281:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60b288:	00 00 00 
  60b28b:	48 0f af c1          	imul   %rcx,%rax
  60b28f:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60b296:	48 01 c1             	add    %rax,%rcx
  60b299:	48 83 c1 14          	add    $0x14,%rcx
  60b29d:	48 89 95 90 ec ff ff 	mov    %rdx,-0x1370(%rbp)
  60b2a4:	48 89 8d 88 ec ff ff 	mov    %rcx,-0x1378(%rbp)
  60b2ab:	48 8b 85 88 ec ff ff 	mov    -0x1378(%rbp),%rax
  60b2b2:	66 0f 6e 00          	movd   (%rax),%xmm0
  60b2b6:	e8 2a e7 ff ff       	call   6099e5 <get_direction>
  60b2bb:	66 0f d6 85 80 ec ff 	movq   %xmm0,-0x1380(%rbp)
  60b2c2:	ff 
  60b2c3:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b2c9:	48 63 c0             	movslq %eax,%rax
  60b2cc:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60b2d3:	00 00 00 
  60b2d6:	48 0f af c1          	imul   %rcx,%rax
  60b2da:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60b2e1:	48 01 c1             	add    %rax,%rcx
  60b2e4:	48 83 c1 18          	add    $0x18,%rcx
  60b2e8:	66 0f 6e 85 f4 fd ff 	movd   -0x20c(%rbp),%xmm0
  60b2ef:	ff 
  60b2f0:	f3 0f 59 01          	mulss  (%rcx),%xmm0
  60b2f4:	66 0f 7e 85 d4 ec ff 	movd   %xmm0,-0x132c(%rbp)
  60b2fb:	ff 
  60b2fc:	66 0f 6e 8d d4 ec ff 	movd   -0x132c(%rbp),%xmm1
  60b303:	ff 
  60b304:	f3 0f 7e 85 80 ec ff 	movq   -0x1380(%rbp),%xmm0
  60b30b:	ff 
  60b30c:	e8 14 e4 ff ff       	call   609725 <vector2_scale>
  60b311:	66 0f d6 85 78 ec ff 	movq   %xmm0,-0x1388(%rbp)
  60b318:	ff 
  60b319:	f3 0f 7e 8d 78 ec ff 	movq   -0x1388(%rbp),%xmm1
  60b320:	ff 
  60b321:	48 8b 85 90 ec ff ff 	mov    -0x1370(%rbp),%rax
  60b328:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60b32c:	e8 2e e4 ff ff       	call   60975f <vector2_add>
  60b331:	66 0f d6 85 70 ec ff 	movq   %xmm0,-0x1390(%rbp)
  60b338:	ff 
  60b339:	48 8d b5 70 ec ff ff 	lea    -0x1390(%rbp),%rsi
  60b340:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  60b347:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b349:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b34f:	48 63 c0             	movslq %eax,%rax
  60b352:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60b359:	00 00 00 
  60b35c:	48 0f af c1          	imul   %rcx,%rax
  60b360:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60b367:	48 01 c1             	add    %rax,%rcx
  60b36a:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
  60b370:	48 63 c0             	movslq %eax,%rax
  60b373:	48 ba 1c 00 00 00 00 	movabs $0x1c,%rdx
  60b37a:	00 00 00 
  60b37d:	48 0f af c2          	imul   %rdx,%rax
  60b381:	48 8d 95 30 fe ff ff 	lea    -0x1d0(%rbp),%rdx
  60b388:	48 01 c2             	add    %rax,%rdx
  60b38b:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60b392:	48 89 95 90 ec ff ff 	mov    %rdx,-0x1370(%rbp)
  60b399:	66 0f 6e 15 8b 56 20 	movd   0x20568b(%rip),%xmm2        # 810a2c <L.141>
  60b3a0:	00 
  60b3a1:	66 0f 6e 0d 87 56 20 	movd   0x205687(%rip),%xmm1        # 810a30 <L.142>
  60b3a8:	00 
  60b3a9:	48 8b 85 90 ec ff ff 	mov    -0x1370(%rbp),%rax
  60b3b0:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60b3b4:	e8 09 e4 ff ff       	call   6097c2 <vector2_modf>
  60b3b9:	66 0f d6 85 68 ec ff 	movq   %xmm0,-0x1398(%rbp)
  60b3c0:	ff 
  60b3c1:	48 8d b5 68 ec ff ff 	lea    -0x1398(%rbp),%rsi
  60b3c8:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  60b3cf:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b3d1:	e9 46 fe ff ff       	jmp    60b21c <main+0xbc3>
  60b3d6:	b8 00 00 00 00       	mov    $0x0,%eax
  60b3db:	89 85 64 ec ff ff    	mov    %eax,-0x139c(%rbp)
  60b3e1:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b3e7:	8b 8d c8 ed ff ff    	mov    -0x1238(%rbp),%ecx
  60b3ed:	39 c8                	cmp    %ecx,%eax
  60b3ef:	0f 8d 7f 02 00 00    	jge    60b674 <main+0x101b>
  60b3f5:	e9 13 00 00 00       	jmp    60b40d <main+0xdb4>
  60b3fa:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b400:	89 c1                	mov    %eax,%ecx
  60b402:	83 c0 01             	add    $0x1,%eax
  60b405:	89 85 64 ec ff ff    	mov    %eax,-0x139c(%rbp)
  60b40b:	eb d4                	jmp    60b3e1 <main+0xd88>
  60b40d:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b413:	48 63 c0             	movslq %eax,%rax
  60b416:	48 c1 e0 03          	shl    $0x3,%rax
  60b41a:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b421:	48 01 c1             	add    %rax,%rcx
  60b424:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b42a:	48 63 c0             	movslq %eax,%rax
  60b42d:	48 c1 e0 03          	shl    $0x3,%rax
  60b431:	48 8d 95 cc ed ff ff 	lea    -0x1234(%rbp),%rdx
  60b438:	48 01 c2             	add    %rax,%rdx
  60b43b:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b441:	48 63 c0             	movslq %eax,%rax
  60b444:	48 c1 e0 03          	shl    $0x3,%rax
  60b448:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60b44f:	48 8d 8d cc f5 ff ff 	lea    -0xa34(%rbp),%rcx
  60b456:	48 01 c1             	add    %rax,%rcx
  60b459:	66 0f 6e 05 d3 55 20 	movd   0x2055d3(%rip),%xmm0        # 810a34 <L.143>
  60b460:	00 
  60b461:	66 0f 6e 8d f4 fd ff 	movd   -0x20c(%rbp),%xmm1
  60b468:	ff 
  60b469:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  60b46d:	66 0f 6e 05 c3 55 20 	movd   0x2055c3(%rip),%xmm0        # 810a38 <L.144>
  60b474:	00 
  60b475:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  60b479:	48 89 95 90 ec ff ff 	mov    %rdx,-0x1370(%rbp)
  60b480:	48 89 8d 88 ec ff ff 	mov    %rcx,-0x1378(%rbp)
  60b487:	66 0f 7e 8d d4 ec ff 	movd   %xmm1,-0x132c(%rbp)
  60b48e:	ff 
  60b48f:	66 0f 6e 8d d4 ec ff 	movd   -0x132c(%rbp),%xmm1
  60b496:	ff 
  60b497:	48 8b 85 88 ec ff ff 	mov    -0x1378(%rbp),%rax
  60b49e:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60b4a2:	e8 7e e2 ff ff       	call   609725 <vector2_scale>
  60b4a7:	66 0f d6 85 5c ec ff 	movq   %xmm0,-0x13a4(%rbp)
  60b4ae:	ff 
  60b4af:	f3 0f 7e 8d 5c ec ff 	movq   -0x13a4(%rbp),%xmm1
  60b4b6:	ff 
  60b4b7:	48 8b 85 90 ec ff ff 	mov    -0x1370(%rbp),%rax
  60b4be:	f3 0f 7e 00          	movq   (%rax),%xmm0
  60b4c2:	e8 98 e2 ff ff       	call   60975f <vector2_add>
  60b4c7:	66 0f d6 85 54 ec ff 	movq   %xmm0,-0x13ac(%rbp)
  60b4ce:	ff 
  60b4cf:	48 8d b5 54 ec ff ff 	lea    -0x13ac(%rbp),%rsi
  60b4d6:	48 8b bd d0 fd ff ff 	mov    -0x230(%rbp),%rdi
  60b4dd:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b4df:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b4e5:	48 63 c0             	movslq %eax,%rax
  60b4e8:	48 c1 e0 03          	shl    $0x3,%rax
  60b4ec:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b4f3:	48 01 c1             	add    %rax,%rcx
  60b4f6:	66 0f 6e 05 3e 55 20 	movd   0x20553e(%rip),%xmm0        # 810a3c <L.145>
  60b4fd:	00 
  60b4fe:	66 0f 6e 09          	movd   (%rcx),%xmm1
  60b502:	0f 2f c8             	comiss %xmm0,%xmm1
  60b505:	7a 06                	jp     60b50d <main+0xeb4>
  60b507:	0f 87 8e 00 00 00    	ja     60b59b <main+0xf42>
  60b50d:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b513:	48 63 c0             	movslq %eax,%rax
  60b516:	48 c1 e0 03          	shl    $0x3,%rax
  60b51a:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b521:	48 01 c1             	add    %rax,%rcx
  60b524:	48 83 c1 04          	add    $0x4,%rcx
  60b528:	66 0f 6e 05 10 55 20 	movd   0x205510(%rip),%xmm0        # 810a40 <L.146>
  60b52f:	00 
  60b530:	66 0f 6e 09          	movd   (%rcx),%xmm1
  60b534:	0f 2f c8             	comiss %xmm0,%xmm1
  60b537:	7a 06                	jp     60b53f <main+0xee6>
  60b539:	0f 87 5c 00 00 00    	ja     60b59b <main+0xf42>
  60b53f:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b545:	48 63 c0             	movslq %eax,%rax
  60b548:	48 c1 e0 03          	shl    $0x3,%rax
  60b54c:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b553:	48 01 c1             	add    %rax,%rcx
  60b556:	66 0f 6e 05 e6 54 20 	movd   0x2054e6(%rip),%xmm0        # 810a44 <L.147>
  60b55d:	00 
  60b55e:	0f 2f 01             	comiss (%rcx),%xmm0
  60b561:	7a 06                	jp     60b569 <main+0xf10>
  60b563:	0f 87 32 00 00 00    	ja     60b59b <main+0xf42>
  60b569:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b56f:	48 63 c0             	movslq %eax,%rax
  60b572:	48 c1 e0 03          	shl    $0x3,%rax
  60b576:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b57d:	48 01 c1             	add    %rax,%rcx
  60b580:	48 83 c1 04          	add    $0x4,%rcx
  60b584:	66 0f 6e 05 bc 54 20 	movd   0x2054bc(%rip),%xmm0        # 810a48 <L.148>
  60b58b:	00 
  60b58c:	0f 2f 01             	comiss (%rcx),%xmm0
  60b58f:	0f 8a da 00 00 00    	jp     60b66f <main+0x1016>
  60b595:	0f 86 d4 00 00 00    	jbe    60b66f <main+0x1016>
  60b59b:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b5a1:	89 85 50 ec ff ff    	mov    %eax,-0x13b0(%rbp)
  60b5a7:	8b 85 c8 ed ff ff    	mov    -0x1238(%rbp),%eax
  60b5ad:	83 e8 01             	sub    $0x1,%eax
  60b5b0:	8b 8d 50 ec ff ff    	mov    -0x13b0(%rbp),%ecx
  60b5b6:	39 c1                	cmp    %eax,%ecx
  60b5b8:	0f 8d 8f 00 00 00    	jge    60b64d <main+0xff4>
  60b5be:	e9 13 00 00 00       	jmp    60b5d6 <main+0xf7d>
  60b5c3:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
  60b5c9:	89 c1                	mov    %eax,%ecx
  60b5cb:	83 c0 01             	add    $0x1,%eax
  60b5ce:	89 85 50 ec ff ff    	mov    %eax,-0x13b0(%rbp)
  60b5d4:	eb d1                	jmp    60b5a7 <main+0xf4e>
  60b5d6:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
  60b5dc:	48 63 c0             	movslq %eax,%rax
  60b5df:	48 c1 e0 03          	shl    $0x3,%rax
  60b5e3:	48 8d 8d cc ed ff ff 	lea    -0x1234(%rbp),%rcx
  60b5ea:	48 01 c1             	add    %rax,%rcx
  60b5ed:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
  60b5f3:	83 c0 01             	add    $0x1,%eax
  60b5f6:	48 63 c0             	movslq %eax,%rax
  60b5f9:	48 c1 e0 03          	shl    $0x3,%rax
  60b5fd:	48 8d 95 cc ed ff ff 	lea    -0x1234(%rbp),%rdx
  60b604:	48 01 c2             	add    %rax,%rdx
  60b607:	48 89 d6             	mov    %rdx,%rsi
  60b60a:	48 89 cf             	mov    %rcx,%rdi
  60b60d:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b60f:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
  60b615:	48 63 c0             	movslq %eax,%rax
  60b618:	48 c1 e0 03          	shl    $0x3,%rax
  60b61c:	48 8d 8d cc f5 ff ff 	lea    -0xa34(%rbp),%rcx
  60b623:	48 01 c1             	add    %rax,%rcx
  60b626:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
  60b62c:	83 c0 01             	add    $0x1,%eax
  60b62f:	48 63 c0             	movslq %eax,%rax
  60b632:	48 c1 e0 03          	shl    $0x3,%rax
  60b636:	48 8d 95 cc f5 ff ff 	lea    -0xa34(%rbp),%rdx
  60b63d:	48 01 c2             	add    %rax,%rdx
  60b640:	48 89 d6             	mov    %rdx,%rsi
  60b643:	48 89 cf             	mov    %rcx,%rdi
  60b646:	48 a5                	movsq  %ds:(%rsi),%es:(%rdi)
  60b648:	e9 76 ff ff ff       	jmp    60b5c3 <main+0xf6a>
  60b64d:	8b 85 c8 ed ff ff    	mov    -0x1238(%rbp),%eax
  60b653:	89 c1                	mov    %eax,%ecx
  60b655:	83 c0 ff             	add    $0xffffffff,%eax
  60b658:	89 85 c8 ed ff ff    	mov    %eax,-0x1238(%rbp)
  60b65e:	8b 85 64 ec ff ff    	mov    -0x139c(%rbp),%eax
  60b664:	89 c1                	mov    %eax,%ecx
  60b666:	83 c0 ff             	add    $0xffffffff,%eax
  60b669:	89 85 64 ec ff ff    	mov    %eax,-0x139c(%rbp)
  60b66f:	e9 86 fd ff ff       	jmp    60b3fa <main+0xda1>
  60b674:	48 b8 08 00 00 00 00 	movabs $0x8,%rax
  60b67b:	00 00 00 
  60b67e:	49 89 c2             	mov    %rax,%r10
  60b681:	b8 00 00 00 00       	mov    $0x0,%eax
  60b686:	48 89 c6             	mov    %rax,%rsi
  60b689:	48 8d 85 48 ec ff ff 	lea    -0x13b8(%rbp),%rax
  60b690:	48 89 c7             	mov    %rax,%rdi
  60b693:	4c 89 d2             	mov    %r10,%rdx
  60b696:	b8 00 00 00 00       	mov    $0x0,%eax
  60b69b:	e8 e8 4d 00 00       	call   610488 <memset@plt>
  60b6a0:	66 0f 6e 05 a4 53 20 	movd   0x2053a4(%rip),%xmm0        # 810a4c <L.149>
  60b6a7:	00 
  60b6a8:	66 0f 7e 85 48 ec ff 	movd   %xmm0,-0x13b8(%rbp)
  60b6af:	ff 
  60b6b0:	66 0f 6e 05 98 53 20 	movd   0x205398(%rip),%xmm0        # 810a50 <L.150>
  60b6b7:	00 
  60b6b8:	66 0f 7e 85 4c ec ff 	movd   %xmm0,-0x13b4(%rbp)
  60b6bf:	ff 
  60b6c0:	8b 85 7c ed ff ff    	mov    -0x1284(%rbp),%eax
  60b6c6:	49 89 c2             	mov    %rax,%r10
  60b6c9:	8b 45 84             	mov    -0x7c(%rbp),%eax
  60b6cc:	48 89 c6             	mov    %rax,%rsi
  60b6cf:	66 0f 6e 95 cc fd ff 	movd   -0x234(%rbp),%xmm2
  60b6d6:	ff 
  60b6d7:	f3 0f 7e 8d 48 ec ff 	movq   -0x13b8(%rbp),%xmm1
  60b6de:	ff 
  60b6df:	f3 0f 7e 85 e8 fd ff 	movq   -0x218(%rbp),%xmm0
  60b6e6:	ff 
  60b6e7:	b8 03 00 00 00       	mov    $0x3,%eax
  60b6ec:	48 89 c7             	mov    %rax,%rdi
  60b6ef:	4c 89 d2             	mov    %r10,%rdx
  60b6f2:	e8 6f e1 ff ff       	call   609866 <draw>
  60b6f7:	b8 00 00 00 00       	mov    $0x0,%eax
  60b6fc:	89 85 44 ec ff ff    	mov    %eax,-0x13bc(%rbp)
  60b702:	8b 85 44 ec ff ff    	mov    -0x13bc(%rbp),%eax
  60b708:	83 f8 0c             	cmp    $0xc,%eax
  60b70b:	0f 8d 5b 00 00 00    	jge    60b76c <main+0x1113>
  60b711:	e9 13 00 00 00       	jmp    60b729 <main+0x10d0>
  60b716:	8b 85 44 ec ff ff    	mov    -0x13bc(%rbp),%eax
  60b71c:	89 c1                	mov    %eax,%ecx
  60b71e:	83 c0 01             	add    $0x1,%eax
  60b721:	89 85 44 ec ff ff    	mov    %eax,-0x13bc(%rbp)
  60b727:	eb d9                	jmp    60b702 <main+0x10a9>
  60b729:	8b 85 44 ec ff ff    	mov    -0x13bc(%rbp),%eax
  60b72f:	48 63 c0             	movslq %eax,%rax
  60b732:	48 b9 1c 00 00 00 00 	movabs $0x1c,%rcx
  60b739:	00 00 00 
  60b73c:	48 0f af c1          	imul   %rcx,%rax
  60b740:	48 8d 8d 30 fe ff ff 	lea    -0x1d0(%rbp),%rcx
  60b747:	48 01 c1             	add    %rax,%rcx
  60b74a:	48 89 8d d0 fd ff ff 	mov    %rcx,-0x230(%rbp)
  60b751:	48 8d 85 ac ed ff ff 	lea    -0x1254(%rbp),%rax
  60b758:	48 89 c6             	mov    %rax,%rsi
  60b75b:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60b762:	48 89 c7             	mov    %rax,%rdi
  60b765:	e8 5a e7 ff ff       	call   609ec4 <draw_asteroid>
  60b76a:	eb aa                	jmp    60b716 <main+0x10bd>
  60b76c:	48 8d 85 90 ed ff ff 	lea    -0x1270(%rbp),%rax
  60b773:	48 89 c6             	mov    %rax,%rsi
  60b776:	48 8d 85 c8 ed ff ff 	lea    -0x1238(%rbp),%rax
  60b77d:	48 89 c7             	mov    %rax,%rdi
  60b780:	e8 da eb ff ff       	call   60a35f <shoot>
  60b785:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b789:	48 89 c7             	mov    %rax,%rdi
  60b78c:	e8 e7 4d 00 00       	call   610578 <SDL_GL_SwapWindow@plt>
  60b791:	e8 a2 4d 00 00       	call   610538 <SDL_GetPerformanceCounter@plt>
  60b796:	48 89 85 f8 fd ff ff 	mov    %rax,-0x208(%rbp)
  60b79d:	48 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%rax
  60b7a4:	48 8b 8d 00 fe ff ff 	mov    -0x200(%rbp),%rcx
  60b7ab:	48 29 c8             	sub    %rcx,%rax
  60b7ae:	48 89 85 d0 fd ff ff 	mov    %rax,-0x230(%rbp)
  60b7b5:	48 8b 85 d0 fd ff ff 	mov    -0x230(%rbp),%rax
  60b7bc:	48 89 c7             	mov    %rax,%rdi
  60b7bf:	b8 00 00 00 00       	mov    $0x0,%eax
  60b7c4:	e8 27 46 00 00       	call   60fdf0 <__floatundisf>
  60b7c9:	66 0f 7e 85 d4 ec ff 	movd   %xmm0,-0x132c(%rbp)
  60b7d0:	ff 
  60b7d1:	48 8b 85 08 fe ff ff 	mov    -0x1f8(%rbp),%rax
  60b7d8:	48 89 c7             	mov    %rax,%rdi
  60b7db:	b8 00 00 00 00       	mov    $0x0,%eax
  60b7e0:	e8 0b 46 00 00       	call   60fdf0 <__floatundisf>
  60b7e5:	66 0f 6e 8d d4 ec ff 	movd   -0x132c(%rbp),%xmm1
  60b7ec:	ff 
  60b7ed:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  60b7f1:	66 0f 7e 8d f4 fd ff 	movd   %xmm1,-0x20c(%rbp)
  60b7f8:	ff 
  60b7f9:	48 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%rax
  60b800:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
  60b807:	0f b6 85 f3 fd ff ff 	movzbl -0x20d(%rbp),%eax
  60b80e:	89 c1                	mov    %eax,%ecx
  60b810:	83 c0 01             	add    $0x1,%eax
  60b813:	88 85 f3 fd ff ff    	mov    %al,-0x20d(%rbp)
  60b819:	e9 5e f6 ff ff       	jmp    60ae7c <main+0x823>
  60b81e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b822:	48 89 c7             	mov    %rax,%rdi
  60b825:	e8 5e 4d 00 00       	call   610588 <SDL_DestroyWindow@plt>
  60b82a:	e8 69 4d 00 00       	call   610598 <SDL_Quit@plt>
  60b82f:	b8 00 00 00 00       	mov    $0x0,%eax
  60b834:	c9                   	leave
  60b835:	c3                   	ret

000000000060b836 <mat4x4_identity>:
  60b836:	55                   	push   %rbp
  60b837:	48 89 e5             	mov    %rsp,%rbp
  60b83a:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60b841:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60b845:	b8 00 00 00 00       	mov    $0x0,%eax
  60b84a:	89 45 f4             	mov    %eax,-0xc(%rbp)
  60b84d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60b850:	83 f8 04             	cmp    $0x4,%eax
  60b853:	0f 8d 8d 00 00 00    	jge    60b8e6 <mat4x4_identity+0xb0>
  60b859:	e9 0b 00 00 00       	jmp    60b869 <mat4x4_identity+0x33>
  60b85e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60b861:	83 c0 01             	add    $0x1,%eax
  60b864:	89 45 f4             	mov    %eax,-0xc(%rbp)
  60b867:	eb e4                	jmp    60b84d <mat4x4_identity+0x17>
  60b869:	b8 00 00 00 00       	mov    $0x0,%eax
  60b86e:	89 45 f0             	mov    %eax,-0x10(%rbp)
  60b871:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60b874:	83 f8 04             	cmp    $0x4,%eax
  60b877:	0f 8d 64 00 00 00    	jge    60b8e1 <mat4x4_identity+0xab>
  60b87d:	e9 0b 00 00 00       	jmp    60b88d <mat4x4_identity+0x57>
  60b882:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60b885:	83 c0 01             	add    $0x1,%eax
  60b888:	89 45 f0             	mov    %eax,-0x10(%rbp)
  60b88b:	eb e4                	jmp    60b871 <mat4x4_identity+0x3b>
  60b88d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60b890:	48 63 c0             	movslq %eax,%rax
  60b893:	48 c1 e0 04          	shl    $0x4,%rax
  60b897:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60b89b:	48 01 c1             	add    %rax,%rcx
  60b89e:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60b8a1:	48 63 c0             	movslq %eax,%rax
  60b8a4:	48 c1 e0 02          	shl    $0x2,%rax
  60b8a8:	48 01 c1             	add    %rax,%rcx
  60b8ab:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60b8ae:	8b 55 f0             	mov    -0x10(%rbp),%edx
  60b8b1:	39 d0                	cmp    %edx,%eax
  60b8b3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  60b8b7:	0f 85 05 00 00 00    	jne    60b8c2 <mat4x4_identity+0x8c>
  60b8bd:	e9 0d 00 00 00       	jmp    60b8cf <mat4x4_identity+0x99>
  60b8c2:	66 0f 6e 05 8a 51 20 	movd   0x20518a(%rip),%xmm0        # 810a54 <L.151>
  60b8c9:	00 
  60b8ca:	e9 08 00 00 00       	jmp    60b8d7 <mat4x4_identity+0xa1>
  60b8cf:	66 0f 6e 05 81 51 20 	movd   0x205181(%rip),%xmm0        # 810a58 <L.152>
  60b8d6:	00 
  60b8d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60b8db:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60b8df:	eb a1                	jmp    60b882 <mat4x4_identity+0x4c>
  60b8e1:	e9 78 ff ff ff       	jmp    60b85e <mat4x4_identity+0x28>
  60b8e6:	c9                   	leave
  60b8e7:	c3                   	ret

000000000060b8e8 <mat4x4_scale_aniso>:
  60b8e8:	55                   	push   %rbp
  60b8e9:	48 89 e5             	mov    %rsp,%rbp
  60b8ec:	48 81 ec 40 00 00 00 	sub    $0x40,%rsp
  60b8f3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60b8f7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60b8fb:	66 0f d6 45 e8       	movq   %xmm0,-0x18(%rbp)
  60b900:	66 0f d6 4d e0       	movq   %xmm1,-0x20(%rbp)
  60b905:	66 0f d6 55 d8       	movq   %xmm2,-0x28(%rbp)
  60b90a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b90e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60b912:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  60b916:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60b91a:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60b91f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60b923:	48 89 c6             	mov    %rax,%rsi
  60b926:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60b92a:	48 89 c7             	mov    %rax,%rdi
  60b92d:	e8 5f 08 00 00       	call   60c191 <vec4_scale>
  60b932:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b936:	48 83 c0 10          	add    $0x10,%rax
  60b93a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60b93e:	48 83 c1 10          	add    $0x10,%rcx
  60b942:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  60b946:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60b94a:	66 0f 6e 45 e0       	movd   -0x20(%rbp),%xmm0
  60b94f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60b953:	48 89 c6             	mov    %rax,%rsi
  60b956:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60b95a:	48 89 c7             	mov    %rax,%rdi
  60b95d:	e8 2f 08 00 00       	call   60c191 <vec4_scale>
  60b962:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b966:	48 83 c0 20          	add    $0x20,%rax
  60b96a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60b96e:	48 83 c1 20          	add    $0x20,%rcx
  60b972:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  60b976:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60b97a:	66 0f 6e 45 d8       	movd   -0x28(%rbp),%xmm0
  60b97f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60b983:	48 89 c6             	mov    %rax,%rsi
  60b986:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60b98a:	48 89 c7             	mov    %rax,%rdi
  60b98d:	e8 ff 07 00 00       	call   60c191 <vec4_scale>
  60b992:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60b996:	48 83 c0 30          	add    $0x30,%rax
  60b99a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60b99e:	48 83 c1 30          	add    $0x30,%rcx
  60b9a2:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  60b9a6:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60b9aa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60b9ae:	48 89 c6             	mov    %rax,%rsi
  60b9b1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60b9b5:	48 89 c7             	mov    %rax,%rdi
  60b9b8:	e8 c8 08 00 00       	call   60c285 <vec4_dup>
  60b9bd:	c9                   	leave
  60b9be:	c3                   	ret

000000000060b9bf <mat4x4_mul>:
  60b9bf:	55                   	push   %rbp
  60b9c0:	48 89 e5             	mov    %rsp,%rbp
  60b9c3:	48 81 ec 70 00 00 00 	sub    $0x70,%rsp
  60b9ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60b9ce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60b9d2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60b9d6:	b8 00 00 00 00       	mov    $0x0,%eax
  60b9db:	89 45 9c             	mov    %eax,-0x64(%rbp)
  60b9de:	8b 45 9c             	mov    -0x64(%rbp),%eax
  60b9e1:	83 f8 04             	cmp    $0x4,%eax
  60b9e4:	0f 8d 0b 01 00 00    	jge    60baf5 <mat4x4_mul+0x136>
  60b9ea:	e9 0b 00 00 00       	jmp    60b9fa <mat4x4_mul+0x3b>
  60b9ef:	8b 45 9c             	mov    -0x64(%rbp),%eax
  60b9f2:	83 c0 01             	add    $0x1,%eax
  60b9f5:	89 45 9c             	mov    %eax,-0x64(%rbp)
  60b9f8:	eb e4                	jmp    60b9de <mat4x4_mul+0x1f>
  60b9fa:	b8 00 00 00 00       	mov    $0x0,%eax
  60b9ff:	89 45 a0             	mov    %eax,-0x60(%rbp)
  60ba02:	8b 45 a0             	mov    -0x60(%rbp),%eax
  60ba05:	83 f8 04             	cmp    $0x4,%eax
  60ba08:	0f 8d e2 00 00 00    	jge    60baf0 <mat4x4_mul+0x131>
  60ba0e:	e9 0b 00 00 00       	jmp    60ba1e <mat4x4_mul+0x5f>
  60ba13:	8b 45 a0             	mov    -0x60(%rbp),%eax
  60ba16:	83 c0 01             	add    $0x1,%eax
  60ba19:	89 45 a0             	mov    %eax,-0x60(%rbp)
  60ba1c:	eb e4                	jmp    60ba02 <mat4x4_mul+0x43>
  60ba1e:	8b 45 9c             	mov    -0x64(%rbp),%eax
  60ba21:	48 63 c0             	movslq %eax,%rax
  60ba24:	48 c1 e0 04          	shl    $0x4,%rax
  60ba28:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  60ba2c:	48 01 c1             	add    %rax,%rcx
  60ba2f:	8b 45 a0             	mov    -0x60(%rbp),%eax
  60ba32:	48 63 c0             	movslq %eax,%rax
  60ba35:	48 c1 e0 02          	shl    $0x2,%rax
  60ba39:	48 01 c1             	add    %rax,%rcx
  60ba3c:	66 0f 6e 05 18 50 20 	movd   0x205018(%rip),%xmm0        # 810a5c <L.153>
  60ba43:	00 
  60ba44:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60ba48:	b8 00 00 00 00       	mov    $0x0,%eax
  60ba4d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  60ba50:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60ba53:	83 f8 04             	cmp    $0x4,%eax
  60ba56:	0f 8d 8f 00 00 00    	jge    60baeb <mat4x4_mul+0x12c>
  60ba5c:	e9 0b 00 00 00       	jmp    60ba6c <mat4x4_mul+0xad>
  60ba61:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60ba64:	83 c0 01             	add    $0x1,%eax
  60ba67:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  60ba6a:	eb e4                	jmp    60ba50 <mat4x4_mul+0x91>
  60ba6c:	8b 45 9c             	mov    -0x64(%rbp),%eax
  60ba6f:	48 63 c0             	movslq %eax,%rax
  60ba72:	48 c1 e0 04          	shl    $0x4,%rax
  60ba76:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  60ba7a:	48 01 c1             	add    %rax,%rcx
  60ba7d:	8b 45 a0             	mov    -0x60(%rbp),%eax
  60ba80:	48 63 c0             	movslq %eax,%rax
  60ba83:	48 c1 e0 02          	shl    $0x2,%rax
  60ba87:	48 01 c1             	add    %rax,%rcx
  60ba8a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60ba8d:	48 63 c0             	movslq %eax,%rax
  60ba90:	48 c1 e0 04          	shl    $0x4,%rax
  60ba94:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60ba98:	48 01 c2             	add    %rax,%rdx
  60ba9b:	8b 45 a0             	mov    -0x60(%rbp),%eax
  60ba9e:	48 63 c0             	movslq %eax,%rax
  60baa1:	48 c1 e0 02          	shl    $0x2,%rax
  60baa5:	48 01 c2             	add    %rax,%rdx
  60baa8:	8b 45 9c             	mov    -0x64(%rbp),%eax
  60baab:	48 63 c0             	movslq %eax,%rax
  60baae:	48 c1 e0 04          	shl    $0x4,%rax
  60bab2:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  60bab6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60baba:	48 01 c1             	add    %rax,%rcx
  60babd:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  60bac0:	48 63 c0             	movslq %eax,%rax
  60bac3:	48 c1 e0 02          	shl    $0x2,%rax
  60bac7:	48 01 c1             	add    %rax,%rcx
  60baca:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60bace:	f3 0f 59 01          	mulss  (%rcx),%xmm0
  60bad2:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  60bad6:	66 0f 6e 08          	movd   (%rax),%xmm1
  60bada:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60bade:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  60bae2:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60bae6:	e9 76 ff ff ff       	jmp    60ba61 <mat4x4_mul+0xa2>
  60baeb:	e9 23 ff ff ff       	jmp    60ba13 <mat4x4_mul+0x54>
  60baf0:	e9 fa fe ff ff       	jmp    60b9ef <mat4x4_mul+0x30>
  60baf5:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  60baf9:	48 89 c6             	mov    %rax,%rsi
  60bafc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bb00:	48 89 c7             	mov    %rax,%rdi
  60bb03:	e8 e2 07 00 00       	call   60c2ea <mat4x4_dup>
  60bb08:	c9                   	leave
  60bb09:	c3                   	ret

000000000060bb0a <mat4x4_translate_in_place>:
  60bb0a:	55                   	push   %rbp
  60bb0b:	48 89 e5             	mov    %rsp,%rbp
  60bb0e:	48 81 ec 50 00 00 00 	sub    $0x50,%rsp
  60bb15:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60bb19:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
  60bb1e:	66 0f d6 4d e8       	movq   %xmm1,-0x18(%rbp)
  60bb23:	66 0f d6 55 e0       	movq   %xmm2,-0x20(%rbp)
  60bb28:	48 b8 10 00 00 00 00 	movabs $0x10,%rax
  60bb2f:	00 00 00 
  60bb32:	49 89 c2             	mov    %rax,%r10
  60bb35:	b8 00 00 00 00       	mov    $0x0,%eax
  60bb3a:	48 89 c6             	mov    %rax,%rsi
  60bb3d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  60bb41:	48 89 c7             	mov    %rax,%rdi
  60bb44:	4c 89 d2             	mov    %r10,%rdx
  60bb47:	b8 00 00 00 00       	mov    $0x0,%eax
  60bb4c:	e8 37 49 00 00       	call   610488 <memset@plt>
  60bb51:	66 0f 6e 45 f0       	movd   -0x10(%rbp),%xmm0
  60bb56:	66 0f 7e 45 d0       	movd   %xmm0,-0x30(%rbp)
  60bb5b:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60bb60:	66 0f 7e 45 d4       	movd   %xmm0,-0x2c(%rbp)
  60bb65:	66 0f 6e 45 e0       	movd   -0x20(%rbp),%xmm0
  60bb6a:	66 0f 7e 45 d8       	movd   %xmm0,-0x28(%rbp)
  60bb6f:	66 0f 6e 05 e9 4e 20 	movd   0x204ee9(%rip),%xmm0        # 810a60 <L.154>
  60bb76:	00 
  60bb77:	66 0f 7e 45 dc       	movd   %xmm0,-0x24(%rbp)
  60bb7c:	b8 00 00 00 00       	mov    $0x0,%eax
  60bb81:	89 45 bc             	mov    %eax,-0x44(%rbp)
  60bb84:	8b 45 bc             	mov    -0x44(%rbp),%eax
  60bb87:	83 f8 04             	cmp    $0x4,%eax
  60bb8a:	0f 8d 6e 00 00 00    	jge    60bbfe <mat4x4_translate_in_place+0xf4>
  60bb90:	e9 0b 00 00 00       	jmp    60bba0 <mat4x4_translate_in_place+0x96>
  60bb95:	8b 45 bc             	mov    -0x44(%rbp),%eax
  60bb98:	83 c0 01             	add    $0x1,%eax
  60bb9b:	89 45 bc             	mov    %eax,-0x44(%rbp)
  60bb9e:	eb e4                	jmp    60bb84 <mat4x4_translate_in_place+0x7a>
  60bba0:	8b 45 bc             	mov    -0x44(%rbp),%eax
  60bba3:	49 89 c2             	mov    %rax,%r10
  60bba6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bbaa:	48 89 c6             	mov    %rax,%rsi
  60bbad:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  60bbb1:	48 89 c7             	mov    %rax,%rdi
  60bbb4:	4c 89 d2             	mov    %r10,%rdx
  60bbb7:	e8 a6 07 00 00       	call   60c362 <mat4x4_row>
  60bbbc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bbc0:	48 83 c0 30          	add    $0x30,%rax
  60bbc4:	8b 4d bc             	mov    -0x44(%rbp),%ecx
  60bbc7:	48 63 c9             	movslq %ecx,%rcx
  60bbca:	48 c1 e1 02          	shl    $0x2,%rcx
  60bbce:	48 01 c8             	add    %rcx,%rax
  60bbd1:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  60bbd5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  60bbd9:	48 89 c6             	mov    %rax,%rsi
  60bbdc:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  60bbe0:	48 89 c7             	mov    %rax,%rdi
  60bbe3:	e8 18 06 00 00       	call   60c200 <vec4_mul_inner>
  60bbe8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  60bbec:	66 0f 6e 08          	movd   (%rax),%xmm1
  60bbf0:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60bbf4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  60bbf8:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60bbfc:	eb 97                	jmp    60bb95 <mat4x4_translate_in_place+0x8b>
  60bbfe:	c9                   	leave
  60bbff:	c3                   	ret

000000000060bc00 <mat4x4_rotate>:
  60bc00:	55                   	push   %rbp
  60bc01:	48 89 e5             	mov    %rsp,%rbp
  60bc04:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
  60bc0b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60bc0f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60bc13:	66 0f d6 45 e8       	movq   %xmm0,-0x18(%rbp)
  60bc18:	66 0f d6 4d e0       	movq   %xmm1,-0x20(%rbp)
  60bc1d:	66 0f d6 55 d8       	movq   %xmm2,-0x28(%rbp)
  60bc22:	66 0f d6 5d d0       	movq   %xmm3,-0x30(%rbp)
  60bc27:	66 0f 6e 45 d0       	movd   -0x30(%rbp),%xmm0
  60bc2c:	e8 77 49 00 00       	call   6105a8 <sinf@plt>
  60bc31:	66 0f 7e 45 cc       	movd   %xmm0,-0x34(%rbp)
  60bc36:	66 0f 6e 45 d0       	movd   -0x30(%rbp),%xmm0
  60bc3b:	e8 78 49 00 00       	call   6105b8 <cosf@plt>
  60bc40:	66 0f 7e 45 c8       	movd   %xmm0,-0x38(%rbp)
  60bc45:	48 b8 0c 00 00 00 00 	movabs $0xc,%rax
  60bc4c:	00 00 00 
  60bc4f:	49 89 c2             	mov    %rax,%r10
  60bc52:	b8 00 00 00 00       	mov    $0x0,%eax
  60bc57:	48 89 c6             	mov    %rax,%rsi
  60bc5a:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bc5e:	48 89 c7             	mov    %rax,%rdi
  60bc61:	4c 89 d2             	mov    %r10,%rdx
  60bc64:	b8 00 00 00 00       	mov    $0x0,%eax
  60bc69:	e8 1a 48 00 00       	call   610488 <memset@plt>
  60bc6e:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60bc73:	66 0f 7e 45 bc       	movd   %xmm0,-0x44(%rbp)
  60bc78:	66 0f 6e 45 e0       	movd   -0x20(%rbp),%xmm0
  60bc7d:	66 0f 7e 45 c0       	movd   %xmm0,-0x40(%rbp)
  60bc82:	66 0f 6e 45 d8       	movd   -0x28(%rbp),%xmm0
  60bc87:	66 0f 7e 45 c4       	movd   %xmm0,-0x3c(%rbp)
  60bc8c:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bc90:	48 89 c7             	mov    %rax,%rdi
  60bc93:	e8 7c 04 00 00       	call   60c114 <vec3_len>
  60bc98:	0f 14 c0             	unpcklps %xmm0,%xmm0
  60bc9b:	0f 5a c0             	cvtps2pd %xmm0,%xmm0
  60bc9e:	f3 0f 7e 0d c2 4d 20 	movq   0x204dc2(%rip),%xmm1        # 810a68 <L.155>
  60bca5:	00 
  60bca6:	66 0f 2f c1          	comisd %xmm1,%xmm0
  60bcaa:	0f 8a 6c 02 00 00    	jp     60bf1c <mat4x4_rotate+0x31c>
  60bcb0:	0f 86 66 02 00 00    	jbe    60bf1c <mat4x4_rotate+0x31c>
  60bcb6:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bcba:	48 89 c6             	mov    %rax,%rsi
  60bcbd:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bcc1:	48 89 c7             	mov    %rax,%rdi
  60bcc4:	e8 7e 04 00 00       	call   60c147 <vec3_norm>
  60bcc9:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bccd:	49 89 c2             	mov    %rax,%r10
  60bcd0:	48 8d 45 bc          	lea    -0x44(%rbp),%rax
  60bcd4:	48 89 c6             	mov    %rax,%rsi
  60bcd7:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60bcde:	48 89 c7             	mov    %rax,%rdi
  60bce1:	4c 89 d2             	mov    %r10,%rdx
  60bce4:	e8 a7 08 00 00       	call   60c590 <mat4x4_from_vec3_mul_outer>
  60bce9:	48 b8 40 00 00 00 00 	movabs $0x40,%rax
  60bcf0:	00 00 00 
  60bcf3:	49 89 c2             	mov    %rax,%r10
  60bcf6:	b8 00 00 00 00       	mov    $0x0,%eax
  60bcfb:	48 89 c6             	mov    %rax,%rsi
  60bcfe:	48 8d 85 3c ff ff ff 	lea    -0xc4(%rbp),%rax
  60bd05:	48 89 c7             	mov    %rax,%rdi
  60bd08:	4c 89 d2             	mov    %r10,%rdx
  60bd0b:	b8 00 00 00 00       	mov    $0x0,%eax
  60bd10:	e8 73 47 00 00       	call   610488 <memset@plt>
  60bd15:	66 0f 6e 05 53 4d 20 	movd   0x204d53(%rip),%xmm0        # 810a70 <L.156>
  60bd1c:	00 
  60bd1d:	66 0f 7e 85 3c ff ff 	movd   %xmm0,-0xc4(%rbp)
  60bd24:	ff 
  60bd25:	66 0f 6e 45 c4       	movd   -0x3c(%rbp),%xmm0
  60bd2a:	66 0f 7e 85 40 ff ff 	movd   %xmm0,-0xc0(%rbp)
  60bd31:	ff 
  60bd32:	66 0f 6e 45 c0       	movd   -0x40(%rbp),%xmm0
  60bd37:	48 8b 05 52 6c 20 00 	mov    0x206c52(%rip),%rax        # 812990 <__mzerosf+0x410>
  60bd3e:	66 0f 6e 08          	movd   (%rax),%xmm1
  60bd42:	0f 57 c1             	xorps  %xmm1,%xmm0
  60bd45:	66 0f 7e 85 44 ff ff 	movd   %xmm0,-0xbc(%rbp)
  60bd4c:	ff 
  60bd4d:	66 0f 6e 05 1f 4d 20 	movd   0x204d1f(%rip),%xmm0        # 810a74 <L.157>
  60bd54:	00 
  60bd55:	66 0f 7e 85 48 ff ff 	movd   %xmm0,-0xb8(%rbp)
  60bd5c:	ff 
  60bd5d:	66 0f 6e 45 c4       	movd   -0x3c(%rbp),%xmm0
  60bd62:	48 8b 05 27 6c 20 00 	mov    0x206c27(%rip),%rax        # 812990 <__mzerosf+0x410>
  60bd69:	66 0f 6e 08          	movd   (%rax),%xmm1
  60bd6d:	0f 57 c1             	xorps  %xmm1,%xmm0
  60bd70:	66 0f 7e 85 4c ff ff 	movd   %xmm0,-0xb4(%rbp)
  60bd77:	ff 
  60bd78:	66 0f 6e 05 f8 4c 20 	movd   0x204cf8(%rip),%xmm0        # 810a78 <L.158>
  60bd7f:	00 
  60bd80:	66 0f 7e 85 50 ff ff 	movd   %xmm0,-0xb0(%rbp)
  60bd87:	ff 
  60bd88:	66 0f 6e 45 bc       	movd   -0x44(%rbp),%xmm0
  60bd8d:	66 0f 7e 85 54 ff ff 	movd   %xmm0,-0xac(%rbp)
  60bd94:	ff 
  60bd95:	66 0f 6e 05 df 4c 20 	movd   0x204cdf(%rip),%xmm0        # 810a7c <L.159>
  60bd9c:	00 
  60bd9d:	66 0f 7e 85 58 ff ff 	movd   %xmm0,-0xa8(%rbp)
  60bda4:	ff 
  60bda5:	66 0f 6e 45 c0       	movd   -0x40(%rbp),%xmm0
  60bdaa:	66 0f 7e 85 5c ff ff 	movd   %xmm0,-0xa4(%rbp)
  60bdb1:	ff 
  60bdb2:	66 0f 6e 45 bc       	movd   -0x44(%rbp),%xmm0
  60bdb7:	48 8b 05 d2 6b 20 00 	mov    0x206bd2(%rip),%rax        # 812990 <__mzerosf+0x410>
  60bdbe:	66 0f 6e 08          	movd   (%rax),%xmm1
  60bdc2:	0f 57 c1             	xorps  %xmm1,%xmm0
  60bdc5:	66 0f 7e 85 60 ff ff 	movd   %xmm0,-0xa0(%rbp)
  60bdcc:	ff 
  60bdcd:	66 0f 6e 05 ab 4c 20 	movd   0x204cab(%rip),%xmm0        # 810a80 <L.160>
  60bdd4:	00 
  60bdd5:	66 0f 7e 85 64 ff ff 	movd   %xmm0,-0x9c(%rbp)
  60bddc:	ff 
  60bddd:	66 0f 6e 05 9f 4c 20 	movd   0x204c9f(%rip),%xmm0        # 810a84 <L.161>
  60bde4:	00 
  60bde5:	66 0f 7e 85 68 ff ff 	movd   %xmm0,-0x98(%rbp)
  60bdec:	ff 
  60bded:	66 0f 6e 05 93 4c 20 	movd   0x204c93(%rip),%xmm0        # 810a88 <L.162>
  60bdf4:	00 
  60bdf5:	66 0f 7e 85 6c ff ff 	movd   %xmm0,-0x94(%rbp)
  60bdfc:	ff 
  60bdfd:	66 0f 6e 05 87 4c 20 	movd   0x204c87(%rip),%xmm0        # 810a8c <L.163>
  60be04:	00 
  60be05:	66 0f 7e 85 70 ff ff 	movd   %xmm0,-0x90(%rbp)
  60be0c:	ff 
  60be0d:	66 0f 6e 05 7b 4c 20 	movd   0x204c7b(%rip),%xmm0        # 810a90 <L.164>
  60be14:	00 
  60be15:	66 0f 7e 85 74 ff ff 	movd   %xmm0,-0x8c(%rbp)
  60be1c:	ff 
  60be1d:	66 0f 6e 05 6f 4c 20 	movd   0x204c6f(%rip),%xmm0        # 810a94 <L.165>
  60be24:	00 
  60be25:	66 0f 7e 85 78 ff ff 	movd   %xmm0,-0x88(%rbp)
  60be2c:	ff 
  60be2d:	66 0f 6e 45 cc       	movd   -0x34(%rbp),%xmm0
  60be32:	48 8d 85 3c ff ff ff 	lea    -0xc4(%rbp),%rax
  60be39:	48 89 c6             	mov    %rax,%rsi
  60be3c:	48 8d 85 3c ff ff ff 	lea    -0xc4(%rbp),%rax
  60be43:	48 89 c7             	mov    %rax,%rdi
  60be46:	e8 c3 06 00 00       	call   60c50e <mat4x4_scale>
  60be4b:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60be52:	48 89 c7             	mov    %rax,%rdi
  60be55:	e8 dc f9 ff ff       	call   60b836 <mat4x4_identity>
  60be5a:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60be61:	49 89 c2             	mov    %rax,%r10
  60be64:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60be6b:	48 89 c6             	mov    %rax,%rsi
  60be6e:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60be75:	48 89 c7             	mov    %rax,%rdi
  60be78:	4c 89 d2             	mov    %r10,%rdx
  60be7b:	e8 f3 05 00 00       	call   60c473 <mat4x4_sub>
  60be80:	66 0f 6e 45 c8       	movd   -0x38(%rbp),%xmm0
  60be85:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60be8c:	48 89 c6             	mov    %rax,%rsi
  60be8f:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60be96:	48 89 c7             	mov    %rax,%rdi
  60be99:	e8 70 06 00 00       	call   60c50e <mat4x4_scale>
  60be9e:	48 8d 85 fc fe ff ff 	lea    -0x104(%rbp),%rax
  60bea5:	49 89 c2             	mov    %rax,%r10
  60bea8:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60beaf:	48 89 c6             	mov    %rax,%rsi
  60beb2:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60beb9:	48 89 c7             	mov    %rax,%rdi
  60bebc:	4c 89 d2             	mov    %r10,%rdx
  60bebf:	e8 14 05 00 00       	call   60c3d8 <mat4x4_add>
  60bec4:	48 8d 85 3c ff ff ff 	lea    -0xc4(%rbp),%rax
  60becb:	49 89 c2             	mov    %rax,%r10
  60bece:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60bed5:	48 89 c6             	mov    %rax,%rsi
  60bed8:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60bedf:	48 89 c7             	mov    %rax,%rdi
  60bee2:	4c 89 d2             	mov    %r10,%rdx
  60bee5:	e8 ee 04 00 00       	call   60c3d8 <mat4x4_add>
  60beea:	66 0f 6e 05 a6 4b 20 	movd   0x204ba6(%rip),%xmm0        # 810a98 <L.166>
  60bef1:	00 
  60bef2:	66 0f 7e 45 b8       	movd   %xmm0,-0x48(%rbp)
  60bef7:	48 8d 85 7c ff ff ff 	lea    -0x84(%rbp),%rax
  60befe:	49 89 c2             	mov    %rax,%r10
  60bf01:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60bf05:	48 89 c6             	mov    %rax,%rsi
  60bf08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bf0c:	48 89 c7             	mov    %rax,%rdi
  60bf0f:	4c 89 d2             	mov    %r10,%rdx
  60bf12:	e8 a8 fa ff ff       	call   60b9bf <mat4x4_mul>
  60bf17:	e9 13 00 00 00       	jmp    60bf2f <mat4x4_rotate+0x32f>
  60bf1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60bf20:	48 89 c6             	mov    %rax,%rsi
  60bf23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bf27:	48 89 c7             	mov    %rax,%rdi
  60bf2a:	e8 bb 03 00 00       	call   60c2ea <mat4x4_dup>
  60bf2f:	c9                   	leave
  60bf30:	c3                   	ret

000000000060bf31 <mat4x4_ortho>:
  60bf31:	55                   	push   %rbp
  60bf32:	48 89 e5             	mov    %rsp,%rbp
  60bf35:	48 81 ec 40 00 00 00 	sub    $0x40,%rsp
  60bf3c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60bf40:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
  60bf45:	66 0f d6 4d e8       	movq   %xmm1,-0x18(%rbp)
  60bf4a:	66 0f d6 55 e0       	movq   %xmm2,-0x20(%rbp)
  60bf4f:	66 0f d6 5d d8       	movq   %xmm3,-0x28(%rbp)
  60bf54:	66 0f d6 65 d0       	movq   %xmm4,-0x30(%rbp)
  60bf59:	66 0f d6 6d c8       	movq   %xmm5,-0x38(%rbp)
  60bf5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bf62:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60bf67:	f3 0f 5c 45 f0       	subss  -0x10(%rbp),%xmm0
  60bf6c:	66 0f 6e 0d 28 4b 20 	movd   0x204b28(%rip),%xmm1        # 810a9c <L.167>
  60bf73:	00 
  60bf74:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  60bf78:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60bf7c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bf80:	48 83 c0 04          	add    $0x4,%rax
  60bf84:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60bf88:	48 83 c1 08          	add    $0x8,%rcx
  60bf8c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60bf90:	48 83 c2 0c          	add    $0xc,%rdx
  60bf94:	66 0f 6e 05 04 4b 20 	movd   0x204b04(%rip),%xmm0        # 810aa0 <L.168>
  60bf9b:	00 
  60bf9c:	66 0f 7e 02          	movd   %xmm0,(%rdx)
  60bfa0:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60bfa4:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60bfa8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bfac:	48 83 c0 10          	add    $0x10,%rax
  60bfb0:	48 83 c0 04          	add    $0x4,%rax
  60bfb4:	66 0f 6e 45 d8       	movd   -0x28(%rbp),%xmm0
  60bfb9:	f3 0f 5c 45 e0       	subss  -0x20(%rbp),%xmm0
  60bfbe:	66 0f 6e 0d de 4a 20 	movd   0x204ade(%rip),%xmm1        # 810aa4 <L.169>
  60bfc5:	00 
  60bfc6:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  60bfca:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60bfce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60bfd2:	48 83 c0 10          	add    $0x10,%rax
  60bfd6:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60bfda:	48 83 c1 10          	add    $0x10,%rcx
  60bfde:	48 83 c1 08          	add    $0x8,%rcx
  60bfe2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60bfe6:	48 83 c2 10          	add    $0x10,%rdx
  60bfea:	48 83 c2 0c          	add    $0xc,%rdx
  60bfee:	66 0f 6e 05 b2 4a 20 	movd   0x204ab2(%rip),%xmm0        # 810aa8 <L.170>
  60bff5:	00 
  60bff6:	66 0f 7e 02          	movd   %xmm0,(%rdx)
  60bffa:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60bffe:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c002:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c006:	48 83 c0 20          	add    $0x20,%rax
  60c00a:	48 83 c0 08          	add    $0x8,%rax
  60c00e:	66 0f 6e 45 c8       	movd   -0x38(%rbp),%xmm0
  60c013:	f3 0f 5c 45 d0       	subss  -0x30(%rbp),%xmm0
  60c018:	66 0f 6e 0d 8c 4a 20 	movd   0x204a8c(%rip),%xmm1        # 810aac <L.171>
  60c01f:	00 
  60c020:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  60c024:	66 0f 7e 08          	movd   %xmm1,(%rax)
  60c028:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c02c:	48 83 c0 20          	add    $0x20,%rax
  60c030:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c034:	48 83 c1 20          	add    $0x20,%rcx
  60c038:	48 83 c1 04          	add    $0x4,%rcx
  60c03c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60c040:	48 83 c2 20          	add    $0x20,%rdx
  60c044:	48 83 c2 0c          	add    $0xc,%rdx
  60c048:	66 0f 6e 05 60 4a 20 	movd   0x204a60(%rip),%xmm0        # 810ab0 <L.172>
  60c04f:	00 
  60c050:	66 0f 7e 02          	movd   %xmm0,(%rdx)
  60c054:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60c058:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c05c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c060:	48 83 c0 30          	add    $0x30,%rax
  60c064:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60c069:	f3 0f 58 45 f0       	addss  -0x10(%rbp),%xmm0
  60c06e:	48 8b 0d 1b 69 20 00 	mov    0x20691b(%rip),%rcx        # 812990 <__mzerosf+0x410>
  60c075:	66 0f 6e 09          	movd   (%rcx),%xmm1
  60c079:	0f 57 c1             	xorps  %xmm1,%xmm0
  60c07c:	66 0f 6e 4d e8       	movd   -0x18(%rbp),%xmm1
  60c081:	f3 0f 5c 4d f0       	subss  -0x10(%rbp),%xmm1
  60c086:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  60c08a:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c08e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c092:	48 83 c0 30          	add    $0x30,%rax
  60c096:	48 83 c0 04          	add    $0x4,%rax
  60c09a:	66 0f 6e 45 d8       	movd   -0x28(%rbp),%xmm0
  60c09f:	f3 0f 58 45 e0       	addss  -0x20(%rbp),%xmm0
  60c0a4:	48 8b 0d e5 68 20 00 	mov    0x2068e5(%rip),%rcx        # 812990 <__mzerosf+0x410>
  60c0ab:	66 0f 6e 09          	movd   (%rcx),%xmm1
  60c0af:	0f 57 c1             	xorps  %xmm1,%xmm0
  60c0b2:	66 0f 6e 4d d8       	movd   -0x28(%rbp),%xmm1
  60c0b7:	f3 0f 5c 4d e0       	subss  -0x20(%rbp),%xmm1
  60c0bc:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  60c0c0:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c0c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c0c8:	48 83 c0 30          	add    $0x30,%rax
  60c0cc:	48 83 c0 08          	add    $0x8,%rax
  60c0d0:	66 0f 6e 45 c8       	movd   -0x38(%rbp),%xmm0
  60c0d5:	f3 0f 58 45 d0       	addss  -0x30(%rbp),%xmm0
  60c0da:	48 8b 0d af 68 20 00 	mov    0x2068af(%rip),%rcx        # 812990 <__mzerosf+0x410>
  60c0e1:	66 0f 6e 09          	movd   (%rcx),%xmm1
  60c0e5:	0f 57 c1             	xorps  %xmm1,%xmm0
  60c0e8:	66 0f 6e 4d c8       	movd   -0x38(%rbp),%xmm1
  60c0ed:	f3 0f 5c 4d d0       	subss  -0x30(%rbp),%xmm1
  60c0f2:	f3 0f 5e c1          	divss  %xmm1,%xmm0
  60c0f6:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c0fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c0fe:	48 83 c0 30          	add    $0x30,%rax
  60c102:	48 83 c0 0c          	add    $0xc,%rax
  60c106:	66 0f 6e 05 a6 49 20 	movd   0x2049a6(%rip),%xmm0        # 810ab4 <L.173>
  60c10d:	00 
  60c10e:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c112:	c9                   	leave
  60c113:	c3                   	ret

000000000060c114 <vec3_len>:
  60c114:	55                   	push   %rbp
  60c115:	48 89 e5             	mov    %rsp,%rbp
  60c118:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60c11f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c123:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c127:	48 89 c6             	mov    %rax,%rsi
  60c12a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c12e:	48 89 c7             	mov    %rax,%rdi
  60c131:	e8 b2 05 00 00       	call   60c6e8 <vec3_mul_inner>
  60c136:	66 0f 7e 45 f4       	movd   %xmm0,-0xc(%rbp)
  60c13b:	66 0f 6e 45 f4       	movd   -0xc(%rbp),%xmm0
  60c140:	e8 83 44 00 00       	call   6105c8 <sqrtf@plt>
  60c145:	c9                   	leave
  60c146:	c3                   	ret

000000000060c147 <vec3_norm>:
  60c147:	55                   	push   %rbp
  60c148:	48 89 e5             	mov    %rsp,%rbp
  60c14b:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c152:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c156:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c15a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60c15e:	48 89 c7             	mov    %rax,%rdi
  60c161:	e8 ae ff ff ff       	call   60c114 <vec3_len>
  60c166:	66 0f 6e 0d 4a 49 20 	movd   0x20494a(%rip),%xmm1        # 810ab8 <L.174>
  60c16d:	00 
  60c16e:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  60c172:	66 0f 7e 4d ec       	movd   %xmm1,-0x14(%rbp)
  60c177:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  60c17c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60c180:	48 89 c6             	mov    %rax,%rsi
  60c183:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c187:	48 89 c7             	mov    %rax,%rdi
  60c18a:	e8 ea 04 00 00       	call   60c679 <vec3_scale>
  60c18f:	c9                   	leave
  60c190:	c3                   	ret

000000000060c191 <vec4_scale>:
  60c191:	55                   	push   %rbp
  60c192:	48 89 e5             	mov    %rsp,%rbp
  60c195:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c19c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c1a0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c1a4:	66 0f d6 45 e8       	movq   %xmm0,-0x18(%rbp)
  60c1a9:	b8 00 00 00 00       	mov    $0x0,%eax
  60c1ae:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c1b1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c1b4:	83 f8 04             	cmp    $0x4,%eax
  60c1b7:	0f 8d 41 00 00 00    	jge    60c1fe <vec4_scale+0x6d>
  60c1bd:	e9 0b 00 00 00       	jmp    60c1cd <vec4_scale+0x3c>
  60c1c2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c1c5:	83 c0 01             	add    $0x1,%eax
  60c1c8:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c1cb:	eb e4                	jmp    60c1b1 <vec4_scale+0x20>
  60c1cd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c1d0:	48 63 c0             	movslq %eax,%rax
  60c1d3:	48 c1 e0 02          	shl    $0x2,%rax
  60c1d7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c1db:	48 01 c1             	add    %rax,%rcx
  60c1de:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c1e1:	48 63 c0             	movslq %eax,%rax
  60c1e4:	48 c1 e0 02          	shl    $0x2,%rax
  60c1e8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c1ec:	48 01 c2             	add    %rax,%rdx
  60c1ef:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c1f3:	f3 0f 59 45 e8       	mulss  -0x18(%rbp),%xmm0
  60c1f8:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60c1fc:	eb c4                	jmp    60c1c2 <vec4_scale+0x31>
  60c1fe:	c9                   	leave
  60c1ff:	c3                   	ret

000000000060c200 <vec4_mul_inner>:
  60c200:	55                   	push   %rbp
  60c201:	48 89 e5             	mov    %rsp,%rbp
  60c204:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c20b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c20f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c213:	66 0f 6e 05 a1 48 20 	movd   0x2048a1(%rip),%xmm0        # 810abc <L.175>
  60c21a:	00 
  60c21b:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  60c220:	b8 00 00 00 00       	mov    $0x0,%eax
  60c225:	89 45 e8             	mov    %eax,-0x18(%rbp)
  60c228:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c22b:	83 f8 04             	cmp    $0x4,%eax
  60c22e:	0f 8d 4a 00 00 00    	jge    60c27e <vec4_mul_inner+0x7e>
  60c234:	e9 0b 00 00 00       	jmp    60c244 <vec4_mul_inner+0x44>
  60c239:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c23c:	83 c0 01             	add    $0x1,%eax
  60c23f:	89 45 e8             	mov    %eax,-0x18(%rbp)
  60c242:	eb e4                	jmp    60c228 <vec4_mul_inner+0x28>
  60c244:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c247:	48 63 c0             	movslq %eax,%rax
  60c24a:	48 c1 e0 02          	shl    $0x2,%rax
  60c24e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60c252:	48 01 c1             	add    %rax,%rcx
  60c255:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c258:	48 63 c0             	movslq %eax,%rax
  60c25b:	48 c1 e0 02          	shl    $0x2,%rax
  60c25f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60c263:	48 01 c2             	add    %rax,%rdx
  60c266:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60c26a:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  60c26e:	66 0f 6e 4d ec       	movd   -0x14(%rbp),%xmm1
  60c273:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60c277:	66 0f 7e 4d ec       	movd   %xmm1,-0x14(%rbp)
  60c27c:	eb bb                	jmp    60c239 <vec4_mul_inner+0x39>
  60c27e:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  60c283:	c9                   	leave
  60c284:	c3                   	ret

000000000060c285 <vec4_dup>:
  60c285:	55                   	push   %rbp
  60c286:	48 89 e5             	mov    %rsp,%rbp
  60c289:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c290:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c294:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c298:	b8 00 00 00 00       	mov    $0x0,%eax
  60c29d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60c2a0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c2a3:	83 f8 04             	cmp    $0x4,%eax
  60c2a6:	0f 8d 3c 00 00 00    	jge    60c2e8 <vec4_dup+0x63>
  60c2ac:	e9 0b 00 00 00       	jmp    60c2bc <vec4_dup+0x37>
  60c2b1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c2b4:	83 c0 01             	add    $0x1,%eax
  60c2b7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60c2ba:	eb e4                	jmp    60c2a0 <vec4_dup+0x1b>
  60c2bc:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c2bf:	48 63 c0             	movslq %eax,%rax
  60c2c2:	48 c1 e0 02          	shl    $0x2,%rax
  60c2c6:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c2ca:	48 01 c1             	add    %rax,%rcx
  60c2cd:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c2d0:	48 63 c0             	movslq %eax,%rax
  60c2d3:	48 c1 e0 02          	shl    $0x2,%rax
  60c2d7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c2db:	48 01 c2             	add    %rax,%rdx
  60c2de:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c2e2:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60c2e6:	eb c9                	jmp    60c2b1 <vec4_dup+0x2c>
  60c2e8:	c9                   	leave
  60c2e9:	c3                   	ret

000000000060c2ea <mat4x4_dup>:
  60c2ea:	55                   	push   %rbp
  60c2eb:	48 89 e5             	mov    %rsp,%rbp
  60c2ee:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60c2f5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c2f9:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c2fd:	b8 00 00 00 00       	mov    $0x0,%eax
  60c302:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60c305:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c308:	83 f8 04             	cmp    $0x4,%eax
  60c30b:	0f 8d 4f 00 00 00    	jge    60c360 <mat4x4_dup+0x76>
  60c311:	e9 0b 00 00 00       	jmp    60c321 <mat4x4_dup+0x37>
  60c316:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c319:	83 c0 01             	add    $0x1,%eax
  60c31c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  60c31f:	eb e4                	jmp    60c305 <mat4x4_dup+0x1b>
  60c321:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c324:	48 63 c0             	movslq %eax,%rax
  60c327:	48 c1 e0 04          	shl    $0x4,%rax
  60c32b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c32f:	48 01 c1             	add    %rax,%rcx
  60c332:	8b 45 ec             	mov    -0x14(%rbp),%eax
  60c335:	48 63 c0             	movslq %eax,%rax
  60c338:	48 c1 e0 04          	shl    $0x4,%rax
  60c33c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c340:	48 01 c2             	add    %rax,%rdx
  60c343:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  60c347:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  60c34b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c34f:	48 89 c6             	mov    %rax,%rsi
  60c352:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60c356:	48 89 c7             	mov    %rax,%rdi
  60c359:	e8 27 ff ff ff       	call   60c285 <vec4_dup>
  60c35e:	eb b6                	jmp    60c316 <mat4x4_dup+0x2c>
  60c360:	c9                   	leave
  60c361:	c3                   	ret

000000000060c362 <mat4x4_row>:
  60c362:	55                   	push   %rbp
  60c363:	48 89 e5             	mov    %rsp,%rbp
  60c366:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c36d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c371:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c375:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c379:	b8 00 00 00 00       	mov    $0x0,%eax
  60c37e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c381:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c384:	83 f8 04             	cmp    $0x4,%eax
  60c387:	0f 8d 49 00 00 00    	jge    60c3d6 <mat4x4_row+0x74>
  60c38d:	e9 0b 00 00 00       	jmp    60c39d <mat4x4_row+0x3b>
  60c392:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c395:	83 c0 01             	add    $0x1,%eax
  60c398:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c39b:	eb e4                	jmp    60c381 <mat4x4_row+0x1f>
  60c39d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c3a0:	48 63 c0             	movslq %eax,%rax
  60c3a3:	48 c1 e0 02          	shl    $0x2,%rax
  60c3a7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c3ab:	48 01 c1             	add    %rax,%rcx
  60c3ae:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c3b1:	48 63 c0             	movslq %eax,%rax
  60c3b4:	48 c1 e0 04          	shl    $0x4,%rax
  60c3b8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c3bc:	48 01 c2             	add    %rax,%rdx
  60c3bf:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c3c2:	48 63 c0             	movslq %eax,%rax
  60c3c5:	48 c1 e0 02          	shl    $0x2,%rax
  60c3c9:	48 01 c2             	add    %rax,%rdx
  60c3cc:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c3d0:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60c3d4:	eb bc                	jmp    60c392 <mat4x4_row+0x30>
  60c3d6:	c9                   	leave
  60c3d7:	c3                   	ret

000000000060c3d8 <mat4x4_add>:
  60c3d8:	55                   	push   %rbp
  60c3d9:	48 89 e5             	mov    %rsp,%rbp
  60c3dc:	48 81 ec 40 00 00 00 	sub    $0x40,%rsp
  60c3e3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c3e7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c3eb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c3ef:	b8 00 00 00 00       	mov    $0x0,%eax
  60c3f4:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c3f7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c3fa:	83 f8 04             	cmp    $0x4,%eax
  60c3fd:	0f 8d 6e 00 00 00    	jge    60c471 <mat4x4_add+0x99>
  60c403:	e9 0b 00 00 00       	jmp    60c413 <mat4x4_add+0x3b>
  60c408:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c40b:	83 c0 01             	add    $0x1,%eax
  60c40e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c411:	eb e4                	jmp    60c3f7 <mat4x4_add+0x1f>
  60c413:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c416:	48 63 c0             	movslq %eax,%rax
  60c419:	48 c1 e0 04          	shl    $0x4,%rax
  60c41d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c421:	48 01 c1             	add    %rax,%rcx
  60c424:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c427:	48 63 c0             	movslq %eax,%rax
  60c42a:	48 c1 e0 04          	shl    $0x4,%rax
  60c42e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c432:	48 01 c2             	add    %rax,%rdx
  60c435:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c438:	48 63 c0             	movslq %eax,%rax
  60c43b:	48 c1 e0 04          	shl    $0x4,%rax
  60c43f:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c443:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60c447:	48 01 c1             	add    %rax,%rcx
  60c44a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  60c44e:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60c452:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60c456:	49 89 c2             	mov    %rax,%r10
  60c459:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60c45d:	48 89 c6             	mov    %rax,%rsi
  60c460:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c464:	48 89 c7             	mov    %rax,%rdi
  60c467:	4c 89 d2             	mov    %r10,%rdx
  60c46a:	e8 fe 02 00 00       	call   60c76d <vec4_add>
  60c46f:	eb 97                	jmp    60c408 <mat4x4_add+0x30>
  60c471:	c9                   	leave
  60c472:	c3                   	ret

000000000060c473 <mat4x4_sub>:
  60c473:	55                   	push   %rbp
  60c474:	48 89 e5             	mov    %rsp,%rbp
  60c477:	48 81 ec 40 00 00 00 	sub    $0x40,%rsp
  60c47e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c482:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c486:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c48a:	b8 00 00 00 00       	mov    $0x0,%eax
  60c48f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c492:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c495:	83 f8 04             	cmp    $0x4,%eax
  60c498:	0f 8d 6e 00 00 00    	jge    60c50c <mat4x4_sub+0x99>
  60c49e:	e9 0b 00 00 00       	jmp    60c4ae <mat4x4_sub+0x3b>
  60c4a3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c4a6:	83 c0 01             	add    $0x1,%eax
  60c4a9:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c4ac:	eb e4                	jmp    60c492 <mat4x4_sub+0x1f>
  60c4ae:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c4b1:	48 63 c0             	movslq %eax,%rax
  60c4b4:	48 c1 e0 04          	shl    $0x4,%rax
  60c4b8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c4bc:	48 01 c1             	add    %rax,%rcx
  60c4bf:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c4c2:	48 63 c0             	movslq %eax,%rax
  60c4c5:	48 c1 e0 04          	shl    $0x4,%rax
  60c4c9:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c4cd:	48 01 c2             	add    %rax,%rdx
  60c4d0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c4d3:	48 63 c0             	movslq %eax,%rax
  60c4d6:	48 c1 e0 04          	shl    $0x4,%rax
  60c4da:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c4de:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60c4e2:	48 01 c1             	add    %rax,%rcx
  60c4e5:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  60c4e9:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  60c4ed:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  60c4f1:	49 89 c2             	mov    %rax,%r10
  60c4f4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60c4f8:	48 89 c6             	mov    %rax,%rsi
  60c4fb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c4ff:	48 89 c7             	mov    %rax,%rdi
  60c502:	4c 89 d2             	mov    %r10,%rdx
  60c505:	e8 e9 02 00 00       	call   60c7f3 <vec4_sub>
  60c50a:	eb 97                	jmp    60c4a3 <mat4x4_sub+0x30>
  60c50c:	c9                   	leave
  60c50d:	c3                   	ret

000000000060c50e <mat4x4_scale>:
  60c50e:	55                   	push   %rbp
  60c50f:	48 89 e5             	mov    %rsp,%rbp
  60c512:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60c519:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c51d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c521:	66 0f d6 45 e8       	movq   %xmm0,-0x18(%rbp)
  60c526:	b8 00 00 00 00       	mov    $0x0,%eax
  60c52b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c52e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c531:	83 f8 04             	cmp    $0x4,%eax
  60c534:	0f 8d 54 00 00 00    	jge    60c58e <mat4x4_scale+0x80>
  60c53a:	e9 0b 00 00 00       	jmp    60c54a <mat4x4_scale+0x3c>
  60c53f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c542:	83 c0 01             	add    $0x1,%eax
  60c545:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c548:	eb e4                	jmp    60c52e <mat4x4_scale+0x20>
  60c54a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c54d:	48 63 c0             	movslq %eax,%rax
  60c550:	48 c1 e0 04          	shl    $0x4,%rax
  60c554:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c558:	48 01 c1             	add    %rax,%rcx
  60c55b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c55e:	48 63 c0             	movslq %eax,%rax
  60c561:	48 c1 e0 04          	shl    $0x4,%rax
  60c565:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c569:	48 01 c2             	add    %rax,%rdx
  60c56c:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c570:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  60c574:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  60c579:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60c57d:	48 89 c6             	mov    %rax,%rsi
  60c580:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c584:	48 89 c7             	mov    %rax,%rdi
  60c587:	e8 05 fc ff ff       	call   60c191 <vec4_scale>
  60c58c:	eb b1                	jmp    60c53f <mat4x4_scale+0x31>
  60c58e:	c9                   	leave
  60c58f:	c3                   	ret

000000000060c590 <mat4x4_from_vec3_mul_outer>:
  60c590:	55                   	push   %rbp
  60c591:	48 89 e5             	mov    %rsp,%rbp
  60c594:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60c59b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c59f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c5a3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c5a7:	b8 00 00 00 00       	mov    $0x0,%eax
  60c5ac:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c5af:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c5b2:	83 f8 04             	cmp    $0x4,%eax
  60c5b5:	0f 8d bc 00 00 00    	jge    60c677 <mat4x4_from_vec3_mul_outer+0xe7>
  60c5bb:	e9 0b 00 00 00       	jmp    60c5cb <mat4x4_from_vec3_mul_outer+0x3b>
  60c5c0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c5c3:	83 c0 01             	add    $0x1,%eax
  60c5c6:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c5c9:	eb e4                	jmp    60c5af <mat4x4_from_vec3_mul_outer+0x1f>
  60c5cb:	b8 00 00 00 00       	mov    $0x0,%eax
  60c5d0:	89 45 e0             	mov    %eax,-0x20(%rbp)
  60c5d3:	8b 45 e0             	mov    -0x20(%rbp),%eax
  60c5d6:	83 f8 04             	cmp    $0x4,%eax
  60c5d9:	0f 8d 93 00 00 00    	jge    60c672 <mat4x4_from_vec3_mul_outer+0xe2>
  60c5df:	e9 0b 00 00 00       	jmp    60c5ef <mat4x4_from_vec3_mul_outer+0x5f>
  60c5e4:	8b 45 e0             	mov    -0x20(%rbp),%eax
  60c5e7:	83 c0 01             	add    $0x1,%eax
  60c5ea:	89 45 e0             	mov    %eax,-0x20(%rbp)
  60c5ed:	eb e4                	jmp    60c5d3 <mat4x4_from_vec3_mul_outer+0x43>
  60c5ef:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c5f2:	48 63 c0             	movslq %eax,%rax
  60c5f5:	48 c1 e0 04          	shl    $0x4,%rax
  60c5f9:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c5fd:	48 01 c1             	add    %rax,%rcx
  60c600:	8b 45 e0             	mov    -0x20(%rbp),%eax
  60c603:	48 63 c0             	movslq %eax,%rax
  60c606:	48 c1 e0 02          	shl    $0x2,%rax
  60c60a:	48 01 c1             	add    %rax,%rcx
  60c60d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c610:	83 f8 03             	cmp    $0x3,%eax
  60c613:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c617:	0f 8d 3b 00 00 00    	jge    60c658 <mat4x4_from_vec3_mul_outer+0xc8>
  60c61d:	8b 45 e0             	mov    -0x20(%rbp),%eax
  60c620:	83 f8 03             	cmp    $0x3,%eax
  60c623:	0f 8d 2f 00 00 00    	jge    60c658 <mat4x4_from_vec3_mul_outer+0xc8>
  60c629:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c62c:	48 63 c0             	movslq %eax,%rax
  60c62f:	48 c1 e0 02          	shl    $0x2,%rax
  60c633:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60c637:	48 01 c1             	add    %rax,%rcx
  60c63a:	8b 45 e0             	mov    -0x20(%rbp),%eax
  60c63d:	48 63 c0             	movslq %eax,%rax
  60c640:	48 c1 e0 02          	shl    $0x2,%rax
  60c644:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  60c648:	48 01 c2             	add    %rax,%rdx
  60c64b:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60c64f:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  60c653:	e9 0d 00 00 00       	jmp    60c665 <mat4x4_from_vec3_mul_outer+0xd5>
  60c658:	66 0f 6e 05 60 44 20 	movd   0x204460(%rip),%xmm0        # 810ac0 <L.176>
  60c65f:	00 
  60c660:	e9 00 00 00 00       	jmp    60c665 <mat4x4_from_vec3_mul_outer+0xd5>
  60c665:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c669:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c66d:	e9 72 ff ff ff       	jmp    60c5e4 <mat4x4_from_vec3_mul_outer+0x54>
  60c672:	e9 49 ff ff ff       	jmp    60c5c0 <mat4x4_from_vec3_mul_outer+0x30>
  60c677:	c9                   	leave
  60c678:	c3                   	ret

000000000060c679 <vec3_scale>:
  60c679:	55                   	push   %rbp
  60c67a:	48 89 e5             	mov    %rsp,%rbp
  60c67d:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c684:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c688:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c68c:	66 0f d6 45 e8       	movq   %xmm0,-0x18(%rbp)
  60c691:	b8 00 00 00 00       	mov    $0x0,%eax
  60c696:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c699:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c69c:	83 f8 03             	cmp    $0x3,%eax
  60c69f:	0f 8d 41 00 00 00    	jge    60c6e6 <vec3_scale+0x6d>
  60c6a5:	e9 0b 00 00 00       	jmp    60c6b5 <vec3_scale+0x3c>
  60c6aa:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c6ad:	83 c0 01             	add    $0x1,%eax
  60c6b0:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c6b3:	eb e4                	jmp    60c699 <vec3_scale+0x20>
  60c6b5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c6b8:	48 63 c0             	movslq %eax,%rax
  60c6bb:	48 c1 e0 02          	shl    $0x2,%rax
  60c6bf:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c6c3:	48 01 c1             	add    %rax,%rcx
  60c6c6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c6c9:	48 63 c0             	movslq %eax,%rax
  60c6cc:	48 c1 e0 02          	shl    $0x2,%rax
  60c6d0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c6d4:	48 01 c2             	add    %rax,%rdx
  60c6d7:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c6db:	f3 0f 59 45 e8       	mulss  -0x18(%rbp),%xmm0
  60c6e0:	66 0f 7e 01          	movd   %xmm0,(%rcx)
  60c6e4:	eb c4                	jmp    60c6aa <vec3_scale+0x31>
  60c6e6:	c9                   	leave
  60c6e7:	c3                   	ret

000000000060c6e8 <vec3_mul_inner>:
  60c6e8:	55                   	push   %rbp
  60c6e9:	48 89 e5             	mov    %rsp,%rbp
  60c6ec:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60c6f3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c6f7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c6fb:	66 0f 6e 05 c1 43 20 	movd   0x2043c1(%rip),%xmm0        # 810ac4 <L.177>
  60c702:	00 
  60c703:	66 0f 7e 45 ec       	movd   %xmm0,-0x14(%rbp)
  60c708:	b8 00 00 00 00       	mov    $0x0,%eax
  60c70d:	89 45 e8             	mov    %eax,-0x18(%rbp)
  60c710:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c713:	83 f8 03             	cmp    $0x3,%eax
  60c716:	0f 8d 4a 00 00 00    	jge    60c766 <vec3_mul_inner+0x7e>
  60c71c:	e9 0b 00 00 00       	jmp    60c72c <vec3_mul_inner+0x44>
  60c721:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c724:	83 c0 01             	add    $0x1,%eax
  60c727:	89 45 e8             	mov    %eax,-0x18(%rbp)
  60c72a:	eb e4                	jmp    60c710 <vec3_mul_inner+0x28>
  60c72c:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c72f:	48 63 c0             	movslq %eax,%rax
  60c732:	48 c1 e0 02          	shl    $0x2,%rax
  60c736:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60c73a:	48 01 c1             	add    %rax,%rcx
  60c73d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  60c740:	48 63 c0             	movslq %eax,%rax
  60c743:	48 c1 e0 02          	shl    $0x2,%rax
  60c747:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  60c74b:	48 01 c2             	add    %rax,%rdx
  60c74e:	66 0f 6e 01          	movd   (%rcx),%xmm0
  60c752:	f3 0f 59 02          	mulss  (%rdx),%xmm0
  60c756:	66 0f 6e 4d ec       	movd   -0x14(%rbp),%xmm1
  60c75b:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  60c75f:	66 0f 7e 4d ec       	movd   %xmm1,-0x14(%rbp)
  60c764:	eb bb                	jmp    60c721 <vec3_mul_inner+0x39>
  60c766:	66 0f 6e 45 ec       	movd   -0x14(%rbp),%xmm0
  60c76b:	c9                   	leave
  60c76c:	c3                   	ret

000000000060c76d <vec4_add>:
  60c76d:	55                   	push   %rbp
  60c76e:	48 89 e5             	mov    %rsp,%rbp
  60c771:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60c778:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c77c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c780:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c784:	b8 00 00 00 00       	mov    $0x0,%eax
  60c789:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c78c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c78f:	83 f8 04             	cmp    $0x4,%eax
  60c792:	0f 8d 59 00 00 00    	jge    60c7f1 <vec4_add+0x84>
  60c798:	e9 0b 00 00 00       	jmp    60c7a8 <vec4_add+0x3b>
  60c79d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c7a0:	83 c0 01             	add    $0x1,%eax
  60c7a3:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c7a6:	eb e4                	jmp    60c78c <vec4_add+0x1f>
  60c7a8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c7ab:	48 63 c0             	movslq %eax,%rax
  60c7ae:	48 c1 e0 02          	shl    $0x2,%rax
  60c7b2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c7b6:	48 01 c1             	add    %rax,%rcx
  60c7b9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c7bc:	48 63 c0             	movslq %eax,%rax
  60c7bf:	48 c1 e0 02          	shl    $0x2,%rax
  60c7c3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c7c7:	48 01 c2             	add    %rax,%rdx
  60c7ca:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c7cd:	48 63 c0             	movslq %eax,%rax
  60c7d0:	48 c1 e0 02          	shl    $0x2,%rax
  60c7d4:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c7d8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60c7dc:	48 01 c1             	add    %rax,%rcx
  60c7df:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c7e3:	f3 0f 58 01          	addss  (%rcx),%xmm0
  60c7e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c7eb:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c7ef:	eb ac                	jmp    60c79d <vec4_add+0x30>
  60c7f1:	c9                   	leave
  60c7f2:	c3                   	ret

000000000060c7f3 <vec4_sub>:
  60c7f3:	55                   	push   %rbp
  60c7f4:	48 89 e5             	mov    %rsp,%rbp
  60c7f7:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60c7fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c802:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  60c806:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  60c80a:	b8 00 00 00 00       	mov    $0x0,%eax
  60c80f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c812:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c815:	83 f8 04             	cmp    $0x4,%eax
  60c818:	0f 8d 59 00 00 00    	jge    60c877 <vec4_sub+0x84>
  60c81e:	e9 0b 00 00 00       	jmp    60c82e <vec4_sub+0x3b>
  60c823:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c826:	83 c0 01             	add    $0x1,%eax
  60c829:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  60c82c:	eb e4                	jmp    60c812 <vec4_sub+0x1f>
  60c82e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c831:	48 63 c0             	movslq %eax,%rax
  60c834:	48 c1 e0 02          	shl    $0x2,%rax
  60c838:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  60c83c:	48 01 c1             	add    %rax,%rcx
  60c83f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c842:	48 63 c0             	movslq %eax,%rax
  60c845:	48 c1 e0 02          	shl    $0x2,%rax
  60c849:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  60c84d:	48 01 c2             	add    %rax,%rdx
  60c850:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  60c853:	48 63 c0             	movslq %eax,%rax
  60c856:	48 c1 e0 02          	shl    $0x2,%rax
  60c85a:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  60c85e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60c862:	48 01 c1             	add    %rax,%rcx
  60c865:	66 0f 6e 02          	movd   (%rdx),%xmm0
  60c869:	f3 0f 5c 01          	subss  (%rcx),%xmm0
  60c86d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60c871:	66 0f 7e 00          	movd   %xmm0,(%rax)
  60c875:	eb ac                	jmp    60c823 <vec4_sub+0x30>
  60c877:	c9                   	leave
  60c878:	c3                   	ret

000000000060c879 <open_gl>:
  60c879:	55                   	push   %rbp
  60c87a:	48 89 e5             	mov    %rsp,%rbp
  60c87d:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60c884:	b8 00 00 00 00       	mov    $0x0,%eax
  60c889:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60c88c:	b8 00 00 00 00       	mov    $0x0,%eax
  60c891:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60c894:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60c897:	48 83 f8 02          	cmp    $0x2,%rax
  60c89b:	0f 83 91 00 00 00    	jae    60c932 <open_gl+0xb9>
  60c8a1:	e9 0d 00 00 00       	jmp    60c8b3 <open_gl+0x3a>
  60c8a6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60c8a9:	89 c1                	mov    %eax,%ecx
  60c8ab:	83 c0 01             	add    $0x1,%eax
  60c8ae:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60c8b1:	eb e1                	jmp    60c894 <open_gl+0x1b>
  60c8b3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60c8b6:	48 c1 e0 03          	shl    $0x3,%rax
  60c8ba:	48 8d 0d 3f 6c 40 00 	lea    0x406c3f(%rip),%rcx        # a13500 <NAMES>
  60c8c1:	48 01 c1             	add    %rax,%rcx
  60c8c4:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  60c8c8:	b8 02 01 00 00       	mov    $0x102,%eax
  60c8cd:	48 89 c6             	mov    %rax,%rsi
  60c8d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60c8d4:	48 8b 00             	mov    (%rax),%rax
  60c8d7:	48 89 c7             	mov    %rax,%rdi
  60c8da:	e8 f9 3c 00 00       	call   6105d8 <dlopen@plt>
  60c8df:	48 89 05 72 78 40 00 	mov    %rax,0x407872(%rip)        # a14158 <libGL>
  60c8e6:	48 8b 05 6b 78 40 00 	mov    0x40786b(%rip),%rax        # a14158 <libGL>
  60c8ed:	48 83 f8 00          	cmp    $0x0,%rax
  60c8f1:	0f 84 36 00 00 00    	je     60c92d <open_gl+0xb4>
  60c8f7:	48 8d 05 de 41 20 00 	lea    0x2041de(%rip),%rax        # 810adc <L.25>
  60c8fe:	48 89 c6             	mov    %rax,%rsi
  60c901:	48 8b 05 50 78 40 00 	mov    0x407850(%rip),%rax        # a14158 <libGL>
  60c908:	48 89 c7             	mov    %rax,%rdi
  60c90b:	e8 d8 3c 00 00       	call   6105e8 <dlsym@plt>
  60c910:	48 89 05 49 78 40 00 	mov    %rax,0x407849(%rip)        # a14160 <gladGetProcAddressPtr>
  60c917:	48 8b 05 42 78 40 00 	mov    0x407842(%rip),%rax        # a14160 <gladGetProcAddressPtr>
  60c91e:	48 83 f8 00          	cmp    $0x0,%rax
  60c922:	0f 95 c0             	setne  %al
  60c925:	0f b6 c0             	movzbl %al,%eax
  60c928:	e9 0a 00 00 00       	jmp    60c937 <open_gl+0xbe>
  60c92d:	e9 74 ff ff ff       	jmp    60c8a6 <open_gl+0x2d>
  60c932:	b8 00 00 00 00       	mov    $0x0,%eax
  60c937:	c9                   	leave
  60c938:	c3                   	ret

000000000060c939 <close_gl>:
  60c939:	55                   	push   %rbp
  60c93a:	48 89 e5             	mov    %rsp,%rbp
  60c93d:	48 81 ec 00 00 00 00 	sub    $0x0,%rsp
  60c944:	48 8b 05 0d 78 40 00 	mov    0x40780d(%rip),%rax        # a14158 <libGL>
  60c94b:	48 83 f8 00          	cmp    $0x0,%rax
  60c94f:	0f 84 20 00 00 00    	je     60c975 <close_gl+0x3c>
  60c955:	48 8b 05 fc 77 40 00 	mov    0x4077fc(%rip),%rax        # a14158 <libGL>
  60c95c:	48 89 c7             	mov    %rax,%rdi
  60c95f:	e8 94 3c 00 00       	call   6105f8 <dlclose@plt>
  60c964:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60c96b:	00 00 00 
  60c96e:	48 89 05 e3 77 40 00 	mov    %rax,0x4077e3(%rip)        # a14158 <libGL>
  60c975:	c9                   	leave
  60c976:	c3                   	ret

000000000060c977 <get_proc>:
  60c977:	55                   	push   %rbp
  60c978:	48 89 e5             	mov    %rsp,%rbp
  60c97b:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60c982:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60c986:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60c98d:	00 00 00 
  60c990:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60c994:	48 8b 05 bd 77 40 00 	mov    0x4077bd(%rip),%rax        # a14158 <libGL>
  60c99b:	48 83 f8 00          	cmp    $0x0,%rax
  60c99f:	0f 85 0f 00 00 00    	jne    60c9b4 <get_proc+0x3d>
  60c9a5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60c9ac:	00 00 00 
  60c9af:	e9 52 00 00 00       	jmp    60ca06 <get_proc+0x8f>
  60c9b4:	48 8b 05 a5 77 40 00 	mov    0x4077a5(%rip),%rax        # a14160 <gladGetProcAddressPtr>
  60c9bb:	48 83 f8 00          	cmp    $0x0,%rax
  60c9bf:	0f 84 15 00 00 00    	je     60c9da <get_proc+0x63>
  60c9c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c9c9:	48 89 c7             	mov    %rax,%rdi
  60c9cc:	4c 8b 1d 8d 77 40 00 	mov    0x40778d(%rip),%r11        # a14160 <gladGetProcAddressPtr>
  60c9d3:	41 ff d3             	call   *%r11
  60c9d6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60c9da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60c9de:	48 83 f8 00          	cmp    $0x0,%rax
  60c9e2:	0f 85 1a 00 00 00    	jne    60ca02 <get_proc+0x8b>
  60c9e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60c9ec:	48 89 c6             	mov    %rax,%rsi
  60c9ef:	48 8b 05 62 77 40 00 	mov    0x407762(%rip),%rax        # a14158 <libGL>
  60c9f6:	48 89 c7             	mov    %rax,%rdi
  60c9f9:	e8 ea 3b 00 00       	call   6105e8 <dlsym@plt>
  60c9fe:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60ca02:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60ca06:	c9                   	leave
  60ca07:	c3                   	ret

000000000060ca08 <gladLoadGL>:
  60ca08:	55                   	push   %rbp
  60ca09:	48 89 e5             	mov    %rsp,%rbp
  60ca0c:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60ca13:	b8 00 00 00 00       	mov    $0x0,%eax
  60ca18:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60ca1b:	e8 59 fe ff ff       	call   60c879 <open_gl>
  60ca20:	83 f8 00             	cmp    $0x0,%eax
  60ca23:	0f 84 17 00 00 00    	je     60ca40 <gladLoadGL+0x38>
  60ca29:	48 8d 05 47 ff ff ff 	lea    -0xb9(%rip),%rax        # 60c977 <get_proc>
  60ca30:	48 89 c7             	mov    %rax,%rdi
  60ca33:	e8 3e 32 00 00       	call   60fc76 <gladLoadGLLoader>
  60ca38:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60ca3b:	e8 f9 fe ff ff       	call   60c939 <close_gl>
  60ca40:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60ca43:	c9                   	leave
  60ca44:	c3                   	ret

000000000060ca45 <get_exts>:
  60ca45:	55                   	push   %rbp
  60ca46:	48 89 e5             	mov    %rsp,%rbp
  60ca49:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60ca50:	8b 05 12 77 40 00    	mov    0x407712(%rip),%eax        # a14168 <max_loaded_major>
  60ca56:	83 f8 03             	cmp    $0x3,%eax
  60ca59:	0f 8d 21 00 00 00    	jge    60ca80 <get_exts+0x3b>
  60ca5f:	b8 03 1f 00 00       	mov    $0x1f03,%eax
  60ca64:	48 89 c7             	mov    %rax,%rdi
  60ca67:	4c 8b 1d 4a 5e 20 00 	mov    0x205e4a(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60ca6e:	4d 8b 1b             	mov    (%r11),%r11
  60ca71:	41 ff d3             	call   *%r11
  60ca74:	48 89 05 9d 6a 40 00 	mov    %rax,0x406a9d(%rip)        # a13518 <exts>
  60ca7b:	e9 45 01 00 00       	jmp    60cbc5 <get_exts+0x180>
  60ca80:	b8 00 00 00 00       	mov    $0x0,%eax
  60ca85:	89 05 95 6a 40 00    	mov    %eax,0x406a95(%rip)        # a13520 <num_exts_i>
  60ca8b:	48 8d 05 8e 6a 40 00 	lea    0x406a8e(%rip),%rax        # a13520 <num_exts_i>
  60ca92:	48 89 c6             	mov    %rax,%rsi
  60ca95:	b8 1d 82 00 00       	mov    $0x821d,%eax
  60ca9a:	48 89 c7             	mov    %rax,%rdi
  60ca9d:	4c 8b 1d f4 5e 20 00 	mov    0x205ef4(%rip),%r11        # 812998 <glad_glGetIntegerv-0x200ff0>
  60caa4:	4d 8b 1b             	mov    (%r11),%r11
  60caa7:	41 ff d3             	call   *%r11
  60caaa:	8b 05 70 6a 40 00    	mov    0x406a70(%rip),%eax        # a13520 <num_exts_i>
  60cab0:	83 f8 00             	cmp    $0x0,%eax
  60cab3:	0f 8e 24 00 00 00    	jle    60cadd <get_exts+0x98>
  60cab9:	8b 05 61 6a 40 00    	mov    0x406a61(%rip),%eax        # a13520 <num_exts_i>
  60cabf:	48 63 c0             	movslq %eax,%rax
  60cac2:	48 c1 e0 03          	shl    $0x3,%rax
  60cac6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60caca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60cace:	48 89 c7             	mov    %rax,%rdi
  60cad1:	e8 32 3b 00 00       	call   610608 <malloc@plt>
  60cad6:	48 89 05 4b 6a 40 00 	mov    %rax,0x406a4b(%rip)        # a13528 <exts_i>
  60cadd:	48 8b 05 44 6a 40 00 	mov    0x406a44(%rip),%rax        # a13528 <exts_i>
  60cae4:	48 83 f8 00          	cmp    $0x0,%rax
  60cae8:	0f 85 0a 00 00 00    	jne    60caf8 <get_exts+0xb3>
  60caee:	b8 00 00 00 00       	mov    $0x0,%eax
  60caf3:	e9 d2 00 00 00       	jmp    60cbca <get_exts+0x185>
  60caf8:	b8 00 00 00 00       	mov    $0x0,%eax
  60cafd:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60cb00:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cb03:	8b 0d 17 6a 40 00    	mov    0x406a17(%rip),%ecx        # a13520 <num_exts_i>
  60cb09:	39 c8                	cmp    %ecx,%eax
  60cb0b:	0f 8d b4 00 00 00    	jge    60cbc5 <get_exts+0x180>
  60cb11:	e9 0d 00 00 00       	jmp    60cb23 <get_exts+0xde>
  60cb16:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cb19:	89 c1                	mov    %eax,%ecx
  60cb1b:	83 c0 01             	add    $0x1,%eax
  60cb1e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60cb21:	eb dd                	jmp    60cb00 <get_exts+0xbb>
  60cb23:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cb26:	48 89 c6             	mov    %rax,%rsi
  60cb29:	b8 03 1f 00 00       	mov    $0x1f03,%eax
  60cb2e:	48 89 c7             	mov    %rax,%rdi
  60cb31:	4c 8b 1d 68 5e 20 00 	mov    0x205e68(%rip),%r11        # 8129a0 <glad_glGetStringi-0x201078>
  60cb38:	4d 8b 1b             	mov    (%r11),%r11
  60cb3b:	41 ff d3             	call   *%r11
  60cb3e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60cb42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60cb46:	48 89 c7             	mov    %rax,%rdi
  60cb49:	e8 ca 3a 00 00       	call   610618 <strlen@plt>
  60cb4e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  60cb52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60cb56:	48 83 c0 01          	add    $0x1,%rax
  60cb5a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60cb5e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60cb62:	48 89 c7             	mov    %rax,%rdi
  60cb65:	e8 9e 3a 00 00       	call   610608 <malloc@plt>
  60cb6a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  60cb6e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60cb72:	48 83 f8 00          	cmp    $0x0,%rax
  60cb76:	0f 84 29 00 00 00    	je     60cba5 <get_exts+0x160>
  60cb7c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60cb80:	48 83 c0 01          	add    $0x1,%rax
  60cb84:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60cb88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60cb8c:	49 89 c2             	mov    %rax,%r10
  60cb8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60cb93:	48 89 c6             	mov    %rax,%rsi
  60cb96:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60cb9a:	48 89 c7             	mov    %rax,%rdi
  60cb9d:	4c 89 d2             	mov    %r10,%rdx
  60cba0:	e8 83 3a 00 00       	call   610628 <memcpy@plt>
  60cba5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cba8:	48 63 c0             	movslq %eax,%rax
  60cbab:	48 c1 e0 03          	shl    $0x3,%rax
  60cbaf:	48 8b 0d 72 69 40 00 	mov    0x406972(%rip),%rcx        # a13528 <exts_i>
  60cbb6:	48 01 c1             	add    %rax,%rcx
  60cbb9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60cbbd:	48 89 01             	mov    %rax,(%rcx)
  60cbc0:	e9 51 ff ff ff       	jmp    60cb16 <get_exts+0xd1>
  60cbc5:	b8 01 00 00 00       	mov    $0x1,%eax
  60cbca:	c9                   	leave
  60cbcb:	c3                   	ret

000000000060cbcc <free_exts>:
  60cbcc:	55                   	push   %rbp
  60cbcd:	48 89 e5             	mov    %rsp,%rbp
  60cbd0:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60cbd7:	48 8b 05 4a 69 40 00 	mov    0x40694a(%rip),%rax        # a13528 <exts_i>
  60cbde:	48 83 f8 00          	cmp    $0x0,%rax
  60cbe2:	0f 84 74 00 00 00    	je     60cc5c <free_exts+0x90>
  60cbe8:	b8 00 00 00 00       	mov    $0x0,%eax
  60cbed:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60cbf0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cbf3:	8b 0d 27 69 40 00    	mov    0x406927(%rip),%ecx        # a13520 <num_exts_i>
  60cbf9:	39 c8                	cmp    %ecx,%eax
  60cbfb:	0f 8d 3b 00 00 00    	jge    60cc3c <free_exts+0x70>
  60cc01:	e9 0d 00 00 00       	jmp    60cc13 <free_exts+0x47>
  60cc06:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cc09:	89 c1                	mov    %eax,%ecx
  60cc0b:	83 c0 01             	add    $0x1,%eax
  60cc0e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60cc11:	eb dd                	jmp    60cbf0 <free_exts+0x24>
  60cc13:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60cc16:	48 63 c0             	movslq %eax,%rax
  60cc19:	48 c1 e0 03          	shl    $0x3,%rax
  60cc1d:	48 8b 0d 04 69 40 00 	mov    0x406904(%rip),%rcx        # a13528 <exts_i>
  60cc24:	48 01 c1             	add    %rax,%rcx
  60cc27:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  60cc2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60cc2f:	48 8b 00             	mov    (%rax),%rax
  60cc32:	48 89 c7             	mov    %rax,%rdi
  60cc35:	e8 fe 39 00 00       	call   610638 <free@plt>
  60cc3a:	eb ca                	jmp    60cc06 <free_exts+0x3a>
  60cc3c:	48 8b 05 e5 68 40 00 	mov    0x4068e5(%rip),%rax        # a13528 <exts_i>
  60cc43:	48 89 c7             	mov    %rax,%rdi
  60cc46:	e8 ed 39 00 00       	call   610638 <free@plt>
  60cc4b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60cc52:	00 00 00 
  60cc55:	48 89 05 cc 68 40 00 	mov    %rax,0x4068cc(%rip)        # a13528 <exts_i>
  60cc5c:	c9                   	leave
  60cc5d:	c3                   	ret

000000000060cc5e <has_ext>:
  60cc5e:	55                   	push   %rbp
  60cc5f:	48 89 e5             	mov    %rsp,%rbp
  60cc62:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  60cc69:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60cc6d:	8b 05 f5 74 40 00    	mov    0x4074f5(%rip),%eax        # a14168 <max_loaded_major>
  60cc73:	83 f8 03             	cmp    $0x3,%eax
  60cc76:	0f 8d d3 00 00 00    	jge    60cd4f <has_ext+0xf1>
  60cc7c:	48 8b 05 95 68 40 00 	mov    0x406895(%rip),%rax        # a13518 <exts>
  60cc83:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60cc87:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60cc8b:	48 83 f8 00          	cmp    $0x0,%rax
  60cc8f:	0f 84 0e 00 00 00    	je     60cca3 <has_ext+0x45>
  60cc95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60cc99:	48 83 f8 00          	cmp    $0x0,%rax
  60cc9d:	0f 85 0a 00 00 00    	jne    60ccad <has_ext+0x4f>
  60cca3:	b8 00 00 00 00       	mov    $0x0,%eax
  60cca8:	e9 51 01 00 00       	jmp    60cdfe <has_ext+0x1a0>
  60ccad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60ccb1:	48 89 c6             	mov    %rax,%rsi
  60ccb4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60ccb8:	48 89 c7             	mov    %rax,%rdi
  60ccbb:	e8 88 39 00 00       	call   610648 <strstr@plt>
  60ccc0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60ccc4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60ccc8:	48 83 f8 00          	cmp    $0x0,%rax
  60cccc:	0f 85 0a 00 00 00    	jne    60ccdc <has_ext+0x7e>
  60ccd2:	b8 00 00 00 00       	mov    $0x0,%eax
  60ccd7:	e9 22 01 00 00       	jmp    60cdfe <has_ext+0x1a0>
  60ccdc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60cce0:	48 89 c7             	mov    %rax,%rdi
  60cce3:	e8 30 39 00 00       	call   610618 <strlen@plt>
  60cce8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60ccec:	48 01 c1             	add    %rax,%rcx
  60ccef:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  60ccf3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60ccf7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  60ccfb:	48 39 c8             	cmp    %rcx,%rax
  60ccfe:	0f 84 14 00 00 00    	je     60cd18 <has_ext+0xba>
  60cd04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60cd08:	48 83 e8 01          	sub    $0x1,%rax
  60cd0c:	0f be 00             	movsbl (%rax),%eax
  60cd0f:	83 f8 20             	cmp    $0x20,%eax
  60cd12:	0f 85 2a 00 00 00    	jne    60cd42 <has_ext+0xe4>
  60cd18:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60cd1c:	0f be 00             	movsbl (%rax),%eax
  60cd1f:	83 f8 20             	cmp    $0x20,%eax
  60cd22:	0f 84 10 00 00 00    	je     60cd38 <has_ext+0xda>
  60cd28:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60cd2c:	0f be 00             	movsbl (%rax),%eax
  60cd2f:	83 f8 00             	cmp    $0x0,%eax
  60cd32:	0f 85 0a 00 00 00    	jne    60cd42 <has_ext+0xe4>
  60cd38:	b8 01 00 00 00       	mov    $0x1,%eax
  60cd3d:	e9 bc 00 00 00       	jmp    60cdfe <has_ext+0x1a0>
  60cd42:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60cd46:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60cd4a:	e9 5e ff ff ff       	jmp    60ccad <has_ext+0x4f>
  60cd4f:	48 8b 05 d2 67 40 00 	mov    0x4067d2(%rip),%rax        # a13528 <exts_i>
  60cd56:	48 83 f8 00          	cmp    $0x0,%rax
  60cd5a:	0f 85 0a 00 00 00    	jne    60cd6a <has_ext+0x10c>
  60cd60:	b8 00 00 00 00       	mov    $0x0,%eax
  60cd65:	e9 94 00 00 00       	jmp    60cdfe <has_ext+0x1a0>
  60cd6a:	b8 00 00 00 00       	mov    $0x0,%eax
  60cd6f:	89 45 dc             	mov    %eax,-0x24(%rbp)
  60cd72:	8b 45 dc             	mov    -0x24(%rbp),%eax
  60cd75:	8b 0d a5 67 40 00    	mov    0x4067a5(%rip),%ecx        # a13520 <num_exts_i>
  60cd7b:	39 c8                	cmp    %ecx,%eax
  60cd7d:	0f 8d 76 00 00 00    	jge    60cdf9 <has_ext+0x19b>
  60cd83:	e9 0d 00 00 00       	jmp    60cd95 <has_ext+0x137>
  60cd88:	8b 45 dc             	mov    -0x24(%rbp),%eax
  60cd8b:	89 c1                	mov    %eax,%ecx
  60cd8d:	83 c0 01             	add    $0x1,%eax
  60cd90:	89 45 dc             	mov    %eax,-0x24(%rbp)
  60cd93:	eb dd                	jmp    60cd72 <has_ext+0x114>
  60cd95:	8b 45 dc             	mov    -0x24(%rbp),%eax
  60cd98:	48 63 c0             	movslq %eax,%rax
  60cd9b:	48 c1 e0 03          	shl    $0x3,%rax
  60cd9f:	48 8b 0d 82 67 40 00 	mov    0x406782(%rip),%rcx        # a13528 <exts_i>
  60cda6:	48 01 c1             	add    %rax,%rcx
  60cda9:	48 8b 09             	mov    (%rcx),%rcx
  60cdac:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  60cdb0:	8b 45 dc             	mov    -0x24(%rbp),%eax
  60cdb3:	48 63 c0             	movslq %eax,%rax
  60cdb6:	48 c1 e0 03          	shl    $0x3,%rax
  60cdba:	48 8b 0d 67 67 40 00 	mov    0x406767(%rip),%rcx        # a13528 <exts_i>
  60cdc1:	48 01 c1             	add    %rax,%rcx
  60cdc4:	48 8b 09             	mov    (%rcx),%rcx
  60cdc7:	48 83 f9 00          	cmp    $0x0,%rcx
  60cdcb:	0f 84 26 00 00 00    	je     60cdf7 <has_ext+0x199>
  60cdd1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60cdd5:	48 89 c6             	mov    %rax,%rsi
  60cdd8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  60cddc:	48 89 c7             	mov    %rax,%rdi
  60cddf:	e8 74 38 00 00       	call   610658 <strcmp@plt>
  60cde4:	83 f8 00             	cmp    $0x0,%eax
  60cde7:	0f 85 0a 00 00 00    	jne    60cdf7 <has_ext+0x199>
  60cded:	b8 01 00 00 00       	mov    $0x1,%eax
  60cdf2:	e9 07 00 00 00       	jmp    60cdfe <has_ext+0x1a0>
  60cdf7:	eb 8f                	jmp    60cd88 <has_ext+0x12a>
  60cdf9:	b8 00 00 00 00       	mov    $0x0,%eax
  60cdfe:	c9                   	leave
  60cdff:	c3                   	ret

000000000060ce00 <load_GL_VERSION_1_0>:
  60ce00:	55                   	push   %rbp
  60ce01:	48 89 e5             	mov    %rsp,%rbp
  60ce04:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60ce0b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60ce0f:	48 8b 05 92 5b 20 00 	mov    0x205b92(%rip),%rax        # 8129a8 <GLAD_GL_VERSION_1_0-0x200b88>
  60ce16:	8b 00                	mov    (%rax),%eax
  60ce18:	83 f8 00             	cmp    $0x0,%eax
  60ce1b:	0f 85 05 00 00 00    	jne    60ce26 <load_GL_VERSION_1_0+0x26>
  60ce21:	e9 10 05 00 00       	jmp    60d336 <load_GL_VERSION_1_0+0x536>
  60ce26:	48 8d 05 c4 3c 20 00 	lea    0x203cc4(%rip),%rax        # 810af1 <L.26>
  60ce2d:	48 89 c7             	mov    %rax,%rdi
  60ce30:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ce34:	41 ff d3             	call   *%r11
  60ce37:	4c 8b 1d 72 5b 20 00 	mov    0x205b72(%rip),%r11        # 8129b0 <glad_glCullFace-0x200d70>
  60ce3e:	49 89 03             	mov    %rax,(%r11)
  60ce41:	48 8d 05 b4 3c 20 00 	lea    0x203cb4(%rip),%rax        # 810afc <L.27>
  60ce48:	48 89 c7             	mov    %rax,%rdi
  60ce4b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ce4f:	41 ff d3             	call   *%r11
  60ce52:	4c 8b 1d 5f 5b 20 00 	mov    0x205b5f(%rip),%r11        # 8129b8 <glad_glFrontFace-0x200ec8>
  60ce59:	49 89 03             	mov    %rax,(%r11)
  60ce5c:	48 8d 05 a5 3c 20 00 	lea    0x203ca5(%rip),%rax        # 810b08 <L.28>
  60ce63:	48 89 c7             	mov    %rax,%rdi
  60ce66:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ce6a:	41 ff d3             	call   *%r11
  60ce6d:	4c 8b 1d 4c 5b 20 00 	mov    0x205b4c(%rip),%r11        # 8129c0 <glad_glHint-0x201108>
  60ce74:	49 89 03             	mov    %rax,(%r11)
  60ce77:	48 8d 05 91 3c 20 00 	lea    0x203c91(%rip),%rax        # 810b0f <L.29>
  60ce7e:	48 89 c7             	mov    %rax,%rdi
  60ce81:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ce85:	41 ff d3             	call   *%r11
  60ce88:	4c 8b 1d 39 5b 20 00 	mov    0x205b39(%rip),%r11        # 8129c8 <glad_glLineWidth-0x201168>
  60ce8f:	49 89 03             	mov    %rax,(%r11)
  60ce92:	48 8d 05 82 3c 20 00 	lea    0x203c82(%rip),%rax        # 810b1b <L.30>
  60ce99:	48 89 c7             	mov    %rax,%rdi
  60ce9c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cea0:	41 ff d3             	call   *%r11
  60cea3:	4c 8b 1d 26 5b 20 00 	mov    0x205b26(%rip),%r11        # 8129d0 <glad_glPointSize-0x201220>
  60ceaa:	49 89 03             	mov    %rax,(%r11)
  60cead:	48 8d 05 73 3c 20 00 	lea    0x203c73(%rip),%rax        # 810b27 <L.31>
  60ceb4:	48 89 c7             	mov    %rax,%rdi
  60ceb7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cebb:	41 ff d3             	call   *%r11
  60cebe:	4c 8b 1d 13 5b 20 00 	mov    0x205b13(%rip),%r11        # 8129d8 <glad_glPolygonMode-0x201220>
  60cec5:	49 89 03             	mov    %rax,(%r11)
  60cec8:	48 8d 05 66 3c 20 00 	lea    0x203c66(%rip),%rax        # 810b35 <L.32>
  60cecf:	48 89 c7             	mov    %rax,%rdi
  60ced2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ced6:	41 ff d3             	call   *%r11
  60ced9:	4c 8b 1d 00 5b 20 00 	mov    0x205b00(%rip),%r11        # 8129e0 <glad_glScissor-0x2012a0>
  60cee0:	49 89 03             	mov    %rax,(%r11)
  60cee3:	48 8d 05 55 3c 20 00 	lea    0x203c55(%rip),%rax        # 810b3f <L.33>
  60ceea:	48 89 c7             	mov    %rax,%rdi
  60ceed:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cef1:	41 ff d3             	call   *%r11
  60cef4:	4c 8b 1d ed 5a 20 00 	mov    0x205aed(%rip),%r11        # 8129e8 <glad_glTexParameterf-0x201368>
  60cefb:	49 89 03             	mov    %rax,(%r11)
  60cefe:	48 8d 05 4a 3c 20 00 	lea    0x203c4a(%rip),%rax        # 810b4f <L.34>
  60cf05:	48 89 c7             	mov    %rax,%rdi
  60cf08:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf0c:	41 ff d3             	call   *%r11
  60cf0f:	4c 8b 1d da 5a 20 00 	mov    0x205ada(%rip),%r11        # 8129f0 <glad_glTexParameterfv-0x201368>
  60cf16:	49 89 03             	mov    %rax,(%r11)
  60cf19:	48 8d 05 40 3c 20 00 	lea    0x203c40(%rip),%rax        # 810b60 <L.35>
  60cf20:	48 89 c7             	mov    %rax,%rdi
  60cf23:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf27:	41 ff d3             	call   *%r11
  60cf2a:	4c 8b 1d c7 5a 20 00 	mov    0x205ac7(%rip),%r11        # 8129f8 <glad_glTexParameteri-0x201368>
  60cf31:	49 89 03             	mov    %rax,(%r11)
  60cf34:	48 8d 05 35 3c 20 00 	lea    0x203c35(%rip),%rax        # 810b70 <L.36>
  60cf3b:	48 89 c7             	mov    %rax,%rdi
  60cf3e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf42:	41 ff d3             	call   *%r11
  60cf45:	4c 8b 1d b4 5a 20 00 	mov    0x205ab4(%rip),%r11        # 812a00 <glad_glTexParameteriv-0x201368>
  60cf4c:	49 89 03             	mov    %rax,(%r11)
  60cf4f:	48 8d 05 2b 3c 20 00 	lea    0x203c2b(%rip),%rax        # 810b81 <L.37>
  60cf56:	48 89 c7             	mov    %rax,%rdi
  60cf59:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf5d:	41 ff d3             	call   *%r11
  60cf60:	4c 8b 1d a1 5a 20 00 	mov    0x205aa1(%rip),%r11        # 812a08 <glad_glTexImage1D-0x201310>
  60cf67:	49 89 03             	mov    %rax,(%r11)
  60cf6a:	48 8d 05 1d 3c 20 00 	lea    0x203c1d(%rip),%rax        # 810b8e <L.38>
  60cf71:	48 89 c7             	mov    %rax,%rdi
  60cf74:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf78:	41 ff d3             	call   *%r11
  60cf7b:	4c 8b 1d 8e 5a 20 00 	mov    0x205a8e(%rip),%r11        # 812a10 <glad_glTexImage2D-0x201310>
  60cf82:	49 89 03             	mov    %rax,(%r11)
  60cf85:	48 8d 05 0f 3c 20 00 	lea    0x203c0f(%rip),%rax        # 810b9b <L.39>
  60cf8c:	48 89 c7             	mov    %rax,%rdi
  60cf8f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cf93:	41 ff d3             	call   *%r11
  60cf96:	4c 8b 1d 7b 5a 20 00 	mov    0x205a7b(%rip),%r11        # 812a18 <glad_glDrawBuffer-0x200da8>
  60cf9d:	49 89 03             	mov    %rax,(%r11)
  60cfa0:	48 8d 05 01 3c 20 00 	lea    0x203c01(%rip),%rax        # 810ba8 <L.40>
  60cfa7:	48 89 c7             	mov    %rax,%rdi
  60cfaa:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cfae:	41 ff d3             	call   *%r11
  60cfb1:	4c 8b 1d d0 59 20 00 	mov    0x2059d0(%rip),%r11        # 812988 <glad_glClear-0x200ca8>
  60cfb8:	49 89 03             	mov    %rax,(%r11)
  60cfbb:	48 8d 05 ee 3b 20 00 	lea    0x203bee(%rip),%rax        # 810bb0 <L.41>
  60cfc2:	48 89 c7             	mov    %rax,%rdi
  60cfc5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cfc9:	41 ff d3             	call   *%r11
  60cfcc:	4c 8b 1d ad 59 20 00 	mov    0x2059ad(%rip),%r11        # 812980 <glad_glClearColor-0x200cd8>
  60cfd3:	49 89 03             	mov    %rax,(%r11)
  60cfd6:	48 8d 05 e0 3b 20 00 	lea    0x203be0(%rip),%rax        # 810bbd <L.42>
  60cfdd:	48 89 c7             	mov    %rax,%rdi
  60cfe0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cfe4:	41 ff d3             	call   *%r11
  60cfe7:	4c 8b 1d 32 5a 20 00 	mov    0x205a32(%rip),%r11        # 812a20 <glad_glClearStencil-0x200c48>
  60cfee:	49 89 03             	mov    %rax,(%r11)
  60cff1:	48 8d 05 d4 3b 20 00 	lea    0x203bd4(%rip),%rax        # 810bcc <L.43>
  60cff8:	48 89 c7             	mov    %rax,%rdi
  60cffb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60cfff:	41 ff d3             	call   *%r11
  60d002:	4c 8b 1d 1f 5a 20 00 	mov    0x205a1f(%rip),%r11        # 812a28 <glad_glClearDepth-0x200c38>
  60d009:	49 89 03             	mov    %rax,(%r11)
  60d00c:	48 8d 05 c6 3b 20 00 	lea    0x203bc6(%rip),%rax        # 810bd9 <L.44>
  60d013:	48 89 c7             	mov    %rax,%rdi
  60d016:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d01a:	41 ff d3             	call   *%r11
  60d01d:	4c 8b 1d 0c 5a 20 00 	mov    0x205a0c(%rip),%r11        # 812a30 <glad_glStencilMask-0x201280>
  60d024:	49 89 03             	mov    %rax,(%r11)
  60d027:	48 8d 05 b9 3b 20 00 	lea    0x203bb9(%rip),%rax        # 810be7 <L.45>
  60d02e:	48 89 c7             	mov    %rax,%rdi
  60d031:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d035:	41 ff d3             	call   *%r11
  60d038:	4c 8b 1d f9 59 20 00 	mov    0x2059f9(%rip),%r11        # 812a38 <glad_glColorMask-0x200c40>
  60d03f:	49 89 03             	mov    %rax,(%r11)
  60d042:	48 8d 05 aa 3b 20 00 	lea    0x203baa(%rip),%rax        # 810bf3 <L.46>
  60d049:	48 89 c7             	mov    %rax,%rdi
  60d04c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d050:	41 ff d3             	call   *%r11
  60d053:	4c 8b 1d e6 59 20 00 	mov    0x2059e6(%rip),%r11        # 812a40 <glad_glDepthMask-0x200d40>
  60d05a:	49 89 03             	mov    %rax,(%r11)
  60d05d:	48 8d 05 9b 3b 20 00 	lea    0x203b9b(%rip),%rax        # 810bff <L.47>
  60d064:	48 89 c7             	mov    %rax,%rdi
  60d067:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d06b:	41 ff d3             	call   *%r11
  60d06e:	4c 8b 1d d3 59 20 00 	mov    0x2059d3(%rip),%r11        # 812a48 <glad_glDisable-0x200d50>
  60d075:	49 89 03             	mov    %rax,(%r11)
  60d078:	48 8d 05 8a 3b 20 00 	lea    0x203b8a(%rip),%rax        # 810c09 <L.48>
  60d07f:	48 89 c7             	mov    %rax,%rdi
  60d082:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d086:	41 ff d3             	call   *%r11
  60d089:	4c 8b 1d c0 59 20 00 	mov    0x2059c0(%rip),%r11        # 812a50 <glad_glEnable-0x200db0>
  60d090:	49 89 03             	mov    %rax,(%r11)
  60d093:	48 8d 05 78 3b 20 00 	lea    0x203b78(%rip),%rax        # 810c12 <L.49>
  60d09a:	48 89 c7             	mov    %rax,%rdi
  60d09d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d0a1:	41 ff d3             	call   *%r11
  60d0a4:	4c 8b 1d ad 59 20 00 	mov    0x2059ad(%rip),%r11        # 812a58 <glad_glFinish-0x200de0>
  60d0ab:	49 89 03             	mov    %rax,(%r11)
  60d0ae:	48 8d 05 66 3b 20 00 	lea    0x203b66(%rip),%rax        # 810c1b <L.50>
  60d0b5:	48 89 c7             	mov    %rax,%rdi
  60d0b8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d0bc:	41 ff d3             	call   *%r11
  60d0bf:	4c 8b 1d 9a 59 20 00 	mov    0x20599a(%rip),%r11        # 812a60 <glad_glFlush-0x200de0>
  60d0c6:	49 89 03             	mov    %rax,(%r11)
  60d0c9:	48 8d 05 53 3b 20 00 	lea    0x203b53(%rip),%rax        # 810c23 <L.51>
  60d0d0:	48 89 c7             	mov    %rax,%rdi
  60d0d3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d0d7:	41 ff d3             	call   *%r11
  60d0da:	4c 8b 1d 87 59 20 00 	mov    0x205987(%rip),%r11        # 812a68 <glad_glBlendFunc-0x200b90>
  60d0e1:	49 89 03             	mov    %rax,(%r11)
  60d0e4:	48 8d 05 44 3b 20 00 	lea    0x203b44(%rip),%rax        # 810c2f <L.52>
  60d0eb:	48 89 c7             	mov    %rax,%rdi
  60d0ee:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d0f2:	41 ff d3             	call   *%r11
  60d0f5:	4c 8b 1d 74 59 20 00 	mov    0x205974(%rip),%r11        # 812a70 <glad_glLogicOp-0x2010d0>
  60d0fc:	49 89 03             	mov    %rax,(%r11)
  60d0ff:	48 8d 05 33 3b 20 00 	lea    0x203b33(%rip),%rax        # 810c39 <L.53>
  60d106:	48 89 c7             	mov    %rax,%rdi
  60d109:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d10d:	41 ff d3             	call   *%r11
  60d110:	4c 8b 1d 61 59 20 00 	mov    0x205961(%rip),%r11        # 812a78 <glad_glStencilFunc-0x201228>
  60d117:	49 89 03             	mov    %rax,(%r11)
  60d11a:	48 8d 05 26 3b 20 00 	lea    0x203b26(%rip),%rax        # 810c47 <L.54>
  60d121:	48 89 c7             	mov    %rax,%rdi
  60d124:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d128:	41 ff d3             	call   *%r11
  60d12b:	4c 8b 1d 4e 59 20 00 	mov    0x20594e(%rip),%r11        # 812a80 <glad_glStencilOp-0x201240>
  60d132:	49 89 03             	mov    %rax,(%r11)
  60d135:	48 8d 05 17 3b 20 00 	lea    0x203b17(%rip),%rax        # 810c53 <L.55>
  60d13c:	48 89 c7             	mov    %rax,%rdi
  60d13f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d143:	41 ff d3             	call   *%r11
  60d146:	4c 8b 1d 3b 59 20 00 	mov    0x20593b(%rip),%r11        # 812a88 <glad_glDepthFunc-0x200cf0>
  60d14d:	49 89 03             	mov    %rax,(%r11)
  60d150:	48 8d 05 08 3b 20 00 	lea    0x203b08(%rip),%rax        # 810c5f <L.56>
  60d157:	48 89 c7             	mov    %rax,%rdi
  60d15a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d15e:	41 ff d3             	call   *%r11
  60d161:	4c 8b 1d 28 59 20 00 	mov    0x205928(%rip),%r11        # 812a90 <glad_glPixelStoref-0x201130>
  60d168:	49 89 03             	mov    %rax,(%r11)
  60d16b:	48 8d 05 fb 3a 20 00 	lea    0x203afb(%rip),%rax        # 810c6d <L.57>
  60d172:	48 89 c7             	mov    %rax,%rdi
  60d175:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d179:	41 ff d3             	call   *%r11
  60d17c:	4c 8b 1d 15 59 20 00 	mov    0x205915(%rip),%r11        # 812a98 <glad_glPixelStorei-0x201130>
  60d183:	49 89 03             	mov    %rax,(%r11)
  60d186:	48 8d 05 ee 3a 20 00 	lea    0x203aee(%rip),%rax        # 810c7b <L.58>
  60d18d:	48 89 c7             	mov    %rax,%rdi
  60d190:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d194:	41 ff d3             	call   *%r11
  60d197:	4c 8b 1d 02 59 20 00 	mov    0x205902(%rip),%r11        # 812aa0 <glad_glReadBuffer-0x201180>
  60d19e:	49 89 03             	mov    %rax,(%r11)
  60d1a1:	48 8d 05 e0 3a 20 00 	lea    0x203ae0(%rip),%rax        # 810c88 <L.59>
  60d1a8:	48 89 c7             	mov    %rax,%rdi
  60d1ab:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d1af:	41 ff d3             	call   *%r11
  60d1b2:	4c 8b 1d ef 58 20 00 	mov    0x2058ef(%rip),%r11        # 812aa8 <glad_glReadPixels-0x201180>
  60d1b9:	49 89 03             	mov    %rax,(%r11)
  60d1bc:	48 8d 05 d2 3a 20 00 	lea    0x203ad2(%rip),%rax        # 810c95 <L.60>
  60d1c3:	48 89 c7             	mov    %rax,%rdi
  60d1c6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d1ca:	41 ff d3             	call   *%r11
  60d1cd:	4c 8b 1d dc 58 20 00 	mov    0x2058dc(%rip),%r11        # 812ab0 <glad_glGetBooleanv-0x200e60>
  60d1d4:	49 89 03             	mov    %rax,(%r11)
  60d1d7:	48 8d 05 c5 3a 20 00 	lea    0x203ac5(%rip),%rax        # 810ca3 <L.61>
  60d1de:	48 89 c7             	mov    %rax,%rdi
  60d1e1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d1e5:	41 ff d3             	call   *%r11
  60d1e8:	4c 8b 1d c9 58 20 00 	mov    0x2058c9(%rip),%r11        # 812ab8 <glad_glGetDoublev-0x200e88>
  60d1ef:	49 89 03             	mov    %rax,(%r11)
  60d1f2:	48 8d 05 b7 3a 20 00 	lea    0x203ab7(%rip),%rax        # 810cb0 <L.62>
  60d1f9:	48 89 c7             	mov    %rax,%rdi
  60d1fc:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d200:	41 ff d3             	call   *%r11
  60d203:	4c 8b 1d b6 58 20 00 	mov    0x2058b6(%rip),%r11        # 812ac0 <glad_glGetError-0x200e88>
  60d20a:	49 89 03             	mov    %rax,(%r11)
  60d20d:	48 8d 05 a7 3a 20 00 	lea    0x203aa7(%rip),%rax        # 810cbb <L.63>
  60d214:	48 89 c7             	mov    %rax,%rdi
  60d217:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d21b:	41 ff d3             	call   *%r11
  60d21e:	4c 8b 1d a3 58 20 00 	mov    0x2058a3(%rip),%r11        # 812ac8 <glad_glGetFloatv-0x200e88>
  60d225:	49 89 03             	mov    %rax,(%r11)
  60d228:	48 8d 05 98 3a 20 00 	lea    0x203a98(%rip),%rax        # 810cc7 <L.64>
  60d22f:	48 89 c7             	mov    %rax,%rdi
  60d232:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d236:	41 ff d3             	call   *%r11
  60d239:	4c 8b 1d 58 57 20 00 	mov    0x205758(%rip),%r11        # 812998 <glad_glGetIntegerv-0x200ff0>
  60d240:	49 89 03             	mov    %rax,(%r11)
  60d243:	48 8d 05 8b 3a 20 00 	lea    0x203a8b(%rip),%rax        # 810cd5 <L.65>
  60d24a:	48 89 c7             	mov    %rax,%rdi
  60d24d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d251:	41 ff d3             	call   *%r11
  60d254:	4c 8b 1d 5d 56 20 00 	mov    0x20565d(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60d25b:	49 89 03             	mov    %rax,(%r11)
  60d25e:	48 8d 05 7c 3a 20 00 	lea    0x203a7c(%rip),%rax        # 810ce1 <L.66>
  60d265:	48 89 c7             	mov    %rax,%rdi
  60d268:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d26c:	41 ff d3             	call   *%r11
  60d26f:	4c 8b 1d 5a 58 20 00 	mov    0x20585a(%rip),%r11        # 812ad0 <glad_glGetTexImage-0x200f58>
  60d276:	49 89 03             	mov    %rax,(%r11)
  60d279:	48 8d 05 6f 3a 20 00 	lea    0x203a6f(%rip),%rax        # 810cef <L.67>
  60d280:	48 89 c7             	mov    %rax,%rdi
  60d283:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d287:	41 ff d3             	call   *%r11
  60d28a:	4c 8b 1d 47 58 20 00 	mov    0x205847(%rip),%r11        # 812ad8 <glad_glGetTexParameterfv-0x200f78>
  60d291:	49 89 03             	mov    %rax,(%r11)
  60d294:	48 8d 05 68 3a 20 00 	lea    0x203a68(%rip),%rax        # 810d03 <L.68>
  60d29b:	48 89 c7             	mov    %rax,%rdi
  60d29e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d2a2:	41 ff d3             	call   *%r11
  60d2a5:	4c 8b 1d 34 58 20 00 	mov    0x205834(%rip),%r11        # 812ae0 <glad_glGetTexParameteriv-0x200f78>
  60d2ac:	49 89 03             	mov    %rax,(%r11)
  60d2af:	48 8d 05 61 3a 20 00 	lea    0x203a61(%rip),%rax        # 810d17 <L.69>
  60d2b6:	48 89 c7             	mov    %rax,%rdi
  60d2b9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d2bd:	41 ff d3             	call   *%r11
  60d2c0:	4c 8b 1d 21 58 20 00 	mov    0x205821(%rip),%r11        # 812ae8 <glad_glGetTexLevelParameterfv-0x200f48>
  60d2c7:	49 89 03             	mov    %rax,(%r11)
  60d2ca:	48 8d 05 5f 3a 20 00 	lea    0x203a5f(%rip),%rax        # 810d30 <L.70>
  60d2d1:	48 89 c7             	mov    %rax,%rdi
  60d2d4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d2d8:	41 ff d3             	call   *%r11
  60d2db:	4c 8b 1d 0e 58 20 00 	mov    0x20580e(%rip),%r11        # 812af0 <glad_glGetTexLevelParameteriv-0x200f48>
  60d2e2:	49 89 03             	mov    %rax,(%r11)
  60d2e5:	48 8d 05 5d 3a 20 00 	lea    0x203a5d(%rip),%rax        # 810d49 <L.71>
  60d2ec:	48 89 c7             	mov    %rax,%rdi
  60d2ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d2f3:	41 ff d3             	call   *%r11
  60d2f6:	4c 8b 1d fb 57 20 00 	mov    0x2057fb(%rip),%r11        # 812af8 <glad_glIsEnabled-0x200fe0>
  60d2fd:	49 89 03             	mov    %rax,(%r11)
  60d300:	48 8d 05 4e 3a 20 00 	lea    0x203a4e(%rip),%rax        # 810d55 <L.72>
  60d307:	48 89 c7             	mov    %rax,%rdi
  60d30a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d30e:	41 ff d3             	call   *%r11
  60d311:	4c 8b 1d e8 57 20 00 	mov    0x2057e8(%rip),%r11        # 812b00 <glad_glDepthRange-0x200c88>
  60d318:	49 89 03             	mov    %rax,(%r11)
  60d31b:	48 8d 05 40 3a 20 00 	lea    0x203a40(%rip),%rax        # 810d62 <L.73>
  60d322:	48 89 c7             	mov    %rax,%rdi
  60d325:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d329:	41 ff d3             	call   *%r11
  60d32c:	4c 8b 1d d5 57 20 00 	mov    0x2057d5(%rip),%r11        # 812b08 <glad_glViewport-0x2015f8>
  60d333:	49 89 03             	mov    %rax,(%r11)
  60d336:	c9                   	leave
  60d337:	c3                   	ret

000000000060d338 <load_GL_VERSION_1_1>:
  60d338:	55                   	push   %rbp
  60d339:	48 89 e5             	mov    %rsp,%rbp
  60d33c:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d343:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d347:	48 8b 05 c2 57 20 00 	mov    0x2057c2(%rip),%rax        # 812b10 <GLAD_GL_VERSION_1_1-0x200a24>
  60d34e:	8b 00                	mov    (%rax),%eax
  60d350:	83 f8 00             	cmp    $0x0,%eax
  60d353:	0f 85 05 00 00 00    	jne    60d35e <load_GL_VERSION_1_1+0x26>
  60d359:	e9 5f 01 00 00       	jmp    60d4bd <load_GL_VERSION_1_1+0x185>
  60d35e:	48 8d 05 08 3a 20 00 	lea    0x203a08(%rip),%rax        # 810d6d <L.74>
  60d365:	48 89 c7             	mov    %rax,%rdi
  60d368:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d36c:	41 ff d3             	call   *%r11
  60d36f:	4c 8b 1d b2 55 20 00 	mov    0x2055b2(%rip),%r11        # 812928 <glad_glDrawArrays-0x200e88>
  60d376:	49 89 03             	mov    %rax,(%r11)
  60d379:	48 8d 05 fa 39 20 00 	lea    0x2039fa(%rip),%rax        # 810d7a <L.75>
  60d380:	48 89 c7             	mov    %rax,%rdi
  60d383:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d387:	41 ff d3             	call   *%r11
  60d38a:	4c 8b 1d 87 57 20 00 	mov    0x205787(%rip),%r11        # 812b18 <glad_glDrawElements-0x200cb8>
  60d391:	49 89 03             	mov    %rax,(%r11)
  60d394:	48 8d 05 ee 39 20 00 	lea    0x2039ee(%rip),%rax        # 810d89 <L.76>
  60d39b:	48 89 c7             	mov    %rax,%rdi
  60d39e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d3a2:	41 ff d3             	call   *%r11
  60d3a5:	4c 8b 1d 74 57 20 00 	mov    0x205774(%rip),%r11        # 812b20 <glad_glPolygonOffset-0x2010e0>
  60d3ac:	49 89 03             	mov    %rax,(%r11)
  60d3af:	48 8d 05 e3 39 20 00 	lea    0x2039e3(%rip),%rax        # 810d99 <L.77>
  60d3b6:	48 89 c7             	mov    %rax,%rdi
  60d3b9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d3bd:	41 ff d3             	call   *%r11
  60d3c0:	4c 8b 1d 61 57 20 00 	mov    0x205761(%rip),%r11        # 812b28 <glad_glCopyTexImage1D-0x200bc0>
  60d3c7:	49 89 03             	mov    %rax,(%r11)
  60d3ca:	48 8d 05 d9 39 20 00 	lea    0x2039d9(%rip),%rax        # 810daa <L.78>
  60d3d1:	48 89 c7             	mov    %rax,%rdi
  60d3d4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d3d8:	41 ff d3             	call   *%r11
  60d3db:	4c 8b 1d 4e 57 20 00 	mov    0x20574e(%rip),%r11        # 812b30 <glad_glCopyTexImage2D-0x200bc0>
  60d3e2:	49 89 03             	mov    %rax,(%r11)
  60d3e5:	48 8d 05 cf 39 20 00 	lea    0x2039cf(%rip),%rax        # 810dbb <L.79>
  60d3ec:	48 89 c7             	mov    %rax,%rdi
  60d3ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d3f3:	41 ff d3             	call   *%r11
  60d3f6:	4c 8b 1d 3b 57 20 00 	mov    0x20573b(%rip),%r11        # 812b38 <glad_glCopyTexSubImage1D-0x200bc0>
  60d3fd:	49 89 03             	mov    %rax,(%r11)
  60d400:	48 8d 05 c8 39 20 00 	lea    0x2039c8(%rip),%rax        # 810dcf <L.80>
  60d407:	48 89 c7             	mov    %rax,%rdi
  60d40a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d40e:	41 ff d3             	call   *%r11
  60d411:	4c 8b 1d 28 57 20 00 	mov    0x205728(%rip),%r11        # 812b40 <glad_glCopyTexSubImage2D-0x200bc0>
  60d418:	49 89 03             	mov    %rax,(%r11)
  60d41b:	48 8d 05 c1 39 20 00 	lea    0x2039c1(%rip),%rax        # 810de3 <L.81>
  60d422:	48 89 c7             	mov    %rax,%rdi
  60d425:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d429:	41 ff d3             	call   *%r11
  60d42c:	4c 8b 1d 15 57 20 00 	mov    0x205715(%rip),%r11        # 812b48 <glad_glTexSubImage1D-0x201228>
  60d433:	49 89 03             	mov    %rax,(%r11)
  60d436:	48 8d 05 b6 39 20 00 	lea    0x2039b6(%rip),%rax        # 810df3 <L.82>
  60d43d:	48 89 c7             	mov    %rax,%rdi
  60d440:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d444:	41 ff d3             	call   *%r11
  60d447:	4c 8b 1d 02 57 20 00 	mov    0x205702(%rip),%r11        # 812b50 <glad_glTexSubImage2D-0x201228>
  60d44e:	49 89 03             	mov    %rax,(%r11)
  60d451:	48 8d 05 ab 39 20 00 	lea    0x2039ab(%rip),%rax        # 810e03 <L.83>
  60d458:	48 89 c7             	mov    %rax,%rdi
  60d45b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d45f:	41 ff d3             	call   *%r11
  60d462:	4c 8b 1d ef 56 20 00 	mov    0x2056ef(%rip),%r11        # 812b58 <glad_glBindTexture-0x200a78>
  60d469:	49 89 03             	mov    %rax,(%r11)
  60d46c:	48 8d 05 9e 39 20 00 	lea    0x20399e(%rip),%rax        # 810e11 <L.84>
  60d473:	48 89 c7             	mov    %rax,%rdi
  60d476:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d47a:	41 ff d3             	call   *%r11
  60d47d:	4c 8b 1d dc 56 20 00 	mov    0x2056dc(%rip),%r11        # 812b60 <glad_glDeleteTextures-0x200c08>
  60d484:	49 89 03             	mov    %rax,(%r11)
  60d487:	48 8d 05 94 39 20 00 	lea    0x203994(%rip),%rax        # 810e22 <L.85>
  60d48e:	48 89 c7             	mov    %rax,%rdi
  60d491:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d495:	41 ff d3             	call   *%r11
  60d498:	4c 8b 1d c9 56 20 00 	mov    0x2056c9(%rip),%r11        # 812b68 <glad_glGenTextures-0x200d48>
  60d49f:	49 89 03             	mov    %rax,(%r11)
  60d4a2:	48 8d 05 87 39 20 00 	lea    0x203987(%rip),%rax        # 810e30 <L.86>
  60d4a9:	48 89 c7             	mov    %rax,%rdi
  60d4ac:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d4b0:	41 ff d3             	call   *%r11
  60d4b3:	4c 8b 1d b6 56 20 00 	mov    0x2056b6(%rip),%r11        # 812b70 <glad_glIsTexture-0x200fb0>
  60d4ba:	49 89 03             	mov    %rax,(%r11)
  60d4bd:	c9                   	leave
  60d4be:	c3                   	ret

000000000060d4bf <load_GL_VERSION_1_2>:
  60d4bf:	55                   	push   %rbp
  60d4c0:	48 89 e5             	mov    %rsp,%rbp
  60d4c3:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d4ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d4ce:	48 8b 05 a3 56 20 00 	mov    0x2056a3(%rip),%rax        # 812b78 <GLAD_GL_VERSION_1_2-0x2009c0>
  60d4d5:	8b 00                	mov    (%rax),%eax
  60d4d7:	83 f8 00             	cmp    $0x0,%eax
  60d4da:	0f 85 05 00 00 00    	jne    60d4e5 <load_GL_VERSION_1_2+0x26>
  60d4e0:	e9 6c 00 00 00       	jmp    60d551 <load_GL_VERSION_1_2+0x92>
  60d4e5:	48 8d 05 50 39 20 00 	lea    0x203950(%rip),%rax        # 810e3c <L.87>
  60d4ec:	48 89 c7             	mov    %rax,%rdi
  60d4ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d4f3:	41 ff d3             	call   *%r11
  60d4f6:	4c 8b 1d 83 56 20 00 	mov    0x205683(%rip),%r11        # 812b80 <glad_glDrawRangeElements-0x200c70>
  60d4fd:	49 89 03             	mov    %rax,(%r11)
  60d500:	48 8d 05 49 39 20 00 	lea    0x203949(%rip),%rax        # 810e50 <L.88>
  60d507:	48 89 c7             	mov    %rax,%rdi
  60d50a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d50e:	41 ff d3             	call   *%r11
  60d511:	4c 8b 1d 70 56 20 00 	mov    0x205670(%rip),%r11        # 812b88 <glad_glTexImage3D-0x2011a8>
  60d518:	49 89 03             	mov    %rax,(%r11)
  60d51b:	48 8d 05 3b 39 20 00 	lea    0x20393b(%rip),%rax        # 810e5d <L.89>
  60d522:	48 89 c7             	mov    %rax,%rdi
  60d525:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d529:	41 ff d3             	call   *%r11
  60d52c:	4c 8b 1d 5d 56 20 00 	mov    0x20565d(%rip),%r11        # 812b90 <glad_glTexSubImage3D-0x2011f0>
  60d533:	49 89 03             	mov    %rax,(%r11)
  60d536:	48 8d 05 30 39 20 00 	lea    0x203930(%rip),%rax        # 810e6d <L.90>
  60d53d:	48 89 c7             	mov    %rax,%rdi
  60d540:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d544:	41 ff d3             	call   *%r11
  60d547:	4c 8b 1d 4a 56 20 00 	mov    0x20564a(%rip),%r11        # 812b98 <glad_glCopyTexSubImage3D-0x200b70>
  60d54e:	49 89 03             	mov    %rax,(%r11)
  60d551:	c9                   	leave
  60d552:	c3                   	ret

000000000060d553 <load_GL_VERSION_1_3>:
  60d553:	55                   	push   %rbp
  60d554:	48 89 e5             	mov    %rsp,%rbp
  60d557:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d55e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d562:	48 8b 05 37 56 20 00 	mov    0x205637(%rip),%rax        # 812ba0 <GLAD_GL_VERSION_1_3-0x20099c>
  60d569:	8b 00                	mov    (%rax),%eax
  60d56b:	83 f8 00             	cmp    $0x0,%eax
  60d56e:	0f 85 05 00 00 00    	jne    60d579 <load_GL_VERSION_1_3+0x26>
  60d574:	e9 f3 00 00 00       	jmp    60d66c <load_GL_VERSION_1_3+0x119>
  60d579:	48 8d 05 01 39 20 00 	lea    0x203901(%rip),%rax        # 810e81 <L.91>
  60d580:	48 89 c7             	mov    %rax,%rdi
  60d583:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d587:	41 ff d3             	call   *%r11
  60d58a:	4c 8b 1d 17 56 20 00 	mov    0x205617(%rip),%r11        # 812ba8 <glad_glActiveTexture-0x2009b8>
  60d591:	49 89 03             	mov    %rax,(%r11)
  60d594:	48 8d 05 f6 38 20 00 	lea    0x2038f6(%rip),%rax        # 810e91 <L.92>
  60d59b:	48 89 c7             	mov    %rax,%rdi
  60d59e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d5a2:	41 ff d3             	call   *%r11
  60d5a5:	4c 8b 1d 04 56 20 00 	mov    0x205604(%rip),%r11        # 812bb0 <glad_glSampleCoverage-0x201090>
  60d5ac:	49 89 03             	mov    %rax,(%r11)
  60d5af:	48 8d 05 ec 38 20 00 	lea    0x2038ec(%rip),%rax        # 810ea2 <L.93>
  60d5b6:	48 89 c7             	mov    %rax,%rdi
  60d5b9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d5bd:	41 ff d3             	call   *%r11
  60d5c0:	4c 8b 1d f1 55 20 00 	mov    0x2055f1(%rip),%r11        # 812bb8 <glad_glCompressedTexImage3D-0x200b08>
  60d5c7:	49 89 03             	mov    %rax,(%r11)
  60d5ca:	48 8d 05 e8 38 20 00 	lea    0x2038e8(%rip),%rax        # 810eb9 <L.94>
  60d5d1:	48 89 c7             	mov    %rax,%rdi
  60d5d4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d5d8:	41 ff d3             	call   *%r11
  60d5db:	4c 8b 1d de 55 20 00 	mov    0x2055de(%rip),%r11        # 812bc0 <glad_glCompressedTexImage2D-0x200af8>
  60d5e2:	49 89 03             	mov    %rax,(%r11)
  60d5e5:	48 8d 05 e4 38 20 00 	lea    0x2038e4(%rip),%rax        # 810ed0 <L.95>
  60d5ec:	48 89 c7             	mov    %rax,%rdi
  60d5ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d5f3:	41 ff d3             	call   *%r11
  60d5f6:	4c 8b 1d cb 55 20 00 	mov    0x2055cb(%rip),%r11        # 812bc8 <glad_glCompressedTexImage1D-0x200ae8>
  60d5fd:	49 89 03             	mov    %rax,(%r11)
  60d600:	48 8d 05 e0 38 20 00 	lea    0x2038e0(%rip),%rax        # 810ee7 <L.96>
  60d607:	48 89 c7             	mov    %rax,%rdi
  60d60a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d60e:	41 ff d3             	call   *%r11
  60d611:	4c 8b 1d b8 55 20 00 	mov    0x2055b8(%rip),%r11        # 812bd0 <glad_glCompressedTexSubImage3D-0x200b08>
  60d618:	49 89 03             	mov    %rax,(%r11)
  60d61b:	48 8d 05 df 38 20 00 	lea    0x2038df(%rip),%rax        # 810f01 <L.97>
  60d622:	48 89 c7             	mov    %rax,%rdi
  60d625:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d629:	41 ff d3             	call   *%r11
  60d62c:	4c 8b 1d a5 55 20 00 	mov    0x2055a5(%rip),%r11        # 812bd8 <glad_glCompressedTexSubImage2D-0x200af8>
  60d633:	49 89 03             	mov    %rax,(%r11)
  60d636:	48 8d 05 de 38 20 00 	lea    0x2038de(%rip),%rax        # 810f1b <L.98>
  60d63d:	48 89 c7             	mov    %rax,%rdi
  60d640:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d644:	41 ff d3             	call   *%r11
  60d647:	4c 8b 1d 92 55 20 00 	mov    0x205592(%rip),%r11        # 812be0 <glad_glCompressedTexSubImage1D-0x200ae8>
  60d64e:	49 89 03             	mov    %rax,(%r11)
  60d651:	48 8d 05 dd 38 20 00 	lea    0x2038dd(%rip),%rax        # 810f35 <L.99>
  60d658:	48 89 c7             	mov    %rax,%rdi
  60d65b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d65f:	41 ff d3             	call   *%r11
  60d662:	4c 8b 1d 7f 55 20 00 	mov    0x20557f(%rip),%r11        # 812be8 <glad_glGetCompressedTexImage-0x200d50>
  60d669:	49 89 03             	mov    %rax,(%r11)
  60d66c:	c9                   	leave
  60d66d:	c3                   	ret

000000000060d66e <load_GL_VERSION_1_4>:
  60d66e:	55                   	push   %rbp
  60d66f:	48 89 e5             	mov    %rsp,%rbp
  60d672:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d679:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d67d:	48 8b 05 6c 55 20 00 	mov    0x20556c(%rip),%rax        # 812bf0 <GLAD_GL_VERSION_1_4-0x200950>
  60d684:	8b 00                	mov    (%rax),%eax
  60d686:	83 f8 00             	cmp    $0x0,%eax
  60d689:	0f 85 05 00 00 00    	jne    60d694 <load_GL_VERSION_1_4+0x26>
  60d68f:	e9 f3 00 00 00       	jmp    60d787 <load_GL_VERSION_1_4+0x119>
  60d694:	48 8d 05 b2 38 20 00 	lea    0x2038b2(%rip),%rax        # 810f4d <L.100>
  60d69b:	48 89 c7             	mov    %rax,%rdi
  60d69e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d6a2:	41 ff d3             	call   *%r11
  60d6a5:	4c 8b 1d 4c 55 20 00 	mov    0x20554c(%rip),%r11        # 812bf8 <glad_glBlendFuncSeparate-0x200a08>
  60d6ac:	49 89 03             	mov    %rax,(%r11)
  60d6af:	48 8d 05 ab 38 20 00 	lea    0x2038ab(%rip),%rax        # 810f61 <L.101>
  60d6b6:	48 89 c7             	mov    %rax,%rdi
  60d6b9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d6bd:	41 ff d3             	call   *%r11
  60d6c0:	4c 8b 1d 39 55 20 00 	mov    0x205539(%rip),%r11        # 812c00 <glad_glMultiDrawArrays-0x200f58>
  60d6c7:	49 89 03             	mov    %rax,(%r11)
  60d6ca:	48 8d 05 a2 38 20 00 	lea    0x2038a2(%rip),%rax        # 810f73 <L.102>
  60d6d1:	48 89 c7             	mov    %rax,%rdi
  60d6d4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d6d8:	41 ff d3             	call   *%r11
  60d6db:	4c 8b 1d 26 55 20 00 	mov    0x205526(%rip),%r11        # 812c08 <glad_glMultiDrawElements-0x200f58>
  60d6e2:	49 89 03             	mov    %rax,(%r11)
  60d6e5:	48 8d 05 9b 38 20 00 	lea    0x20389b(%rip),%rax        # 810f87 <L.103>
  60d6ec:	48 89 c7             	mov    %rax,%rdi
  60d6ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d6f3:	41 ff d3             	call   *%r11
  60d6f6:	4c 8b 1d 13 55 20 00 	mov    0x205513(%rip),%r11        # 812c10 <glad_glPointParameterf-0x200fc0>
  60d6fd:	49 89 03             	mov    %rax,(%r11)
  60d700:	48 8d 05 92 38 20 00 	lea    0x203892(%rip),%rax        # 810f99 <L.104>
  60d707:	48 89 c7             	mov    %rax,%rdi
  60d70a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d70e:	41 ff d3             	call   *%r11
  60d711:	4c 8b 1d 00 55 20 00 	mov    0x205500(%rip),%r11        # 812c18 <glad_glPointParameterfv-0x200fc0>
  60d718:	49 89 03             	mov    %rax,(%r11)
  60d71b:	48 8d 05 8a 38 20 00 	lea    0x20388a(%rip),%rax        # 810fac <L.105>
  60d722:	48 89 c7             	mov    %rax,%rdi
  60d725:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d729:	41 ff d3             	call   *%r11
  60d72c:	4c 8b 1d ed 54 20 00 	mov    0x2054ed(%rip),%r11        # 812c20 <glad_glPointParameteri-0x200fc0>
  60d733:	49 89 03             	mov    %rax,(%r11)
  60d736:	48 8d 05 81 38 20 00 	lea    0x203881(%rip),%rax        # 810fbe <L.106>
  60d73d:	48 89 c7             	mov    %rax,%rdi
  60d740:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d744:	41 ff d3             	call   *%r11
  60d747:	4c 8b 1d da 54 20 00 	mov    0x2054da(%rip),%r11        # 812c28 <glad_glPointParameteriv-0x200fc0>
  60d74e:	49 89 03             	mov    %rax,(%r11)
  60d751:	48 8d 05 79 38 20 00 	lea    0x203879(%rip),%rax        # 810fd1 <L.107>
  60d758:	48 89 c7             	mov    %rax,%rdi
  60d75b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d75f:	41 ff d3             	call   *%r11
  60d762:	4c 8b 1d c7 54 20 00 	mov    0x2054c7(%rip),%r11        # 812c30 <glad_glBlendColor-0x2009b0>
  60d769:	49 89 03             	mov    %rax,(%r11)
  60d76c:	48 8d 05 6b 38 20 00 	lea    0x20386b(%rip),%rax        # 810fde <L.108>
  60d773:	48 89 c7             	mov    %rax,%rdi
  60d776:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d77a:	41 ff d3             	call   *%r11
  60d77d:	4c 8b 1d b4 54 20 00 	mov    0x2054b4(%rip),%r11        # 812c38 <glad_glBlendEquation-0x2009b0>
  60d784:	49 89 03             	mov    %rax,(%r11)
  60d787:	c9                   	leave
  60d788:	c3                   	ret

000000000060d789 <load_GL_VERSION_1_5>:
  60d789:	55                   	push   %rbp
  60d78a:	48 89 e5             	mov    %rsp,%rbp
  60d78d:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d794:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d798:	48 8b 05 a1 54 20 00 	mov    0x2054a1(%rip),%rax        # 812c40 <GLAD_GL_VERSION_1_5-0x200904>
  60d79f:	8b 00                	mov    (%rax),%eax
  60d7a1:	83 f8 00             	cmp    $0x0,%eax
  60d7a4:	0f 85 05 00 00 00    	jne    60d7af <load_GL_VERSION_1_5+0x26>
  60d7aa:	e9 01 02 00 00       	jmp    60d9b0 <load_GL_VERSION_1_5+0x227>
  60d7af:	48 8d 05 38 38 20 00 	lea    0x203838(%rip),%rax        # 810fee <L.109>
  60d7b6:	48 89 c7             	mov    %rax,%rdi
  60d7b9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d7bd:	41 ff d3             	call   *%r11
  60d7c0:	4c 8b 1d 81 54 20 00 	mov    0x205481(%rip),%r11        # 812c48 <glad_glGenQueries-0x200c50>
  60d7c7:	49 89 03             	mov    %rax,(%r11)
  60d7ca:	48 8d 05 2a 38 20 00 	lea    0x20382a(%rip),%rax        # 810ffb <L.110>
  60d7d1:	48 89 c7             	mov    %rax,%rdi
  60d7d4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d7d8:	41 ff d3             	call   *%r11
  60d7db:	4c 8b 1d 6e 54 20 00 	mov    0x20546e(%rip),%r11        # 812c50 <glad_glDeleteQueries-0x200af0>
  60d7e2:	49 89 03             	mov    %rax,(%r11)
  60d7e5:	48 8d 05 1f 38 20 00 	lea    0x20381f(%rip),%rax        # 81100b <L.111>
  60d7ec:	48 89 c7             	mov    %rax,%rdi
  60d7ef:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d7f3:	41 ff d3             	call   *%r11
  60d7f6:	4c 8b 1d 5b 54 20 00 	mov    0x20545b(%rip),%r11        # 812c58 <glad_glIsQuery-0x200ea0>
  60d7fd:	49 89 03             	mov    %rax,(%r11)
  60d800:	48 8d 05 0e 38 20 00 	lea    0x20380e(%rip),%rax        # 811015 <L.112>
  60d807:	48 89 c7             	mov    %rax,%rdi
  60d80a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d80e:	41 ff d3             	call   *%r11
  60d811:	4c 8b 1d 48 54 20 00 	mov    0x205448(%rip),%r11        # 812c60 <glad_glBeginQuery-0x200918>
  60d818:	49 89 03             	mov    %rax,(%r11)
  60d81b:	48 8d 05 00 38 20 00 	lea    0x203800(%rip),%rax        # 811022 <L.113>
  60d822:	48 89 c7             	mov    %rax,%rdi
  60d825:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d829:	41 ff d3             	call   *%r11
  60d82c:	4c 8b 1d 35 54 20 00 	mov    0x205435(%rip),%r11        # 812c68 <glad_glEndQuery-0x200bb8>
  60d833:	49 89 03             	mov    %rax,(%r11)
  60d836:	48 8d 05 f0 37 20 00 	lea    0x2037f0(%rip),%rax        # 81102d <L.114>
  60d83d:	48 89 c7             	mov    %rax,%rdi
  60d840:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d844:	41 ff d3             	call   *%r11
  60d847:	4c 8b 1d 22 54 20 00 	mov    0x205422(%rip),%r11        # 812c70 <glad_glGetQueryiv-0x200d58>
  60d84e:	49 89 03             	mov    %rax,(%r11)
  60d851:	48 8d 05 e2 37 20 00 	lea    0x2037e2(%rip),%rax        # 81103a <L.115>
  60d858:	48 89 c7             	mov    %rax,%rdi
  60d85b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d85f:	41 ff d3             	call   *%r11
  60d862:	4c 8b 1d 0f 54 20 00 	mov    0x20540f(%rip),%r11        # 812c78 <glad_glGetQueryObjectiv-0x200d38>
  60d869:	49 89 03             	mov    %rax,(%r11)
  60d86c:	48 8d 05 da 37 20 00 	lea    0x2037da(%rip),%rax        # 81104d <L.116>
  60d873:	48 89 c7             	mov    %rax,%rdi
  60d876:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d87a:	41 ff d3             	call   *%r11
  60d87d:	4c 8b 1d fc 53 20 00 	mov    0x2053fc(%rip),%r11        # 812c80 <glad_glGetQueryObjectuiv-0x200d40>
  60d884:	49 89 03             	mov    %rax,(%r11)
  60d887:	48 8d 05 d3 37 20 00 	lea    0x2037d3(%rip),%rax        # 811061 <L.117>
  60d88e:	48 89 c7             	mov    %rax,%rdi
  60d891:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d895:	41 ff d3             	call   *%r11
  60d898:	4c 8b 1d 39 50 20 00 	mov    0x205039(%rip),%r11        # 8128d8 <glad_glBindBuffer-0x200cb8>
  60d89f:	49 89 03             	mov    %rax,(%r11)
  60d8a2:	48 8d 05 c5 37 20 00 	lea    0x2037c5(%rip),%rax        # 81106e <L.118>
  60d8a9:	48 89 c7             	mov    %rax,%rdi
  60d8ac:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d8b0:	41 ff d3             	call   *%r11
  60d8b3:	4c 8b 1d ce 53 20 00 	mov    0x2053ce(%rip),%r11        # 812c88 <glad_glDeleteBuffers-0x200aa0>
  60d8ba:	49 89 03             	mov    %rax,(%r11)
  60d8bd:	48 8d 05 ba 37 20 00 	lea    0x2037ba(%rip),%rax        # 81107e <L.119>
  60d8c4:	48 89 c7             	mov    %rax,%rdi
  60d8c7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d8cb:	41 ff d3             	call   *%r11
  60d8ce:	4c 8b 1d f3 4f 20 00 	mov    0x204ff3(%rip),%r11        # 8128c8 <glad_glGenBuffers-0x200fc0>
  60d8d5:	49 89 03             	mov    %rax,(%r11)
  60d8d8:	48 8d 05 ac 37 20 00 	lea    0x2037ac(%rip),%rax        # 81108b <L.120>
  60d8df:	48 89 c7             	mov    %rax,%rdi
  60d8e2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d8e6:	41 ff d3             	call   *%r11
  60d8e9:	4c 8b 1d a0 53 20 00 	mov    0x2053a0(%rip),%r11        # 812c90 <glad_glIsBuffer-0x200e40>
  60d8f0:	49 89 03             	mov    %rax,(%r11)
  60d8f3:	48 8d 05 9c 37 20 00 	lea    0x20379c(%rip),%rax        # 811096 <L.121>
  60d8fa:	48 89 c7             	mov    %rax,%rdi
  60d8fd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d901:	41 ff d3             	call   *%r11
  60d904:	4c 8b 1d d5 4f 20 00 	mov    0x204fd5(%rip),%r11        # 8128e0 <glad_glBufferData-0x200d30>
  60d90b:	49 89 03             	mov    %rax,(%r11)
  60d90e:	48 8d 05 8e 37 20 00 	lea    0x20378e(%rip),%rax        # 8110a3 <L.122>
  60d915:	48 89 c7             	mov    %rax,%rdi
  60d918:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d91c:	41 ff d3             	call   *%r11
  60d91f:	4c 8b 1d d2 4f 20 00 	mov    0x204fd2(%rip),%r11        # 8128f8 <glad_glBufferSubData-0x200d20>
  60d926:	49 89 03             	mov    %rax,(%r11)
  60d929:	48 8d 05 83 37 20 00 	lea    0x203783(%rip),%rax        # 8110b3 <L.123>
  60d930:	48 89 c7             	mov    %rax,%rdi
  60d933:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d937:	41 ff d3             	call   *%r11
  60d93a:	4c 8b 1d 57 53 20 00 	mov    0x205357(%rip),%r11        # 812c98 <glad_glGetBufferSubData-0x200c98>
  60d941:	49 89 03             	mov    %rax,(%r11)
  60d944:	48 8d 05 7b 37 20 00 	lea    0x20377b(%rip),%rax        # 8110c6 <L.124>
  60d94b:	48 89 c7             	mov    %rax,%rdi
  60d94e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d952:	41 ff d3             	call   *%r11
  60d955:	4c 8b 1d 44 53 20 00 	mov    0x205344(%rip),%r11        # 812ca0 <glad_glMapBuffer-0x200ea8>
  60d95c:	49 89 03             	mov    %rax,(%r11)
  60d95f:	48 8d 05 6c 37 20 00 	lea    0x20376c(%rip),%rax        # 8110d2 <L.125>
  60d966:	48 89 c7             	mov    %rax,%rdi
  60d969:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d96d:	41 ff d3             	call   *%r11
  60d970:	4c 8b 1d 31 53 20 00 	mov    0x205331(%rip),%r11        # 812ca8 <glad_glUnmapBuffer-0x2011f8>
  60d977:	49 89 03             	mov    %rax,(%r11)
  60d97a:	48 8d 05 5f 37 20 00 	lea    0x20375f(%rip),%rax        # 8110e0 <L.126>
  60d981:	48 89 c7             	mov    %rax,%rdi
  60d984:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d988:	41 ff d3             	call   *%r11
  60d98b:	4c 8b 1d 1e 53 20 00 	mov    0x20531e(%rip),%r11        # 812cb0 <glad_glGetBufferParameteriv-0x200c70>
  60d992:	49 89 03             	mov    %rax,(%r11)
  60d995:	48 8d 05 5b 37 20 00 	lea    0x20375b(%rip),%rax        # 8110f7 <L.127>
  60d99c:	48 89 c7             	mov    %rax,%rdi
  60d99f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d9a3:	41 ff d3             	call   *%r11
  60d9a6:	4c 8b 1d 0b 53 20 00 	mov    0x20530b(%rip),%r11        # 812cb8 <glad_glGetBufferPointerv-0x200c70>
  60d9ad:	49 89 03             	mov    %rax,(%r11)
  60d9b0:	c9                   	leave
  60d9b1:	c3                   	ret

000000000060d9b2 <load_GL_VERSION_2_0>:
  60d9b2:	55                   	push   %rbp
  60d9b3:	48 89 e5             	mov    %rsp,%rbp
  60d9b6:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60d9bd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60d9c1:	48 8b 05 f8 52 20 00 	mov    0x2052f8(%rip),%rax        # 812cc0 <GLAD_GL_VERSION_2_0-0x200888>
  60d9c8:	8b 00                	mov    (%rax),%eax
  60d9ca:	83 f8 00             	cmp    $0x0,%eax
  60d9cd:	0f 85 05 00 00 00    	jne    60d9d8 <load_GL_VERSION_2_0+0x26>
  60d9d3:	e9 cf 09 00 00       	jmp    60e3a7 <load_GL_VERSION_2_0+0x9f5>
  60d9d8:	48 8d 05 2c 37 20 00 	lea    0x20372c(%rip),%rax        # 81110b <L.128>
  60d9df:	48 89 c7             	mov    %rax,%rdi
  60d9e2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60d9e6:	41 ff d3             	call   *%r11
  60d9e9:	4c 8b 1d d8 52 20 00 	mov    0x2052d8(%rip),%r11        # 812cc8 <glad_glBlendEquationSeparate-0x200928>
  60d9f0:	49 89 03             	mov    %rax,(%r11)
  60d9f3:	48 8d 05 29 37 20 00 	lea    0x203729(%rip),%rax        # 811123 <L.129>
  60d9fa:	48 89 c7             	mov    %rax,%rdi
  60d9fd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da01:	41 ff d3             	call   *%r11
  60da04:	4c 8b 1d c5 52 20 00 	mov    0x2052c5(%rip),%r11        # 812cd0 <glad_glDrawBuffers-0x200af8>
  60da0b:	49 89 03             	mov    %rax,(%r11)
  60da0e:	48 8d 05 1c 37 20 00 	lea    0x20371c(%rip),%rax        # 811131 <L.130>
  60da15:	48 89 c7             	mov    %rax,%rdi
  60da18:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da1c:	41 ff d3             	call   *%r11
  60da1f:	4c 8b 1d b2 52 20 00 	mov    0x2052b2(%rip),%r11        # 812cd8 <glad_glStencilOpSeparate-0x200ff0>
  60da26:	49 89 03             	mov    %rax,(%r11)
  60da29:	48 8d 05 15 37 20 00 	lea    0x203715(%rip),%rax        # 811145 <L.131>
  60da30:	48 89 c7             	mov    %rax,%rdi
  60da33:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da37:	41 ff d3             	call   *%r11
  60da3a:	4c 8b 1d 9f 52 20 00 	mov    0x20529f(%rip),%r11        # 812ce0 <glad_glStencilFuncSeparate-0x200fc8>
  60da41:	49 89 03             	mov    %rax,(%r11)
  60da44:	48 8d 05 10 37 20 00 	lea    0x203710(%rip),%rax        # 81115b <L.132>
  60da4b:	48 89 c7             	mov    %rax,%rdi
  60da4e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da52:	41 ff d3             	call   *%r11
  60da55:	4c 8b 1d 8c 52 20 00 	mov    0x20528c(%rip),%r11        # 812ce8 <glad_glStencilMaskSeparate-0x200fd0>
  60da5c:	49 89 03             	mov    %rax,(%r11)
  60da5f:	48 8d 05 0b 37 20 00 	lea    0x20370b(%rip),%rax        # 811171 <L.133>
  60da66:	48 89 c7             	mov    %rax,%rdi
  60da69:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da6d:	41 ff d3             	call   *%r11
  60da70:	4c 8b 1d f1 4e 20 00 	mov    0x204ef1(%rip),%r11        # 812968 <glad_glAttachShader-0x200c00>
  60da77:	49 89 03             	mov    %rax,(%r11)
  60da7a:	48 8d 05 ff 36 20 00 	lea    0x2036ff(%rip),%rax        # 811180 <L.134>
  60da81:	48 89 c7             	mov    %rax,%rdi
  60da84:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60da88:	41 ff d3             	call   *%r11
  60da8b:	4c 8b 1d 5e 52 20 00 	mov    0x20525e(%rip),%r11        # 812cf0 <glad_glBindAttribLocation-0x200898>
  60da92:	49 89 03             	mov    %rax,(%r11)
  60da95:	48 8d 05 f9 36 20 00 	lea    0x2036f9(%rip),%rax        # 811195 <L.135>
  60da9c:	48 89 c7             	mov    %rax,%rdi
  60da9f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60daa3:	41 ff d3             	call   *%r11
  60daa6:	4c 8b 1d ab 4e 20 00 	mov    0x204eab(%rip),%r11        # 812958 <glad_glCompileShader-0x200d50>
  60daad:	49 89 03             	mov    %rax,(%r11)
  60dab0:	48 8d 05 ee 36 20 00 	lea    0x2036ee(%rip),%rax        # 8111a5 <L.136>
  60dab7:	48 89 c7             	mov    %rax,%rdi
  60daba:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dabe:	41 ff d3             	call   *%r11
  60dac1:	4c 8b 1d 98 4e 20 00 	mov    0x204e98(%rip),%r11        # 812960 <glad_glCreateProgram-0x200db0>
  60dac8:	49 89 03             	mov    %rax,(%r11)
  60dacb:	48 8d 05 e3 36 20 00 	lea    0x2036e3(%rip),%rax        # 8111b5 <L.137>
  60dad2:	48 89 c7             	mov    %rax,%rdi
  60dad5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dad9:	41 ff d3             	call   *%r11
  60dadc:	4c 8b 1d 65 4e 20 00 	mov    0x204e65(%rip),%r11        # 812948 <glad_glCreateShader-0x200dd0>
  60dae3:	49 89 03             	mov    %rax,(%r11)
  60dae6:	48 8d 05 d7 36 20 00 	lea    0x2036d7(%rip),%rax        # 8111c4 <L.138>
  60daed:	48 89 c7             	mov    %rax,%rdi
  60daf0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60daf4:	41 ff d3             	call   *%r11
  60daf7:	4c 8b 1d fa 51 20 00 	mov    0x2051fa(%rip),%r11        # 812cf8 <glad_glDeleteProgram-0x200a40>
  60dafe:	49 89 03             	mov    %rax,(%r11)
  60db01:	48 8d 05 cc 36 20 00 	lea    0x2036cc(%rip),%rax        # 8111d4 <L.139>
  60db08:	48 89 c7             	mov    %rax,%rdi
  60db0b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db0f:	41 ff d3             	call   *%r11
  60db12:	4c 8b 1d 5f 4e 20 00 	mov    0x204e5f(%rip),%r11        # 812978 <glad_glDeleteShader-0x200de0>
  60db19:	49 89 03             	mov    %rax,(%r11)
  60db1c:	48 8d 05 c0 36 20 00 	lea    0x2036c0(%rip),%rax        # 8111e3 <L.140>
  60db23:	48 89 c7             	mov    %rax,%rdi
  60db26:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db2a:	41 ff d3             	call   *%r11
  60db2d:	4c 8b 1d cc 51 20 00 	mov    0x2051cc(%rip),%r11        # 812d00 <glad_glDetachShader-0x200a90>
  60db34:	49 89 03             	mov    %rax,(%r11)
  60db37:	48 8d 05 b4 36 20 00 	lea    0x2036b4(%rip),%rax        # 8111f2 <L.141>
  60db3e:	48 89 c7             	mov    %rax,%rdi
  60db41:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db45:	41 ff d3             	call   *%r11
  60db48:	4c 8b 1d b9 51 20 00 	mov    0x2051b9(%rip),%r11        # 812d08 <glad_glDisableVertexAttribArray-0x200a98>
  60db4f:	49 89 03             	mov    %rax,(%r11)
  60db52:	48 8d 05 b4 36 20 00 	lea    0x2036b4(%rip),%rax        # 81120d <L.142>
  60db59:	48 89 c7             	mov    %rax,%rdi
  60db5c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db60:	41 ff d3             	call   *%r11
  60db63:	4c 8b 1d 86 4d 20 00 	mov    0x204d86(%rip),%r11        # 8128f0 <glad_glEnableVertexAttribArray-0x200f18>
  60db6a:	49 89 03             	mov    %rax,(%r11)
  60db6d:	48 8d 05 b3 36 20 00 	lea    0x2036b3(%rip),%rax        # 811227 <L.143>
  60db74:	48 89 c7             	mov    %rax,%rdi
  60db77:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db7b:	41 ff d3             	call   *%r11
  60db7e:	4c 8b 1d 8b 51 20 00 	mov    0x20518b(%rip),%r11        # 812d10 <glad_glGetActiveAttrib-0x200bb8>
  60db85:	49 89 03             	mov    %rax,(%r11)
  60db88:	48 8d 05 aa 36 20 00 	lea    0x2036aa(%rip),%rax        # 811239 <L.144>
  60db8f:	48 89 c7             	mov    %rax,%rdi
  60db92:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60db96:	41 ff d3             	call   *%r11
  60db99:	4c 8b 1d 78 51 20 00 	mov    0x205178(%rip),%r11        # 812d18 <glad_glGetActiveUniform-0x200bb8>
  60dba0:	49 89 03             	mov    %rax,(%r11)
  60dba3:	48 8d 05 a2 36 20 00 	lea    0x2036a2(%rip),%rax        # 81124c <L.145>
  60dbaa:	48 89 c7             	mov    %rax,%rdi
  60dbad:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dbb1:	41 ff d3             	call   *%r11
  60dbb4:	4c 8b 1d 65 51 20 00 	mov    0x205165(%rip),%r11        # 812d20 <glad_glGetAttachedShaders-0x200bd8>
  60dbbb:	49 89 03             	mov    %rax,(%r11)
  60dbbe:	48 8d 05 9c 36 20 00 	lea    0x20369c(%rip),%rax        # 811261 <L.146>
  60dbc5:	48 89 c7             	mov    %rax,%rdi
  60dbc8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dbcc:	41 ff d3             	call   *%r11
  60dbcf:	4c 8b 1d 52 51 20 00 	mov    0x205152(%rip),%r11        # 812d28 <glad_glGetAttribLocation-0x200bd8>
  60dbd6:	49 89 03             	mov    %rax,(%r11)
  60dbd9:	48 8d 05 95 36 20 00 	lea    0x203695(%rip),%rax        # 811275 <L.147>
  60dbe0:	48 89 c7             	mov    %rax,%rdi
  60dbe3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dbe7:	41 ff d3             	call   *%r11
  60dbea:	4c 8b 1d 3f 4d 20 00 	mov    0x204d3f(%rip),%r11        # 812930 <glad_glGetProgramiv-0x201070>
  60dbf1:	49 89 03             	mov    %rax,(%r11)
  60dbf4:	48 8d 05 89 36 20 00 	lea    0x203689(%rip),%rax        # 811284 <L.148>
  60dbfb:	48 89 c7             	mov    %rax,%rdi
  60dbfe:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc02:	41 ff d3             	call   *%r11
  60dc05:	4c 8b 1d 24 51 20 00 	mov    0x205124(%rip),%r11        # 812d30 <glad_glGetProgramInfoLog-0x200c68>
  60dc0c:	49 89 03             	mov    %rax,(%r11)
  60dc0f:	48 8d 05 82 36 20 00 	lea    0x203682(%rip),%rax        # 811298 <L.149>
  60dc16:	48 89 c7             	mov    %rax,%rdi
  60dc19:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc1d:	41 ff d3             	call   *%r11
  60dc20:	4c 8b 1d 11 4d 20 00 	mov    0x204d11(%rip),%r11        # 812938 <glad_glGetShaderiv-0x2010d0>
  60dc27:	49 89 03             	mov    %rax,(%r11)
  60dc2a:	48 8d 05 75 36 20 00 	lea    0x203675(%rip),%rax        # 8112a6 <L.150>
  60dc31:	48 89 c7             	mov    %rax,%rdi
  60dc34:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc38:	41 ff d3             	call   *%r11
  60dc3b:	4c 8b 1d fe 4c 20 00 	mov    0x204cfe(%rip),%r11        # 812940 <glad_glGetShaderInfoLog-0x2010b8>
  60dc42:	49 89 03             	mov    %rax,(%r11)
  60dc45:	48 8d 05 6d 36 20 00 	lea    0x20366d(%rip),%rax        # 8112b9 <L.151>
  60dc4c:	48 89 c7             	mov    %rax,%rdi
  60dc4f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc53:	41 ff d3             	call   *%r11
  60dc56:	4c 8b 1d db 50 20 00 	mov    0x2050db(%rip),%r11        # 812d38 <glad_glGetShaderSource-0x200cc8>
  60dc5d:	49 89 03             	mov    %rax,(%r11)
  60dc60:	48 8d 05 64 36 20 00 	lea    0x203664(%rip),%rax        # 8112cb <L.152>
  60dc67:	48 89 c7             	mov    %rax,%rdi
  60dc6a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc6e:	41 ff d3             	call   *%r11
  60dc71:	4c 8b 1d a0 4c 20 00 	mov    0x204ca0(%rip),%r11        # 812918 <glad_glGetUniformLocation-0x201160>
  60dc78:	49 89 03             	mov    %rax,(%r11)
  60dc7b:	48 8d 05 5e 36 20 00 	lea    0x20365e(%rip),%rax        # 8112e0 <L.153>
  60dc82:	48 89 c7             	mov    %rax,%rdi
  60dc85:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dc89:	41 ff d3             	call   *%r11
  60dc8c:	4c 8b 1d ad 50 20 00 	mov    0x2050ad(%rip),%r11        # 812d40 <glad_glGetUniformfv-0x200d40>
  60dc93:	49 89 03             	mov    %rax,(%r11)
  60dc96:	48 8d 05 52 36 20 00 	lea    0x203652(%rip),%rax        # 8112ef <L.154>
  60dc9d:	48 89 c7             	mov    %rax,%rdi
  60dca0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dca4:	41 ff d3             	call   *%r11
  60dca7:	4c 8b 1d 9a 50 20 00 	mov    0x20509a(%rip),%r11        # 812d48 <glad_glGetUniformiv-0x200d40>
  60dcae:	49 89 03             	mov    %rax,(%r11)
  60dcb1:	48 8d 05 46 36 20 00 	lea    0x203646(%rip),%rax        # 8112fe <L.155>
  60dcb8:	48 89 c7             	mov    %rax,%rdi
  60dcbb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dcbf:	41 ff d3             	call   *%r11
  60dcc2:	4c 8b 1d 87 50 20 00 	mov    0x205087(%rip),%r11        # 812d50 <glad_glGetVertexAttribdv-0x200d60>
  60dcc9:	49 89 03             	mov    %rax,(%r11)
  60dccc:	48 8d 05 3f 36 20 00 	lea    0x20363f(%rip),%rax        # 811312 <L.156>
  60dcd3:	48 89 c7             	mov    %rax,%rdi
  60dcd6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dcda:	41 ff d3             	call   *%r11
  60dcdd:	4c 8b 1d 74 50 20 00 	mov    0x205074(%rip),%r11        # 812d58 <glad_glGetVertexAttribfv-0x200d60>
  60dce4:	49 89 03             	mov    %rax,(%r11)
  60dce7:	48 8d 05 38 36 20 00 	lea    0x203638(%rip),%rax        # 811326 <L.157>
  60dcee:	48 89 c7             	mov    %rax,%rdi
  60dcf1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dcf5:	41 ff d3             	call   *%r11
  60dcf8:	4c 8b 1d 61 50 20 00 	mov    0x205061(%rip),%r11        # 812d60 <glad_glGetVertexAttribiv-0x200d60>
  60dcff:	49 89 03             	mov    %rax,(%r11)
  60dd02:	48 8d 05 31 36 20 00 	lea    0x203631(%rip),%rax        # 81133a <L.158>
  60dd09:	48 89 c7             	mov    %rax,%rdi
  60dd0c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd10:	41 ff d3             	call   *%r11
  60dd13:	4c 8b 1d 4e 50 20 00 	mov    0x20504e(%rip),%r11        # 812d68 <glad_glGetVertexAttribPointerv-0x200d40>
  60dd1a:	49 89 03             	mov    %rax,(%r11)
  60dd1d:	48 8d 05 30 36 20 00 	lea    0x203630(%rip),%rax        # 811354 <L.159>
  60dd24:	48 89 c7             	mov    %rax,%rdi
  60dd27:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd2b:	41 ff d3             	call   *%r11
  60dd2e:	4c 8b 1d 3b 50 20 00 	mov    0x20503b(%rip),%r11        # 812d70 <glad_glIsProgram-0x200d80>
  60dd35:	49 89 03             	mov    %rax,(%r11)
  60dd38:	48 8d 05 21 36 20 00 	lea    0x203621(%rip),%rax        # 811360 <L.160>
  60dd3f:	48 89 c7             	mov    %rax,%rdi
  60dd42:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd46:	41 ff d3             	call   *%r11
  60dd49:	4c 8b 1d 28 50 20 00 	mov    0x205028(%rip),%r11        # 812d78 <glad_glIsShader-0x200d98>
  60dd50:	49 89 03             	mov    %rax,(%r11)
  60dd53:	48 8d 05 11 36 20 00 	lea    0x203611(%rip),%rax        # 81136b <L.161>
  60dd5a:	48 89 c7             	mov    %rax,%rdi
  60dd5d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd61:	41 ff d3             	call   *%r11
  60dd64:	4c 8b 1d 05 4c 20 00 	mov    0x204c05(%rip),%r11        # 812970 <glad_glLinkProgram-0x2011c8>
  60dd6b:	49 89 03             	mov    %rax,(%r11)
  60dd6e:	48 8d 05 04 36 20 00 	lea    0x203604(%rip),%rax        # 811379 <L.162>
  60dd75:	48 89 c7             	mov    %rax,%rdi
  60dd78:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd7c:	41 ff d3             	call   *%r11
  60dd7f:	4c 8b 1d ca 4b 20 00 	mov    0x204bca(%rip),%r11        # 812950 <glad_glShaderSource-0x201348>
  60dd86:	49 89 03             	mov    %rax,(%r11)
  60dd89:	48 8d 05 f8 35 20 00 	lea    0x2035f8(%rip),%rax        # 811388 <L.163>
  60dd90:	48 89 c7             	mov    %rax,%rdi
  60dd93:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dd97:	41 ff d3             	call   *%r11
  60dd9a:	4c 8b 1d 6f 4b 20 00 	mov    0x204b6f(%rip),%r11        # 812910 <glad_glUseProgram-0x201598>
  60dda1:	49 89 03             	mov    %rax,(%r11)
  60dda4:	48 8d 05 ea 35 20 00 	lea    0x2035ea(%rip),%rax        # 811395 <L.164>
  60ddab:	48 89 c7             	mov    %rax,%rdi
  60ddae:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ddb2:	41 ff d3             	call   *%r11
  60ddb5:	4c 8b 1d c4 4f 20 00 	mov    0x204fc4(%rip),%r11        # 812d80 <glad_glUniform1f-0x201010>
  60ddbc:	49 89 03             	mov    %rax,(%r11)
  60ddbf:	48 8d 05 db 35 20 00 	lea    0x2035db(%rip),%rax        # 8113a1 <L.165>
  60ddc6:	48 89 c7             	mov    %rax,%rdi
  60ddc9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ddcd:	41 ff d3             	call   *%r11
  60ddd0:	4c 8b 1d b1 4f 20 00 	mov    0x204fb1(%rip),%r11        # 812d88 <glad_glUniform2f-0x201038>
  60ddd7:	49 89 03             	mov    %rax,(%r11)
  60ddda:	48 8d 05 cc 35 20 00 	lea    0x2035cc(%rip),%rax        # 8113ad <L.166>
  60dde1:	48 89 c7             	mov    %rax,%rdi
  60dde4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dde8:	41 ff d3             	call   *%r11
  60ddeb:	4c 8b 1d 9e 4f 20 00 	mov    0x204f9e(%rip),%r11        # 812d90 <glad_glUniform3f-0x201060>
  60ddf2:	49 89 03             	mov    %rax,(%r11)
  60ddf5:	48 8d 05 bd 35 20 00 	lea    0x2035bd(%rip),%rax        # 8113b9 <L.167>
  60ddfc:	48 89 c7             	mov    %rax,%rdi
  60ddff:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de03:	41 ff d3             	call   *%r11
  60de06:	4c 8b 1d 8b 4f 20 00 	mov    0x204f8b(%rip),%r11        # 812d98 <glad_glUniform4f-0x201088>
  60de0d:	49 89 03             	mov    %rax,(%r11)
  60de10:	48 8d 05 ae 35 20 00 	lea    0x2035ae(%rip),%rax        # 8113c5 <L.168>
  60de17:	48 89 c7             	mov    %rax,%rdi
  60de1a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de1e:	41 ff d3             	call   *%r11
  60de21:	4c 8b 1d 78 4f 20 00 	mov    0x204f78(%rip),%r11        # 812da0 <glad_glUniform1i-0x201000>
  60de28:	49 89 03             	mov    %rax,(%r11)
  60de2b:	48 8d 05 9f 35 20 00 	lea    0x20359f(%rip),%rax        # 8113d1 <L.169>
  60de32:	48 89 c7             	mov    %rax,%rdi
  60de35:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de39:	41 ff d3             	call   *%r11
  60de3c:	4c 8b 1d 65 4f 20 00 	mov    0x204f65(%rip),%r11        # 812da8 <glad_glUniform2i-0x201028>
  60de43:	49 89 03             	mov    %rax,(%r11)
  60de46:	48 8d 05 90 35 20 00 	lea    0x203590(%rip),%rax        # 8113dd <L.170>
  60de4d:	48 89 c7             	mov    %rax,%rdi
  60de50:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de54:	41 ff d3             	call   *%r11
  60de57:	4c 8b 1d 52 4f 20 00 	mov    0x204f52(%rip),%r11        # 812db0 <glad_glUniform3i-0x201050>
  60de5e:	49 89 03             	mov    %rax,(%r11)
  60de61:	48 8d 05 81 35 20 00 	lea    0x203581(%rip),%rax        # 8113e9 <L.171>
  60de68:	48 89 c7             	mov    %rax,%rdi
  60de6b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de6f:	41 ff d3             	call   *%r11
  60de72:	4c 8b 1d 3f 4f 20 00 	mov    0x204f3f(%rip),%r11        # 812db8 <glad_glUniform4i-0x201078>
  60de79:	49 89 03             	mov    %rax,(%r11)
  60de7c:	48 8d 05 72 35 20 00 	lea    0x203572(%rip),%rax        # 8113f5 <L.172>
  60de83:	48 89 c7             	mov    %rax,%rdi
  60de86:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60de8a:	41 ff d3             	call   *%r11
  60de8d:	4c 8b 1d 2c 4f 20 00 	mov    0x204f2c(%rip),%r11        # 812dc0 <glad_glUniform1fv-0x200fd8>
  60de94:	49 89 03             	mov    %rax,(%r11)
  60de97:	48 8d 05 64 35 20 00 	lea    0x203564(%rip),%rax        # 811402 <L.173>
  60de9e:	48 89 c7             	mov    %rax,%rdi
  60dea1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dea5:	41 ff d3             	call   *%r11
  60dea8:	4c 8b 1d 19 4f 20 00 	mov    0x204f19(%rip),%r11        # 812dc8 <glad_glUniform2fv-0x201000>
  60deaf:	49 89 03             	mov    %rax,(%r11)
  60deb2:	48 8d 05 56 35 20 00 	lea    0x203556(%rip),%rax        # 81140f <L.174>
  60deb9:	48 89 c7             	mov    %rax,%rdi
  60debc:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dec0:	41 ff d3             	call   *%r11
  60dec3:	4c 8b 1d 06 4f 20 00 	mov    0x204f06(%rip),%r11        # 812dd0 <glad_glUniform3fv-0x201028>
  60deca:	49 89 03             	mov    %rax,(%r11)
  60decd:	48 8d 05 48 35 20 00 	lea    0x203548(%rip),%rax        # 81141c <L.175>
  60ded4:	48 89 c7             	mov    %rax,%rdi
  60ded7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dedb:	41 ff d3             	call   *%r11
  60dede:	4c 8b 1d f3 4e 20 00 	mov    0x204ef3(%rip),%r11        # 812dd8 <glad_glUniform4fv-0x201050>
  60dee5:	49 89 03             	mov    %rax,(%r11)
  60dee8:	48 8d 05 3a 35 20 00 	lea    0x20353a(%rip),%rax        # 811429 <L.176>
  60deef:	48 89 c7             	mov    %rax,%rdi
  60def2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60def6:	41 ff d3             	call   *%r11
  60def9:	4c 8b 1d e0 4e 20 00 	mov    0x204ee0(%rip),%r11        # 812de0 <glad_glUniform1iv-0x200fc8>
  60df00:	49 89 03             	mov    %rax,(%r11)
  60df03:	48 8d 05 2c 35 20 00 	lea    0x20352c(%rip),%rax        # 811436 <L.177>
  60df0a:	48 89 c7             	mov    %rax,%rdi
  60df0d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df11:	41 ff d3             	call   *%r11
  60df14:	4c 8b 1d cd 4e 20 00 	mov    0x204ecd(%rip),%r11        # 812de8 <glad_glUniform2iv-0x200ff0>
  60df1b:	49 89 03             	mov    %rax,(%r11)
  60df1e:	48 8d 05 1e 35 20 00 	lea    0x20351e(%rip),%rax        # 811443 <L.178>
  60df25:	48 89 c7             	mov    %rax,%rdi
  60df28:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df2c:	41 ff d3             	call   *%r11
  60df2f:	4c 8b 1d ba 4e 20 00 	mov    0x204eba(%rip),%r11        # 812df0 <glad_glUniform3iv-0x201018>
  60df36:	49 89 03             	mov    %rax,(%r11)
  60df39:	48 8d 05 10 35 20 00 	lea    0x203510(%rip),%rax        # 811450 <L.179>
  60df40:	48 89 c7             	mov    %rax,%rdi
  60df43:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df47:	41 ff d3             	call   *%r11
  60df4a:	4c 8b 1d a7 4e 20 00 	mov    0x204ea7(%rip),%r11        # 812df8 <glad_glUniform4iv-0x201040>
  60df51:	49 89 03             	mov    %rax,(%r11)
  60df54:	48 8d 05 02 35 20 00 	lea    0x203502(%rip),%rax        # 81145d <L.180>
  60df5b:	48 89 c7             	mov    %rax,%rdi
  60df5e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df62:	41 ff d3             	call   *%r11
  60df65:	4c 8b 1d 94 4e 20 00 	mov    0x204e94(%rip),%r11        # 812e00 <glad_glUniformMatrix2fv-0x201058>
  60df6c:	49 89 03             	mov    %rax,(%r11)
  60df6f:	48 8d 05 fa 34 20 00 	lea    0x2034fa(%rip),%rax        # 811470 <L.181>
  60df76:	48 89 c7             	mov    %rax,%rdi
  60df79:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df7d:	41 ff d3             	call   *%r11
  60df80:	4c 8b 1d 81 4e 20 00 	mov    0x204e81(%rip),%r11        # 812e08 <glad_glUniformMatrix3fv-0x201068>
  60df87:	49 89 03             	mov    %rax,(%r11)
  60df8a:	48 8d 05 f2 34 20 00 	lea    0x2034f2(%rip),%rax        # 811483 <L.182>
  60df91:	48 89 c7             	mov    %rax,%rdi
  60df94:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60df98:	41 ff d3             	call   *%r11
  60df9b:	4c 8b 1d 7e 49 20 00 	mov    0x20497e(%rip),%r11        # 812920 <glad_glUniformMatrix4fv-0x201568>
  60dfa2:	49 89 03             	mov    %rax,(%r11)
  60dfa5:	48 8d 05 ea 34 20 00 	lea    0x2034ea(%rip),%rax        # 811496 <L.183>
  60dfac:	48 89 c7             	mov    %rax,%rdi
  60dfaf:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dfb3:	41 ff d3             	call   *%r11
  60dfb6:	4c 8b 1d 53 4e 20 00 	mov    0x204e53(%rip),%r11        # 812e10 <glad_glValidateProgram-0x2010a0>
  60dfbd:	49 89 03             	mov    %rax,(%r11)
  60dfc0:	48 8d 05 e1 34 20 00 	lea    0x2034e1(%rip),%rax        # 8114a8 <L.184>
  60dfc7:	48 89 c7             	mov    %rax,%rdi
  60dfca:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dfce:	41 ff d3             	call   *%r11
  60dfd1:	4c 8b 1d 40 4e 20 00 	mov    0x204e40(%rip),%r11        # 812e18 <glad_glVertexAttrib1d-0x2010a0>
  60dfd8:	49 89 03             	mov    %rax,(%r11)
  60dfdb:	48 8d 05 d7 34 20 00 	lea    0x2034d7(%rip),%rax        # 8114b9 <L.185>
  60dfe2:	48 89 c7             	mov    %rax,%rdi
  60dfe5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60dfe9:	41 ff d3             	call   *%r11
  60dfec:	4c 8b 1d 2d 4e 20 00 	mov    0x204e2d(%rip),%r11        # 812e20 <glad_glVertexAttrib1dv-0x2010a0>
  60dff3:	49 89 03             	mov    %rax,(%r11)
  60dff6:	48 8d 05 ce 34 20 00 	lea    0x2034ce(%rip),%rax        # 8114cb <L.186>
  60dffd:	48 89 c7             	mov    %rax,%rdi
  60e000:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e004:	41 ff d3             	call   *%r11
  60e007:	4c 8b 1d 1a 4e 20 00 	mov    0x204e1a(%rip),%r11        # 812e28 <glad_glVertexAttrib1f-0x2010a0>
  60e00e:	49 89 03             	mov    %rax,(%r11)
  60e011:	48 8d 05 c4 34 20 00 	lea    0x2034c4(%rip),%rax        # 8114dc <L.187>
  60e018:	48 89 c7             	mov    %rax,%rdi
  60e01b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e01f:	41 ff d3             	call   *%r11
  60e022:	4c 8b 1d 07 4e 20 00 	mov    0x204e07(%rip),%r11        # 812e30 <glad_glVertexAttrib1fv-0x2010a0>
  60e029:	49 89 03             	mov    %rax,(%r11)
  60e02c:	48 8d 05 bb 34 20 00 	lea    0x2034bb(%rip),%rax        # 8114ee <L.188>
  60e033:	48 89 c7             	mov    %rax,%rdi
  60e036:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e03a:	41 ff d3             	call   *%r11
  60e03d:	4c 8b 1d f4 4d 20 00 	mov    0x204df4(%rip),%r11        # 812e38 <glad_glVertexAttrib1s-0x2010a0>
  60e044:	49 89 03             	mov    %rax,(%r11)
  60e047:	48 8d 05 b1 34 20 00 	lea    0x2034b1(%rip),%rax        # 8114ff <L.189>
  60e04e:	48 89 c7             	mov    %rax,%rdi
  60e051:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e055:	41 ff d3             	call   *%r11
  60e058:	4c 8b 1d e1 4d 20 00 	mov    0x204de1(%rip),%r11        # 812e40 <glad_glVertexAttrib1sv-0x2010a0>
  60e05f:	49 89 03             	mov    %rax,(%r11)
  60e062:	48 8d 05 a8 34 20 00 	lea    0x2034a8(%rip),%rax        # 811511 <L.190>
  60e069:	48 89 c7             	mov    %rax,%rdi
  60e06c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e070:	41 ff d3             	call   *%r11
  60e073:	4c 8b 1d ce 4d 20 00 	mov    0x204dce(%rip),%r11        # 812e48 <glad_glVertexAttrib2d-0x2010a0>
  60e07a:	49 89 03             	mov    %rax,(%r11)
  60e07d:	48 8d 05 9e 34 20 00 	lea    0x20349e(%rip),%rax        # 811522 <L.191>
  60e084:	48 89 c7             	mov    %rax,%rdi
  60e087:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e08b:	41 ff d3             	call   *%r11
  60e08e:	4c 8b 1d bb 4d 20 00 	mov    0x204dbb(%rip),%r11        # 812e50 <glad_glVertexAttrib2dv-0x2010a0>
  60e095:	49 89 03             	mov    %rax,(%r11)
  60e098:	48 8d 05 95 34 20 00 	lea    0x203495(%rip),%rax        # 811534 <L.192>
  60e09f:	48 89 c7             	mov    %rax,%rdi
  60e0a2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e0a6:	41 ff d3             	call   *%r11
  60e0a9:	4c 8b 1d a8 4d 20 00 	mov    0x204da8(%rip),%r11        # 812e58 <glad_glVertexAttrib2f-0x2010a0>
  60e0b0:	49 89 03             	mov    %rax,(%r11)
  60e0b3:	48 8d 05 8b 34 20 00 	lea    0x20348b(%rip),%rax        # 811545 <L.193>
  60e0ba:	48 89 c7             	mov    %rax,%rdi
  60e0bd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e0c1:	41 ff d3             	call   *%r11
  60e0c4:	4c 8b 1d 95 4d 20 00 	mov    0x204d95(%rip),%r11        # 812e60 <glad_glVertexAttrib2fv-0x2010a0>
  60e0cb:	49 89 03             	mov    %rax,(%r11)
  60e0ce:	48 8d 05 82 34 20 00 	lea    0x203482(%rip),%rax        # 811557 <L.194>
  60e0d5:	48 89 c7             	mov    %rax,%rdi
  60e0d8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e0dc:	41 ff d3             	call   *%r11
  60e0df:	4c 8b 1d 82 4d 20 00 	mov    0x204d82(%rip),%r11        # 812e68 <glad_glVertexAttrib2s-0x2010a0>
  60e0e6:	49 89 03             	mov    %rax,(%r11)
  60e0e9:	48 8d 05 78 34 20 00 	lea    0x203478(%rip),%rax        # 811568 <L.195>
  60e0f0:	48 89 c7             	mov    %rax,%rdi
  60e0f3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e0f7:	41 ff d3             	call   *%r11
  60e0fa:	4c 8b 1d 6f 4d 20 00 	mov    0x204d6f(%rip),%r11        # 812e70 <glad_glVertexAttrib2sv-0x2010a0>
  60e101:	49 89 03             	mov    %rax,(%r11)
  60e104:	48 8d 05 6f 34 20 00 	lea    0x20346f(%rip),%rax        # 81157a <L.196>
  60e10b:	48 89 c7             	mov    %rax,%rdi
  60e10e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e112:	41 ff d3             	call   *%r11
  60e115:	4c 8b 1d 5c 4d 20 00 	mov    0x204d5c(%rip),%r11        # 812e78 <glad_glVertexAttrib3d-0x2010a0>
  60e11c:	49 89 03             	mov    %rax,(%r11)
  60e11f:	48 8d 05 65 34 20 00 	lea    0x203465(%rip),%rax        # 81158b <L.197>
  60e126:	48 89 c7             	mov    %rax,%rdi
  60e129:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e12d:	41 ff d3             	call   *%r11
  60e130:	4c 8b 1d 49 4d 20 00 	mov    0x204d49(%rip),%r11        # 812e80 <glad_glVertexAttrib3dv-0x2010a0>
  60e137:	49 89 03             	mov    %rax,(%r11)
  60e13a:	48 8d 05 5c 34 20 00 	lea    0x20345c(%rip),%rax        # 81159d <L.198>
  60e141:	48 89 c7             	mov    %rax,%rdi
  60e144:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e148:	41 ff d3             	call   *%r11
  60e14b:	4c 8b 1d 36 4d 20 00 	mov    0x204d36(%rip),%r11        # 812e88 <glad_glVertexAttrib3f-0x2010a0>
  60e152:	49 89 03             	mov    %rax,(%r11)
  60e155:	48 8d 05 52 34 20 00 	lea    0x203452(%rip),%rax        # 8115ae <L.199>
  60e15c:	48 89 c7             	mov    %rax,%rdi
  60e15f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e163:	41 ff d3             	call   *%r11
  60e166:	4c 8b 1d 23 4d 20 00 	mov    0x204d23(%rip),%r11        # 812e90 <glad_glVertexAttrib3fv-0x2010a0>
  60e16d:	49 89 03             	mov    %rax,(%r11)
  60e170:	48 8d 05 49 34 20 00 	lea    0x203449(%rip),%rax        # 8115c0 <L.200>
  60e177:	48 89 c7             	mov    %rax,%rdi
  60e17a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e17e:	41 ff d3             	call   *%r11
  60e181:	4c 8b 1d 10 4d 20 00 	mov    0x204d10(%rip),%r11        # 812e98 <glad_glVertexAttrib3s-0x2010a0>
  60e188:	49 89 03             	mov    %rax,(%r11)
  60e18b:	48 8d 05 3f 34 20 00 	lea    0x20343f(%rip),%rax        # 8115d1 <L.201>
  60e192:	48 89 c7             	mov    %rax,%rdi
  60e195:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e199:	41 ff d3             	call   *%r11
  60e19c:	4c 8b 1d fd 4c 20 00 	mov    0x204cfd(%rip),%r11        # 812ea0 <glad_glVertexAttrib3sv-0x2010a0>
  60e1a3:	49 89 03             	mov    %rax,(%r11)
  60e1a6:	48 8d 05 36 34 20 00 	lea    0x203436(%rip),%rax        # 8115e3 <L.202>
  60e1ad:	48 89 c7             	mov    %rax,%rdi
  60e1b0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e1b4:	41 ff d3             	call   *%r11
  60e1b7:	4c 8b 1d ea 4c 20 00 	mov    0x204cea(%rip),%r11        # 812ea8 <glad_glVertexAttrib4Nbv-0x2010a0>
  60e1be:	49 89 03             	mov    %rax,(%r11)
  60e1c1:	48 8d 05 2e 34 20 00 	lea    0x20342e(%rip),%rax        # 8115f6 <L.203>
  60e1c8:	48 89 c7             	mov    %rax,%rdi
  60e1cb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e1cf:	41 ff d3             	call   *%r11
  60e1d2:	4c 8b 1d d7 4c 20 00 	mov    0x204cd7(%rip),%r11        # 812eb0 <glad_glVertexAttrib4Niv-0x2010a0>
  60e1d9:	49 89 03             	mov    %rax,(%r11)
  60e1dc:	48 8d 05 26 34 20 00 	lea    0x203426(%rip),%rax        # 811609 <L.204>
  60e1e3:	48 89 c7             	mov    %rax,%rdi
  60e1e6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e1ea:	41 ff d3             	call   *%r11
  60e1ed:	4c 8b 1d c4 4c 20 00 	mov    0x204cc4(%rip),%r11        # 812eb8 <glad_glVertexAttrib4Nsv-0x2010a0>
  60e1f4:	49 89 03             	mov    %rax,(%r11)
  60e1f7:	48 8d 05 1e 34 20 00 	lea    0x20341e(%rip),%rax        # 81161c <L.205>
  60e1fe:	48 89 c7             	mov    %rax,%rdi
  60e201:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e205:	41 ff d3             	call   *%r11
  60e208:	4c 8b 1d b1 4c 20 00 	mov    0x204cb1(%rip),%r11        # 812ec0 <glad_glVertexAttrib4Nub-0x2010a0>
  60e20f:	49 89 03             	mov    %rax,(%r11)
  60e212:	48 8d 05 16 34 20 00 	lea    0x203416(%rip),%rax        # 81162f <L.206>
  60e219:	48 89 c7             	mov    %rax,%rdi
  60e21c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e220:	41 ff d3             	call   *%r11
  60e223:	4c 8b 1d 9e 4c 20 00 	mov    0x204c9e(%rip),%r11        # 812ec8 <glad_glVertexAttrib4Nubv-0x2010a0>
  60e22a:	49 89 03             	mov    %rax,(%r11)
  60e22d:	48 8d 05 0f 34 20 00 	lea    0x20340f(%rip),%rax        # 811643 <L.207>
  60e234:	48 89 c7             	mov    %rax,%rdi
  60e237:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e23b:	41 ff d3             	call   *%r11
  60e23e:	4c 8b 1d 8b 4c 20 00 	mov    0x204c8b(%rip),%r11        # 812ed0 <glad_glVertexAttrib4Nuiv-0x2010a0>
  60e245:	49 89 03             	mov    %rax,(%r11)
  60e248:	48 8d 05 08 34 20 00 	lea    0x203408(%rip),%rax        # 811657 <L.208>
  60e24f:	48 89 c7             	mov    %rax,%rdi
  60e252:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e256:	41 ff d3             	call   *%r11
  60e259:	4c 8b 1d 78 4c 20 00 	mov    0x204c78(%rip),%r11        # 812ed8 <glad_glVertexAttrib4Nusv-0x2010a0>
  60e260:	49 89 03             	mov    %rax,(%r11)
  60e263:	48 8d 05 01 34 20 00 	lea    0x203401(%rip),%rax        # 81166b <L.209>
  60e26a:	48 89 c7             	mov    %rax,%rdi
  60e26d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e271:	41 ff d3             	call   *%r11
  60e274:	4c 8b 1d 65 4c 20 00 	mov    0x204c65(%rip),%r11        # 812ee0 <glad_glVertexAttrib4bv-0x2010a0>
  60e27b:	49 89 03             	mov    %rax,(%r11)
  60e27e:	48 8d 05 f8 33 20 00 	lea    0x2033f8(%rip),%rax        # 81167d <L.210>
  60e285:	48 89 c7             	mov    %rax,%rdi
  60e288:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e28c:	41 ff d3             	call   *%r11
  60e28f:	4c 8b 1d 52 4c 20 00 	mov    0x204c52(%rip),%r11        # 812ee8 <glad_glVertexAttrib4d-0x2010a0>
  60e296:	49 89 03             	mov    %rax,(%r11)
  60e299:	48 8d 05 ee 33 20 00 	lea    0x2033ee(%rip),%rax        # 81168e <L.211>
  60e2a0:	48 89 c7             	mov    %rax,%rdi
  60e2a3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e2a7:	41 ff d3             	call   *%r11
  60e2aa:	4c 8b 1d 3f 4c 20 00 	mov    0x204c3f(%rip),%r11        # 812ef0 <glad_glVertexAttrib4dv-0x2010a0>
  60e2b1:	49 89 03             	mov    %rax,(%r11)
  60e2b4:	48 8d 05 e5 33 20 00 	lea    0x2033e5(%rip),%rax        # 8116a0 <L.212>
  60e2bb:	48 89 c7             	mov    %rax,%rdi
  60e2be:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e2c2:	41 ff d3             	call   *%r11
  60e2c5:	4c 8b 1d 2c 4c 20 00 	mov    0x204c2c(%rip),%r11        # 812ef8 <glad_glVertexAttrib4f-0x2010a0>
  60e2cc:	49 89 03             	mov    %rax,(%r11)
  60e2cf:	48 8d 05 db 33 20 00 	lea    0x2033db(%rip),%rax        # 8116b1 <L.213>
  60e2d6:	48 89 c7             	mov    %rax,%rdi
  60e2d9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e2dd:	41 ff d3             	call   *%r11
  60e2e0:	4c 8b 1d 19 4c 20 00 	mov    0x204c19(%rip),%r11        # 812f00 <glad_glVertexAttrib4fv-0x2010a0>
  60e2e7:	49 89 03             	mov    %rax,(%r11)
  60e2ea:	48 8d 05 d2 33 20 00 	lea    0x2033d2(%rip),%rax        # 8116c3 <L.214>
  60e2f1:	48 89 c7             	mov    %rax,%rdi
  60e2f4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e2f8:	41 ff d3             	call   *%r11
  60e2fb:	4c 8b 1d 06 4c 20 00 	mov    0x204c06(%rip),%r11        # 812f08 <glad_glVertexAttrib4iv-0x2010a0>
  60e302:	49 89 03             	mov    %rax,(%r11)
  60e305:	48 8d 05 c9 33 20 00 	lea    0x2033c9(%rip),%rax        # 8116d5 <L.215>
  60e30c:	48 89 c7             	mov    %rax,%rdi
  60e30f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e313:	41 ff d3             	call   *%r11
  60e316:	4c 8b 1d f3 4b 20 00 	mov    0x204bf3(%rip),%r11        # 812f10 <glad_glVertexAttrib4s-0x2010a0>
  60e31d:	49 89 03             	mov    %rax,(%r11)
  60e320:	48 8d 05 bf 33 20 00 	lea    0x2033bf(%rip),%rax        # 8116e6 <L.216>
  60e327:	48 89 c7             	mov    %rax,%rdi
  60e32a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e32e:	41 ff d3             	call   *%r11
  60e331:	4c 8b 1d e0 4b 20 00 	mov    0x204be0(%rip),%r11        # 812f18 <glad_glVertexAttrib4sv-0x2010a0>
  60e338:	49 89 03             	mov    %rax,(%r11)
  60e33b:	48 8d 05 b6 33 20 00 	lea    0x2033b6(%rip),%rax        # 8116f8 <L.217>
  60e342:	48 89 c7             	mov    %rax,%rdi
  60e345:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e349:	41 ff d3             	call   *%r11
  60e34c:	4c 8b 1d cd 4b 20 00 	mov    0x204bcd(%rip),%r11        # 812f20 <glad_glVertexAttrib4ubv-0x2010a0>
  60e353:	49 89 03             	mov    %rax,(%r11)
  60e356:	48 8d 05 ae 33 20 00 	lea    0x2033ae(%rip),%rax        # 81170b <L.218>
  60e35d:	48 89 c7             	mov    %rax,%rdi
  60e360:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e364:	41 ff d3             	call   *%r11
  60e367:	4c 8b 1d ba 4b 20 00 	mov    0x204bba(%rip),%r11        # 812f28 <glad_glVertexAttrib4uiv-0x2010a0>
  60e36e:	49 89 03             	mov    %rax,(%r11)
  60e371:	48 8d 05 a6 33 20 00 	lea    0x2033a6(%rip),%rax        # 81171e <L.219>
  60e378:	48 89 c7             	mov    %rax,%rdi
  60e37b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e37f:	41 ff d3             	call   *%r11
  60e382:	4c 8b 1d a7 4b 20 00 	mov    0x204ba7(%rip),%r11        # 812f30 <glad_glVertexAttrib4usv-0x2010a0>
  60e389:	49 89 03             	mov    %rax,(%r11)
  60e38c:	48 8d 05 9e 33 20 00 	lea    0x20339e(%rip),%rax        # 811731 <L.220>
  60e393:	48 89 c7             	mov    %rax,%rdi
  60e396:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e39a:	41 ff d3             	call   *%r11
  60e39d:	4c 8b 1d 44 45 20 00 	mov    0x204544(%rip),%r11        # 8128e8 <glad_glVertexAttribPointer-0x2017e0>
  60e3a4:	49 89 03             	mov    %rax,(%r11)
  60e3a7:	c9                   	leave
  60e3a8:	c3                   	ret

000000000060e3a9 <load_GL_VERSION_2_1>:
  60e3a9:	55                   	push   %rbp
  60e3aa:	48 89 e5             	mov    %rsp,%rbp
  60e3ad:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60e3b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60e3b8:	48 8b 05 79 4b 20 00 	mov    0x204b79(%rip),%rax        # 812f38 <GLAD_GL_VERSION_2_1-0x200614>
  60e3bf:	8b 00                	mov    (%rax),%eax
  60e3c1:	83 f8 00             	cmp    $0x0,%eax
  60e3c4:	0f 85 05 00 00 00    	jne    60e3cf <load_GL_VERSION_2_1+0x26>
  60e3ca:	e9 a2 00 00 00       	jmp    60e471 <load_GL_VERSION_2_1+0xc8>
  60e3cf:	48 8d 05 71 33 20 00 	lea    0x203371(%rip),%rax        # 811747 <L.221>
  60e3d6:	48 89 c7             	mov    %rax,%rdi
  60e3d9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e3dd:	41 ff d3             	call   *%r11
  60e3e0:	4c 8b 1d 59 4b 20 00 	mov    0x204b59(%rip),%r11        # 812f40 <glad_glUniformMatrix2x3fv-0x200f20>
  60e3e7:	49 89 03             	mov    %rax,(%r11)
  60e3ea:	48 8d 05 6b 33 20 00 	lea    0x20336b(%rip),%rax        # 81175c <L.222>
  60e3f1:	48 89 c7             	mov    %rax,%rdi
  60e3f4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e3f8:	41 ff d3             	call   *%r11
  60e3fb:	4c 8b 1d 46 4b 20 00 	mov    0x204b46(%rip),%r11        # 812f48 <glad_glUniformMatrix3x2fv-0x200f30>
  60e402:	49 89 03             	mov    %rax,(%r11)
  60e405:	48 8d 05 65 33 20 00 	lea    0x203365(%rip),%rax        # 811771 <L.223>
  60e40c:	48 89 c7             	mov    %rax,%rdi
  60e40f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e413:	41 ff d3             	call   *%r11
  60e416:	4c 8b 1d 33 4b 20 00 	mov    0x204b33(%rip),%r11        # 812f50 <glad_glUniformMatrix2x4fv-0x200f18>
  60e41d:	49 89 03             	mov    %rax,(%r11)
  60e420:	48 8d 05 5f 33 20 00 	lea    0x20335f(%rip),%rax        # 811786 <L.224>
  60e427:	48 89 c7             	mov    %rax,%rdi
  60e42a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e42e:	41 ff d3             	call   *%r11
  60e431:	4c 8b 1d 20 4b 20 00 	mov    0x204b20(%rip),%r11        # 812f58 <glad_glUniformMatrix4x2fv-0x200f38>
  60e438:	49 89 03             	mov    %rax,(%r11)
  60e43b:	48 8d 05 59 33 20 00 	lea    0x203359(%rip),%rax        # 81179b <L.225>
  60e442:	48 89 c7             	mov    %rax,%rdi
  60e445:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e449:	41 ff d3             	call   *%r11
  60e44c:	4c 8b 1d 0d 4b 20 00 	mov    0x204b0d(%rip),%r11        # 812f60 <glad_glUniformMatrix3x4fv-0x200f20>
  60e453:	49 89 03             	mov    %rax,(%r11)
  60e456:	48 8d 05 53 33 20 00 	lea    0x203353(%rip),%rax        # 8117b0 <L.226>
  60e45d:	48 89 c7             	mov    %rax,%rdi
  60e460:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e464:	41 ff d3             	call   *%r11
  60e467:	4c 8b 1d fa 4a 20 00 	mov    0x204afa(%rip),%r11        # 812f68 <glad_glUniformMatrix4x3fv-0x200f30>
  60e46e:	49 89 03             	mov    %rax,(%r11)
  60e471:	c9                   	leave
  60e472:	c3                   	ret

000000000060e473 <load_GL_VERSION_3_0>:
  60e473:	55                   	push   %rbp
  60e474:	48 89 e5             	mov    %rsp,%rbp
  60e477:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60e47e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60e482:	48 8b 05 e7 4a 20 00 	mov    0x204ae7(%rip),%rax        # 812f70 <GLAD_GL_VERSION_3_0-0x2005e0>
  60e489:	8b 00                	mov    (%rax),%eax
  60e48b:	83 f8 00             	cmp    $0x0,%eax
  60e48e:	0f 85 05 00 00 00    	jne    60e499 <load_GL_VERSION_3_0+0x26>
  60e494:	e9 dc 08 00 00       	jmp    60ed75 <load_GL_VERSION_3_0+0x902>
  60e499:	48 8d 05 25 33 20 00 	lea    0x203325(%rip),%rax        # 8117c5 <L.227>
  60e4a0:	48 89 c7             	mov    %rax,%rdi
  60e4a3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e4a7:	41 ff d3             	call   *%r11
  60e4aa:	4c 8b 1d c7 4a 20 00 	mov    0x204ac7(%rip),%r11        # 812f78 <glad_glColorMaski-0x200708>
  60e4b1:	49 89 03             	mov    %rax,(%r11)
  60e4b4:	48 8d 05 17 33 20 00 	lea    0x203317(%rip),%rax        # 8117d2 <L.228>
  60e4bb:	48 89 c7             	mov    %rax,%rdi
  60e4be:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e4c2:	41 ff d3             	call   *%r11
  60e4c5:	4c 8b 1d b4 4a 20 00 	mov    0x204ab4(%rip),%r11        # 812f80 <glad_glGetBooleani_v-0x200988>
  60e4cc:	49 89 03             	mov    %rax,(%r11)
  60e4cf:	48 8d 05 0c 33 20 00 	lea    0x20330c(%rip),%rax        # 8117e2 <L.229>
  60e4d6:	48 89 c7             	mov    %rax,%rdi
  60e4d9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e4dd:	41 ff d3             	call   *%r11
  60e4e0:	4c 8b 1d a1 4a 20 00 	mov    0x204aa1(%rip),%r11        # 812f88 <glad_glGetIntegeri_v-0x2009f8>
  60e4e7:	49 89 03             	mov    %rax,(%r11)
  60e4ea:	48 8d 05 01 33 20 00 	lea    0x203301(%rip),%rax        # 8117f2 <L.230>
  60e4f1:	48 89 c7             	mov    %rax,%rdi
  60e4f4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e4f8:	41 ff d3             	call   *%r11
  60e4fb:	4c 8b 1d 8e 4a 20 00 	mov    0x204a8e(%rip),%r11        # 812f90 <glad_glEnablei-0x200880>
  60e502:	49 89 03             	mov    %rax,(%r11)
  60e505:	48 8d 05 f0 32 20 00 	lea    0x2032f0(%rip),%rax        # 8117fc <L.231>
  60e50c:	48 89 c7             	mov    %rax,%rdi
  60e50f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e513:	41 ff d3             	call   *%r11
  60e516:	4c 8b 1d 7b 4a 20 00 	mov    0x204a7b(%rip),%r11        # 812f98 <glad_glDisablei-0x200810>
  60e51d:	49 89 03             	mov    %rax,(%r11)
  60e520:	48 8d 05 e0 32 20 00 	lea    0x2032e0(%rip),%rax        # 811807 <L.232>
  60e527:	48 89 c7             	mov    %rax,%rdi
  60e52a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e52e:	41 ff d3             	call   *%r11
  60e531:	4c 8b 1d 68 4a 20 00 	mov    0x204a68(%rip),%r11        # 812fa0 <glad_glIsEnabledi-0x200b40>
  60e538:	49 89 03             	mov    %rax,(%r11)
  60e53b:	48 8d 05 d2 32 20 00 	lea    0x2032d2(%rip),%rax        # 811814 <L.233>
  60e542:	48 89 c7             	mov    %rax,%rdi
  60e545:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e549:	41 ff d3             	call   *%r11
  60e54c:	4c 8b 1d 55 4a 20 00 	mov    0x204a55(%rip),%r11        # 812fa8 <glad_glBeginTransformFeedback-0x2005d8>
  60e553:	49 89 03             	mov    %rax,(%r11)
  60e556:	48 8d 05 d0 32 20 00 	lea    0x2032d0(%rip),%rax        # 81182d <L.234>
  60e55d:	48 89 c7             	mov    %rax,%rdi
  60e560:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e564:	41 ff d3             	call   *%r11
  60e567:	4c 8b 1d 42 4a 20 00 	mov    0x204a42(%rip),%r11        # 812fb0 <glad_glEndTransformFeedback-0x200878>
  60e56e:	49 89 03             	mov    %rax,(%r11)
  60e571:	48 8d 05 cc 32 20 00 	lea    0x2032cc(%rip),%rax        # 811844 <L.235>
  60e578:	48 89 c7             	mov    %rax,%rdi
  60e57b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e57f:	41 ff d3             	call   *%r11
  60e582:	4c 8b 1d 2f 4a 20 00 	mov    0x204a2f(%rip),%r11        # 812fb8 <glad_glBindBufferRange-0x2005e8>
  60e589:	49 89 03             	mov    %rax,(%r11)
  60e58c:	48 8d 05 c3 32 20 00 	lea    0x2032c3(%rip),%rax        # 811856 <L.236>
  60e593:	48 89 c7             	mov    %rax,%rdi
  60e596:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e59a:	41 ff d3             	call   *%r11
  60e59d:	4c 8b 1d 1c 4a 20 00 	mov    0x204a1c(%rip),%r11        # 812fc0 <glad_glBindBufferBase-0x2005d8>
  60e5a4:	49 89 03             	mov    %rax,(%r11)
  60e5a7:	48 8d 05 b9 32 20 00 	lea    0x2032b9(%rip),%rax        # 811867 <L.237>
  60e5ae:	48 89 c7             	mov    %rax,%rdi
  60e5b1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e5b5:	41 ff d3             	call   *%r11
  60e5b8:	4c 8b 1d 09 4a 20 00 	mov    0x204a09(%rip),%r11        # 812fc8 <glad_glTransformFeedbackVaryings-0x200dc0>
  60e5bf:	49 89 03             	mov    %rax,(%r11)
  60e5c2:	48 8d 05 ba 32 20 00 	lea    0x2032ba(%rip),%rax        # 811883 <L.238>
  60e5c9:	48 89 c7             	mov    %rax,%rdi
  60e5cc:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e5d0:	41 ff d3             	call   *%r11
  60e5d3:	4c 8b 1d f6 49 20 00 	mov    0x2049f6(%rip),%r11        # 812fd0 <glad_glGetTransformFeedbackVarying-0x200a90>
  60e5da:	49 89 03             	mov    %rax,(%r11)
  60e5dd:	48 8d 05 bd 32 20 00 	lea    0x2032bd(%rip),%rax        # 8118a1 <L.239>
  60e5e4:	48 89 c7             	mov    %rax,%rdi
  60e5e7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e5eb:	41 ff d3             	call   *%r11
  60e5ee:	4c 8b 1d e3 49 20 00 	mov    0x2049e3(%rip),%r11        # 812fd8 <glad_glClampColor-0x200650>
  60e5f5:	49 89 03             	mov    %rax,(%r11)
  60e5f8:	48 8d 05 af 32 20 00 	lea    0x2032af(%rip),%rax        # 8118ae <L.240>
  60e5ff:	48 89 c7             	mov    %rax,%rdi
  60e602:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e606:	41 ff d3             	call   *%r11
  60e609:	4c 8b 1d d0 49 20 00 	mov    0x2049d0(%rip),%r11        # 812fe0 <glad_glBeginConditionalRender-0x200590>
  60e610:	49 89 03             	mov    %rax,(%r11)
  60e613:	48 8d 05 ad 32 20 00 	lea    0x2032ad(%rip),%rax        # 8118c7 <L.241>
  60e61a:	48 89 c7             	mov    %rax,%rdi
  60e61d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e621:	41 ff d3             	call   *%r11
  60e624:	4c 8b 1d bd 49 20 00 	mov    0x2049bd(%rip),%r11        # 812fe8 <glad_glEndConditionalRender-0x200830>
  60e62b:	49 89 03             	mov    %rax,(%r11)
  60e62e:	48 8d 05 a9 32 20 00 	lea    0x2032a9(%rip),%rax        # 8118de <L.242>
  60e635:	48 89 c7             	mov    %rax,%rdi
  60e638:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e63c:	41 ff d3             	call   *%r11
  60e63f:	4c 8b 1d aa 49 20 00 	mov    0x2049aa(%rip),%r11        # 812ff0 <glad_glVertexAttribIPointer-0x201090>
  60e646:	49 89 03             	mov    %rax,(%r11)
  60e649:	48 8d 05 a5 32 20 00 	lea    0x2032a5(%rip),%rax        # 8118f5 <L.243>
  60e650:	48 89 c7             	mov    %rax,%rdi
  60e653:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e657:	41 ff d3             	call   *%r11
  60e65a:	4c 8b 1d 97 49 20 00 	mov    0x204997(%rip),%r11        # 812ff8 <glad_glGetVertexAttribIiv-0x200aa0>
  60e661:	49 89 03             	mov    %rax,(%r11)
  60e664:	48 8d 05 9f 32 20 00 	lea    0x20329f(%rip),%rax        # 81190a <L.244>
  60e66b:	48 89 c7             	mov    %rax,%rdi
  60e66e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e672:	41 ff d3             	call   *%r11
  60e675:	4c 8b 1d 84 49 20 00 	mov    0x204984(%rip),%r11        # 813000 <glad_glGetVertexAttribIuiv-0x200aa0>
  60e67c:	49 89 03             	mov    %rax,(%r11)
  60e67f:	48 8d 05 9a 32 20 00 	lea    0x20329a(%rip),%rax        # 811920 <L.245>
  60e686:	48 89 c7             	mov    %rax,%rdi
  60e689:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e68d:	41 ff d3             	call   *%r11
  60e690:	4c 8b 1d 71 49 20 00 	mov    0x204971(%rip),%r11        # 813008 <glad_glVertexAttribI1i-0x200fd8>
  60e697:	49 89 03             	mov    %rax,(%r11)
  60e69a:	48 8d 05 91 32 20 00 	lea    0x203291(%rip),%rax        # 811932 <L.246>
  60e6a1:	48 89 c7             	mov    %rax,%rdi
  60e6a4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e6a8:	41 ff d3             	call   *%r11
  60e6ab:	4c 8b 1d 5e 49 20 00 	mov    0x20495e(%rip),%r11        # 813010 <glad_glVertexAttribI2i-0x200ff0>
  60e6b2:	49 89 03             	mov    %rax,(%r11)
  60e6b5:	48 8d 05 88 32 20 00 	lea    0x203288(%rip),%rax        # 811944 <L.247>
  60e6bc:	48 89 c7             	mov    %rax,%rdi
  60e6bf:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e6c3:	41 ff d3             	call   *%r11
  60e6c6:	4c 8b 1d 4b 49 20 00 	mov    0x20494b(%rip),%r11        # 813018 <glad_glVertexAttribI3i-0x201008>
  60e6cd:	49 89 03             	mov    %rax,(%r11)
  60e6d0:	48 8d 05 7f 32 20 00 	lea    0x20327f(%rip),%rax        # 811956 <L.248>
  60e6d7:	48 89 c7             	mov    %rax,%rdi
  60e6da:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e6de:	41 ff d3             	call   *%r11
  60e6e1:	4c 8b 1d 38 49 20 00 	mov    0x204938(%rip),%r11        # 813020 <glad_glVertexAttribI4i-0x201028>
  60e6e8:	49 89 03             	mov    %rax,(%r11)
  60e6eb:	48 8d 05 76 32 20 00 	lea    0x203276(%rip),%rax        # 811968 <L.249>
  60e6f2:	48 89 c7             	mov    %rax,%rdi
  60e6f5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e6f9:	41 ff d3             	call   *%r11
  60e6fc:	4c 8b 1d 25 49 20 00 	mov    0x204925(%rip),%r11        # 813028 <glad_glVertexAttribI1ui-0x200fc8>
  60e703:	49 89 03             	mov    %rax,(%r11)
  60e706:	48 8d 05 6e 32 20 00 	lea    0x20326e(%rip),%rax        # 81197b <L.250>
  60e70d:	48 89 c7             	mov    %rax,%rdi
  60e710:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e714:	41 ff d3             	call   *%r11
  60e717:	4c 8b 1d 12 49 20 00 	mov    0x204912(%rip),%r11        # 813030 <glad_glVertexAttribI2ui-0x200fe0>
  60e71e:	49 89 03             	mov    %rax,(%r11)
  60e721:	48 8d 05 66 32 20 00 	lea    0x203266(%rip),%rax        # 81198e <L.251>
  60e728:	48 89 c7             	mov    %rax,%rdi
  60e72b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e72f:	41 ff d3             	call   *%r11
  60e732:	4c 8b 1d ff 48 20 00 	mov    0x2048ff(%rip),%r11        # 813038 <glad_glVertexAttribI3ui-0x200ff8>
  60e739:	49 89 03             	mov    %rax,(%r11)
  60e73c:	48 8d 05 5e 32 20 00 	lea    0x20325e(%rip),%rax        # 8119a1 <L.252>
  60e743:	48 89 c7             	mov    %rax,%rdi
  60e746:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e74a:	41 ff d3             	call   *%r11
  60e74d:	4c 8b 1d ec 48 20 00 	mov    0x2048ec(%rip),%r11        # 813040 <glad_glVertexAttribI4ui-0x201028>
  60e754:	49 89 03             	mov    %rax,(%r11)
  60e757:	48 8d 05 56 32 20 00 	lea    0x203256(%rip),%rax        # 8119b4 <L.253>
  60e75e:	48 89 c7             	mov    %rax,%rdi
  60e761:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e765:	41 ff d3             	call   *%r11
  60e768:	4c 8b 1d d9 48 20 00 	mov    0x2048d9(%rip),%r11        # 813048 <glad_glVertexAttribI1iv-0x200fa0>
  60e76f:	49 89 03             	mov    %rax,(%r11)
  60e772:	48 8d 05 4e 32 20 00 	lea    0x20324e(%rip),%rax        # 8119c7 <L.254>
  60e779:	48 89 c7             	mov    %rax,%rdi
  60e77c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e780:	41 ff d3             	call   *%r11
  60e783:	4c 8b 1d c6 48 20 00 	mov    0x2048c6(%rip),%r11        # 813050 <glad_glVertexAttribI2iv-0x200fb8>
  60e78a:	49 89 03             	mov    %rax,(%r11)
  60e78d:	48 8d 05 46 32 20 00 	lea    0x203246(%rip),%rax        # 8119da <L.255>
  60e794:	48 89 c7             	mov    %rax,%rdi
  60e797:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e79b:	41 ff d3             	call   *%r11
  60e79e:	4c 8b 1d b3 48 20 00 	mov    0x2048b3(%rip),%r11        # 813058 <glad_glVertexAttribI3iv-0x200fd0>
  60e7a5:	49 89 03             	mov    %rax,(%r11)
  60e7a8:	48 8d 05 3e 32 20 00 	lea    0x20323e(%rip),%rax        # 8119ed <L.256>
  60e7af:	48 89 c7             	mov    %rax,%rdi
  60e7b2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e7b6:	41 ff d3             	call   *%r11
  60e7b9:	4c 8b 1d a0 48 20 00 	mov    0x2048a0(%rip),%r11        # 813060 <glad_glVertexAttribI4iv-0x200ff0>
  60e7c0:	49 89 03             	mov    %rax,(%r11)
  60e7c3:	48 8d 05 36 32 20 00 	lea    0x203236(%rip),%rax        # 811a00 <L.257>
  60e7ca:	48 89 c7             	mov    %rax,%rdi
  60e7cd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e7d1:	41 ff d3             	call   *%r11
  60e7d4:	4c 8b 1d 8d 48 20 00 	mov    0x20488d(%rip),%r11        # 813068 <glad_glVertexAttribI1uiv-0x200f90>
  60e7db:	49 89 03             	mov    %rax,(%r11)
  60e7de:	48 8d 05 2f 32 20 00 	lea    0x20322f(%rip),%rax        # 811a14 <L.258>
  60e7e5:	48 89 c7             	mov    %rax,%rdi
  60e7e8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e7ec:	41 ff d3             	call   *%r11
  60e7ef:	4c 8b 1d 7a 48 20 00 	mov    0x20487a(%rip),%r11        # 813070 <glad_glVertexAttribI2uiv-0x200fa8>
  60e7f6:	49 89 03             	mov    %rax,(%r11)
  60e7f9:	48 8d 05 28 32 20 00 	lea    0x203228(%rip),%rax        # 811a28 <L.259>
  60e800:	48 89 c7             	mov    %rax,%rdi
  60e803:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e807:	41 ff d3             	call   *%r11
  60e80a:	4c 8b 1d 67 48 20 00 	mov    0x204867(%rip),%r11        # 813078 <glad_glVertexAttribI3uiv-0x200fc0>
  60e811:	49 89 03             	mov    %rax,(%r11)
  60e814:	48 8d 05 21 32 20 00 	lea    0x203221(%rip),%rax        # 811a3c <L.260>
  60e81b:	48 89 c7             	mov    %rax,%rdi
  60e81e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e822:	41 ff d3             	call   *%r11
  60e825:	4c 8b 1d 54 48 20 00 	mov    0x204854(%rip),%r11        # 813080 <glad_glVertexAttribI4uiv-0x200ff0>
  60e82c:	49 89 03             	mov    %rax,(%r11)
  60e82f:	48 8d 05 1a 32 20 00 	lea    0x20321a(%rip),%rax        # 811a50 <L.261>
  60e836:	48 89 c7             	mov    %rax,%rdi
  60e839:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e83d:	41 ff d3             	call   *%r11
  60e840:	4c 8b 1d 41 48 20 00 	mov    0x204841(%rip),%r11        # 813088 <glad_glVertexAttribI4bv-0x200fb8>
  60e847:	49 89 03             	mov    %rax,(%r11)
  60e84a:	48 8d 05 12 32 20 00 	lea    0x203212(%rip),%rax        # 811a63 <L.262>
  60e851:	48 89 c7             	mov    %rax,%rdi
  60e854:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e858:	41 ff d3             	call   *%r11
  60e85b:	4c 8b 1d 2e 48 20 00 	mov    0x20482e(%rip),%r11        # 813090 <glad_glVertexAttribI4sv-0x200fc8>
  60e862:	49 89 03             	mov    %rax,(%r11)
  60e865:	48 8d 05 0a 32 20 00 	lea    0x20320a(%rip),%rax        # 811a76 <L.263>
  60e86c:	48 89 c7             	mov    %rax,%rdi
  60e86f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e873:	41 ff d3             	call   *%r11
  60e876:	4c 8b 1d 1b 48 20 00 	mov    0x20481b(%rip),%r11        # 813098 <glad_glVertexAttribI4ubv-0x200fc8>
  60e87d:	49 89 03             	mov    %rax,(%r11)
  60e880:	48 8d 05 03 32 20 00 	lea    0x203203(%rip),%rax        # 811a8a <L.264>
  60e887:	48 89 c7             	mov    %rax,%rdi
  60e88a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e88e:	41 ff d3             	call   *%r11
  60e891:	4c 8b 1d 08 48 20 00 	mov    0x204808(%rip),%r11        # 8130a0 <glad_glVertexAttribI4usv-0x200fd8>
  60e898:	49 89 03             	mov    %rax,(%r11)
  60e89b:	48 8d 05 fc 31 20 00 	lea    0x2031fc(%rip),%rax        # 811a9e <L.265>
  60e8a2:	48 89 c7             	mov    %rax,%rdi
  60e8a5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e8a9:	41 ff d3             	call   *%r11
  60e8ac:	4c 8b 1d f5 47 20 00 	mov    0x2047f5(%rip),%r11        # 8130a8 <glad_glGetUniformuiv-0x2009e8>
  60e8b3:	49 89 03             	mov    %rax,(%r11)
  60e8b6:	48 8d 05 f1 31 20 00 	lea    0x2031f1(%rip),%rax        # 811aae <L.266>
  60e8bd:	48 89 c7             	mov    %rax,%rdi
  60e8c0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e8c4:	41 ff d3             	call   *%r11
  60e8c7:	4c 8b 1d e2 47 20 00 	mov    0x2047e2(%rip),%r11        # 8130b0 <glad_glBindFragDataLocation-0x2004f8>
  60e8ce:	49 89 03             	mov    %rax,(%r11)
  60e8d1:	48 8d 05 ed 31 20 00 	lea    0x2031ed(%rip),%rax        # 811ac5 <L.267>
  60e8d8:	48 89 c7             	mov    %rax,%rdi
  60e8db:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e8df:	41 ff d3             	call   *%r11
  60e8e2:	4c 8b 1d cf 47 20 00 	mov    0x2047cf(%rip),%r11        # 8130b8 <glad_glGetFragDataLocation-0x2008a8>
  60e8e9:	49 89 03             	mov    %rax,(%r11)
  60e8ec:	48 8d 05 e8 31 20 00 	lea    0x2031e8(%rip),%rax        # 811adb <L.268>
  60e8f3:	48 89 c7             	mov    %rax,%rdi
  60e8f6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e8fa:	41 ff d3             	call   *%r11
  60e8fd:	4c 8b 1d bc 47 20 00 	mov    0x2047bc(%rip),%r11        # 8130c0 <glad_glUniform1ui-0x200cf0>
  60e904:	49 89 03             	mov    %rax,(%r11)
  60e907:	48 8d 05 da 31 20 00 	lea    0x2031da(%rip),%rax        # 811ae8 <L.269>
  60e90e:	48 89 c7             	mov    %rax,%rdi
  60e911:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e915:	41 ff d3             	call   *%r11
  60e918:	4c 8b 1d a9 47 20 00 	mov    0x2047a9(%rip),%r11        # 8130c8 <glad_glUniform2ui-0x200d18>
  60e91f:	49 89 03             	mov    %rax,(%r11)
  60e922:	48 8d 05 cc 31 20 00 	lea    0x2031cc(%rip),%rax        # 811af5 <L.270>
  60e929:	48 89 c7             	mov    %rax,%rdi
  60e92c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e930:	41 ff d3             	call   *%r11
  60e933:	4c 8b 1d 96 47 20 00 	mov    0x204796(%rip),%r11        # 8130d0 <glad_glUniform3ui-0x200d40>
  60e93a:	49 89 03             	mov    %rax,(%r11)
  60e93d:	48 8d 05 be 31 20 00 	lea    0x2031be(%rip),%rax        # 811b02 <L.271>
  60e944:	48 89 c7             	mov    %rax,%rdi
  60e947:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e94b:	41 ff d3             	call   *%r11
  60e94e:	4c 8b 1d 83 47 20 00 	mov    0x204783(%rip),%r11        # 8130d8 <glad_glUniform4ui-0x200d68>
  60e955:	49 89 03             	mov    %rax,(%r11)
  60e958:	48 8d 05 b0 31 20 00 	lea    0x2031b0(%rip),%rax        # 811b0f <L.272>
  60e95f:	48 89 c7             	mov    %rax,%rdi
  60e962:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e966:	41 ff d3             	call   *%r11
  60e969:	4c 8b 1d 70 47 20 00 	mov    0x204770(%rip),%r11        # 8130e0 <glad_glUniform1uiv-0x200cd8>
  60e970:	49 89 03             	mov    %rax,(%r11)
  60e973:	48 8d 05 a3 31 20 00 	lea    0x2031a3(%rip),%rax        # 811b1d <L.273>
  60e97a:	48 89 c7             	mov    %rax,%rdi
  60e97d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e981:	41 ff d3             	call   *%r11
  60e984:	4c 8b 1d 5d 47 20 00 	mov    0x20475d(%rip),%r11        # 8130e8 <glad_glUniform2uiv-0x200d00>
  60e98b:	49 89 03             	mov    %rax,(%r11)
  60e98e:	48 8d 05 96 31 20 00 	lea    0x203196(%rip),%rax        # 811b2b <L.274>
  60e995:	48 89 c7             	mov    %rax,%rdi
  60e998:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e99c:	41 ff d3             	call   *%r11
  60e99f:	4c 8b 1d 4a 47 20 00 	mov    0x20474a(%rip),%r11        # 8130f0 <glad_glUniform3uiv-0x200d28>
  60e9a6:	49 89 03             	mov    %rax,(%r11)
  60e9a9:	48 8d 05 89 31 20 00 	lea    0x203189(%rip),%rax        # 811b39 <L.275>
  60e9b0:	48 89 c7             	mov    %rax,%rdi
  60e9b3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e9b7:	41 ff d3             	call   *%r11
  60e9ba:	4c 8b 1d 37 47 20 00 	mov    0x204737(%rip),%r11        # 8130f8 <glad_glUniform4uiv-0x200d50>
  60e9c1:	49 89 03             	mov    %rax,(%r11)
  60e9c4:	48 8d 05 7c 31 20 00 	lea    0x20317c(%rip),%rax        # 811b47 <L.276>
  60e9cb:	48 89 c7             	mov    %rax,%rdi
  60e9ce:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e9d2:	41 ff d3             	call   *%r11
  60e9d5:	4c 8b 1d 24 47 20 00 	mov    0x204724(%rip),%r11        # 813100 <glad_glTexParameterIiv-0x200c40>
  60e9dc:	49 89 03             	mov    %rax,(%r11)
  60e9df:	48 8d 05 73 31 20 00 	lea    0x203173(%rip),%rax        # 811b59 <L.277>
  60e9e6:	48 89 c7             	mov    %rax,%rdi
  60e9e9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60e9ed:	41 ff d3             	call   *%r11
  60e9f0:	4c 8b 1d 11 47 20 00 	mov    0x204711(%rip),%r11        # 813108 <glad_glTexParameterIuiv-0x200c40>
  60e9f7:	49 89 03             	mov    %rax,(%r11)
  60e9fa:	48 8d 05 6b 31 20 00 	lea    0x20316b(%rip),%rax        # 811b6c <L.278>
  60ea01:	48 89 c7             	mov    %rax,%rdi
  60ea04:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea08:	41 ff d3             	call   *%r11
  60ea0b:	4c 8b 1d fe 46 20 00 	mov    0x2046fe(%rip),%r11        # 813110 <glad_glGetTexParameterIiv-0x200930>
  60ea12:	49 89 03             	mov    %rax,(%r11)
  60ea15:	48 8d 05 65 31 20 00 	lea    0x203165(%rip),%rax        # 811b81 <L.279>
  60ea1c:	48 89 c7             	mov    %rax,%rdi
  60ea1f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea23:	41 ff d3             	call   *%r11
  60ea26:	4c 8b 1d eb 46 20 00 	mov    0x2046eb(%rip),%r11        # 813118 <glad_glGetTexParameterIuiv-0x200930>
  60ea2d:	49 89 03             	mov    %rax,(%r11)
  60ea30:	48 8d 05 60 31 20 00 	lea    0x203160(%rip),%rax        # 811b97 <L.280>
  60ea37:	48 89 c7             	mov    %rax,%rdi
  60ea3a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea3e:	41 ff d3             	call   *%r11
  60ea41:	4c 8b 1d d8 46 20 00 	mov    0x2046d8(%rip),%r11        # 813120 <glad_glClearBufferiv-0x200528>
  60ea48:	49 89 03             	mov    %rax,(%r11)
  60ea4b:	48 8d 05 55 31 20 00 	lea    0x203155(%rip),%rax        # 811ba7 <L.281>
  60ea52:	48 89 c7             	mov    %rax,%rdi
  60ea55:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea59:	41 ff d3             	call   *%r11
  60ea5c:	4c 8b 1d c5 46 20 00 	mov    0x2046c5(%rip),%r11        # 813128 <glad_glClearBufferuiv-0x200528>
  60ea63:	49 89 03             	mov    %rax,(%r11)
  60ea66:	48 8d 05 4b 31 20 00 	lea    0x20314b(%rip),%rax        # 811bb8 <L.282>
  60ea6d:	48 89 c7             	mov    %rax,%rdi
  60ea70:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea74:	41 ff d3             	call   *%r11
  60ea77:	4c 8b 1d b2 46 20 00 	mov    0x2046b2(%rip),%r11        # 813130 <glad_glClearBufferfv-0x200510>
  60ea7e:	49 89 03             	mov    %rax,(%r11)
  60ea81:	48 8d 05 40 31 20 00 	lea    0x203140(%rip),%rax        # 811bc8 <L.283>
  60ea88:	48 89 c7             	mov    %rax,%rdi
  60ea8b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ea8f:	41 ff d3             	call   *%r11
  60ea92:	4c 8b 1d 9f 46 20 00 	mov    0x20469f(%rip),%r11        # 813138 <glad_glClearBufferfi-0x200500>
  60ea99:	49 89 03             	mov    %rax,(%r11)
  60ea9c:	48 8d 05 35 31 20 00 	lea    0x203135(%rip),%rax        # 811bd8 <L.284>
  60eaa3:	48 89 c7             	mov    %rax,%rdi
  60eaa6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eaaa:	41 ff d3             	call   *%r11
  60eaad:	4c 8b 1d ec 3e 20 00 	mov    0x203eec(%rip),%r11        # 8129a0 <glad_glGetStringi-0x201078>
  60eab4:	49 89 03             	mov    %rax,(%r11)
  60eab7:	48 8d 05 27 31 20 00 	lea    0x203127(%rip),%rax        # 811be5 <L.285>
  60eabe:	48 89 c7             	mov    %rax,%rdi
  60eac1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eac5:	41 ff d3             	call   *%r11
  60eac8:	4c 8b 1d 71 46 20 00 	mov    0x204671(%rip),%r11        # 813140 <glad_glIsRenderbuffer-0x2009c0>
  60eacf:	49 89 03             	mov    %rax,(%r11)
  60ead2:	48 8d 05 1d 31 20 00 	lea    0x20311d(%rip),%rax        # 811bf6 <L.286>
  60ead9:	48 89 c7             	mov    %rax,%rdi
  60eadc:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eae0:	41 ff d3             	call   *%r11
  60eae3:	4c 8b 1d 5e 46 20 00 	mov    0x20465e(%rip),%r11        # 813148 <glad_glBindRenderbuffer-0x200478>
  60eaea:	49 89 03             	mov    %rax,(%r11)
  60eaed:	48 8d 05 15 31 20 00 	lea    0x203115(%rip),%rax        # 811c09 <L.287>
  60eaf4:	48 89 c7             	mov    %rax,%rdi
  60eaf7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eafb:	41 ff d3             	call   *%r11
  60eafe:	4c 8b 1d 4b 46 20 00 	mov    0x20464b(%rip),%r11        # 813150 <glad_glDeleteRenderbuffers-0x2005f8>
  60eb05:	49 89 03             	mov    %rax,(%r11)
  60eb08:	48 8d 05 10 31 20 00 	lea    0x203110(%rip),%rax        # 811c1f <L.288>
  60eb0f:	48 89 c7             	mov    %rax,%rdi
  60eb12:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb16:	41 ff d3             	call   *%r11
  60eb19:	4c 8b 1d 38 46 20 00 	mov    0x204638(%rip),%r11        # 813158 <glad_glGenRenderbuffers-0x200748>
  60eb20:	49 89 03             	mov    %rax,(%r11)
  60eb23:	48 8d 05 08 31 20 00 	lea    0x203108(%rip),%rax        # 811c32 <L.289>
  60eb2a:	48 89 c7             	mov    %rax,%rdi
  60eb2d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb31:	41 ff d3             	call   *%r11
  60eb34:	4c 8b 1d 25 46 20 00 	mov    0x204625(%rip),%r11        # 813160 <glad_glRenderbufferStorage-0x200ad0>
  60eb3b:	49 89 03             	mov    %rax,(%r11)
  60eb3e:	48 8d 05 03 31 20 00 	lea    0x203103(%rip),%rax        # 811c48 <L.290>
  60eb45:	48 89 c7             	mov    %rax,%rdi
  60eb48:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb4c:	41 ff d3             	call   *%r11
  60eb4f:	4c 8b 1d 12 46 20 00 	mov    0x204612(%rip),%r11        # 813168 <glad_glGetRenderbufferParameteriv-0x200868>
  60eb56:	49 89 03             	mov    %rax,(%r11)
  60eb59:	48 8d 05 05 31 20 00 	lea    0x203105(%rip),%rax        # 811c65 <L.291>
  60eb60:	48 89 c7             	mov    %rax,%rdi
  60eb63:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb67:	41 ff d3             	call   *%r11
  60eb6a:	4c 8b 1d ff 45 20 00 	mov    0x2045ff(%rip),%r11        # 813170 <glad_glIsFramebuffer-0x200978>
  60eb71:	49 89 03             	mov    %rax,(%r11)
  60eb74:	48 8d 05 fa 30 20 00 	lea    0x2030fa(%rip),%rax        # 811c75 <L.292>
  60eb7b:	48 89 c7             	mov    %rax,%rdi
  60eb7e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb82:	41 ff d3             	call   *%r11
  60eb85:	4c 8b 1d ec 45 20 00 	mov    0x2045ec(%rip),%r11        # 813178 <glad_glBindFramebuffer-0x200440>
  60eb8c:	49 89 03             	mov    %rax,(%r11)
  60eb8f:	48 8d 05 f1 30 20 00 	lea    0x2030f1(%rip),%rax        # 811c87 <L.293>
  60eb96:	48 89 c7             	mov    %rax,%rdi
  60eb99:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eb9d:	41 ff d3             	call   *%r11
  60eba0:	4c 8b 1d d9 45 20 00 	mov    0x2045d9(%rip),%r11        # 813180 <glad_glDeleteFramebuffers-0x2005b0>
  60eba7:	49 89 03             	mov    %rax,(%r11)
  60ebaa:	48 8d 05 eb 30 20 00 	lea    0x2030eb(%rip),%rax        # 811c9c <L.294>
  60ebb1:	48 89 c7             	mov    %rax,%rdi
  60ebb4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ebb8:	41 ff d3             	call   *%r11
  60ebbb:	4c 8b 1d c6 45 20 00 	mov    0x2045c6(%rip),%r11        # 813188 <glad_glGenFramebuffers-0x200708>
  60ebc2:	49 89 03             	mov    %rax,(%r11)
  60ebc5:	48 8d 05 e2 30 20 00 	lea    0x2030e2(%rip),%rax        # 811cae <L.295>
  60ebcc:	48 89 c7             	mov    %rax,%rdi
  60ebcf:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ebd3:	41 ff d3             	call   *%r11
  60ebd6:	4c 8b 1d b3 45 20 00 	mov    0x2045b3(%rip),%r11        # 813190 <glad_glCheckFramebufferStatus-0x200490>
  60ebdd:	49 89 03             	mov    %rax,(%r11)
  60ebe0:	48 8d 05 e0 30 20 00 	lea    0x2030e0(%rip),%rax        # 811cc7 <L.296>
  60ebe7:	48 89 c7             	mov    %rax,%rdi
  60ebea:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ebee:	41 ff d3             	call   *%r11
  60ebf1:	4c 8b 1d a0 45 20 00 	mov    0x2045a0(%rip),%r11        # 813198 <glad_glFramebufferTexture1D-0x2006c8>
  60ebf8:	49 89 03             	mov    %rax,(%r11)
  60ebfb:	48 8d 05 dc 30 20 00 	lea    0x2030dc(%rip),%rax        # 811cde <L.297>
  60ec02:	48 89 c7             	mov    %rax,%rdi
  60ec05:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec09:	41 ff d3             	call   *%r11
  60ec0c:	4c 8b 1d 8d 45 20 00 	mov    0x20458d(%rip),%r11        # 8131a0 <glad_glFramebufferTexture2D-0x2006c8>
  60ec13:	49 89 03             	mov    %rax,(%r11)
  60ec16:	48 8d 05 d8 30 20 00 	lea    0x2030d8(%rip),%rax        # 811cf5 <L.298>
  60ec1d:	48 89 c7             	mov    %rax,%rdi
  60ec20:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec24:	41 ff d3             	call   *%r11
  60ec27:	4c 8b 1d 7a 45 20 00 	mov    0x20457a(%rip),%r11        # 8131a8 <glad_glFramebufferTexture3D-0x2006c8>
  60ec2e:	49 89 03             	mov    %rax,(%r11)
  60ec31:	48 8d 05 d4 30 20 00 	lea    0x2030d4(%rip),%rax        # 811d0c <L.299>
  60ec38:	48 89 c7             	mov    %rax,%rdi
  60ec3b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec3f:	41 ff d3             	call   *%r11
  60ec42:	4c 8b 1d 67 45 20 00 	mov    0x204567(%rip),%r11        # 8131b0 <glad_glFramebufferRenderbuffer-0x2006a0>
  60ec49:	49 89 03             	mov    %rax,(%r11)
  60ec4c:	48 8d 05 d3 30 20 00 	lea    0x2030d3(%rip),%rax        # 811d26 <L.300>
  60ec53:	48 89 c7             	mov    %rax,%rdi
  60ec56:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec5a:	41 ff d3             	call   *%r11
  60ec5d:	4c 8b 1d 54 45 20 00 	mov    0x204554(%rip),%r11        # 8131b8 <glad_glGetFramebufferAttachmentParameteriv-0x2007b0>
  60ec64:	49 89 03             	mov    %rax,(%r11)
  60ec67:	48 8d 05 de 30 20 00 	lea    0x2030de(%rip),%rax        # 811d4c <L.301>
  60ec6e:	48 89 c7             	mov    %rax,%rdi
  60ec71:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec75:	41 ff d3             	call   *%r11
  60ec78:	4c 8b 1d 41 45 20 00 	mov    0x204541(%rip),%r11        # 8131c0 <glad_glGenerateMipmap-0x200700>
  60ec7f:	49 89 03             	mov    %rax,(%r11)
  60ec82:	48 8d 05 d4 30 20 00 	lea    0x2030d4(%rip),%rax        # 811d5d <L.302>
  60ec89:	48 89 c7             	mov    %rax,%rdi
  60ec8c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ec90:	41 ff d3             	call   *%r11
  60ec93:	4c 8b 1d 2e 45 20 00 	mov    0x20452e(%rip),%r11        # 8131c8 <glad_glBlitFramebuffer-0x200440>
  60ec9a:	49 89 03             	mov    %rax,(%r11)
  60ec9d:	48 8d 05 cb 30 20 00 	lea    0x2030cb(%rip),%rax        # 811d6f <L.303>
  60eca4:	48 89 c7             	mov    %rax,%rdi
  60eca7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ecab:	41 ff d3             	call   *%r11
  60ecae:	4c 8b 1d 1b 45 20 00 	mov    0x20451b(%rip),%r11        # 8131d0 <glad_glRenderbufferStorageMultisample-0x200a68>
  60ecb5:	49 89 03             	mov    %rax,(%r11)
  60ecb8:	48 8d 05 d1 30 20 00 	lea    0x2030d1(%rip),%rax        # 811d90 <L.304>
  60ecbf:	48 89 c7             	mov    %rax,%rdi
  60ecc2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ecc6:	41 ff d3             	call   *%r11
  60ecc9:	4c 8b 1d 08 45 20 00 	mov    0x204508(%rip),%r11        # 8131d8 <glad_glFramebufferTextureLayer-0x2006a0>
  60ecd0:	49 89 03             	mov    %rax,(%r11)
  60ecd3:	48 8d 05 d0 30 20 00 	lea    0x2030d0(%rip),%rax        # 811daa <L.305>
  60ecda:	48 89 c7             	mov    %rax,%rdi
  60ecdd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ece1:	41 ff d3             	call   *%r11
  60ece4:	4c 8b 1d f5 44 20 00 	mov    0x2044f5(%rip),%r11        # 8131e0 <glad_glMapBufferRange-0x200970>
  60eceb:	49 89 03             	mov    %rax,(%r11)
  60ecee:	48 8d 05 c6 30 20 00 	lea    0x2030c6(%rip),%rax        # 811dbb <L.306>
  60ecf5:	48 89 c7             	mov    %rax,%rdi
  60ecf8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ecfc:	41 ff d3             	call   *%r11
  60ecff:	4c 8b 1d e2 44 20 00 	mov    0x2044e2(%rip),%r11        # 8131e8 <glad_glFlushMappedBufferRange-0x200660>
  60ed06:	49 89 03             	mov    %rax,(%r11)
  60ed09:	48 8d 05 c4 30 20 00 	lea    0x2030c4(%rip),%rax        # 811dd4 <L.307>
  60ed10:	48 89 c7             	mov    %rax,%rdi
  60ed13:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ed17:	41 ff d3             	call   *%r11
  60ed1a:	4c 8b 1d af 3b 20 00 	mov    0x203baf(%rip),%r11        # 8128d0 <glad_glBindVertexArray-0x200d08>
  60ed21:	49 89 03             	mov    %rax,(%r11)
  60ed24:	48 8d 05 bb 30 20 00 	lea    0x2030bb(%rip),%rax        # 811de6 <L.308>
  60ed2b:	48 89 c7             	mov    %rax,%rdi
  60ed2e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ed32:	41 ff d3             	call   *%r11
  60ed35:	4c 8b 1d b4 44 20 00 	mov    0x2044b4(%rip),%r11        # 8131f0 <glad_glDeleteVertexArrays-0x200580>
  60ed3c:	49 89 03             	mov    %rax,(%r11)
  60ed3f:	48 8d 05 b5 30 20 00 	lea    0x2030b5(%rip),%rax        # 811dfb <L.309>
  60ed46:	48 89 c7             	mov    %rax,%rdi
  60ed49:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ed4d:	41 ff d3             	call   *%r11
  60ed50:	4c 8b 1d 69 3b 20 00 	mov    0x203b69(%rip),%r11        # 8128c0 <glad_glGenVertexArrays-0x200ff8>
  60ed57:	49 89 03             	mov    %rax,(%r11)
  60ed5a:	48 8d 05 ac 30 20 00 	lea    0x2030ac(%rip),%rax        # 811e0d <L.310>
  60ed61:	48 89 c7             	mov    %rax,%rdi
  60ed64:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ed68:	41 ff d3             	call   *%r11
  60ed6b:	4c 8b 1d 86 44 20 00 	mov    0x204486(%rip),%r11        # 8131f8 <glad_glIsVertexArray-0x200930>
  60ed72:	49 89 03             	mov    %rax,(%r11)
  60ed75:	c9                   	leave
  60ed76:	c3                   	ret

000000000060ed77 <load_GL_VERSION_3_1>:
  60ed77:	55                   	push   %rbp
  60ed78:	48 89 e5             	mov    %rsp,%rbp
  60ed7b:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60ed82:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60ed86:	48 8b 05 73 44 20 00 	mov    0x204473(%rip),%rax        # 813200 <GLAD_GL_VERSION_3_1-0x200354>
  60ed8d:	8b 00                	mov    (%rax),%eax
  60ed8f:	83 f8 00             	cmp    $0x0,%eax
  60ed92:	0f 85 05 00 00 00    	jne    60ed9d <load_GL_VERSION_3_1+0x26>
  60ed98:	e9 95 01 00 00       	jmp    60ef32 <load_GL_VERSION_3_1+0x1bb>
  60ed9d:	48 8d 05 79 30 20 00 	lea    0x203079(%rip),%rax        # 811e1d <L.311>
  60eda4:	48 89 c7             	mov    %rax,%rdi
  60eda7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60edab:	41 ff d3             	call   *%r11
  60edae:	4c 8b 1d 53 44 20 00 	mov    0x204453(%rip),%r11        # 813208 <glad_glDrawArraysInstanced-0x2005b0>
  60edb5:	49 89 03             	mov    %rax,(%r11)
  60edb8:	48 8d 05 74 30 20 00 	lea    0x203074(%rip),%rax        # 811e33 <L.312>
  60edbf:	48 89 c7             	mov    %rax,%rdi
  60edc2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60edc6:	41 ff d3             	call   *%r11
  60edc9:	4c 8b 1d 40 44 20 00 	mov    0x204440(%rip),%r11        # 813210 <glad_glDrawElementsInstanced-0x2005d0>
  60edd0:	49 89 03             	mov    %rax,(%r11)
  60edd3:	48 8d 05 71 30 20 00 	lea    0x203071(%rip),%rax        # 811e4b <L.313>
  60edda:	48 89 c7             	mov    %rax,%rdi
  60eddd:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ede1:	41 ff d3             	call   *%r11
  60ede4:	4c 8b 1d 2d 44 20 00 	mov    0x20442d(%rip),%r11        # 813218 <glad_glTexBuffer-0x200ab8>
  60edeb:	49 89 03             	mov    %rax,(%r11)
  60edee:	48 8d 05 62 30 20 00 	lea    0x203062(%rip),%rax        # 811e57 <L.314>
  60edf5:	48 89 c7             	mov    %rax,%rdi
  60edf8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60edfc:	41 ff d3             	call   *%r11
  60edff:	4c 8b 1d 1a 44 20 00 	mov    0x20441a(%rip),%r11        # 813220 <glad_glPrimitiveRestartIndex-0x2009e8>
  60ee06:	49 89 03             	mov    %rax,(%r11)
  60ee09:	48 8d 05 5f 30 20 00 	lea    0x20305f(%rip),%rax        # 811e6f <L.315>
  60ee10:	48 89 c7             	mov    %rax,%rdi
  60ee13:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee17:	41 ff d3             	call   *%r11
  60ee1a:	4c 8b 1d 07 44 20 00 	mov    0x204407(%rip),%r11        # 813228 <glad_glCopyBufferSubData-0x2004b8>
  60ee21:	49 89 03             	mov    %rax,(%r11)
  60ee24:	48 8d 05 58 30 20 00 	lea    0x203058(%rip),%rax        # 811e83 <L.316>
  60ee2b:	48 89 c7             	mov    %rax,%rdi
  60ee2e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee32:	41 ff d3             	call   *%r11
  60ee35:	4c 8b 1d f4 43 20 00 	mov    0x2043f4(%rip),%r11        # 813230 <glad_glGetUniformIndices-0x200840>
  60ee3c:	49 89 03             	mov    %rax,(%r11)
  60ee3f:	48 8d 05 51 30 20 00 	lea    0x203051(%rip),%rax        # 811e97 <L.317>
  60ee46:	48 89 c7             	mov    %rax,%rdi
  60ee49:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee4d:	41 ff d3             	call   *%r11
  60ee50:	4c 8b 1d e1 43 20 00 	mov    0x2043e1(%rip),%r11        # 813238 <glad_glGetActiveUniformsiv-0x2006b8>
  60ee57:	49 89 03             	mov    %rax,(%r11)
  60ee5a:	48 8d 05 4c 30 20 00 	lea    0x20304c(%rip),%rax        # 811ead <L.318>
  60ee61:	48 89 c7             	mov    %rax,%rdi
  60ee64:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee68:	41 ff d3             	call   *%r11
  60ee6b:	4c 8b 1d ce 43 20 00 	mov    0x2043ce(%rip),%r11        # 813240 <glad_glGetActiveUniformName-0x2006a8>
  60ee72:	49 89 03             	mov    %rax,(%r11)
  60ee75:	48 8d 05 48 30 20 00 	lea    0x203048(%rip),%rax        # 811ec4 <L.319>
  60ee7c:	48 89 c7             	mov    %rax,%rdi
  60ee7f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee83:	41 ff d3             	call   *%r11
  60ee86:	4c 8b 1d bb 43 20 00 	mov    0x2043bb(%rip),%r11        # 813248 <glad_glGetUniformBlockIndex-0x200820>
  60ee8d:	49 89 03             	mov    %rax,(%r11)
  60ee90:	48 8d 05 44 30 20 00 	lea    0x203044(%rip),%rax        # 811edb <L.320>
  60ee97:	48 89 c7             	mov    %rax,%rdi
  60ee9a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ee9e:	41 ff d3             	call   *%r11
  60eea1:	4c 8b 1d a8 43 20 00 	mov    0x2043a8(%rip),%r11        # 813250 <glad_glGetActiveUniformBlockiv-0x200690>
  60eea8:	49 89 03             	mov    %rax,(%r11)
  60eeab:	48 8d 05 43 30 20 00 	lea    0x203043(%rip),%rax        # 811ef5 <L.321>
  60eeb2:	48 89 c7             	mov    %rax,%rdi
  60eeb5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eeb9:	41 ff d3             	call   *%r11
  60eebc:	4c 8b 1d 95 43 20 00 	mov    0x204395(%rip),%r11        # 813258 <glad_glGetActiveUniformBlockName-0x200680>
  60eec3:	49 89 03             	mov    %rax,(%r11)
  60eec6:	48 8d 05 44 30 20 00 	lea    0x203044(%rip),%rax        # 811f11 <L.322>
  60eecd:	48 89 c7             	mov    %rax,%rdi
  60eed0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eed4:	41 ff d3             	call   *%r11
  60eed7:	4c 8b 1d 82 43 20 00 	mov    0x204382(%rip),%r11        # 813260 <glad_glUniformBlockBinding-0x200bf0>
  60eede:	49 89 03             	mov    %rax,(%r11)
  60eee1:	48 8d 05 3f 30 20 00 	lea    0x20303f(%rip),%rax        # 811f27 <L.323>
  60eee8:	48 89 c7             	mov    %rax,%rdi
  60eeeb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60eeef:	41 ff d3             	call   *%r11
  60eef2:	4c 8b 1d bf 40 20 00 	mov    0x2040bf(%rip),%r11        # 812fb8 <glad_glBindBufferRange-0x2005e8>
  60eef9:	49 89 03             	mov    %rax,(%r11)
  60eefc:	48 8d 05 36 30 20 00 	lea    0x203036(%rip),%rax        # 811f39 <L.324>
  60ef03:	48 89 c7             	mov    %rax,%rdi
  60ef06:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ef0a:	41 ff d3             	call   *%r11
  60ef0d:	4c 8b 1d ac 40 20 00 	mov    0x2040ac(%rip),%r11        # 812fc0 <glad_glBindBufferBase-0x2005d8>
  60ef14:	49 89 03             	mov    %rax,(%r11)
  60ef17:	48 8d 05 2c 30 20 00 	lea    0x20302c(%rip),%rax        # 811f4a <L.325>
  60ef1e:	48 89 c7             	mov    %rax,%rdi
  60ef21:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ef25:	41 ff d3             	call   *%r11
  60ef28:	4c 8b 1d 59 40 20 00 	mov    0x204059(%rip),%r11        # 812f88 <glad_glGetIntegeri_v-0x2009f8>
  60ef2f:	49 89 03             	mov    %rax,(%r11)
  60ef32:	c9                   	leave
  60ef33:	c3                   	ret

000000000060ef34 <load_GL_VERSION_3_2>:
  60ef34:	55                   	push   %rbp
  60ef35:	48 89 e5             	mov    %rsp,%rbp
  60ef38:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60ef3f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60ef43:	48 8b 05 1e 43 20 00 	mov    0x20431e(%rip),%rax        # 813268 <GLAD_GL_VERSION_3_2-0x2002f0>
  60ef4a:	8b 00                	mov    (%rax),%eax
  60ef4c:	83 f8 00             	cmp    $0x0,%eax
  60ef4f:	0f 85 05 00 00 00    	jne    60ef5a <load_GL_VERSION_3_2+0x26>
  60ef55:	e9 01 02 00 00       	jmp    60f15b <load_GL_VERSION_3_2+0x227>
  60ef5a:	48 8d 05 f9 2f 20 00 	lea    0x202ff9(%rip),%rax        # 811f5a <L.326>
  60ef61:	48 89 c7             	mov    %rax,%rdi
  60ef64:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ef68:	41 ff d3             	call   *%r11
  60ef6b:	4c 8b 1d fe 42 20 00 	mov    0x2042fe(%rip),%r11        # 813270 <glad_glDrawElementsBaseVertex-0x200568>
  60ef72:	49 89 03             	mov    %rax,(%r11)
  60ef75:	48 8d 05 f7 2f 20 00 	lea    0x202ff7(%rip),%rax        # 811f73 <L.327>
  60ef7c:	48 89 c7             	mov    %rax,%rdi
  60ef7f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ef83:	41 ff d3             	call   *%r11
  60ef86:	4c 8b 1d eb 42 20 00 	mov    0x2042eb(%rip),%r11        # 813278 <glad_glDrawRangeElementsBaseVertex-0x200580>
  60ef8d:	49 89 03             	mov    %rax,(%r11)
  60ef90:	48 8d 05 fa 2f 20 00 	lea    0x202ffa(%rip),%rax        # 811f91 <L.328>
  60ef97:	48 89 c7             	mov    %rax,%rdi
  60ef9a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60ef9e:	41 ff d3             	call   *%r11
  60efa1:	4c 8b 1d d8 42 20 00 	mov    0x2042d8(%rip),%r11        # 813280 <glad_glDrawElementsInstancedBaseVertex-0x200568>
  60efa8:	49 89 03             	mov    %rax,(%r11)
  60efab:	48 8d 05 01 30 20 00 	lea    0x203001(%rip),%rax        # 811fb3 <L.329>
  60efb2:	48 89 c7             	mov    %rax,%rdi
  60efb5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60efb9:	41 ff d3             	call   *%r11
  60efbc:	4c 8b 1d c5 42 20 00 	mov    0x2042c5(%rip),%r11        # 813288 <glad_glMultiDrawElementsBaseVertex-0x2008e0>
  60efc3:	49 89 03             	mov    %rax,(%r11)
  60efc6:	48 8d 05 04 30 20 00 	lea    0x203004(%rip),%rax        # 811fd1 <L.330>
  60efcd:	48 89 c7             	mov    %rax,%rdi
  60efd0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60efd4:	41 ff d3             	call   *%r11
  60efd7:	4c 8b 1d b2 42 20 00 	mov    0x2042b2(%rip),%r11        # 813290 <glad_glProvokingVertex-0x200980>
  60efde:	49 89 03             	mov    %rax,(%r11)
  60efe1:	48 8d 05 fb 2f 20 00 	lea    0x202ffb(%rip),%rax        # 811fe3 <L.331>
  60efe8:	48 89 c7             	mov    %rax,%rdi
  60efeb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60efef:	41 ff d3             	call   *%r11
  60eff2:	4c 8b 1d 9f 42 20 00 	mov    0x20429f(%rip),%r11        # 813298 <glad_glFenceSync-0x200598>
  60eff9:	49 89 03             	mov    %rax,(%r11)
  60effc:	48 8d 05 ec 2f 20 00 	lea    0x202fec(%rip),%rax        # 811fef <L.332>
  60f003:	48 89 c7             	mov    %rax,%rdi
  60f006:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f00a:	41 ff d3             	call   *%r11
  60f00d:	4c 8b 1d 8c 42 20 00 	mov    0x20428c(%rip),%r11        # 8132a0 <glad_glIsSync-0x200878>
  60f014:	49 89 03             	mov    %rax,(%r11)
  60f017:	48 8d 05 da 2f 20 00 	lea    0x202fda(%rip),%rax        # 811ff8 <L.333>
  60f01e:	48 89 c7             	mov    %rax,%rdi
  60f021:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f025:	41 ff d3             	call   *%r11
  60f028:	4c 8b 1d 79 42 20 00 	mov    0x204279(%rip),%r11        # 8132a8 <glad_glDeleteSync-0x2004b8>
  60f02f:	49 89 03             	mov    %rax,(%r11)
  60f032:	48 8d 05 cc 2f 20 00 	lea    0x202fcc(%rip),%rax        # 812005 <L.334>
  60f039:	48 89 c7             	mov    %rax,%rdi
  60f03c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f040:	41 ff d3             	call   *%r11
  60f043:	4c 8b 1d 66 42 20 00 	mov    0x204266(%rip),%r11        # 8132b0 <glad_glClientWaitSync-0x2003c0>
  60f04a:	49 89 03             	mov    %rax,(%r11)
  60f04d:	48 8d 05 c2 2f 20 00 	lea    0x202fc2(%rip),%rax        # 812016 <L.335>
  60f054:	48 89 c7             	mov    %rax,%rdi
  60f057:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f05b:	41 ff d3             	call   *%r11
  60f05e:	4c 8b 1d 53 42 20 00 	mov    0x204253(%rip),%r11        # 8132b8 <glad_glWaitSync-0x200e50>
  60f065:	49 89 03             	mov    %rax,(%r11)
  60f068:	48 8d 05 b2 2f 20 00 	lea    0x202fb2(%rip),%rax        # 812021 <L.336>
  60f06f:	48 89 c7             	mov    %rax,%rdi
  60f072:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f076:	41 ff d3             	call   *%r11
  60f079:	4c 8b 1d 40 42 20 00 	mov    0x204240(%rip),%r11        # 8132c0 <glad_glGetInteger64v-0x2006b8>
  60f080:	49 89 03             	mov    %rax,(%r11)
  60f083:	48 8d 05 a7 2f 20 00 	lea    0x202fa7(%rip),%rax        # 812031 <L.337>
  60f08a:	48 89 c7             	mov    %rax,%rdi
  60f08d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f091:	41 ff d3             	call   *%r11
  60f094:	4c 8b 1d 2d 42 20 00 	mov    0x20422d(%rip),%r11        # 8132c8 <glad_glGetSynciv-0x200758>
  60f09b:	49 89 03             	mov    %rax,(%r11)
  60f09e:	48 8d 05 98 2f 20 00 	lea    0x202f98(%rip),%rax        # 81203d <L.338>
  60f0a5:	48 89 c7             	mov    %rax,%rdi
  60f0a8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f0ac:	41 ff d3             	call   *%r11
  60f0af:	4c 8b 1d 1a 42 20 00 	mov    0x20421a(%rip),%r11        # 8132d0 <glad_glGetInteger64i_v-0x2006a0>
  60f0b6:	49 89 03             	mov    %rax,(%r11)
  60f0b9:	48 8d 05 8f 2f 20 00 	lea    0x202f8f(%rip),%rax        # 81204f <L.339>
  60f0c0:	48 89 c7             	mov    %rax,%rdi
  60f0c3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f0c7:	41 ff d3             	call   *%r11
  60f0ca:	4c 8b 1d 07 42 20 00 	mov    0x204207(%rip),%r11        # 8132d8 <glad_glGetBufferParameteri64v-0x200640>
  60f0d1:	49 89 03             	mov    %rax,(%r11)
  60f0d4:	48 8d 05 8d 2f 20 00 	lea    0x202f8d(%rip),%rax        # 812068 <L.340>
  60f0db:	48 89 c7             	mov    %rax,%rdi
  60f0de:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f0e2:	41 ff d3             	call   *%r11
  60f0e5:	4c 8b 1d f4 41 20 00 	mov    0x2041f4(%rip),%r11        # 8132e0 <glad_glFramebufferTexture-0x200578>
  60f0ec:	49 89 03             	mov    %rax,(%r11)
  60f0ef:	48 8d 05 87 2f 20 00 	lea    0x202f87(%rip),%rax        # 81207d <L.341>
  60f0f6:	48 89 c7             	mov    %rax,%rdi
  60f0f9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f0fd:	41 ff d3             	call   *%r11
  60f100:	4c 8b 1d e1 41 20 00 	mov    0x2041e1(%rip),%r11        # 8132e8 <glad_glTexImage2DMultisample-0x200a40>
  60f107:	49 89 03             	mov    %rax,(%r11)
  60f10a:	48 8d 05 84 2f 20 00 	lea    0x202f84(%rip),%rax        # 812095 <L.342>
  60f111:	48 89 c7             	mov    %rax,%rdi
  60f114:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f118:	41 ff d3             	call   *%r11
  60f11b:	4c 8b 1d ce 41 20 00 	mov    0x2041ce(%rip),%r11        # 8132f0 <glad_glTexImage3DMultisample-0x200a48>
  60f122:	49 89 03             	mov    %rax,(%r11)
  60f125:	48 8d 05 81 2f 20 00 	lea    0x202f81(%rip),%rax        # 8120ad <L.343>
  60f12c:	48 89 c7             	mov    %rax,%rdi
  60f12f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f133:	41 ff d3             	call   *%r11
  60f136:	4c 8b 1d bb 41 20 00 	mov    0x2041bb(%rip),%r11        # 8132f8 <glad_glGetMultisamplefv-0x200698>
  60f13d:	49 89 03             	mov    %rax,(%r11)
  60f140:	48 8d 05 79 2f 20 00 	lea    0x202f79(%rip),%rax        # 8120c0 <L.344>
  60f147:	48 89 c7             	mov    %rax,%rdi
  60f14a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f14e:	41 ff d3             	call   *%r11
  60f151:	4c 8b 1d a8 41 20 00 	mov    0x2041a8(%rip),%r11        # 813300 <glad_glSampleMaski-0x200948>
  60f158:	49 89 03             	mov    %rax,(%r11)
  60f15b:	c9                   	leave
  60f15c:	c3                   	ret

000000000060f15d <load_GL_VERSION_3_3>:
  60f15d:	55                   	push   %rbp
  60f15e:	48 89 e5             	mov    %rsp,%rbp
  60f161:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60f168:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60f16c:	48 8b 05 95 41 20 00 	mov    0x204195(%rip),%rax        # 813308 <GLAD_GL_VERSION_3_3-0x200254>
  60f173:	8b 00                	mov    (%rax),%eax
  60f175:	83 f8 00             	cmp    $0x0,%eax
  60f178:	0f 85 05 00 00 00    	jne    60f183 <load_GL_VERSION_3_3+0x26>
  60f17e:	e9 1e 06 00 00       	jmp    60f7a1 <load_GL_VERSION_3_3+0x644>
  60f183:	48 8d 05 44 2f 20 00 	lea    0x202f44(%rip),%rax        # 8120ce <L.345>
  60f18a:	48 89 c7             	mov    %rax,%rdi
  60f18d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f191:	41 ff d3             	call   *%r11
  60f194:	4c 8b 1d 75 41 20 00 	mov    0x204175(%rip),%r11        # 813310 <glad_glBindFragDataLocationIndexed-0x2002a0>
  60f19b:	49 89 03             	mov    %rax,(%r11)
  60f19e:	48 8d 05 47 2f 20 00 	lea    0x202f47(%rip),%rax        # 8120ec <L.346>
  60f1a5:	48 89 c7             	mov    %rax,%rdi
  60f1a8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f1ac:	41 ff d3             	call   *%r11
  60f1af:	4c 8b 1d 62 41 20 00 	mov    0x204162(%rip),%r11        # 813318 <glad_glGetFragDataIndex-0x200640>
  60f1b6:	49 89 03             	mov    %rax,(%r11)
  60f1b9:	48 8d 05 3f 2f 20 00 	lea    0x202f3f(%rip),%rax        # 8120ff <L.347>
  60f1c0:	48 89 c7             	mov    %rax,%rdi
  60f1c3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f1c7:	41 ff d3             	call   *%r11
  60f1ca:	4c 8b 1d 4f 41 20 00 	mov    0x20414f(%rip),%r11        # 813320 <glad_glGenSamplers-0x200588>
  60f1d1:	49 89 03             	mov    %rax,(%r11)
  60f1d4:	48 8d 05 32 2f 20 00 	lea    0x202f32(%rip),%rax        # 81210d <L.348>
  60f1db:	48 89 c7             	mov    %rax,%rdi
  60f1de:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f1e2:	41 ff d3             	call   *%r11
  60f1e5:	4c 8b 1d 3c 41 20 00 	mov    0x20413c(%rip),%r11        # 813328 <glad_glDeleteSamplers-0x200428>
  60f1ec:	49 89 03             	mov    %rax,(%r11)
  60f1ef:	48 8d 05 28 2f 20 00 	lea    0x202f28(%rip),%rax        # 81211e <L.349>
  60f1f6:	48 89 c7             	mov    %rax,%rdi
  60f1f9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f1fd:	41 ff d3             	call   *%r11
  60f200:	4c 8b 1d 29 41 20 00 	mov    0x204129(%rip),%r11        # 813330 <glad_glIsSampler-0x2007d8>
  60f207:	49 89 03             	mov    %rax,(%r11)
  60f20a:	48 8d 05 19 2f 20 00 	lea    0x202f19(%rip),%rax        # 81212a <L.350>
  60f211:	48 89 c7             	mov    %rax,%rdi
  60f214:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f218:	41 ff d3             	call   *%r11
  60f21b:	4c 8b 1d 16 41 20 00 	mov    0x204116(%rip),%r11        # 813338 <glad_glBindSampler-0x200290>
  60f222:	49 89 03             	mov    %rax,(%r11)
  60f225:	48 8d 05 0c 2f 20 00 	lea    0x202f0c(%rip),%rax        # 812138 <L.351>
  60f22c:	48 89 c7             	mov    %rax,%rdi
  60f22f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f233:	41 ff d3             	call   *%r11
  60f236:	4c 8b 1d 03 41 20 00 	mov    0x204103(%rip),%r11        # 813340 <glad_glSamplerParameteri-0x200930>
  60f23d:	49 89 03             	mov    %rax,(%r11)
  60f240:	48 8d 05 05 2f 20 00 	lea    0x202f05(%rip),%rax        # 81214c <L.352>
  60f247:	48 89 c7             	mov    %rax,%rdi
  60f24a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f24e:	41 ff d3             	call   *%r11
  60f251:	4c 8b 1d f0 40 20 00 	mov    0x2040f0(%rip),%r11        # 813348 <glad_glSamplerParameteriv-0x200930>
  60f258:	49 89 03             	mov    %rax,(%r11)
  60f25b:	48 8d 05 ff 2e 20 00 	lea    0x202eff(%rip),%rax        # 812161 <L.353>
  60f262:	48 89 c7             	mov    %rax,%rdi
  60f265:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f269:	41 ff d3             	call   *%r11
  60f26c:	4c 8b 1d dd 40 20 00 	mov    0x2040dd(%rip),%r11        # 813350 <glad_glSamplerParameterf-0x200910>
  60f273:	49 89 03             	mov    %rax,(%r11)
  60f276:	48 8d 05 f8 2e 20 00 	lea    0x202ef8(%rip),%rax        # 812175 <L.354>
  60f27d:	48 89 c7             	mov    %rax,%rdi
  60f280:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f284:	41 ff d3             	call   *%r11
  60f287:	4c 8b 1d ca 40 20 00 	mov    0x2040ca(%rip),%r11        # 813358 <glad_glSamplerParameterfv-0x200910>
  60f28e:	49 89 03             	mov    %rax,(%r11)
  60f291:	48 8d 05 f2 2e 20 00 	lea    0x202ef2(%rip),%rax        # 81218a <L.355>
  60f298:	48 89 c7             	mov    %rax,%rdi
  60f29b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f29f:	41 ff d3             	call   *%r11
  60f2a2:	4c 8b 1d b7 40 20 00 	mov    0x2040b7(%rip),%r11        # 813360 <glad_glSamplerParameterIiv-0x2008f0>
  60f2a9:	49 89 03             	mov    %rax,(%r11)
  60f2ac:	48 8d 05 ed 2e 20 00 	lea    0x202eed(%rip),%rax        # 8121a0 <L.356>
  60f2b3:	48 89 c7             	mov    %rax,%rdi
  60f2b6:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f2ba:	41 ff d3             	call   *%r11
  60f2bd:	4c 8b 1d a4 40 20 00 	mov    0x2040a4(%rip),%r11        # 813368 <glad_glSamplerParameterIuiv-0x2008f0>
  60f2c4:	49 89 03             	mov    %rax,(%r11)
  60f2c7:	48 8d 05 e9 2e 20 00 	lea    0x202ee9(%rip),%rax        # 8121b7 <L.357>
  60f2ce:	48 89 c7             	mov    %rax,%rdi
  60f2d1:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f2d5:	41 ff d3             	call   *%r11
  60f2d8:	4c 8b 1d 91 40 20 00 	mov    0x204091(%rip),%r11        # 813370 <glad_glGetSamplerParameteriv-0x200680>
  60f2df:	49 89 03             	mov    %rax,(%r11)
  60f2e2:	48 8d 05 e6 2e 20 00 	lea    0x202ee6(%rip),%rax        # 8121cf <L.358>
  60f2e9:	48 89 c7             	mov    %rax,%rdi
  60f2ec:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f2f0:	41 ff d3             	call   *%r11
  60f2f3:	4c 8b 1d 7e 40 20 00 	mov    0x20407e(%rip),%r11        # 813378 <glad_glGetSamplerParameterIiv-0x200660>
  60f2fa:	49 89 03             	mov    %rax,(%r11)
  60f2fd:	48 8d 05 e4 2e 20 00 	lea    0x202ee4(%rip),%rax        # 8121e8 <L.359>
  60f304:	48 89 c7             	mov    %rax,%rdi
  60f307:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f30b:	41 ff d3             	call   *%r11
  60f30e:	4c 8b 1d 6b 40 20 00 	mov    0x20406b(%rip),%r11        # 813380 <glad_glGetSamplerParameterfv-0x200668>
  60f315:	49 89 03             	mov    %rax,(%r11)
  60f318:	48 8d 05 e1 2e 20 00 	lea    0x202ee1(%rip),%rax        # 812200 <L.360>
  60f31f:	48 89 c7             	mov    %rax,%rdi
  60f322:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f326:	41 ff d3             	call   *%r11
  60f329:	4c 8b 1d 58 40 20 00 	mov    0x204058(%rip),%r11        # 813388 <glad_glGetSamplerParameterIuiv-0x200658>
  60f330:	49 89 03             	mov    %rax,(%r11)
  60f333:	48 8d 05 e0 2e 20 00 	lea    0x202ee0(%rip),%rax        # 81221a <L.361>
  60f33a:	48 89 c7             	mov    %rax,%rdi
  60f33d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f341:	41 ff d3             	call   *%r11
  60f344:	4c 8b 1d 45 40 20 00 	mov    0x204045(%rip),%r11        # 813390 <glad_glQueryCounter-0x200888>
  60f34b:	49 89 03             	mov    %rax,(%r11)
  60f34e:	48 8d 05 d4 2e 20 00 	lea    0x202ed4(%rip),%rax        # 812229 <L.362>
  60f355:	48 89 c7             	mov    %rax,%rdi
  60f358:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f35c:	41 ff d3             	call   *%r11
  60f35f:	4c 8b 1d 32 40 20 00 	mov    0x204032(%rip),%r11        # 813398 <glad_glGetQueryObjecti64v-0x200610>
  60f366:	49 89 03             	mov    %rax,(%r11)
  60f369:	48 8d 05 ce 2e 20 00 	lea    0x202ece(%rip),%rax        # 81223e <L.363>
  60f370:	48 89 c7             	mov    %rax,%rdi
  60f373:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f377:	41 ff d3             	call   *%r11
  60f37a:	4c 8b 1d 1f 40 20 00 	mov    0x20401f(%rip),%r11        # 8133a0 <glad_glGetQueryObjectui64v-0x200618>
  60f381:	49 89 03             	mov    %rax,(%r11)
  60f384:	48 8d 05 c9 2e 20 00 	lea    0x202ec9(%rip),%rax        # 812254 <L.364>
  60f38b:	48 89 c7             	mov    %rax,%rdi
  60f38e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f392:	41 ff d3             	call   *%r11
  60f395:	4c 8b 1d 0c 40 20 00 	mov    0x20400c(%rip),%r11        # 8133a8 <glad_glVertexAttribDivisor-0x200c30>
  60f39c:	49 89 03             	mov    %rax,(%r11)
  60f39f:	48 8d 05 c4 2e 20 00 	lea    0x202ec4(%rip),%rax        # 81226a <L.365>
  60f3a6:	48 89 c7             	mov    %rax,%rdi
  60f3a9:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f3ad:	41 ff d3             	call   *%r11
  60f3b0:	4c 8b 1d f9 3f 20 00 	mov    0x203ff9(%rip),%r11        # 8133b0 <glad_glVertexAttribP1ui-0x200cd8>
  60f3b7:	49 89 03             	mov    %rax,(%r11)
  60f3ba:	48 8d 05 bc 2e 20 00 	lea    0x202ebc(%rip),%rax        # 81227d <L.366>
  60f3c1:	48 89 c7             	mov    %rax,%rdi
  60f3c4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f3c8:	41 ff d3             	call   *%r11
  60f3cb:	4c 8b 1d e6 3f 20 00 	mov    0x203fe6(%rip),%r11        # 8133b8 <glad_glVertexAttribP1uiv-0x200cd8>
  60f3d2:	49 89 03             	mov    %rax,(%r11)
  60f3d5:	48 8d 05 b5 2e 20 00 	lea    0x202eb5(%rip),%rax        # 812291 <L.367>
  60f3dc:	48 89 c7             	mov    %rax,%rdi
  60f3df:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f3e3:	41 ff d3             	call   *%r11
  60f3e6:	4c 8b 1d d3 3f 20 00 	mov    0x203fd3(%rip),%r11        # 8133c0 <glad_glVertexAttribP2ui-0x200cd8>
  60f3ed:	49 89 03             	mov    %rax,(%r11)
  60f3f0:	48 8d 05 ad 2e 20 00 	lea    0x202ead(%rip),%rax        # 8122a4 <L.368>
  60f3f7:	48 89 c7             	mov    %rax,%rdi
  60f3fa:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f3fe:	41 ff d3             	call   *%r11
  60f401:	4c 8b 1d c0 3f 20 00 	mov    0x203fc0(%rip),%r11        # 8133c8 <glad_glVertexAttribP2uiv-0x200cd8>
  60f408:	49 89 03             	mov    %rax,(%r11)
  60f40b:	48 8d 05 a6 2e 20 00 	lea    0x202ea6(%rip),%rax        # 8122b8 <L.369>
  60f412:	48 89 c7             	mov    %rax,%rdi
  60f415:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f419:	41 ff d3             	call   *%r11
  60f41c:	4c 8b 1d ad 3f 20 00 	mov    0x203fad(%rip),%r11        # 8133d0 <glad_glVertexAttribP3ui-0x200cd8>
  60f423:	49 89 03             	mov    %rax,(%r11)
  60f426:	48 8d 05 9e 2e 20 00 	lea    0x202e9e(%rip),%rax        # 8122cb <L.370>
  60f42d:	48 89 c7             	mov    %rax,%rdi
  60f430:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f434:	41 ff d3             	call   *%r11
  60f437:	4c 8b 1d 9a 3f 20 00 	mov    0x203f9a(%rip),%r11        # 8133d8 <glad_glVertexAttribP3uiv-0x200cd8>
  60f43e:	49 89 03             	mov    %rax,(%r11)
  60f441:	48 8d 05 97 2e 20 00 	lea    0x202e97(%rip),%rax        # 8122df <L.371>
  60f448:	48 89 c7             	mov    %rax,%rdi
  60f44b:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f44f:	41 ff d3             	call   *%r11
  60f452:	4c 8b 1d 87 3f 20 00 	mov    0x203f87(%rip),%r11        # 8133e0 <glad_glVertexAttribP4ui-0x200cd8>
  60f459:	49 89 03             	mov    %rax,(%r11)
  60f45c:	48 8d 05 8f 2e 20 00 	lea    0x202e8f(%rip),%rax        # 8122f2 <L.372>
  60f463:	48 89 c7             	mov    %rax,%rdi
  60f466:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f46a:	41 ff d3             	call   *%r11
  60f46d:	4c 8b 1d 74 3f 20 00 	mov    0x203f74(%rip),%r11        # 8133e8 <glad_glVertexAttribP4uiv-0x200cd8>
  60f474:	49 89 03             	mov    %rax,(%r11)
  60f477:	48 8d 05 88 2e 20 00 	lea    0x202e88(%rip),%rax        # 812306 <L.373>
  60f47e:	48 89 c7             	mov    %rax,%rdi
  60f481:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f485:	41 ff d3             	call   *%r11
  60f488:	4c 8b 1d 61 3f 20 00 	mov    0x203f61(%rip),%r11        # 8133f0 <glad_glVertexP2ui-0x200ce0>
  60f48f:	49 89 03             	mov    %rax,(%r11)
  60f492:	48 8d 05 7a 2e 20 00 	lea    0x202e7a(%rip),%rax        # 812313 <L.374>
  60f499:	48 89 c7             	mov    %rax,%rdi
  60f49c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f4a0:	41 ff d3             	call   *%r11
  60f4a3:	4c 8b 1d 4e 3f 20 00 	mov    0x203f4e(%rip),%r11        # 8133f8 <glad_glVertexP2uiv-0x200ce0>
  60f4aa:	49 89 03             	mov    %rax,(%r11)
  60f4ad:	48 8d 05 6d 2e 20 00 	lea    0x202e6d(%rip),%rax        # 812321 <L.375>
  60f4b4:	48 89 c7             	mov    %rax,%rdi
  60f4b7:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f4bb:	41 ff d3             	call   *%r11
  60f4be:	4c 8b 1d 3b 3f 20 00 	mov    0x203f3b(%rip),%r11        # 813400 <glad_glVertexP3ui-0x200ce0>
  60f4c5:	49 89 03             	mov    %rax,(%r11)
  60f4c8:	48 8d 05 5f 2e 20 00 	lea    0x202e5f(%rip),%rax        # 81232e <L.376>
  60f4cf:	48 89 c7             	mov    %rax,%rdi
  60f4d2:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f4d6:	41 ff d3             	call   *%r11
  60f4d9:	4c 8b 1d 28 3f 20 00 	mov    0x203f28(%rip),%r11        # 813408 <glad_glVertexP3uiv-0x200ce0>
  60f4e0:	49 89 03             	mov    %rax,(%r11)
  60f4e3:	48 8d 05 52 2e 20 00 	lea    0x202e52(%rip),%rax        # 81233c <L.377>
  60f4ea:	48 89 c7             	mov    %rax,%rdi
  60f4ed:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f4f1:	41 ff d3             	call   *%r11
  60f4f4:	4c 8b 1d 15 3f 20 00 	mov    0x203f15(%rip),%r11        # 813410 <glad_glVertexP4ui-0x200ce0>
  60f4fb:	49 89 03             	mov    %rax,(%r11)
  60f4fe:	48 8d 05 44 2e 20 00 	lea    0x202e44(%rip),%rax        # 812349 <L.378>
  60f505:	48 89 c7             	mov    %rax,%rdi
  60f508:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f50c:	41 ff d3             	call   *%r11
  60f50f:	4c 8b 1d 02 3f 20 00 	mov    0x203f02(%rip),%r11        # 813418 <glad_glVertexP4uiv-0x200ce0>
  60f516:	49 89 03             	mov    %rax,(%r11)
  60f519:	48 8d 05 37 2e 20 00 	lea    0x202e37(%rip),%rax        # 812357 <L.379>
  60f520:	48 89 c7             	mov    %rax,%rdi
  60f523:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f527:	41 ff d3             	call   *%r11
  60f52a:	4c 8b 1d ef 3e 20 00 	mov    0x203eef(%rip),%r11        # 813420 <glad_glTexCoordP1ui-0x2008b8>
  60f531:	49 89 03             	mov    %rax,(%r11)
  60f534:	48 8d 05 2b 2e 20 00 	lea    0x202e2b(%rip),%rax        # 812366 <L.380>
  60f53b:	48 89 c7             	mov    %rax,%rdi
  60f53e:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f542:	41 ff d3             	call   *%r11
  60f545:	4c 8b 1d dc 3e 20 00 	mov    0x203edc(%rip),%r11        # 813428 <glad_glTexCoordP1uiv-0x2008b8>
  60f54c:	49 89 03             	mov    %rax,(%r11)
  60f54f:	48 8d 05 20 2e 20 00 	lea    0x202e20(%rip),%rax        # 812376 <L.381>
  60f556:	48 89 c7             	mov    %rax,%rdi
  60f559:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f55d:	41 ff d3             	call   *%r11
  60f560:	4c 8b 1d c9 3e 20 00 	mov    0x203ec9(%rip),%r11        # 813430 <glad_glTexCoordP2ui-0x2008b8>
  60f567:	49 89 03             	mov    %rax,(%r11)
  60f56a:	48 8d 05 14 2e 20 00 	lea    0x202e14(%rip),%rax        # 812385 <L.382>
  60f571:	48 89 c7             	mov    %rax,%rdi
  60f574:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f578:	41 ff d3             	call   *%r11
  60f57b:	4c 8b 1d b6 3e 20 00 	mov    0x203eb6(%rip),%r11        # 813438 <glad_glTexCoordP2uiv-0x2008b8>
  60f582:	49 89 03             	mov    %rax,(%r11)
  60f585:	48 8d 05 09 2e 20 00 	lea    0x202e09(%rip),%rax        # 812395 <L.383>
  60f58c:	48 89 c7             	mov    %rax,%rdi
  60f58f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f593:	41 ff d3             	call   *%r11
  60f596:	4c 8b 1d a3 3e 20 00 	mov    0x203ea3(%rip),%r11        # 813440 <glad_glTexCoordP3ui-0x2008b8>
  60f59d:	49 89 03             	mov    %rax,(%r11)
  60f5a0:	48 8d 05 fd 2d 20 00 	lea    0x202dfd(%rip),%rax        # 8123a4 <L.384>
  60f5a7:	48 89 c7             	mov    %rax,%rdi
  60f5aa:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f5ae:	41 ff d3             	call   *%r11
  60f5b1:	4c 8b 1d 90 3e 20 00 	mov    0x203e90(%rip),%r11        # 813448 <glad_glTexCoordP3uiv-0x2008b8>
  60f5b8:	49 89 03             	mov    %rax,(%r11)
  60f5bb:	48 8d 05 f2 2d 20 00 	lea    0x202df2(%rip),%rax        # 8123b4 <L.385>
  60f5c2:	48 89 c7             	mov    %rax,%rdi
  60f5c5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f5c9:	41 ff d3             	call   *%r11
  60f5cc:	4c 8b 1d 7d 3e 20 00 	mov    0x203e7d(%rip),%r11        # 813450 <glad_glTexCoordP4ui-0x2008b8>
  60f5d3:	49 89 03             	mov    %rax,(%r11)
  60f5d6:	48 8d 05 e6 2d 20 00 	lea    0x202de6(%rip),%rax        # 8123c3 <L.386>
  60f5dd:	48 89 c7             	mov    %rax,%rdi
  60f5e0:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f5e4:	41 ff d3             	call   *%r11
  60f5e7:	4c 8b 1d 6a 3e 20 00 	mov    0x203e6a(%rip),%r11        # 813458 <glad_glTexCoordP4uiv-0x2008b8>
  60f5ee:	49 89 03             	mov    %rax,(%r11)
  60f5f1:	48 8d 05 db 2d 20 00 	lea    0x202ddb(%rip),%rax        # 8123d3 <L.387>
  60f5f8:	48 89 c7             	mov    %rax,%rdi
  60f5fb:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f5ff:	41 ff d3             	call   *%r11
  60f602:	4c 8b 1d 57 3e 20 00 	mov    0x203e57(%rip),%r11        # 813460 <glad_glMultiTexCoordP1ui-0x200710>
  60f609:	49 89 03             	mov    %rax,(%r11)
  60f60c:	48 8d 05 d4 2d 20 00 	lea    0x202dd4(%rip),%rax        # 8123e7 <L.388>
  60f613:	48 89 c7             	mov    %rax,%rdi
  60f616:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f61a:	41 ff d3             	call   *%r11
  60f61d:	4c 8b 1d 44 3e 20 00 	mov    0x203e44(%rip),%r11        # 813468 <glad_glMultiTexCoordP1uiv-0x200710>
  60f624:	49 89 03             	mov    %rax,(%r11)
  60f627:	48 8d 05 ce 2d 20 00 	lea    0x202dce(%rip),%rax        # 8123fc <L.389>
  60f62e:	48 89 c7             	mov    %rax,%rdi
  60f631:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f635:	41 ff d3             	call   *%r11
  60f638:	4c 8b 1d 31 3e 20 00 	mov    0x203e31(%rip),%r11        # 813470 <glad_glMultiTexCoordP2ui-0x200710>
  60f63f:	49 89 03             	mov    %rax,(%r11)
  60f642:	48 8d 05 c7 2d 20 00 	lea    0x202dc7(%rip),%rax        # 812410 <L.390>
  60f649:	48 89 c7             	mov    %rax,%rdi
  60f64c:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f650:	41 ff d3             	call   *%r11
  60f653:	4c 8b 1d 1e 3e 20 00 	mov    0x203e1e(%rip),%r11        # 813478 <glad_glMultiTexCoordP2uiv-0x200710>
  60f65a:	49 89 03             	mov    %rax,(%r11)
  60f65d:	48 8d 05 c1 2d 20 00 	lea    0x202dc1(%rip),%rax        # 812425 <L.391>
  60f664:	48 89 c7             	mov    %rax,%rdi
  60f667:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f66b:	41 ff d3             	call   *%r11
  60f66e:	4c 8b 1d 0b 3e 20 00 	mov    0x203e0b(%rip),%r11        # 813480 <glad_glMultiTexCoordP3ui-0x200710>
  60f675:	49 89 03             	mov    %rax,(%r11)
  60f678:	48 8d 05 ba 2d 20 00 	lea    0x202dba(%rip),%rax        # 812439 <L.392>
  60f67f:	48 89 c7             	mov    %rax,%rdi
  60f682:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f686:	41 ff d3             	call   *%r11
  60f689:	4c 8b 1d f8 3d 20 00 	mov    0x203df8(%rip),%r11        # 813488 <glad_glMultiTexCoordP3uiv-0x200710>
  60f690:	49 89 03             	mov    %rax,(%r11)
  60f693:	48 8d 05 b4 2d 20 00 	lea    0x202db4(%rip),%rax        # 81244e <L.393>
  60f69a:	48 89 c7             	mov    %rax,%rdi
  60f69d:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f6a1:	41 ff d3             	call   *%r11
  60f6a4:	4c 8b 1d e5 3d 20 00 	mov    0x203de5(%rip),%r11        # 813490 <glad_glMultiTexCoordP4ui-0x200710>
  60f6ab:	49 89 03             	mov    %rax,(%r11)
  60f6ae:	48 8d 05 ad 2d 20 00 	lea    0x202dad(%rip),%rax        # 812462 <L.394>
  60f6b5:	48 89 c7             	mov    %rax,%rdi
  60f6b8:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f6bc:	41 ff d3             	call   *%r11
  60f6bf:	4c 8b 1d d2 3d 20 00 	mov    0x203dd2(%rip),%r11        # 813498 <glad_glMultiTexCoordP4uiv-0x200710>
  60f6c6:	49 89 03             	mov    %rax,(%r11)
  60f6c9:	48 8d 05 a7 2d 20 00 	lea    0x202da7(%rip),%rax        # 812477 <L.395>
  60f6d0:	48 89 c7             	mov    %rax,%rdi
  60f6d3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f6d7:	41 ff d3             	call   *%r11
  60f6da:	4c 8b 1d bf 3d 20 00 	mov    0x203dbf(%rip),%r11        # 8134a0 <glad_glNormalP3ui-0x200710>
  60f6e1:	49 89 03             	mov    %rax,(%r11)
  60f6e4:	48 8d 05 99 2d 20 00 	lea    0x202d99(%rip),%rax        # 812484 <L.396>
  60f6eb:	48 89 c7             	mov    %rax,%rdi
  60f6ee:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f6f2:	41 ff d3             	call   *%r11
  60f6f5:	4c 8b 1d ac 3d 20 00 	mov    0x203dac(%rip),%r11        # 8134a8 <glad_glNormalP3uiv-0x200710>
  60f6fc:	49 89 03             	mov    %rax,(%r11)
  60f6ff:	48 8d 05 8c 2d 20 00 	lea    0x202d8c(%rip),%rax        # 812492 <L.397>
  60f706:	48 89 c7             	mov    %rax,%rdi
  60f709:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f70d:	41 ff d3             	call   *%r11
  60f710:	4c 8b 1d 99 3d 20 00 	mov    0x203d99(%rip),%r11        # 8134b0 <glad_glColorP3ui-0x2001d8>
  60f717:	49 89 03             	mov    %rax,(%r11)
  60f71a:	48 8d 05 7d 2d 20 00 	lea    0x202d7d(%rip),%rax        # 81249e <L.398>
  60f721:	48 89 c7             	mov    %rax,%rdi
  60f724:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f728:	41 ff d3             	call   *%r11
  60f72b:	4c 8b 1d 86 3d 20 00 	mov    0x203d86(%rip),%r11        # 8134b8 <glad_glColorP3uiv-0x2001d8>
  60f732:	49 89 03             	mov    %rax,(%r11)
  60f735:	48 8d 05 6f 2d 20 00 	lea    0x202d6f(%rip),%rax        # 8124ab <L.399>
  60f73c:	48 89 c7             	mov    %rax,%rdi
  60f73f:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f743:	41 ff d3             	call   *%r11
  60f746:	4c 8b 1d 73 3d 20 00 	mov    0x203d73(%rip),%r11        # 8134c0 <glad_glColorP4ui-0x2001d8>
  60f74d:	49 89 03             	mov    %rax,(%r11)
  60f750:	48 8d 05 60 2d 20 00 	lea    0x202d60(%rip),%rax        # 8124b7 <L.400>
  60f757:	48 89 c7             	mov    %rax,%rdi
  60f75a:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f75e:	41 ff d3             	call   *%r11
  60f761:	4c 8b 1d 60 3d 20 00 	mov    0x203d60(%rip),%r11        # 8134c8 <glad_glColorP4uiv-0x2001d8>
  60f768:	49 89 03             	mov    %rax,(%r11)
  60f76b:	48 8d 05 52 2d 20 00 	lea    0x202d52(%rip),%rax        # 8124c4 <L.401>
  60f772:	48 89 c7             	mov    %rax,%rdi
  60f775:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f779:	41 ff d3             	call   *%r11
  60f77c:	4c 8b 1d 4d 3d 20 00 	mov    0x203d4d(%rip),%r11        # 8134d0 <glad_glSecondaryColorP3ui-0x2007b8>
  60f783:	49 89 03             	mov    %rax,(%r11)
  60f786:	48 8d 05 4c 2d 20 00 	lea    0x202d4c(%rip),%rax        # 8124d9 <L.402>
  60f78d:	48 89 c7             	mov    %rax,%rdi
  60f790:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60f794:	41 ff d3             	call   *%r11
  60f797:	4c 8b 1d 3a 3d 20 00 	mov    0x203d3a(%rip),%r11        # 8134d8 <glad_glSecondaryColorP3uiv-0x2007b8>
  60f79e:	49 89 03             	mov    %rax,(%r11)
  60f7a1:	c9                   	leave
  60f7a2:	c3                   	ret

000000000060f7a3 <find_extensionsGL>:
  60f7a3:	55                   	push   %rbp
  60f7a4:	48 89 e5             	mov    %rsp,%rbp
  60f7a7:	48 81 ec 00 00 00 00 	sub    $0x0,%rsp
  60f7ae:	e8 92 d2 ff ff       	call   60ca45 <get_exts>
  60f7b3:	83 f8 00             	cmp    $0x0,%eax
  60f7b6:	0f 85 0a 00 00 00    	jne    60f7c6 <find_extensionsGL+0x23>
  60f7bc:	b8 00 00 00 00       	mov    $0x0,%eax
  60f7c1:	e9 0a 00 00 00       	jmp    60f7d0 <find_extensionsGL+0x2d>
  60f7c6:	e8 01 d4 ff ff       	call   60cbcc <free_exts>
  60f7cb:	b8 01 00 00 00       	mov    $0x1,%eax
  60f7d0:	c9                   	leave
  60f7d1:	c3                   	ret

000000000060f7d2 <find_coreGL>:
  60f7d2:	55                   	push   %rbp
  60f7d3:	48 89 e5             	mov    %rsp,%rbp
  60f7d6:	48 81 ec 50 00 00 00 	sub    $0x50,%rsp
  60f7dd:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
  60f7e4:	00 00 00 
  60f7e7:	49 89 c2             	mov    %rax,%r10
  60f7ea:	b8 00 00 00 00       	mov    $0x0,%eax
  60f7ef:	48 89 c6             	mov    %rax,%rsi
  60f7f2:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  60f7f6:	48 89 c7             	mov    %rax,%rdi
  60f7f9:	4c 89 d2             	mov    %r10,%rdx
  60f7fc:	b8 00 00 00 00       	mov    $0x0,%eax
  60f801:	e8 82 0c 00 00       	call   610488 <memset@plt>
  60f806:	48 8d 05 e2 2c 20 00 	lea    0x202ce2(%rip),%rax        # 8124ef <L.403>
  60f80d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  60f811:	48 8d 05 e5 2c 20 00 	lea    0x202ce5(%rip),%rax        # 8124fd <L.404>
  60f818:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  60f81c:	48 8d 05 e8 2c 20 00 	lea    0x202ce8(%rip),%rax        # 81250b <L.405>
  60f823:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  60f827:	b8 02 1f 00 00       	mov    $0x1f02,%eax
  60f82c:	48 89 c7             	mov    %rax,%rdi
  60f82f:	4c 8b 1d 82 30 20 00 	mov    0x203082(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60f836:	4d 8b 1b             	mov    (%r11),%r11
  60f839:	41 ff d3             	call   *%r11
  60f83c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60f840:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60f844:	48 83 f8 00          	cmp    $0x0,%rax
  60f848:	0f 85 05 00 00 00    	jne    60f853 <find_coreGL+0x81>
  60f84e:	e9 21 04 00 00       	jmp    60fc74 <find_coreGL+0x4a2>
  60f853:	b8 00 00 00 00       	mov    $0x0,%eax
  60f858:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60f85b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60f85e:	48 63 c0             	movslq %eax,%rax
  60f861:	48 c1 e0 03          	shl    $0x3,%rax
  60f865:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
  60f869:	48 01 c1             	add    %rax,%rcx
  60f86c:	48 8b 09             	mov    (%rcx),%rcx
  60f86f:	48 83 f9 00          	cmp    $0x0,%rcx
  60f873:	0f 84 91 00 00 00    	je     60f90a <find_coreGL+0x138>
  60f879:	e9 0d 00 00 00       	jmp    60f88b <find_coreGL+0xb9>
  60f87e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60f881:	89 c1                	mov    %eax,%ecx
  60f883:	83 c0 01             	add    $0x1,%eax
  60f886:	89 45 fc             	mov    %eax,-0x4(%rbp)
  60f889:	eb d0                	jmp    60f85b <find_coreGL+0x89>
  60f88b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60f88e:	48 63 c0             	movslq %eax,%rax
  60f891:	48 c1 e0 03          	shl    $0x3,%rax
  60f895:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
  60f899:	48 01 c1             	add    %rax,%rcx
  60f89c:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  60f8a0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  60f8a4:	48 8b 00             	mov    (%rax),%rax
  60f8a7:	48 89 c7             	mov    %rax,%rdi
  60f8aa:	e8 69 0d 00 00       	call   610618 <strlen@plt>
  60f8af:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  60f8b3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  60f8b6:	48 63 c0             	movslq %eax,%rax
  60f8b9:	48 c1 e0 03          	shl    $0x3,%rax
  60f8bd:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
  60f8c1:	48 01 c1             	add    %rax,%rcx
  60f8c4:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
  60f8c8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  60f8cc:	49 89 c2             	mov    %rax,%r10
  60f8cf:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  60f8d3:	48 8b 00             	mov    (%rax),%rax
  60f8d6:	48 89 c6             	mov    %rax,%rsi
  60f8d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60f8dd:	48 89 c7             	mov    %rax,%rdi
  60f8e0:	4c 89 d2             	mov    %r10,%rdx
  60f8e3:	e8 80 0d 00 00       	call   610668 <strncmp@plt>
  60f8e8:	83 f8 00             	cmp    $0x0,%eax
  60f8eb:	0f 85 14 00 00 00    	jne    60f905 <find_coreGL+0x133>
  60f8f1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  60f8f5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60f8f9:	48 01 c1             	add    %rax,%rcx
  60f8fc:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  60f900:	e9 05 00 00 00       	jmp    60f90a <find_coreGL+0x138>
  60f905:	e9 74 ff ff ff       	jmp    60f87e <find_coreGL+0xac>
  60f90a:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
  60f90e:	49 89 c3             	mov    %rax,%r11
  60f911:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  60f915:	49 89 c2             	mov    %rax,%r10
  60f918:	48 8d 05 f7 2b 20 00 	lea    0x202bf7(%rip),%rax        # 812516 <L.406>
  60f91f:	48 89 c6             	mov    %rax,%rsi
  60f922:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60f926:	48 89 c7             	mov    %rax,%rdi
  60f929:	4c 89 d2             	mov    %r10,%rdx
  60f92c:	4c 89 d9             	mov    %r11,%rcx
  60f92f:	b8 00 00 00 00       	mov    $0x0,%eax
  60f934:	e8 3f 0d 00 00       	call   610678 <__isoc99_sscanf@plt>
  60f939:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f93c:	4c 8b 1d 9d 3b 20 00 	mov    0x203b9d(%rip),%r11        # 8134e0 <GLVersion-0x200030>
  60f943:	41 89 03             	mov    %eax,(%r11)
  60f946:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60f949:	4c 8b 1d 90 3b 20 00 	mov    0x203b90(%rip),%r11        # 8134e0 <GLVersion-0x200030>
  60f950:	49 81 c3 04 00 00 00 	add    $0x4,%r11
  60f957:	41 89 03             	mov    %eax,(%r11)
  60f95a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f95d:	89 05 05 48 40 00    	mov    %eax,0x404805(%rip)        # a14168 <max_loaded_major>
  60f963:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60f966:	89 05 00 48 40 00    	mov    %eax,0x404800(%rip)        # a1416c <max_loaded_minor>
  60f96c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f96f:	83 f8 01             	cmp    $0x1,%eax
  60f972:	0f 85 0c 00 00 00    	jne    60f984 <find_coreGL+0x1b2>
  60f978:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60f97b:	83 f8 00             	cmp    $0x0,%eax
  60f97e:	0f 8d 13 00 00 00    	jge    60f997 <find_coreGL+0x1c5>
  60f984:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f987:	83 f8 01             	cmp    $0x1,%eax
  60f98a:	0f 8f 07 00 00 00    	jg     60f997 <find_coreGL+0x1c5>
  60f990:	b8 00 00 00 00       	mov    $0x0,%eax
  60f995:	eb 05                	jmp    60f99c <find_coreGL+0x1ca>
  60f997:	b8 01 00 00 00       	mov    $0x1,%eax
  60f99c:	4c 8b 1d 05 30 20 00 	mov    0x203005(%rip),%r11        # 8129a8 <GLAD_GL_VERSION_1_0-0x200b88>
  60f9a3:	41 89 03             	mov    %eax,(%r11)
  60f9a6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f9a9:	83 f8 01             	cmp    $0x1,%eax
  60f9ac:	0f 85 0c 00 00 00    	jne    60f9be <find_coreGL+0x1ec>
  60f9b2:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60f9b5:	83 f8 01             	cmp    $0x1,%eax
  60f9b8:	0f 8d 13 00 00 00    	jge    60f9d1 <find_coreGL+0x1ff>
  60f9be:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f9c1:	83 f8 01             	cmp    $0x1,%eax
  60f9c4:	0f 8f 07 00 00 00    	jg     60f9d1 <find_coreGL+0x1ff>
  60f9ca:	b8 00 00 00 00       	mov    $0x0,%eax
  60f9cf:	eb 05                	jmp    60f9d6 <find_coreGL+0x204>
  60f9d1:	b8 01 00 00 00       	mov    $0x1,%eax
  60f9d6:	4c 8b 1d 33 31 20 00 	mov    0x203133(%rip),%r11        # 812b10 <GLAD_GL_VERSION_1_1-0x200a24>
  60f9dd:	41 89 03             	mov    %eax,(%r11)
  60f9e0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f9e3:	83 f8 01             	cmp    $0x1,%eax
  60f9e6:	0f 85 0c 00 00 00    	jne    60f9f8 <find_coreGL+0x226>
  60f9ec:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60f9ef:	83 f8 02             	cmp    $0x2,%eax
  60f9f2:	0f 8d 13 00 00 00    	jge    60fa0b <find_coreGL+0x239>
  60f9f8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60f9fb:	83 f8 01             	cmp    $0x1,%eax
  60f9fe:	0f 8f 07 00 00 00    	jg     60fa0b <find_coreGL+0x239>
  60fa04:	b8 00 00 00 00       	mov    $0x0,%eax
  60fa09:	eb 05                	jmp    60fa10 <find_coreGL+0x23e>
  60fa0b:	b8 01 00 00 00       	mov    $0x1,%eax
  60fa10:	4c 8b 1d 61 31 20 00 	mov    0x203161(%rip),%r11        # 812b78 <GLAD_GL_VERSION_1_2-0x2009c0>
  60fa17:	41 89 03             	mov    %eax,(%r11)
  60fa1a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fa1d:	83 f8 01             	cmp    $0x1,%eax
  60fa20:	0f 85 0c 00 00 00    	jne    60fa32 <find_coreGL+0x260>
  60fa26:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fa29:	83 f8 03             	cmp    $0x3,%eax
  60fa2c:	0f 8d 13 00 00 00    	jge    60fa45 <find_coreGL+0x273>
  60fa32:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fa35:	83 f8 01             	cmp    $0x1,%eax
  60fa38:	0f 8f 07 00 00 00    	jg     60fa45 <find_coreGL+0x273>
  60fa3e:	b8 00 00 00 00       	mov    $0x0,%eax
  60fa43:	eb 05                	jmp    60fa4a <find_coreGL+0x278>
  60fa45:	b8 01 00 00 00       	mov    $0x1,%eax
  60fa4a:	4c 8b 1d 4f 31 20 00 	mov    0x20314f(%rip),%r11        # 812ba0 <GLAD_GL_VERSION_1_3-0x20099c>
  60fa51:	41 89 03             	mov    %eax,(%r11)
  60fa54:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fa57:	83 f8 01             	cmp    $0x1,%eax
  60fa5a:	0f 85 0c 00 00 00    	jne    60fa6c <find_coreGL+0x29a>
  60fa60:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fa63:	83 f8 04             	cmp    $0x4,%eax
  60fa66:	0f 8d 13 00 00 00    	jge    60fa7f <find_coreGL+0x2ad>
  60fa6c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fa6f:	83 f8 01             	cmp    $0x1,%eax
  60fa72:	0f 8f 07 00 00 00    	jg     60fa7f <find_coreGL+0x2ad>
  60fa78:	b8 00 00 00 00       	mov    $0x0,%eax
  60fa7d:	eb 05                	jmp    60fa84 <find_coreGL+0x2b2>
  60fa7f:	b8 01 00 00 00       	mov    $0x1,%eax
  60fa84:	4c 8b 1d 65 31 20 00 	mov    0x203165(%rip),%r11        # 812bf0 <GLAD_GL_VERSION_1_4-0x200950>
  60fa8b:	41 89 03             	mov    %eax,(%r11)
  60fa8e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fa91:	83 f8 01             	cmp    $0x1,%eax
  60fa94:	0f 85 0c 00 00 00    	jne    60faa6 <find_coreGL+0x2d4>
  60fa9a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fa9d:	83 f8 05             	cmp    $0x5,%eax
  60faa0:	0f 8d 13 00 00 00    	jge    60fab9 <find_coreGL+0x2e7>
  60faa6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60faa9:	83 f8 01             	cmp    $0x1,%eax
  60faac:	0f 8f 07 00 00 00    	jg     60fab9 <find_coreGL+0x2e7>
  60fab2:	b8 00 00 00 00       	mov    $0x0,%eax
  60fab7:	eb 05                	jmp    60fabe <find_coreGL+0x2ec>
  60fab9:	b8 01 00 00 00       	mov    $0x1,%eax
  60fabe:	4c 8b 1d 7b 31 20 00 	mov    0x20317b(%rip),%r11        # 812c40 <GLAD_GL_VERSION_1_5-0x200904>
  60fac5:	41 89 03             	mov    %eax,(%r11)
  60fac8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60facb:	83 f8 02             	cmp    $0x2,%eax
  60face:	0f 85 0c 00 00 00    	jne    60fae0 <find_coreGL+0x30e>
  60fad4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fad7:	83 f8 00             	cmp    $0x0,%eax
  60fada:	0f 8d 13 00 00 00    	jge    60faf3 <find_coreGL+0x321>
  60fae0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fae3:	83 f8 02             	cmp    $0x2,%eax
  60fae6:	0f 8f 07 00 00 00    	jg     60faf3 <find_coreGL+0x321>
  60faec:	b8 00 00 00 00       	mov    $0x0,%eax
  60faf1:	eb 05                	jmp    60faf8 <find_coreGL+0x326>
  60faf3:	b8 01 00 00 00       	mov    $0x1,%eax
  60faf8:	4c 8b 1d c1 31 20 00 	mov    0x2031c1(%rip),%r11        # 812cc0 <GLAD_GL_VERSION_2_0-0x200888>
  60faff:	41 89 03             	mov    %eax,(%r11)
  60fb02:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb05:	83 f8 02             	cmp    $0x2,%eax
  60fb08:	0f 85 0c 00 00 00    	jne    60fb1a <find_coreGL+0x348>
  60fb0e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fb11:	83 f8 01             	cmp    $0x1,%eax
  60fb14:	0f 8d 13 00 00 00    	jge    60fb2d <find_coreGL+0x35b>
  60fb1a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb1d:	83 f8 02             	cmp    $0x2,%eax
  60fb20:	0f 8f 07 00 00 00    	jg     60fb2d <find_coreGL+0x35b>
  60fb26:	b8 00 00 00 00       	mov    $0x0,%eax
  60fb2b:	eb 05                	jmp    60fb32 <find_coreGL+0x360>
  60fb2d:	b8 01 00 00 00       	mov    $0x1,%eax
  60fb32:	4c 8b 1d ff 33 20 00 	mov    0x2033ff(%rip),%r11        # 812f38 <GLAD_GL_VERSION_2_1-0x200614>
  60fb39:	41 89 03             	mov    %eax,(%r11)
  60fb3c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb3f:	83 f8 03             	cmp    $0x3,%eax
  60fb42:	0f 85 0c 00 00 00    	jne    60fb54 <find_coreGL+0x382>
  60fb48:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fb4b:	83 f8 00             	cmp    $0x0,%eax
  60fb4e:	0f 8d 13 00 00 00    	jge    60fb67 <find_coreGL+0x395>
  60fb54:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb57:	83 f8 03             	cmp    $0x3,%eax
  60fb5a:	0f 8f 07 00 00 00    	jg     60fb67 <find_coreGL+0x395>
  60fb60:	b8 00 00 00 00       	mov    $0x0,%eax
  60fb65:	eb 05                	jmp    60fb6c <find_coreGL+0x39a>
  60fb67:	b8 01 00 00 00       	mov    $0x1,%eax
  60fb6c:	4c 8b 1d fd 33 20 00 	mov    0x2033fd(%rip),%r11        # 812f70 <GLAD_GL_VERSION_3_0-0x2005e0>
  60fb73:	41 89 03             	mov    %eax,(%r11)
  60fb76:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb79:	83 f8 03             	cmp    $0x3,%eax
  60fb7c:	0f 85 0c 00 00 00    	jne    60fb8e <find_coreGL+0x3bc>
  60fb82:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fb85:	83 f8 01             	cmp    $0x1,%eax
  60fb88:	0f 8d 13 00 00 00    	jge    60fba1 <find_coreGL+0x3cf>
  60fb8e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fb91:	83 f8 03             	cmp    $0x3,%eax
  60fb94:	0f 8f 07 00 00 00    	jg     60fba1 <find_coreGL+0x3cf>
  60fb9a:	b8 00 00 00 00       	mov    $0x0,%eax
  60fb9f:	eb 05                	jmp    60fba6 <find_coreGL+0x3d4>
  60fba1:	b8 01 00 00 00       	mov    $0x1,%eax
  60fba6:	4c 8b 1d 53 36 20 00 	mov    0x203653(%rip),%r11        # 813200 <GLAD_GL_VERSION_3_1-0x200354>
  60fbad:	41 89 03             	mov    %eax,(%r11)
  60fbb0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fbb3:	83 f8 03             	cmp    $0x3,%eax
  60fbb6:	0f 85 0c 00 00 00    	jne    60fbc8 <find_coreGL+0x3f6>
  60fbbc:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fbbf:	83 f8 02             	cmp    $0x2,%eax
  60fbc2:	0f 8d 13 00 00 00    	jge    60fbdb <find_coreGL+0x409>
  60fbc8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fbcb:	83 f8 03             	cmp    $0x3,%eax
  60fbce:	0f 8f 07 00 00 00    	jg     60fbdb <find_coreGL+0x409>
  60fbd4:	b8 00 00 00 00       	mov    $0x0,%eax
  60fbd9:	eb 05                	jmp    60fbe0 <find_coreGL+0x40e>
  60fbdb:	b8 01 00 00 00       	mov    $0x1,%eax
  60fbe0:	4c 8b 1d 81 36 20 00 	mov    0x203681(%rip),%r11        # 813268 <GLAD_GL_VERSION_3_2-0x2002f0>
  60fbe7:	41 89 03             	mov    %eax,(%r11)
  60fbea:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fbed:	83 f8 03             	cmp    $0x3,%eax
  60fbf0:	0f 85 0c 00 00 00    	jne    60fc02 <find_coreGL+0x430>
  60fbf6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fbf9:	83 f8 03             	cmp    $0x3,%eax
  60fbfc:	0f 8d 13 00 00 00    	jge    60fc15 <find_coreGL+0x443>
  60fc02:	8b 45 f8             	mov    -0x8(%rbp),%eax
  60fc05:	83 f8 03             	cmp    $0x3,%eax
  60fc08:	0f 8f 07 00 00 00    	jg     60fc15 <find_coreGL+0x443>
  60fc0e:	b8 00 00 00 00       	mov    $0x0,%eax
  60fc13:	eb 05                	jmp    60fc1a <find_coreGL+0x448>
  60fc15:	b8 01 00 00 00       	mov    $0x1,%eax
  60fc1a:	4c 8b 1d e7 36 20 00 	mov    0x2036e7(%rip),%r11        # 813308 <GLAD_GL_VERSION_3_3-0x200254>
  60fc21:	41 89 03             	mov    %eax,(%r11)
  60fc24:	48 8b 05 b5 38 20 00 	mov    0x2038b5(%rip),%rax        # 8134e0 <GLVersion-0x200030>
  60fc2b:	8b 00                	mov    (%rax),%eax
  60fc2d:	83 f8 03             	cmp    $0x3,%eax
  60fc30:	0f 8f 28 00 00 00    	jg     60fc5e <find_coreGL+0x48c>
  60fc36:	48 8b 05 a3 38 20 00 	mov    0x2038a3(%rip),%rax        # 8134e0 <GLVersion-0x200030>
  60fc3d:	8b 00                	mov    (%rax),%eax
  60fc3f:	83 f8 03             	cmp    $0x3,%eax
  60fc42:	0f 8c 2c 00 00 00    	jl     60fc74 <find_coreGL+0x4a2>
  60fc48:	48 8b 05 91 38 20 00 	mov    0x203891(%rip),%rax        # 8134e0 <GLVersion-0x200030>
  60fc4f:	8b 80 04 00 00 00    	mov    0x4(%rax),%eax
  60fc55:	83 f8 03             	cmp    $0x3,%eax
  60fc58:	0f 8c 16 00 00 00    	jl     60fc74 <find_coreGL+0x4a2>
  60fc5e:	b8 03 00 00 00       	mov    $0x3,%eax
  60fc63:	89 05 ff 44 40 00    	mov    %eax,0x4044ff(%rip)        # a14168 <max_loaded_major>
  60fc69:	b8 03 00 00 00       	mov    $0x3,%eax
  60fc6e:	89 05 f8 44 40 00    	mov    %eax,0x4044f8(%rip)        # a1416c <max_loaded_minor>
  60fc74:	c9                   	leave
  60fc75:	c3                   	ret

000000000060fc76 <gladLoadGLLoader>:
  60fc76:	55                   	push   %rbp
  60fc77:	48 89 e5             	mov    %rsp,%rbp
  60fc7a:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  60fc81:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60fc85:	b8 00 00 00 00       	mov    $0x0,%eax
  60fc8a:	4c 8b 1d 4f 38 20 00 	mov    0x20384f(%rip),%r11        # 8134e0 <GLVersion-0x200030>
  60fc91:	41 89 03             	mov    %eax,(%r11)
  60fc94:	b8 00 00 00 00       	mov    $0x0,%eax
  60fc99:	4c 8b 1d 40 38 20 00 	mov    0x203840(%rip),%r11        # 8134e0 <GLVersion-0x200030>
  60fca0:	49 81 c3 04 00 00 00 	add    $0x4,%r11
  60fca7:	41 89 03             	mov    %eax,(%r11)
  60fcaa:	48 8d 05 6b 28 20 00 	lea    0x20286b(%rip),%rax        # 81251c <L.407>
  60fcb1:	48 89 c7             	mov    %rax,%rdi
  60fcb4:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  60fcb8:	41 ff d3             	call   *%r11
  60fcbb:	4c 8b 1d f6 2b 20 00 	mov    0x202bf6(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60fcc2:	49 89 03             	mov    %rax,(%r11)
  60fcc5:	48 8b 05 ec 2b 20 00 	mov    0x202bec(%rip),%rax        # 8128b8 <glad_glGetString-0x201158>
  60fccc:	48 8b 00             	mov    (%rax),%rax
  60fccf:	48 83 f8 00          	cmp    $0x0,%rax
  60fcd3:	0f 85 0a 00 00 00    	jne    60fce3 <gladLoadGLLoader+0x6d>
  60fcd9:	b8 00 00 00 00       	mov    $0x0,%eax
  60fcde:	e9 0a 01 00 00       	jmp    60fded <gladLoadGLLoader+0x177>
  60fce3:	b8 02 1f 00 00       	mov    $0x1f02,%eax
  60fce8:	48 89 c7             	mov    %rax,%rdi
  60fceb:	4c 8b 1d c6 2b 20 00 	mov    0x202bc6(%rip),%r11        # 8128b8 <glad_glGetString-0x201158>
  60fcf2:	4d 8b 1b             	mov    (%r11),%r11
  60fcf5:	41 ff d3             	call   *%r11
  60fcf8:	48 83 f8 00          	cmp    $0x0,%rax
  60fcfc:	0f 85 0a 00 00 00    	jne    60fd0c <gladLoadGLLoader+0x96>
  60fd02:	b8 00 00 00 00       	mov    $0x0,%eax
  60fd07:	e9 e1 00 00 00       	jmp    60fded <gladLoadGLLoader+0x177>
  60fd0c:	e8 c1 fa ff ff       	call   60f7d2 <find_coreGL>
  60fd11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd15:	48 89 c7             	mov    %rax,%rdi
  60fd18:	e8 e3 d0 ff ff       	call   60ce00 <load_GL_VERSION_1_0>
  60fd1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd21:	48 89 c7             	mov    %rax,%rdi
  60fd24:	e8 0f d6 ff ff       	call   60d338 <load_GL_VERSION_1_1>
  60fd29:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd2d:	48 89 c7             	mov    %rax,%rdi
  60fd30:	e8 8a d7 ff ff       	call   60d4bf <load_GL_VERSION_1_2>
  60fd35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd39:	48 89 c7             	mov    %rax,%rdi
  60fd3c:	e8 12 d8 ff ff       	call   60d553 <load_GL_VERSION_1_3>
  60fd41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd45:	48 89 c7             	mov    %rax,%rdi
  60fd48:	e8 21 d9 ff ff       	call   60d66e <load_GL_VERSION_1_4>
  60fd4d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd51:	48 89 c7             	mov    %rax,%rdi
  60fd54:	e8 30 da ff ff       	call   60d789 <load_GL_VERSION_1_5>
  60fd59:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd5d:	48 89 c7             	mov    %rax,%rdi
  60fd60:	e8 4d dc ff ff       	call   60d9b2 <load_GL_VERSION_2_0>
  60fd65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd69:	48 89 c7             	mov    %rax,%rdi
  60fd6c:	e8 38 e6 ff ff       	call   60e3a9 <load_GL_VERSION_2_1>
  60fd71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd75:	48 89 c7             	mov    %rax,%rdi
  60fd78:	e8 f6 e6 ff ff       	call   60e473 <load_GL_VERSION_3_0>
  60fd7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd81:	48 89 c7             	mov    %rax,%rdi
  60fd84:	e8 ee ef ff ff       	call   60ed77 <load_GL_VERSION_3_1>
  60fd89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd8d:	48 89 c7             	mov    %rax,%rdi
  60fd90:	e8 9f f1 ff ff       	call   60ef34 <load_GL_VERSION_3_2>
  60fd95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fd99:	48 89 c7             	mov    %rax,%rdi
  60fd9c:	e8 bc f3 ff ff       	call   60f15d <load_GL_VERSION_3_3>
  60fda1:	e8 fd f9 ff ff       	call   60f7a3 <find_extensionsGL>
  60fda6:	83 f8 00             	cmp    $0x0,%eax
  60fda9:	0f 85 0a 00 00 00    	jne    60fdb9 <gladLoadGLLoader+0x143>
  60fdaf:	b8 00 00 00 00       	mov    $0x0,%eax
  60fdb4:	e9 34 00 00 00       	jmp    60fded <gladLoadGLLoader+0x177>
  60fdb9:	48 8b 05 20 37 20 00 	mov    0x203720(%rip),%rax        # 8134e0 <GLVersion-0x200030>
  60fdc0:	8b 00                	mov    (%rax),%eax
  60fdc2:	83 f8 00             	cmp    $0x0,%eax
  60fdc5:	0f 85 1d 00 00 00    	jne    60fde8 <gladLoadGLLoader+0x172>
  60fdcb:	48 8b 05 0e 37 20 00 	mov    0x20370e(%rip),%rax        # 8134e0 <GLVersion-0x200030>
  60fdd2:	8b 80 04 00 00 00    	mov    0x4(%rax),%eax
  60fdd8:	83 f8 00             	cmp    $0x0,%eax
  60fddb:	0f 85 07 00 00 00    	jne    60fde8 <gladLoadGLLoader+0x172>
  60fde1:	b8 00 00 00 00       	mov    $0x0,%eax
  60fde6:	eb 05                	jmp    60fded <gladLoadGLLoader+0x177>
  60fde8:	b8 01 00 00 00       	mov    $0x1,%eax
  60fded:	c9                   	leave
  60fdee:	c3                   	ret
	...

000000000060fdf0 <__floatundisf>:
  60fdf0:	55                   	push   %rbp
  60fdf1:	48 89 e5             	mov    %rsp,%rbp
  60fdf4:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60fdfb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60fdff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fe03:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60fe07:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fe0a:	83 f8 00             	cmp    $0x0,%eax
  60fe0d:	0f 8c 0e 00 00 00    	jl     60fe21 <__floatundisf+0x31>
  60fe13:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60fe17:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  60fe1c:	e9 37 00 00 00       	jmp    60fe58 <__floatundisf+0x68>
  60fe21:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60fe25:	50                   	push   %rax
  60fe26:	df 2c 24             	fildll (%rsp)
  60fe29:	48 83 c4 08          	add    $0x8,%rsp
  60fe2d:	d9 c0                	fld    %st(0)
  60fe2f:	db 7d e0             	fstpt  -0x20(%rbp)
  60fe32:	dd d8                	fstp   %st(0)
  60fe34:	db 2d f6 26 20 00    	fldt   0x2026f6(%rip)        # 812530 <L.6>
  60fe3a:	db 6d e0             	fldt   -0x20(%rbp)
  60fe3d:	de c1                	faddp  %st,%st(1)
  60fe3f:	d9 c0                	fld    %st(0)
  60fe41:	db 7d e0             	fstpt  -0x20(%rbp)
  60fe44:	dd d8                	fstp   %st(0)
  60fe46:	db 6d e0             	fldt   -0x20(%rbp)
  60fe49:	d9 5c 24 f0          	fstps  -0x10(%rsp)
  60fe4d:	f3 0f 10 44 24 f0    	movss  -0x10(%rsp),%xmm0
  60fe53:	e9 00 00 00 00       	jmp    60fe58 <__floatundisf+0x68>
  60fe58:	c9                   	leave
  60fe59:	c3                   	ret

000000000060fe5a <__floatundidf>:
  60fe5a:	55                   	push   %rbp
  60fe5b:	48 89 e5             	mov    %rsp,%rbp
  60fe5e:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60fe65:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60fe69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fe6d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60fe71:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fe74:	83 f8 00             	cmp    $0x0,%eax
  60fe77:	0f 8c 0e 00 00 00    	jl     60fe8b <__floatundidf+0x31>
  60fe7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60fe81:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  60fe86:	e9 37 00 00 00       	jmp    60fec2 <__floatundidf+0x68>
  60fe8b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60fe8f:	50                   	push   %rax
  60fe90:	df 2c 24             	fildll (%rsp)
  60fe93:	48 83 c4 08          	add    $0x8,%rsp
  60fe97:	d9 c0                	fld    %st(0)
  60fe99:	db 7d e0             	fstpt  -0x20(%rbp)
  60fe9c:	dd d8                	fstp   %st(0)
  60fe9e:	db 2d 9c 26 20 00    	fldt   0x20269c(%rip)        # 812540 <L.7>
  60fea4:	db 6d e0             	fldt   -0x20(%rbp)
  60fea7:	de c1                	faddp  %st,%st(1)
  60fea9:	d9 c0                	fld    %st(0)
  60feab:	db 7d e0             	fstpt  -0x20(%rbp)
  60feae:	dd d8                	fstp   %st(0)
  60feb0:	db 6d e0             	fldt   -0x20(%rbp)
  60feb3:	dd 5c 24 f0          	fstpl  -0x10(%rsp)
  60feb7:	f2 0f 10 44 24 f0    	movsd  -0x10(%rsp),%xmm0
  60febd:	e9 00 00 00 00       	jmp    60fec2 <__floatundidf+0x68>
  60fec2:	c9                   	leave
  60fec3:	c3                   	ret

000000000060fec4 <__floatundixf>:
  60fec4:	55                   	push   %rbp
  60fec5:	48 89 e5             	mov    %rsp,%rbp
  60fec8:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60fecf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  60fed3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60fed7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  60fedb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60fede:	83 f8 00             	cmp    $0x0,%eax
  60fee1:	0f 8c 11 00 00 00    	jl     60fef8 <__floatundixf+0x34>
  60fee7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60feeb:	50                   	push   %rax
  60feec:	df 2c 24             	fildll (%rsp)
  60feef:	48 83 c4 08          	add    $0x8,%rsp
  60fef3:	e9 2d 00 00 00       	jmp    60ff25 <__floatundixf+0x61>
  60fef8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  60fefc:	50                   	push   %rax
  60fefd:	df 2c 24             	fildll (%rsp)
  60ff00:	48 83 c4 08          	add    $0x8,%rsp
  60ff04:	d9 c0                	fld    %st(0)
  60ff06:	db 7d e0             	fstpt  -0x20(%rbp)
  60ff09:	dd d8                	fstp   %st(0)
  60ff0b:	db 2d 3f 26 20 00    	fldt   0x20263f(%rip)        # 812550 <L.8>
  60ff11:	db 6d e0             	fldt   -0x20(%rbp)
  60ff14:	de c1                	faddp  %st,%st(1)
  60ff16:	d9 c0                	fld    %st(0)
  60ff18:	db 7d e0             	fstpt  -0x20(%rbp)
  60ff1b:	dd d8                	fstp   %st(0)
  60ff1d:	db 6d e0             	fldt   -0x20(%rbp)
  60ff20:	e9 00 00 00 00       	jmp    60ff25 <__floatundixf+0x61>
  60ff25:	c9                   	leave
  60ff26:	c3                   	ret

000000000060ff27 <__fixunssfdi>:
  60ff27:	55                   	push   %rbp
  60ff28:	48 89 e5             	mov    %rsp,%rbp
  60ff2b:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  60ff32:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  60ff37:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  60ff3c:	66 0f 7e 45 f4       	movd   %xmm0,-0xc(%rbp)
  60ff41:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60ff44:	83 f8 00             	cmp    $0x0,%eax
  60ff47:	0f 85 0f 00 00 00    	jne    60ff5c <__fixunssfdi+0x35>
  60ff4d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60ff54:	00 00 00 
  60ff57:	e9 cc 00 00 00       	jmp    610028 <__fixunssfdi+0x101>
  60ff5c:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60ff5f:	c1 e8 17             	shr    $0x17,%eax
  60ff62:	81 e0 ff 00 00 00    	and    $0xff,%eax
  60ff68:	83 e8 7e             	sub    $0x7e,%eax
  60ff6b:	83 e8 18             	sub    $0x18,%eax
  60ff6e:	89 45 f0             	mov    %eax,-0x10(%rbp)
  60ff71:	8b 45 f4             	mov    -0xc(%rbp),%eax
  60ff74:	81 e0 ff ff 7f 00    	and    $0x7fffff,%eax
  60ff7a:	81 c8 00 00 80 00    	or     $0x800000,%eax
  60ff80:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60ff84:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60ff87:	83 f8 29             	cmp    $0x29,%eax
  60ff8a:	0f 8c 0f 00 00 00    	jl     60ff9f <__fixunssfdi+0x78>
  60ff90:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
  60ff97:	00 00 80 
  60ff9a:	e9 89 00 00 00       	jmp    610028 <__fixunssfdi+0x101>
  60ff9f:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60ffa2:	83 f8 00             	cmp    $0x0,%eax
  60ffa5:	0f 8c 13 00 00 00    	jl     60ffbe <__fixunssfdi+0x97>
  60ffab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  60ffaf:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  60ffb2:	48 d3 e0             	shl    %cl,%rax
  60ffb5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60ffb9:	e9 3f 00 00 00       	jmp    60fffd <__fixunssfdi+0xd6>
  60ffbe:	8b 45 f0             	mov    -0x10(%rbp),%eax
  60ffc1:	83 f8 e9             	cmp    $0xffffffe9,%eax
  60ffc4:	0f 8c 24 00 00 00    	jl     60ffee <__fixunssfdi+0xc7>
  60ffca:	b8 00 00 00 00       	mov    $0x0,%eax
  60ffcf:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  60ffd2:	29 c8                	sub    %ecx,%eax
  60ffd4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  60ffd8:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  60ffdc:	89 c1                	mov    %eax,%ecx
  60ffde:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  60ffe2:	48 d3 e8             	shr    %cl,%rax
  60ffe5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  60ffe9:	e9 0f 00 00 00       	jmp    60fffd <__fixunssfdi+0xd6>
  60ffee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  60fff5:	00 00 00 
  60fff8:	e9 2b 00 00 00       	jmp    610028 <__fixunssfdi+0x101>
  60fffd:	8b 45 f4             	mov    -0xc(%rbp),%eax
  610000:	81 e0 00 00 00 80    	and    $0x80000000,%eax
  610006:	83 f8 00             	cmp    $0x0,%eax
  610009:	0f 84 15 00 00 00    	je     610024 <__fixunssfdi+0xfd>
  61000f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  610016:	00 00 00 
  610019:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  61001d:	48 29 c8             	sub    %rcx,%rax
  610020:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  610024:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  610028:	c9                   	leave
  610029:	c3                   	ret

000000000061002a <__fixsfdi>:
  61002a:	55                   	push   %rbp
  61002b:	48 89 e5             	mov    %rsp,%rbp
  61002e:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  610035:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  61003a:	66 0f 6e 05 1e 25 20 	movd   0x20251e(%rip),%xmm0        # 812560 <L.9>
  610041:	00 
  610042:	66 0f 6e 4d f8       	movd   -0x8(%rbp),%xmm1
  610047:	0f 2f c8             	comiss %xmm0,%xmm1
  61004a:	b0 00                	mov    $0x0,%al
  61004c:	7a 03                	jp     610051 <__fixsfdi+0x27>
  61004e:	0f 93 c0             	setae  %al
  610051:	0f b6 c0             	movzbl %al,%eax
  610054:	89 45 ec             	mov    %eax,-0x14(%rbp)
  610057:	83 f8 00             	cmp    $0x0,%eax
  61005a:	0f 84 05 00 00 00    	je     610065 <__fixsfdi+0x3b>
  610060:	e9 18 00 00 00       	jmp    61007d <__fixsfdi+0x53>
  610065:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  61006a:	48 8b 05 1f 29 20 00 	mov    0x20291f(%rip),%rax        # 812990 <__mzerosf+0x410>
  610071:	66 0f 6e 08          	movd   (%rax),%xmm1
  610075:	0f 57 c1             	xorps  %xmm1,%xmm0
  610078:	e9 05 00 00 00       	jmp    610082 <__fixsfdi+0x58>
  61007d:	66 0f 6e 45 f8       	movd   -0x8(%rbp),%xmm0
  610082:	66 0f 7e 45 e8       	movd   %xmm0,-0x18(%rbp)
  610087:	66 0f 6e 45 e8       	movd   -0x18(%rbp),%xmm0
  61008c:	e8 96 fe ff ff       	call   60ff27 <__fixunssfdi>
  610091:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  610095:	8b 45 ec             	mov    -0x14(%rbp),%eax
  610098:	83 f8 00             	cmp    $0x0,%eax
  61009b:	0f 84 05 00 00 00    	je     6100a6 <__fixsfdi+0x7c>
  6100a1:	e9 16 00 00 00       	jmp    6100bc <__fixsfdi+0x92>
  6100a6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6100ad:	00 00 00 
  6100b0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6100b4:	48 29 c8             	sub    %rcx,%rax
  6100b7:	e9 04 00 00 00       	jmp    6100c0 <__fixsfdi+0x96>
  6100bc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6100c0:	c9                   	leave
  6100c1:	c3                   	ret

00000000006100c2 <__fixunsdfdi>:
  6100c2:	55                   	push   %rbp
  6100c3:	48 89 e5             	mov    %rsp,%rbp
  6100c6:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  6100cd:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  6100d2:	f3 0f 7e 45 f8       	movq   -0x8(%rbp),%xmm0
  6100d7:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
  6100dc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6100e0:	48 83 f8 00          	cmp    $0x0,%rax
  6100e4:	0f 85 0f 00 00 00    	jne    6100f9 <__fixunsdfdi+0x37>
  6100ea:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6100f1:	00 00 00 
  6100f4:	e9 de 00 00 00       	jmp    6101d7 <__fixunsdfdi+0x115>
  6100f9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6100fc:	c1 f8 14             	sar    $0x14,%eax
  6100ff:	81 e0 ff 07 00 00    	and    $0x7ff,%eax
  610105:	81 e8 fe 03 00 00    	sub    $0x3fe,%eax
  61010b:	83 e8 35             	sub    $0x35,%eax
  61010e:	89 45 ec             	mov    %eax,-0x14(%rbp)
  610111:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  610115:	48 b9 ff ff ff ff ff 	movabs $0xfffffffffffff,%rcx
  61011c:	ff 0f 00 
  61011f:	48 21 c8             	and    %rcx,%rax
  610122:	48 b9 00 00 00 00 00 	movabs $0x10000000000000,%rcx
  610129:	00 10 00 
  61012c:	48 09 c8             	or     %rcx,%rax
  61012f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  610133:	8b 45 ec             	mov    -0x14(%rbp),%eax
  610136:	83 f8 0c             	cmp    $0xc,%eax
  610139:	0f 8c 0f 00 00 00    	jl     61014e <__fixunsdfdi+0x8c>
  61013f:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
  610146:	00 00 80 
  610149:	e9 89 00 00 00       	jmp    6101d7 <__fixunsdfdi+0x115>
  61014e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  610151:	83 f8 00             	cmp    $0x0,%eax
  610154:	0f 8c 13 00 00 00    	jl     61016d <__fixunsdfdi+0xab>
  61015a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  61015e:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  610161:	48 d3 e0             	shl    %cl,%rax
  610164:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  610168:	e9 3f 00 00 00       	jmp    6101ac <__fixunsdfdi+0xea>
  61016d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  610170:	83 f8 cc             	cmp    $0xffffffcc,%eax
  610173:	0f 8c 24 00 00 00    	jl     61019d <__fixunsdfdi+0xdb>
  610179:	b8 00 00 00 00       	mov    $0x0,%eax
  61017e:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  610181:	29 c8                	sub    %ecx,%eax
  610183:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  610187:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  61018b:	89 c1                	mov    %eax,%ecx
  61018d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  610191:	48 d3 e8             	shr    %cl,%rax
  610194:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  610198:	e9 0f 00 00 00       	jmp    6101ac <__fixunsdfdi+0xea>
  61019d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6101a4:	00 00 00 
  6101a7:	e9 2b 00 00 00       	jmp    6101d7 <__fixunsdfdi+0x115>
  6101ac:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6101af:	81 e0 00 00 00 80    	and    $0x80000000,%eax
  6101b5:	83 f8 00             	cmp    $0x0,%eax
  6101b8:	0f 84 15 00 00 00    	je     6101d3 <__fixunsdfdi+0x111>
  6101be:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6101c5:	00 00 00 
  6101c8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  6101cc:	48 29 c8             	sub    %rcx,%rax
  6101cf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6101d3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  6101d7:	c9                   	leave
  6101d8:	c3                   	ret

00000000006101d9 <__fixdfdi>:
  6101d9:	55                   	push   %rbp
  6101da:	48 89 e5             	mov    %rsp,%rbp
  6101dd:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  6101e4:	66 0f d6 45 f8       	movq   %xmm0,-0x8(%rbp)
  6101e9:	f3 0f 7e 05 77 23 20 	movq   0x202377(%rip),%xmm0        # 812568 <L.10>
  6101f0:	00 
  6101f1:	f3 0f 7e 4d f8       	movq   -0x8(%rbp),%xmm1
  6101f6:	66 0f 2f c8          	comisd %xmm0,%xmm1
  6101fa:	b0 00                	mov    $0x0,%al
  6101fc:	7a 03                	jp     610201 <__fixdfdi+0x28>
  6101fe:	0f 93 c0             	setae  %al
  610201:	0f b6 c0             	movzbl %al,%eax
  610204:	89 45 ec             	mov    %eax,-0x14(%rbp)
  610207:	83 f8 00             	cmp    $0x0,%eax
  61020a:	0f 84 05 00 00 00    	je     610215 <__fixdfdi+0x3c>
  610210:	e9 19 00 00 00       	jmp    61022e <__fixdfdi+0x55>
  610215:	f3 0f 7e 45 f8       	movq   -0x8(%rbp),%xmm0
  61021a:	48 8b 05 c7 32 20 00 	mov    0x2032c7(%rip),%rax        # 8134e8 <__mzerodf+0xf60>
  610221:	f3 0f 7e 08          	movq   (%rax),%xmm1
  610225:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
  610229:	e9 05 00 00 00       	jmp    610233 <__fixdfdi+0x5a>
  61022e:	f3 0f 7e 45 f8       	movq   -0x8(%rbp),%xmm0
  610233:	66 0f d6 45 e0       	movq   %xmm0,-0x20(%rbp)
  610238:	f3 0f 7e 45 e0       	movq   -0x20(%rbp),%xmm0
  61023d:	e8 80 fe ff ff       	call   6100c2 <__fixunsdfdi>
  610242:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  610246:	8b 45 ec             	mov    -0x14(%rbp),%eax
  610249:	83 f8 00             	cmp    $0x0,%eax
  61024c:	0f 84 05 00 00 00    	je     610257 <__fixdfdi+0x7e>
  610252:	e9 16 00 00 00       	jmp    61026d <__fixdfdi+0x94>
  610257:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  61025e:	00 00 00 
  610261:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  610265:	48 29 c8             	sub    %rcx,%rax
  610268:	e9 04 00 00 00       	jmp    610271 <__fixdfdi+0x98>
  61026d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  610271:	c9                   	leave
  610272:	c3                   	ret

0000000000610273 <__fixunsxfdi>:
  610273:	55                   	push   %rbp
  610274:	48 89 e5             	mov    %rsp,%rbp
  610277:	48 81 ec 30 00 00 00 	sub    $0x30,%rsp
  61027e:	db 6d 10             	fldt   0x10(%rbp)
  610281:	d9 c0                	fld    %st(0)
  610283:	db 7d f0             	fstpt  -0x10(%rbp)
  610286:	dd d8                	fstp   %st(0)
  610288:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  61028c:	48 83 f8 00          	cmp    $0x0,%rax
  610290:	0f 85 1c 00 00 00    	jne    6102b2 <__fixunsxfdi+0x3f>
  610296:	0f b7 45 f8          	movzwl -0x8(%rbp),%eax
  61029a:	83 f8 00             	cmp    $0x0,%eax
  61029d:	0f 85 0f 00 00 00    	jne    6102b2 <__fixunsxfdi+0x3f>
  6102a3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6102aa:	00 00 00 
  6102ad:	e9 9f 00 00 00       	jmp    610351 <__fixunsxfdi+0xde>
  6102b2:	0f b7 45 f8          	movzwl -0x8(%rbp),%eax
  6102b6:	81 e0 ff 7f 00 00    	and    $0x7fff,%eax
  6102bc:	81 e8 fe 3f 00 00    	sub    $0x3ffe,%eax
  6102c2:	83 e8 40             	sub    $0x40,%eax
  6102c5:	89 45 ec             	mov    %eax,-0x14(%rbp)
  6102c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  6102cc:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6102d0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6102d3:	83 f8 00             	cmp    $0x0,%eax
  6102d6:	0f 8e 0f 00 00 00    	jle    6102eb <__fixunsxfdi+0x78>
  6102dc:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
  6102e3:	00 00 80 
  6102e6:	e9 66 00 00 00       	jmp    610351 <__fixunsxfdi+0xde>
  6102eb:	8b 45 ec             	mov    -0x14(%rbp),%eax
  6102ee:	83 f8 c1             	cmp    $0xffffffc1,%eax
  6102f1:	0f 8d 0f 00 00 00    	jge    610306 <__fixunsxfdi+0x93>
  6102f7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6102fe:	00 00 00 
  610301:	e9 4b 00 00 00       	jmp    610351 <__fixunsxfdi+0xde>
  610306:	b8 00 00 00 00       	mov    $0x0,%eax
  61030b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  61030e:	29 c8                	sub    %ecx,%eax
  610310:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  610314:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  610318:	89 c1                	mov    %eax,%ecx
  61031a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  61031e:	48 d3 e8             	shr    %cl,%rax
  610321:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  610325:	0f b7 45 f8          	movzwl -0x8(%rbp),%eax
  610329:	81 e0 00 80 00 00    	and    $0x8000,%eax
  61032f:	83 f8 00             	cmp    $0x0,%eax
  610332:	0f 84 15 00 00 00    	je     61034d <__fixunsxfdi+0xda>
  610338:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  61033f:	00 00 00 
  610342:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  610346:	48 29 c8             	sub    %rcx,%rax
  610349:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  61034d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  610351:	c9                   	leave
  610352:	c3                   	ret

0000000000610353 <__fixxfdi>:
  610353:	55                   	push   %rbp
  610354:	48 89 e5             	mov    %rsp,%rbp
  610357:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  61035e:	db 2d 0c 22 20 00    	fldt   0x20220c(%rip)        # 812570 <L.11>
  610364:	db 6d 10             	fldt   0x10(%rbp)
  610367:	de d9                	fcompp
  610369:	df e0                	fnstsw %ax
  61036b:	f6 c4 05             	test   $0x5,%ah
  61036e:	0f 94 c0             	sete   %al
  610371:	0f b6 c0             	movzbl %al,%eax
  610374:	89 45 f4             	mov    %eax,-0xc(%rbp)
  610377:	83 f8 00             	cmp    $0x0,%eax
  61037a:	0f 84 05 00 00 00    	je     610385 <__fixxfdi+0x32>
  610380:	e9 0a 00 00 00       	jmp    61038f <__fixxfdi+0x3c>
  610385:	db 6d 10             	fldt   0x10(%rbp)
  610388:	d9 e0                	fchs
  61038a:	e9 03 00 00 00       	jmp    610392 <__fixxfdi+0x3f>
  61038f:	db 6d 10             	fldt   0x10(%rbp)
  610392:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  610399:	db 7c 24 00          	fstpt  0x0(%rsp)
  61039d:	dd d8                	fstp   %st(0)
  61039f:	e8 cf fe ff ff       	call   610273 <__fixunsxfdi>
  6103a4:	48 83 c4 10          	add    $0x10,%rsp
  6103a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  6103ac:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6103af:	83 f8 00             	cmp    $0x0,%eax
  6103b2:	0f 84 05 00 00 00    	je     6103bd <__fixxfdi+0x6a>
  6103b8:	e9 16 00 00 00       	jmp    6103d3 <__fixxfdi+0x80>
  6103bd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6103c4:	00 00 00 
  6103c7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  6103cb:	48 29 c8             	sub    %rcx,%rax
  6103ce:	e9 04 00 00 00       	jmp    6103d7 <__fixxfdi+0x84>
  6103d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6103d7:	c9                   	leave
  6103d8:	c3                   	ret

Disassembly of section .init:

00000000006103dc <_init>:
  6103dc:	f3 0f 1e fa          	endbr64
  6103e0:	48 83 ec 08          	sub    $0x8,%rsp
  6103e4:	48 8b 05 05 31 20 00 	mov    0x203105(%rip),%rax        # 8134f0 <__gmon_start__>
  6103eb:	48 85 c0             	test   %rax,%rax
  6103ee:	74 02                	je     6103f2 <_init+0x16>
  6103f0:	ff d0                	call   *%rax
  6103f2:	48 83 c4 08          	add    $0x8,%rsp
  6103f6:	c3                   	ret

Disassembly of section .fini:

00000000006103f8 <_fini>:
  6103f8:	f3 0f 1e fa          	endbr64
  6103fc:	48 83 ec 08          	sub    $0x8,%rsp
  610400:	48 83 c4 08          	add    $0x8,%rsp
  610404:	c3                   	ret

Disassembly of section .plt:

0000000000610408 <SDL_Init@plt-0x10>:
  610408:	ff 35 4a 23 20 00    	push   0x20234a(%rip)        # 812758 <_GLOBAL_OFFSET_TABLE_+0x8>
  61040e:	ff 25 4c 23 20 00    	jmp    *0x20234c(%rip)        # 812760 <_GLOBAL_OFFSET_TABLE_+0x10>
  610414:	00 00                	add    %al,(%rax)
	...

0000000000610418 <SDL_Init@plt>:
  610418:	ff 25 4a 23 20 00    	jmp    *0x20234a(%rip)        # 812768 <SDL_Init@SDL3_0.0.0>
  61041e:	68 00 00 00 00       	push   $0x0
  610423:	e9 e0 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610428 <SDL_GetError@plt>:
  610428:	ff 25 42 23 20 00    	jmp    *0x202342(%rip)        # 812770 <SDL_GetError@SDL3_0.0.0>
  61042e:	68 01 00 00 00       	push   $0x1
  610433:	e9 d0 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610438 <SDL_Log@plt>:
  610438:	ff 25 3a 23 20 00    	jmp    *0x20233a(%rip)        # 812778 <SDL_Log@SDL3_0.0.0>
  61043e:	68 02 00 00 00       	push   $0x2
  610443:	e9 c0 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610448 <SDL_GL_SetAttribute@plt>:
  610448:	ff 25 32 23 20 00    	jmp    *0x202332(%rip)        # 812780 <SDL_GL_SetAttribute@SDL3_0.0.0>
  61044e:	68 03 00 00 00       	push   $0x3
  610453:	e9 b0 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610458 <SDL_CreateWindow@plt>:
  610458:	ff 25 2a 23 20 00    	jmp    *0x20232a(%rip)        # 812788 <SDL_CreateWindow@SDL3_0.0.0>
  61045e:	68 04 00 00 00       	push   $0x4
  610463:	e9 a0 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610468 <exit@plt>:
  610468:	ff 25 22 23 20 00    	jmp    *0x202322(%rip)        # 812790 <exit@GLIBC_2.2.5>
  61046e:	68 05 00 00 00       	push   $0x5
  610473:	e9 90 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610478 <SDL_GL_CreateContext@plt>:
  610478:	ff 25 1a 23 20 00    	jmp    *0x20231a(%rip)        # 812798 <SDL_GL_CreateContext@SDL3_0.0.0>
  61047e:	68 06 00 00 00       	push   $0x6
  610483:	e9 80 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610488 <memset@plt>:
  610488:	ff 25 12 23 20 00    	jmp    *0x202312(%rip)        # 8127a0 <memset@GLIBC_2.2.5>
  61048e:	68 07 00 00 00       	push   $0x7
  610493:	e9 70 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610498 <SDL_fmodf@plt>:
  610498:	ff 25 0a 23 20 00    	jmp    *0x20230a(%rip)        # 8127a8 <SDL_fmodf@SDL3_0.0.0>
  61049e:	68 08 00 00 00       	push   $0x8
  6104a3:	e9 60 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104a8 <SDL_cosf@plt>:
  6104a8:	ff 25 02 23 20 00    	jmp    *0x202302(%rip)        # 8127b0 <SDL_cosf@SDL3_0.0.0>
  6104ae:	68 09 00 00 00       	push   $0x9
  6104b3:	e9 50 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104b8 <SDL_sinf@plt>:
  6104b8:	ff 25 fa 22 20 00    	jmp    *0x2022fa(%rip)        # 8127b8 <SDL_sinf@SDL3_0.0.0>
  6104be:	68 0a 00 00 00       	push   $0xa
  6104c3:	e9 40 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104c8 <SDL_sqrt@plt>:
  6104c8:	ff 25 f2 22 20 00    	jmp    *0x2022f2(%rip)        # 8127c0 <SDL_sqrt@SDL3_0.0.0>
  6104ce:	68 0b 00 00 00       	push   $0xb
  6104d3:	e9 30 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104d8 <SDL_atan2@plt>:
  6104d8:	ff 25 ea 22 20 00    	jmp    *0x2022ea(%rip)        # 8127c8 <SDL_atan2@SDL3_0.0.0>
  6104de:	68 0c 00 00 00       	push   $0xc
  6104e3:	e9 20 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104e8 <SDL_srand@plt>:
  6104e8:	ff 25 e2 22 20 00    	jmp    *0x2022e2(%rip)        # 8127d0 <SDL_srand@SDL3_0.0.0>
  6104ee:	68 0d 00 00 00       	push   $0xd
  6104f3:	e9 10 ff ff ff       	jmp    610408 <_fini+0x10>

00000000006104f8 <SDL_rand@plt>:
  6104f8:	ff 25 da 22 20 00    	jmp    *0x2022da(%rip)        # 8127d8 <SDL_rand@SDL3_0.0.0>
  6104fe:	68 0e 00 00 00       	push   $0xe
  610503:	e9 00 ff ff ff       	jmp    610408 <_fini+0x10>

0000000000610508 <SDL_randf@plt>:
  610508:	ff 25 d2 22 20 00    	jmp    *0x2022d2(%rip)        # 8127e0 <SDL_randf@SDL3_0.0.0>
  61050e:	68 0f 00 00 00       	push   $0xf
  610513:	e9 f0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610518 <SDL_HasRectIntersectionFloat@plt>:
  610518:	ff 25 ca 22 20 00    	jmp    *0x2022ca(%rip)        # 8127e8 <SDL_HasRectIntersectionFloat@SDL3_0.0.0>
  61051e:	68 10 00 00 00       	push   $0x10
  610523:	e9 e0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610528 <SDL_GetPerformanceFrequency@plt>:
  610528:	ff 25 c2 22 20 00    	jmp    *0x2022c2(%rip)        # 8127f0 <SDL_GetPerformanceFrequency@SDL3_0.0.0>
  61052e:	68 11 00 00 00       	push   $0x11
  610533:	e9 d0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610538 <SDL_GetPerformanceCounter@plt>:
  610538:	ff 25 ba 22 20 00    	jmp    *0x2022ba(%rip)        # 8127f8 <SDL_GetPerformanceCounter@SDL3_0.0.0>
  61053e:	68 12 00 00 00       	push   $0x12
  610543:	e9 c0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610548 <SDL_rand_bits@plt>:
  610548:	ff 25 b2 22 20 00    	jmp    *0x2022b2(%rip)        # 812800 <SDL_rand_bits@SDL3_0.0.0>
  61054e:	68 13 00 00 00       	push   $0x13
  610553:	e9 b0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610558 <SDL_PollEvent@plt>:
  610558:	ff 25 aa 22 20 00    	jmp    *0x2022aa(%rip)        # 812808 <SDL_PollEvent@SDL3_0.0.0>
  61055e:	68 14 00 00 00       	push   $0x14
  610563:	e9 a0 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610568 <SDL_GetKeyboardState@plt>:
  610568:	ff 25 a2 22 20 00    	jmp    *0x2022a2(%rip)        # 812810 <SDL_GetKeyboardState@SDL3_0.0.0>
  61056e:	68 15 00 00 00       	push   $0x15
  610573:	e9 90 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610578 <SDL_GL_SwapWindow@plt>:
  610578:	ff 25 9a 22 20 00    	jmp    *0x20229a(%rip)        # 812818 <SDL_GL_SwapWindow@SDL3_0.0.0>
  61057e:	68 16 00 00 00       	push   $0x16
  610583:	e9 80 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610588 <SDL_DestroyWindow@plt>:
  610588:	ff 25 92 22 20 00    	jmp    *0x202292(%rip)        # 812820 <SDL_DestroyWindow@SDL3_0.0.0>
  61058e:	68 17 00 00 00       	push   $0x17
  610593:	e9 70 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610598 <SDL_Quit@plt>:
  610598:	ff 25 8a 22 20 00    	jmp    *0x20228a(%rip)        # 812828 <SDL_Quit@SDL3_0.0.0>
  61059e:	68 18 00 00 00       	push   $0x18
  6105a3:	e9 60 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105a8 <sinf@plt>:
  6105a8:	ff 25 82 22 20 00    	jmp    *0x202282(%rip)        # 812830 <sinf@GLIBC_2.2.5>
  6105ae:	68 19 00 00 00       	push   $0x19
  6105b3:	e9 50 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105b8 <cosf@plt>:
  6105b8:	ff 25 7a 22 20 00    	jmp    *0x20227a(%rip)        # 812838 <cosf@GLIBC_2.2.5>
  6105be:	68 1a 00 00 00       	push   $0x1a
  6105c3:	e9 40 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105c8 <sqrtf@plt>:
  6105c8:	ff 25 72 22 20 00    	jmp    *0x202272(%rip)        # 812840 <sqrtf@GLIBC_2.2.5>
  6105ce:	68 1b 00 00 00       	push   $0x1b
  6105d3:	e9 30 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105d8 <dlopen@plt>:
  6105d8:	ff 25 6a 22 20 00    	jmp    *0x20226a(%rip)        # 812848 <dlopen@GLIBC_2.34>
  6105de:	68 1c 00 00 00       	push   $0x1c
  6105e3:	e9 20 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105e8 <dlsym@plt>:
  6105e8:	ff 25 62 22 20 00    	jmp    *0x202262(%rip)        # 812850 <dlsym@GLIBC_2.34>
  6105ee:	68 1d 00 00 00       	push   $0x1d
  6105f3:	e9 10 fe ff ff       	jmp    610408 <_fini+0x10>

00000000006105f8 <dlclose@plt>:
  6105f8:	ff 25 5a 22 20 00    	jmp    *0x20225a(%rip)        # 812858 <dlclose@GLIBC_2.34>
  6105fe:	68 1e 00 00 00       	push   $0x1e
  610603:	e9 00 fe ff ff       	jmp    610408 <_fini+0x10>

0000000000610608 <malloc@plt>:
  610608:	ff 25 52 22 20 00    	jmp    *0x202252(%rip)        # 812860 <malloc@GLIBC_2.2.5>
  61060e:	68 1f 00 00 00       	push   $0x1f
  610613:	e9 f0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610618 <strlen@plt>:
  610618:	ff 25 4a 22 20 00    	jmp    *0x20224a(%rip)        # 812868 <strlen@GLIBC_2.2.5>
  61061e:	68 20 00 00 00       	push   $0x20
  610623:	e9 e0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610628 <memcpy@plt>:
  610628:	ff 25 42 22 20 00    	jmp    *0x202242(%rip)        # 812870 <memcpy@GLIBC_2.14>
  61062e:	68 21 00 00 00       	push   $0x21
  610633:	e9 d0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610638 <free@plt>:
  610638:	ff 25 3a 22 20 00    	jmp    *0x20223a(%rip)        # 812878 <free@GLIBC_2.2.5>
  61063e:	68 22 00 00 00       	push   $0x22
  610643:	e9 c0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610648 <strstr@plt>:
  610648:	ff 25 32 22 20 00    	jmp    *0x202232(%rip)        # 812880 <strstr@GLIBC_2.2.5>
  61064e:	68 23 00 00 00       	push   $0x23
  610653:	e9 b0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610658 <strcmp@plt>:
  610658:	ff 25 2a 22 20 00    	jmp    *0x20222a(%rip)        # 812888 <strcmp@GLIBC_2.2.5>
  61065e:	68 24 00 00 00       	push   $0x24
  610663:	e9 a0 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610668 <strncmp@plt>:
  610668:	ff 25 22 22 20 00    	jmp    *0x202222(%rip)        # 812890 <strncmp@GLIBC_2.2.5>
  61066e:	68 25 00 00 00       	push   $0x25
  610673:	e9 90 fd ff ff       	jmp    610408 <_fini+0x10>

0000000000610678 <__isoc99_sscanf@plt>:
  610678:	ff 25 1a 22 20 00    	jmp    *0x20221a(%rip)        # 812898 <__isoc99_sscanf@GLIBC_2.7>
  61067e:	68 26 00 00 00       	push   $0x26
  610683:	e9 80 fd ff ff       	jmp    610408 <_fini+0x10>
