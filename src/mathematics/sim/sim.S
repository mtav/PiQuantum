
sim:     file format elf64-x86-64


Disassembly of section .init:

0000000000000a78 <_init>:
 a78:	48 83 ec 08          	sub    $0x8,%rsp
 a7c:	48 8b 05 65 25 20 00 	mov    0x202565(%rip),%rax        # 202fe8 <__gmon_start__>
 a83:	48 85 c0             	test   %rax,%rax
 a86:	74 02                	je     a8a <_init+0x12>
 a88:	ff d0                	callq  *%rax
 a8a:	48 83 c4 08          	add    $0x8,%rsp
 a8e:	c3                   	retq   

Disassembly of section .plt:

0000000000000a90 <.plt>:
 a90:	ff 35 ba 24 20 00    	pushq  0x2024ba(%rip)        # 202f50 <_GLOBAL_OFFSET_TABLE_+0x8>
 a96:	ff 25 bc 24 20 00    	jmpq   *0x2024bc(%rip)        # 202f58 <_GLOBAL_OFFSET_TABLE_+0x10>
 a9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000aa0 <_ZNSo3putEc@plt>:
 aa0:	ff 25 ba 24 20 00    	jmpq   *0x2024ba(%rip)        # 202f60 <_ZNSo3putEc@GLIBCXX_3.4>
 aa6:	68 00 00 00 00       	pushq  $0x0
 aab:	e9 e0 ff ff ff       	jmpq   a90 <.plt>

0000000000000ab0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
 ab0:	ff 25 b2 24 20 00    	jmpq   *0x2024b2(%rip)        # 202f68 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
 ab6:	68 01 00 00 00       	pushq  $0x1
 abb:	e9 d0 ff ff ff       	jmpq   a90 <.plt>

0000000000000ac0 <memset@plt>:
 ac0:	ff 25 aa 24 20 00    	jmpq   *0x2024aa(%rip)        # 202f70 <memset@GLIBC_2.2.5>
 ac6:	68 02 00 00 00       	pushq  $0x2
 acb:	e9 c0 ff ff ff       	jmpq   a90 <.plt>

0000000000000ad0 <_ZNSo5flushEv@plt>:
 ad0:	ff 25 a2 24 20 00    	jmpq   *0x2024a2(%rip)        # 202f78 <_ZNSo5flushEv@GLIBCXX_3.4>
 ad6:	68 03 00 00 00       	pushq  $0x3
 adb:	e9 b0 ff ff ff       	jmpq   a90 <.plt>

0000000000000ae0 <__cxa_atexit@plt>:
 ae0:	ff 25 9a 24 20 00    	jmpq   *0x20249a(%rip)        # 202f80 <__cxa_atexit@GLIBC_2.2.5>
 ae6:	68 04 00 00 00       	pushq  $0x4
 aeb:	e9 a0 ff ff ff       	jmpq   a90 <.plt>

0000000000000af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
 af0:	ff 25 92 24 20 00    	jmpq   *0x202492(%rip)        # 202f88 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
 af6:	68 05 00 00 00       	pushq  $0x5
 afb:	e9 90 ff ff ff       	jmpq   a90 <.plt>

0000000000000b00 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
 b00:	ff 25 8a 24 20 00    	jmpq   *0x20248a(%rip)        # 202f90 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
 b06:	68 06 00 00 00       	pushq  $0x6
 b0b:	e9 80 ff ff ff       	jmpq   a90 <.plt>

0000000000000b10 <exit@plt>:
 b10:	ff 25 82 24 20 00    	jmpq   *0x202482(%rip)        # 202f98 <exit@GLIBC_2.2.5>
 b16:	68 07 00 00 00       	pushq  $0x7
 b1b:	e9 70 ff ff ff       	jmpq   a90 <.plt>

0000000000000b20 <_ZSt16__throw_bad_castv@plt>:
 b20:	ff 25 7a 24 20 00    	jmpq   *0x20247a(%rip)        # 202fa0 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
 b26:	68 08 00 00 00       	pushq  $0x8
 b2b:	e9 60 ff ff ff       	jmpq   a90 <.plt>

0000000000000b30 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>:
 b30:	ff 25 72 24 20 00    	jmpq   *0x202472(%rip)        # 202fa8 <_ZNSt6chrono3_V212steady_clock3nowEv@GLIBCXX_3.4.19>
 b36:	68 09 00 00 00       	pushq  $0x9
 b3b:	e9 50 ff ff ff       	jmpq   a90 <.plt>

0000000000000b40 <malloc@plt>:
 b40:	ff 25 6a 24 20 00    	jmpq   *0x20246a(%rip)        # 202fb0 <malloc@GLIBC_2.2.5>
 b46:	68 0a 00 00 00       	pushq  $0xa
 b4b:	e9 40 ff ff ff       	jmpq   a90 <.plt>

0000000000000b50 <putchar@plt>:
 b50:	ff 25 62 24 20 00    	jmpq   *0x202462(%rip)        # 202fb8 <putchar@GLIBC_2.2.5>
 b56:	68 0b 00 00 00       	pushq  $0xb
 b5b:	e9 30 ff ff ff       	jmpq   a90 <.plt>

0000000000000b60 <_ZNSt8ios_base4InitC1Ev@plt>:
 b60:	ff 25 5a 24 20 00    	jmpq   *0x20245a(%rip)        # 202fc0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 b66:	68 0c 00 00 00       	pushq  $0xc
 b6b:	e9 20 ff ff ff       	jmpq   a90 <.plt>

0000000000000b70 <_ZNSo9_M_insertIdEERSoT_@plt>:
 b70:	ff 25 52 24 20 00    	jmpq   *0x202452(%rip)        # 202fc8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
 b76:	68 0d 00 00 00       	pushq  $0xd
 b7b:	e9 10 ff ff ff       	jmpq   a90 <.plt>

Disassembly of section .plt.got:

0000000000000b80 <__cxa_finalize@plt>:
 b80:	ff 25 4a 24 20 00    	jmpq   *0x20244a(%rip)        # 202fd0 <__cxa_finalize@GLIBC_2.2.5>
 b86:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000b90 <main>:
     b90:	41 57                	push   %r15
     b92:	bf 08 00 00 00       	mov    $0x8,%edi
     b97:	41 56                	push   %r14
     b99:	41 55                	push   %r13
     b9b:	41 54                	push   %r12
     b9d:	55                   	push   %rbp
     b9e:	53                   	push   %rbx
     b9f:	48 83 ec 68          	sub    $0x68,%rsp
     ba3:	e8 58 0a 00 00       	callq  1600 <_Z11malloc_gatei>
     ba8:	f3 0f 7e 05 40 16 00 	movq   0x1640(%rip),%xmm0        # 21f0 <_IO_stdin_used+0x50>
     baf:	00 
     bb0:	bf 00 00 00 01       	mov    $0x1000000,%edi
     bb5:	49 89 c4             	mov    %rax,%r12
     bb8:	0f 11 00             	movups %xmm0,(%rax)
     bbb:	0f 11 40 10          	movups %xmm0,0x10(%rax)
     bbf:	0f 11 40 20          	movups %xmm0,0x20(%rax)
     bc3:	f3 0f 7e 05 35 16 00 	movq   0x1635(%rip),%xmm0        # 2200 <_IO_stdin_used+0x60>
     bca:	00 
     bcb:	0f 11 40 30          	movups %xmm0,0x30(%rax)
     bcf:	e8 6c ff ff ff       	callq  b40 <malloc@plt>
     bd4:	48 85 c0             	test   %rax,%rax
     bd7:	0f 84 4b 05 00 00    	je     1128 <main+0x598>
     bdd:	49 89 c6             	mov    %rax,%r14
     be0:	48 8b 05 29 16 00 00 	mov    0x1629(%rip),%rax        # 2210 <_IO_stdin_used+0x70>
     be7:	ba f8 ff ff 00       	mov    $0xfffff8,%edx
     bec:	31 f6                	xor    %esi,%esi
     bee:	49 8d 7e 08          	lea    0x8(%r14),%rdi
     bf2:	49 89 06             	mov    %rax,(%r14)
     bf5:	e8 c6 fe ff ff       	callq  ac0 <memset@plt>
     bfa:	4c 89 e7             	mov    %r12,%rdi
     bfd:	e8 4e 0b 00 00       	callq  1750 <_Z6printmPd>
     c02:	4c 89 f7             	mov    %r14,%rdi
     c05:	e8 e6 0c 00 00       	callq  18f0 <_Z6printsPd>
     c0a:	e8 21 ff ff ff       	callq  b30 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
     c0f:	31 c9                	xor    %ecx,%ecx
     c11:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
     c16:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
     c1b:	49 8d 44 24 40       	lea    0x40(%r12),%rax
     c20:	48 89 04 24          	mov    %rax,(%rsp)
     c24:	0f 1f 40 00          	nopl   0x0(%rax)
     c28:	bd 02 00 00 00       	mov    $0x2,%ebp
     c2d:	bb 01 00 00 00       	mov    $0x1,%ebx
     c32:	4d 89 f7             	mov    %r14,%r15
     c35:	45 31 db             	xor    %r11d,%r11d
     c38:	d3 e5                	shl    %cl,%ebp
     c3a:	d3 e3                	shl    %cl,%ebx
     c3c:	31 f6                	xor    %esi,%esi
     c3e:	45 31 c0             	xor    %r8d,%r8d
     c41:	48 63 c5             	movslq %ebp,%rax
     c44:	44 8d 54 2d 00       	lea    0x0(%rbp,%rbp,1),%r10d
     c49:	41 89 dd             	mov    %ebx,%r13d
     c4c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     c53:	00 
     c54:	48 f7 d8             	neg    %rax
     c57:	4d 63 d2             	movslq %r10d,%r10
     c5a:	41 83 e5 fe          	and    $0xfffffffe,%r13d
     c5e:	48 c1 e0 04          	shl    $0x4,%rax
     c62:	49 29 d7             	sub    %rdx,%r15
     c65:	49 c1 e2 03          	shl    $0x3,%r10
     c69:	48 89 d7             	mov    %rdx,%rdi
     c6c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     c71:	48 63 c3             	movslq %ebx,%rax
     c74:	48 c1 e0 04          	shl    $0x4,%rax
     c78:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
     c7d:	4e 8d 0c 30          	lea    (%rax,%r14,1),%r9
     c81:	89 d8                	mov    %ebx,%eax
     c83:	d1 e8                	shr    %eax
     c85:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
     c8a:	48 c1 e0 05          	shl    $0x5,%rax
     c8e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     c93:	8d 43 ff             	lea    -0x1(%rbx),%eax
     c96:	48 c1 e0 04          	shl    $0x4,%rax
     c9a:	49 8d 44 07 10       	lea    0x10(%r15,%rax,1),%rax
     c9f:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
     ca4:	49 8d 41 f8          	lea    -0x8(%r9),%rax
     ca8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     cad:	0f 1f 00             	nopl   (%rax)
     cb0:	49 8d 04 36          	lea    (%r14,%rsi,1),%rax
     cb4:	48 39 04 24          	cmp    %rax,(%rsp)
     cb8:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
     cbd:	4c 8d 7a 20          	lea    0x20(%rdx),%r15
     cc1:	41 0f 96 c1          	setbe  %r9b
     cc5:	48 01 f0             	add    %rsi,%rax
     cc8:	49 39 c4             	cmp    %rax,%r12
     ccb:	0f 93 c0             	setae  %al
     cce:	41 09 c1             	or     %eax,%r9d
     cd1:	48 8d 46 20          	lea    0x20(%rsi),%rax
     cd5:	48 39 d0             	cmp    %rdx,%rax
     cd8:	0f 9e c0             	setle  %al
     cdb:	49 39 f7             	cmp    %rsi,%r15
     cde:	41 0f 9e c7          	setle  %r15b
     ce2:	44 09 f8             	or     %r15d,%eax
     ce5:	41 21 c1             	and    %eax,%r9d
     ce8:	85 c9                	test   %ecx,%ecx
     cea:	0f 95 c0             	setne  %al
     ced:	41 84 c1             	test   %al,%r9b
     cf0:	0f 84 3a 03 00 00    	je     1030 <main+0x4a0>
     cf6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
     cfb:	48 01 d0             	add    %rdx,%rax
     cfe:	49 39 c4             	cmp    %rax,%r12
     d01:	49 8d 04 16          	lea    (%r14,%rdx,1),%rax
     d05:	41 0f 93 c1          	setae  %r9b
     d09:	48 39 04 24          	cmp    %rax,(%rsp)
     d0d:	0f 96 c0             	setbe  %al
     d10:	41 08 c1             	or     %al,%r9b
     d13:	0f 84 17 03 00 00    	je     1030 <main+0x4a0>
     d19:	43 8d 04 00          	lea    (%r8,%r8,1),%eax
     d1d:	f2 45 0f 10 24 24    	movsd  (%r12),%xmm12
     d23:	f2 45 0f 10 5c 24 08 	movsd  0x8(%r12),%xmm11
     d2a:	4c 63 c8             	movslq %eax,%r9
     d2d:	f2 45 0f 10 54 24 10 	movsd  0x10(%r12),%xmm10
     d34:	01 e8                	add    %ebp,%eax
     d36:	f2 45 0f 10 4c 24 18 	movsd  0x18(%r12),%xmm9
     d3d:	f2 45 0f 10 44 24 20 	movsd  0x20(%r12),%xmm8
     d44:	f2 41 0f 10 7c 24 28 	movsd  0x28(%r12),%xmm7
     d4b:	48 98                	cltq   
     d4d:	4f 8d 3c ce          	lea    (%r14,%r9,8),%r15
     d51:	f2 41 0f 10 74 24 30 	movsd  0x30(%r12),%xmm6
     d58:	f2 41 0f 10 6c 24 38 	movsd  0x38(%r12),%xmm5
     d5f:	4d 8d 0c c6          	lea    (%r14,%rax,8),%r9
     d63:	66 45 0f 14 e4       	unpcklpd %xmm12,%xmm12
     d68:	66 45 0f 14 db       	unpcklpd %xmm11,%xmm11
     d6d:	66 45 0f 14 d2       	unpcklpd %xmm10,%xmm10
     d72:	66 0f 14 ff          	unpcklpd %xmm7,%xmm7
     d76:	31 c0                	xor    %eax,%eax
     d78:	66 45 0f 14 c9       	unpcklpd %xmm9,%xmm9
     d7d:	66 45 0f 14 c0       	unpcklpd %xmm8,%xmm8
     d82:	66 0f 14 f6          	unpcklpd %xmm6,%xmm6
     d86:	66 0f 14 ed          	unpcklpd %xmm5,%xmm5
     d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d90:	66 41 0f 10 04 07    	movupd (%r15,%rax,1),%xmm0
     d96:	66 41 0f 10 5c 07 10 	movupd 0x10(%r15,%rax,1),%xmm3
     d9d:	66 41 0f 28 e3       	movapd %xmm11,%xmm4
     da2:	66 41 0f 12 5c 07 08 	movlpd 0x8(%r15,%rax,1),%xmm3
     da9:	66 45 0f 10 2c 01    	movupd (%r9,%rax,1),%xmm13
     daf:	66 41 0f 16 44 07 10 	movhpd 0x10(%r15,%rax,1),%xmm0
     db6:	66 41 0f 10 54 01 10 	movupd 0x10(%r9,%rax,1),%xmm2
     dbd:	66 41 0f 12 54 01 08 	movlpd 0x8(%r9,%rax,1),%xmm2
     dc4:	66 0f 28 c8          	movapd %xmm0,%xmm1
     dc8:	66 45 0f 16 6c 01 10 	movhpd 0x10(%r9,%rax,1),%xmm13
     dcf:	66 44 0f 28 fb       	movapd %xmm3,%xmm15
     dd4:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
     dd8:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
     ddd:	66 41 0f 59 cc       	mulpd  %xmm12,%xmm1
     de2:	66 45 0f 59 f1       	mulpd  %xmm9,%xmm14
     de7:	66 44 0f 59 ff       	mulpd  %xmm7,%xmm15
     dec:	66 41 0f 59 d8       	mulpd  %xmm8,%xmm3
     df1:	66 0f 5c cc          	subpd  %xmm4,%xmm1
     df5:	66 0f 28 e1          	movapd %xmm1,%xmm4
     df9:	66 41 0f 28 cd       	movapd %xmm13,%xmm1
     dfe:	66 41 0f 59 ca       	mulpd  %xmm10,%xmm1
     e03:	66 41 0f 5c ce       	subpd  %xmm14,%xmm1
     e08:	66 0f 58 cc          	addpd  %xmm4,%xmm1
     e0c:	66 0f 28 e0          	movapd %xmm0,%xmm4
     e10:	66 41 0f 59 e0       	mulpd  %xmm8,%xmm4
     e15:	66 0f 59 c7          	mulpd  %xmm7,%xmm0
     e19:	66 41 0f 5c e7       	subpd  %xmm15,%xmm4
     e1e:	66 44 0f 28 fa       	movapd %xmm2,%xmm15
     e23:	66 0f 59 d6          	mulpd  %xmm6,%xmm2
     e27:	66 0f 58 c3          	addpd  %xmm3,%xmm0
     e2b:	66 44 0f 59 fd       	mulpd  %xmm5,%xmm15
     e30:	66 44 0f 28 f4       	movapd %xmm4,%xmm14
     e35:	66 41 0f 28 e5       	movapd %xmm13,%xmm4
     e3a:	66 44 0f 59 ed       	mulpd  %xmm5,%xmm13
     e3f:	66 0f 59 e6          	mulpd  %xmm6,%xmm4
     e43:	66 41 0f 58 d5       	addpd  %xmm13,%xmm2
     e48:	66 41 0f 5c e7       	subpd  %xmm15,%xmm4
     e4d:	66 0f 58 c2          	addpd  %xmm2,%xmm0
     e51:	66 0f 28 d1          	movapd %xmm1,%xmm2
     e55:	66 41 0f 58 e6       	addpd  %xmm14,%xmm4
     e5a:	66 0f 14 d0          	unpcklpd %xmm0,%xmm2
     e5e:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
     e62:	66 41 0f 13 24 01    	movlpd %xmm4,(%r9,%rax,1)
     e68:	66 41 0f 17 64 01 10 	movhpd %xmm4,0x10(%r9,%rax,1)
     e6f:	41 0f 11 14 07       	movups %xmm2,(%r15,%rax,1)
     e74:	41 0f 11 4c 07 10    	movups %xmm1,0x10(%r15,%rax,1)
     e7a:	48 83 c0 20          	add    $0x20,%rax
     e7e:	48 3b 44 24 08       	cmp    0x8(%rsp),%rax
     e83:	0f 85 07 ff ff ff    	jne    d90 <main+0x200>
     e89:	41 39 dd             	cmp    %ebx,%r13d
     e8c:	0f 84 e9 00 00 00    	je     f7b <main+0x3eb>
     e92:	43 8d 04 28          	lea    (%r8,%r13,1),%eax
     e96:	f2 41 0f 10 54 24 10 	movsd  0x10(%r12),%xmm2
     e9d:	f2 45 0f 10 4c 24 18 	movsd  0x18(%r12),%xmm9
     ea4:	44 8d 0c 00          	lea    (%rax,%rax,1),%r9d
     ea8:	01 d8                	add    %ebx,%eax
     eaa:	f2 45 0f 10 54 24 08 	movsd  0x8(%r12),%xmm10
     eb1:	f2 41 0f 10 44 24 30 	movsd  0x30(%r12),%xmm0
     eb8:	01 c0                	add    %eax,%eax
     eba:	4d 63 c9             	movslq %r9d,%r9
     ebd:	f2 41 0f 10 64 24 38 	movsd  0x38(%r12),%xmm4
     ec4:	f2 41 0f 10 4c 24 20 	movsd  0x20(%r12),%xmm1
     ecb:	48 98                	cltq   
     ecd:	4f 8d 3c ce          	lea    (%r14,%r9,8),%r15
     ed1:	f2 41 0f 10 5c 24 28 	movsd  0x28(%r12),%xmm3
     ed8:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
     edc:	f2 41 0f 10 2f       	movsd  (%r15),%xmm5
     ee1:	f2 41 0f 10 77 08    	movsd  0x8(%r15),%xmm6
     ee7:	f2 0f 10 38          	movsd  (%rax),%xmm7
     eeb:	f2 44 0f 10 40 08    	movsd  0x8(%rax),%xmm8
     ef1:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
     ef6:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
     efb:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
     eff:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
     f04:	f2 45 0f 10 0c 24    	movsd  (%r12),%xmm9
     f0a:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
     f0f:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
     f14:	66 44 0f 28 d3       	movapd %xmm3,%xmm10
     f19:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
     f1e:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
     f22:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
     f27:	66 44 0f 28 cc       	movapd %xmm4,%xmm9
     f2c:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
     f31:	f2 0f 59 e7          	mulsd  %xmm7,%xmm4
     f35:	f2 41 0f 11 17       	movsd  %xmm2,(%r15)
     f3a:	66 0f 28 d0          	movapd %xmm0,%xmm2
     f3e:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
     f42:	f2 41 0f 59 c0       	mulsd  %xmm8,%xmm0
     f47:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
     f4c:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
     f51:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
     f56:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
     f5a:	f2 0f 59 ce          	mulsd  %xmm6,%xmm1
     f5e:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
     f63:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
     f67:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
     f6c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
     f70:	f2 0f 11 10          	movsd  %xmm2,(%rax)
     f74:	f2 43 0f 11 44 ce 08 	movsd  %xmm0,0x8(%r14,%r9,8)
     f7b:	41 01 e8             	add    %ebp,%r8d
     f7e:	4c 01 d2             	add    %r10,%rdx
     f81:	4c 01 d6             	add    %r10,%rsi
     f84:	4c 03 5c 24 18       	add    0x18(%rsp),%r11
     f89:	4c 01 d7             	add    %r10,%rdi
     f8c:	41 81 f8 ff ff 0f 00 	cmp    $0xfffff,%r8d
     f93:	0f 8e 17 fd ff ff    	jle    cb0 <main+0x120>
     f99:	83 c1 01             	add    $0x1,%ecx
     f9c:	83 f9 14             	cmp    $0x14,%ecx
     f9f:	0f 85 83 fc ff ff    	jne    c28 <main+0x98>
     fa5:	e8 86 fb ff ff       	callq  b30 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
     faa:	66 0f ef c0          	pxor   %xmm0,%xmm0
     fae:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
     fb3:	ba 14 00 00 00       	mov    $0x14,%edx
     fb8:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
     fbd:	f2 0f 5e 05 53 12 00 	divsd  0x1253(%rip),%xmm0        # 2218 <_IO_stdin_used+0x78>
     fc4:	00 
     fc5:	f2 0f 58 05 53 12 00 	addsd  0x1253(%rip),%xmm0        # 2220 <_IO_stdin_used+0x80>
     fcc:	00 
     fcd:	48 8d 35 03 12 00 00 	lea    0x1203(%rip),%rsi        # 21d7 <_IO_stdin_used+0x37>
     fd4:	48 8d 3d 45 20 20 00 	lea    0x202045(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
     fdb:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
     fe0:	e8 0b fb ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
     fe5:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
     fea:	48 8d 3d 2f 20 20 00 	lea    0x20202f(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
     ff1:	e8 7a fb ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
     ff6:	ba 01 00 00 00       	mov    $0x1,%edx
     ffb:	48 8d 35 ea 11 00 00 	lea    0x11ea(%rip),%rsi        # 21ec <_IO_stdin_used+0x4c>
    1002:	48 89 c3             	mov    %rax,%rbx
    1005:	48 89 c7             	mov    %rax,%rdi
    1008:	e8 e3 fa ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    100d:	48 89 df             	mov    %rbx,%rdi
    1010:	e8 9b fa ff ff       	callq  ab0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    1015:	4c 89 f7             	mov    %r14,%rdi
    1018:	e8 d3 08 00 00       	callq  18f0 <_Z6printsPd>
    101d:	48 83 c4 68          	add    $0x68,%rsp
    1021:	31 c0                	xor    %eax,%eax
    1023:	5b                   	pop    %rbx
    1024:	5d                   	pop    %rbp
    1025:	41 5c                	pop    %r12
    1027:	41 5d                	pop    %r13
    1029:	41 5e                	pop    %r14
    102b:	41 5f                	pop    %r15
    102d:	c3                   	retq   
    102e:	66 90                	xchg   %ax,%ax
    1030:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1035:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
    103a:	48 01 f8             	add    %rdi,%rax
    103d:	49 01 ff             	add    %rdi,%r15
    1040:	4e 8d 0c 18          	lea    (%rax,%r11,1),%r9
    1044:	f2 41 0f 10 54 24 10 	movsd  0x10(%r12),%xmm2
    104b:	f2 45 0f 10 4c 24 18 	movsd  0x18(%r12),%xmm9
    1052:	48 83 c0 10          	add    $0x10,%rax
    1056:	f2 41 0f 10 3c 39    	movsd  (%r9,%rdi,1),%xmm7
    105c:	f2 45 0f 10 44 39 08 	movsd  0x8(%r9,%rdi,1),%xmm8
    1063:	f2 0f 10 68 f0       	movsd  -0x10(%rax),%xmm5
    1068:	f2 0f 10 70 f8       	movsd  -0x8(%rax),%xmm6
    106d:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
    1072:	f2 45 0f 10 54 24 08 	movsd  0x8(%r12),%xmm10
    1079:	f2 41 0f 10 44 24 30 	movsd  0x30(%r12),%xmm0
    1080:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    1084:	f2 41 0f 10 64 24 38 	movsd  0x38(%r12),%xmm4
    108b:	f2 41 0f 10 4c 24 20 	movsd  0x20(%r12),%xmm1
    1092:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    1097:	f2 41 0f 10 5c 24 28 	movsd  0x28(%r12),%xmm3
    109e:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    10a3:	f2 45 0f 10 0c 24    	movsd  (%r12),%xmm9
    10a9:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
    10ae:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    10b3:	66 44 0f 28 d3       	movapd %xmm3,%xmm10
    10b8:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    10bd:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    10c1:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    10c6:	66 44 0f 28 cc       	movapd %xmm4,%xmm9
    10cb:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
    10d0:	f2 0f 59 e7          	mulsd  %xmm7,%xmm4
    10d4:	f2 0f 11 50 f0       	movsd  %xmm2,-0x10(%rax)
    10d9:	66 0f 28 d0          	movapd %xmm0,%xmm2
    10dd:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    10e1:	f2 41 0f 59 c0       	mulsd  %xmm8,%xmm0
    10e6:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    10eb:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    10f0:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
    10f5:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    10f9:	f2 0f 59 ce          	mulsd  %xmm6,%xmm1
    10fd:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    1102:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1106:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    110b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    110f:	f2 41 0f 11 14 39    	movsd  %xmm2,(%r9,%rdi,1)
    1115:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
    111a:	4c 39 f8             	cmp    %r15,%rax
    111d:	0f 85 1d ff ff ff    	jne    1040 <main+0x4b0>
    1123:	e9 53 fe ff ff       	jmpq   f7b <main+0x3eb>
    1128:	ba 22 00 00 00       	mov    $0x22,%edx
    112d:	48 8d 35 74 10 00 00 	lea    0x1074(%rip),%rsi        # 21a8 <_IO_stdin_used+0x8>
    1134:	48 8d 3d 05 20 20 00 	lea    0x202005(%rip),%rdi        # 203140 <_ZSt4cerr@@GLIBCXX_3.4>
    113b:	e8 b0 f9 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1140:	48 8d 3d f9 1f 20 00 	lea    0x201ff9(%rip),%rdi        # 203140 <_ZSt4cerr@@GLIBCXX_3.4>
    1147:	e8 64 f9 ff ff       	callq  ab0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
    114c:	bf 01 00 00 00       	mov    $0x1,%edi
    1151:	e8 ba f9 ff ff       	callq  b10 <exit@plt>
    1156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    115d:	00 00 00 

0000000000001160 <_GLOBAL__sub_I__Z4caddPKdS0_Pd>:
    1160:	48 83 ec 08          	sub    $0x8,%rsp
    1164:	48 8d 3d e6 20 20 00 	lea    0x2020e6(%rip),%rdi        # 203251 <_ZStL8__ioinit>
    116b:	e8 f0 f9 ff ff       	callq  b60 <_ZNSt8ios_base4InitC1Ev@plt>
    1170:	48 8b 3d 81 1e 20 00 	mov    0x201e81(%rip),%rdi        # 202ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1177:	48 83 c4 08          	add    $0x8,%rsp
    117b:	48 8d 15 86 1e 20 00 	lea    0x201e86(%rip),%rdx        # 203008 <__dso_handle>
    1182:	48 8d 35 c8 20 20 00 	lea    0x2020c8(%rip),%rsi        # 203251 <_ZStL8__ioinit>
    1189:	e9 52 f9 ff ff       	jmpq   ae0 <__cxa_atexit@plt>
    118e:	66 90                	xchg   %ax,%ax

0000000000001190 <_start>:
    1190:	31 ed                	xor    %ebp,%ebp
    1192:	49 89 d1             	mov    %rdx,%r9
    1195:	5e                   	pop    %rsi
    1196:	48 89 e2             	mov    %rsp,%rdx
    1199:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    119d:	50                   	push   %rax
    119e:	54                   	push   %rsp
    119f:	4c 8d 05 ea 0f 00 00 	lea    0xfea(%rip),%r8        # 2190 <__libc_csu_fini>
    11a6:	48 8d 0d 73 0f 00 00 	lea    0xf73(%rip),%rcx        # 2120 <__libc_csu_init>
    11ad:	48 8d 3d dc f9 ff ff 	lea    -0x624(%rip),%rdi        # b90 <main>
    11b4:	ff 15 26 1e 20 00    	callq  *0x201e26(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
    11ba:	f4                   	hlt    
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <deregister_tm_clones>:
    11c0:	48 8d 3d 49 1e 20 00 	lea    0x201e49(%rip),%rdi        # 203010 <__TMC_END__>
    11c7:	48 8d 05 42 1e 20 00 	lea    0x201e42(%rip),%rax        # 203010 <__TMC_END__>
    11ce:	48 39 f8             	cmp    %rdi,%rax
    11d1:	74 15                	je     11e8 <deregister_tm_clones+0x28>
    11d3:	48 8b 05 fe 1d 20 00 	mov    0x201dfe(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
    11da:	48 85 c0             	test   %rax,%rax
    11dd:	74 09                	je     11e8 <deregister_tm_clones+0x28>
    11df:	ff e0                	jmpq   *%rax
    11e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e8:	c3                   	retq   
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <register_tm_clones>:
    11f0:	48 8d 3d 19 1e 20 00 	lea    0x201e19(%rip),%rdi        # 203010 <__TMC_END__>
    11f7:	48 8d 35 12 1e 20 00 	lea    0x201e12(%rip),%rsi        # 203010 <__TMC_END__>
    11fe:	48 29 fe             	sub    %rdi,%rsi
    1201:	48 c1 fe 03          	sar    $0x3,%rsi
    1205:	48 89 f0             	mov    %rsi,%rax
    1208:	48 c1 e8 3f          	shr    $0x3f,%rax
    120c:	48 01 c6             	add    %rax,%rsi
    120f:	48 d1 fe             	sar    %rsi
    1212:	74 14                	je     1228 <register_tm_clones+0x38>
    1214:	48 8b 05 d5 1d 20 00 	mov    0x201dd5(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
    121b:	48 85 c0             	test   %rax,%rax
    121e:	74 08                	je     1228 <register_tm_clones+0x38>
    1220:	ff e0                	jmpq   *%rax
    1222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <__do_global_dtors_aux>:
    1230:	80 3d 19 20 20 00 00 	cmpb   $0x0,0x202019(%rip)        # 203250 <completed.7995>
    1237:	75 2f                	jne    1268 <__do_global_dtors_aux+0x38>
    1239:	55                   	push   %rbp
    123a:	48 83 3d 8e 1d 20 00 	cmpq   $0x0,0x201d8e(%rip)        # 202fd0 <__cxa_finalize@GLIBC_2.2.5>
    1241:	00 
    1242:	48 89 e5             	mov    %rsp,%rbp
    1245:	74 0c                	je     1253 <__do_global_dtors_aux+0x23>
    1247:	48 8b 3d ba 1d 20 00 	mov    0x201dba(%rip),%rdi        # 203008 <__dso_handle>
    124e:	e8 2d f9 ff ff       	callq  b80 <__cxa_finalize@plt>
    1253:	e8 68 ff ff ff       	callq  11c0 <deregister_tm_clones>
    1258:	c6 05 f1 1f 20 00 01 	movb   $0x1,0x201ff1(%rip)        # 203250 <completed.7995>
    125f:	5d                   	pop    %rbp
    1260:	c3                   	retq   
    1261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1268:	c3                   	retq   
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <frame_dummy>:
    1270:	e9 7b ff ff ff       	jmpq   11f0 <register_tm_clones>
    1275:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    127c:	00 00 00 
    127f:	90                   	nop

0000000000001280 <_Z11malloc_gatei.part.4>:
    1280:	48 8d 3d b9 1e 20 00 	lea    0x201eb9(%rip),%rdi        # 203140 <_ZSt4cerr@@GLIBCXX_3.4>
    1287:	48 83 ec 08          	sub    $0x8,%rsp
    128b:	ba 22 00 00 00       	mov    $0x22,%edx
    1290:	48 8d 35 11 0f 00 00 	lea    0xf11(%rip),%rsi        # 21a8 <_IO_stdin_used+0x8>
    1297:	e8 54 f8 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    129c:	bf 01 00 00 00       	mov    $0x1,%edi
    12a1:	e8 6a f8 ff ff       	callq  b10 <exit@plt>
    12a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ad:	00 00 00 

00000000000012b0 <_Z4caddPKdS0_Pd>:
    12b0:	f2 0f 10 07          	movsd  (%rdi),%xmm0
    12b4:	f2 0f 58 06          	addsd  (%rsi),%xmm0
    12b8:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
    12bc:	f2 0f 10 47 08       	movsd  0x8(%rdi),%xmm0
    12c1:	f2 0f 58 46 08       	addsd  0x8(%rsi),%xmm0
    12c6:	f2 0f 11 42 08       	movsd  %xmm0,0x8(%rdx)
    12cb:	c3                   	retq   
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012d0 <_Z4cmulPKdS0_Pd>:
    12d0:	f2 0f 10 07          	movsd  (%rdi),%xmm0
    12d4:	f2 0f 10 4f 08       	movsd  0x8(%rdi),%xmm1
    12d9:	f2 0f 59 06          	mulsd  (%rsi),%xmm0
    12dd:	f2 0f 59 4e 08       	mulsd  0x8(%rsi),%xmm1
    12e2:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    12e6:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
    12ea:	f2 0f 10 47 08       	movsd  0x8(%rdi),%xmm0
    12ef:	f2 0f 10 0f          	movsd  (%rdi),%xmm1
    12f3:	f2 0f 59 06          	mulsd  (%rsi),%xmm0
    12f7:	f2 0f 59 4e 08       	mulsd  0x8(%rsi),%xmm1
    12fc:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1300:	f2 0f 11 42 08       	movsd  %xmm0,0x8(%rdx)
    1305:	c3                   	retq   
    1306:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    130d:	00 00 00 

0000000000001310 <_Z7cmatmulPKdS0_Pd>:
    1310:	f2 44 0f 10 4f 18    	movsd  0x18(%rdi),%xmm9
    1316:	f2 0f 10 67 10       	movsd  0x10(%rdi),%xmm4
    131b:	f2 44 0f 10 46 28    	movsd  0x28(%rsi),%xmm8
    1321:	f2 0f 10 46 20       	movsd  0x20(%rsi),%xmm0
    1326:	66 0f 28 d4          	movapd %xmm4,%xmm2
    132a:	66 41 0f 28 e9       	movapd %xmm9,%xmm5
    132f:	f2 0f 10 7f 08       	movsd  0x8(%rdi),%xmm7
    1334:	f2 0f 10 1f          	movsd  (%rdi),%xmm3
    1338:	f2 41 0f 59 e8       	mulsd  %xmm8,%xmm5
    133d:	f2 0f 10 76 08       	movsd  0x8(%rsi),%xmm6
    1342:	f2 0f 10 0e          	movsd  (%rsi),%xmm1
    1346:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    134a:	66 44 0f 28 d7       	movapd %xmm7,%xmm10
    134f:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    1354:	f2 41 0f 59 e0       	mulsd  %xmm8,%xmm4
    1359:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    135e:	f2 0f 5c d5          	subsd  %xmm5,%xmm2
    1362:	66 0f 28 eb          	movapd %xmm3,%xmm5
    1366:	f2 0f 59 e9          	mulsd  %xmm1,%xmm5
    136a:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
    136e:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
    1372:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    1376:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    137b:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    137f:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    1383:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1387:	f2 0f 11 12          	movsd  %xmm2,(%rdx)
    138b:	f2 0f 11 42 08       	movsd  %xmm0,0x8(%rdx)
    1390:	f2 44 0f 10 4f 18    	movsd  0x18(%rdi),%xmm9
    1396:	f2 0f 10 67 10       	movsd  0x10(%rdi),%xmm4
    139b:	f2 44 0f 10 46 38    	movsd  0x38(%rsi),%xmm8
    13a1:	f2 0f 10 46 30       	movsd  0x30(%rsi),%xmm0
    13a6:	66 0f 28 d4          	movapd %xmm4,%xmm2
    13aa:	66 41 0f 28 e9       	movapd %xmm9,%xmm5
    13af:	f2 0f 10 7f 08       	movsd  0x8(%rdi),%xmm7
    13b4:	f2 0f 10 1f          	movsd  (%rdi),%xmm3
    13b8:	f2 41 0f 59 e8       	mulsd  %xmm8,%xmm5
    13bd:	f2 0f 10 76 18       	movsd  0x18(%rsi),%xmm6
    13c2:	f2 0f 10 4e 10       	movsd  0x10(%rsi),%xmm1
    13c7:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    13cb:	66 44 0f 28 d7       	movapd %xmm7,%xmm10
    13d0:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    13d5:	f2 41 0f 59 e0       	mulsd  %xmm8,%xmm4
    13da:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    13df:	f2 0f 5c d5          	subsd  %xmm5,%xmm2
    13e3:	66 0f 28 eb          	movapd %xmm3,%xmm5
    13e7:	f2 0f 59 e9          	mulsd  %xmm1,%xmm5
    13eb:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
    13ef:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
    13f3:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    13f7:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    13fc:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1400:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    1404:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1408:	f2 0f 11 52 10       	movsd  %xmm2,0x10(%rdx)
    140d:	f2 0f 11 42 18       	movsd  %xmm0,0x18(%rdx)
    1412:	f2 44 0f 10 4f 38    	movsd  0x38(%rdi),%xmm9
    1418:	f2 0f 10 67 30       	movsd  0x30(%rdi),%xmm4
    141d:	f2 44 0f 10 46 28    	movsd  0x28(%rsi),%xmm8
    1423:	f2 0f 10 46 20       	movsd  0x20(%rsi),%xmm0
    1428:	66 0f 28 d4          	movapd %xmm4,%xmm2
    142c:	66 41 0f 28 e9       	movapd %xmm9,%xmm5
    1431:	f2 0f 10 5f 20       	movsd  0x20(%rdi),%xmm3
    1436:	f2 0f 10 7f 28       	movsd  0x28(%rdi),%xmm7
    143b:	f2 41 0f 59 e8       	mulsd  %xmm8,%xmm5
    1440:	f2 0f 10 76 08       	movsd  0x8(%rsi),%xmm6
    1445:	f2 0f 10 0e          	movsd  (%rsi),%xmm1
    1449:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    144d:	66 44 0f 28 d7       	movapd %xmm7,%xmm10
    1452:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    1457:	f2 41 0f 59 e0       	mulsd  %xmm8,%xmm4
    145c:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    1461:	f2 0f 5c d5          	subsd  %xmm5,%xmm2
    1465:	66 0f 28 eb          	movapd %xmm3,%xmm5
    1469:	f2 0f 59 e9          	mulsd  %xmm1,%xmm5
    146d:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
    1471:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
    1475:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    1479:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    147e:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1482:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    1486:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    148a:	f2 0f 11 52 20       	movsd  %xmm2,0x20(%rdx)
    148f:	f2 0f 11 42 28       	movsd  %xmm0,0x28(%rdx)
    1494:	f2 0f 10 5f 20       	movsd  0x20(%rdi),%xmm3
    1499:	f2 0f 10 4e 10       	movsd  0x10(%rsi),%xmm1
    149e:	f2 0f 10 7f 28       	movsd  0x28(%rdi),%xmm7
    14a3:	f2 0f 10 67 30       	movsd  0x30(%rdi),%xmm4
    14a8:	f2 44 0f 10 4f 38    	movsd  0x38(%rdi),%xmm9
    14ae:	f2 0f 10 46 30       	movsd  0x30(%rsi),%xmm0
    14b3:	f2 44 0f 10 46 38    	movsd  0x38(%rsi),%xmm8
    14b9:	66 0f 28 d4          	movapd %xmm4,%xmm2
    14bd:	f2 0f 10 76 18       	movsd  0x18(%rsi),%xmm6
    14c2:	66 44 0f 28 d7       	movapd %xmm7,%xmm10
    14c7:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    14cb:	66 41 0f 28 e9       	movapd %xmm9,%xmm5
    14d0:	f2 41 0f 59 e8       	mulsd  %xmm8,%xmm5
    14d5:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    14da:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    14df:	f2 41 0f 59 e0       	mulsd  %xmm8,%xmm4
    14e4:	f2 0f 5c d5          	subsd  %xmm5,%xmm2
    14e8:	66 0f 28 eb          	movapd %xmm3,%xmm5
    14ec:	f2 0f 59 e9          	mulsd  %xmm1,%xmm5
    14f0:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
    14f4:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
    14f8:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    14fc:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    1501:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1505:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    1509:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    150d:	f2 0f 11 52 30       	movsd  %xmm2,0x30(%rdx)
    1512:	f2 0f 11 42 38       	movsd  %xmm0,0x38(%rdx)
    1517:	c3                   	retq   
    1518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    151f:	00 

0000000000001520 <_Z7cmatvecPKdPdii>:
    1520:	01 c9                	add    %ecx,%ecx
    1522:	f2 0f 10 57 10       	movsd  0x10(%rdi),%xmm2
    1527:	f2 44 0f 10 4f 18    	movsd  0x18(%rdi),%xmm9
    152d:	01 d2                	add    %edx,%edx
    152f:	48 63 c9             	movslq %ecx,%rcx
    1532:	48 63 d2             	movslq %edx,%rdx
    1535:	f2 0f 10 67 30       	movsd  0x30(%rdi),%xmm4
    153a:	f2 0f 10 47 38       	movsd  0x38(%rdi),%xmm0
    153f:	48 8d 04 ce          	lea    (%rsi,%rcx,8),%rax
    1543:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
    1547:	f2 44 0f 10 57 08    	movsd  0x8(%rdi),%xmm10
    154d:	f2 0f 10 5f 20       	movsd  0x20(%rdi),%xmm3
    1552:	f2 44 0f 10 00       	movsd  (%rax),%xmm8
    1557:	f2 0f 10 78 08       	movsd  0x8(%rax),%xmm7
    155c:	f2 41 0f 10 30       	movsd  (%r8),%xmm6
    1561:	f2 41 0f 10 68 08    	movsd  0x8(%r8),%xmm5
    1567:	f2 44 0f 59 cf       	mulsd  %xmm7,%xmm9
    156c:	f2 0f 10 4f 28       	movsd  0x28(%rdi),%xmm1
    1571:	f2 41 0f 59 d0       	mulsd  %xmm8,%xmm2
    1576:	f2 44 0f 59 d5       	mulsd  %xmm5,%xmm10
    157b:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    1580:	f2 44 0f 10 0f       	movsd  (%rdi),%xmm9
    1585:	f2 44 0f 59 ce       	mulsd  %xmm6,%xmm9
    158a:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    158f:	66 44 0f 28 d1       	movapd %xmm1,%xmm10
    1594:	f2 44 0f 59 d5       	mulsd  %xmm5,%xmm10
    1599:	f2 0f 59 ce          	mulsd  %xmm6,%xmm1
    159d:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    15a2:	66 44 0f 28 c8       	movapd %xmm0,%xmm9
    15a7:	f2 44 0f 59 cf       	mulsd  %xmm7,%xmm9
    15ac:	f2 41 0f 59 c0       	mulsd  %xmm8,%xmm0
    15b1:	f2 41 0f 11 10       	movsd  %xmm2,(%r8)
    15b6:	66 0f 28 d4          	movapd %xmm4,%xmm2
    15ba:	f2 41 0f 59 d0       	mulsd  %xmm8,%xmm2
    15bf:	f2 0f 59 e7          	mulsd  %xmm7,%xmm4
    15c3:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    15c8:	66 44 0f 28 cb       	movapd %xmm3,%xmm9
    15cd:	f2 44 0f 59 ce       	mulsd  %xmm6,%xmm9
    15d2:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    15d6:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    15da:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    15df:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    15e3:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    15e8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    15ec:	f2 0f 11 10          	movsd  %xmm2,(%rax)
    15f0:	f2 0f 11 44 d6 08    	movsd  %xmm0,0x8(%rsi,%rdx,8)
    15f6:	c3                   	retq   
    15f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    15fe:	00 00 

0000000000001600 <_Z11malloc_gatei>:
    1600:	48 63 ff             	movslq %edi,%rdi
    1603:	48 83 ec 08          	sub    $0x8,%rsp
    1607:	48 8d 3c fd 1f 00 00 	lea    0x1f(,%rdi,8),%rdi
    160e:	00 
    160f:	e8 2c f5 ff ff       	callq  b40 <malloc@plt>
    1614:	48 85 c0             	test   %rax,%rax
    1617:	74 0d                	je     1626 <_Z11malloc_gatei+0x26>
    1619:	48 83 c0 1f          	add    $0x1f,%rax
    161d:	48 83 c4 08          	add    $0x8,%rsp
    1621:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
    1625:	c3                   	retq   
    1626:	e8 55 fc ff ff       	callq  1280 <_Z11malloc_gatei.part.4>
    162b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001630 <_Z9make_gatedddddddd>:
    1630:	48 83 ec 48          	sub    $0x48,%rsp
    1634:	bf 5f 00 00 00       	mov    $0x5f,%edi
    1639:	f2 0f 11 44 24 38    	movsd  %xmm0,0x38(%rsp)
    163f:	f2 0f 11 4c 24 30    	movsd  %xmm1,0x30(%rsp)
    1645:	f2 0f 11 54 24 28    	movsd  %xmm2,0x28(%rsp)
    164b:	f2 0f 11 5c 24 20    	movsd  %xmm3,0x20(%rsp)
    1651:	f2 0f 11 64 24 18    	movsd  %xmm4,0x18(%rsp)
    1657:	f2 0f 11 6c 24 10    	movsd  %xmm5,0x10(%rsp)
    165d:	f2 0f 11 74 24 08    	movsd  %xmm6,0x8(%rsp)
    1663:	f2 0f 11 3c 24       	movsd  %xmm7,(%rsp)
    1668:	e8 d3 f4 ff ff       	callq  b40 <malloc@plt>
    166d:	f2 0f 10 3c 24       	movsd  (%rsp),%xmm7
    1672:	f2 0f 10 74 24 08    	movsd  0x8(%rsp),%xmm6
    1678:	48 85 c0             	test   %rax,%rax
    167b:	f2 0f 10 6c 24 10    	movsd  0x10(%rsp),%xmm5
    1681:	f2 0f 10 64 24 18    	movsd  0x18(%rsp),%xmm4
    1687:	f2 0f 10 5c 24 20    	movsd  0x20(%rsp),%xmm3
    168d:	f2 0f 10 54 24 28    	movsd  0x28(%rsp),%xmm2
    1693:	f2 0f 10 4c 24 30    	movsd  0x30(%rsp),%xmm1
    1699:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
    169f:	74 2c                	je     16cd <_Z9make_gatedddddddd+0x9d>
    16a1:	66 0f 14 c1          	unpcklpd %xmm1,%xmm0
    16a5:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
    16a9:	66 0f 14 e5          	unpcklpd %xmm5,%xmm4
    16ad:	48 83 c0 1f          	add    $0x1f,%rax
    16b1:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
    16b5:	66 0f 14 f7          	unpcklpd %xmm7,%xmm6
    16b9:	0f 29 00             	movaps %xmm0,(%rax)
    16bc:	0f 29 50 10          	movaps %xmm2,0x10(%rax)
    16c0:	0f 29 60 20          	movaps %xmm4,0x20(%rax)
    16c4:	0f 29 70 30          	movaps %xmm6,0x30(%rax)
    16c8:	48 83 c4 48          	add    $0x48,%rsp
    16cc:	c3                   	retq   
    16cd:	e8 ae fb ff ff       	callq  1280 <_Z11malloc_gatei.part.4>
    16d2:	0f 1f 40 00          	nopl   0x0(%rax)
    16d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16dd:	00 00 00 

00000000000016e0 <_Z6printcPd>:
    16e0:	55                   	push   %rbp
    16e1:	ba 01 00 00 00       	mov    $0x1,%edx
    16e6:	48 89 fd             	mov    %rdi,%rbp
    16e9:	48 8d 35 e0 0a 00 00 	lea    0xae0(%rip),%rsi        # 21d0 <_IO_stdin_used+0x30>
    16f0:	53                   	push   %rbx
    16f1:	48 8d 3d 28 19 20 00 	lea    0x201928(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    16f8:	48 83 ec 08          	sub    $0x8,%rsp
    16fc:	e8 ef f3 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1701:	f2 0f 10 45 00       	movsd  0x0(%rbp),%xmm0
    1706:	48 8d 3d 13 19 20 00 	lea    0x201913(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    170d:	e8 5e f4 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    1712:	ba 02 00 00 00       	mov    $0x2,%edx
    1717:	48 8d 35 b4 0a 00 00 	lea    0xab4(%rip),%rsi        # 21d2 <_IO_stdin_used+0x32>
    171e:	48 89 c7             	mov    %rax,%rdi
    1721:	48 89 c3             	mov    %rax,%rbx
    1724:	e8 c7 f3 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1729:	f2 0f 10 45 08       	movsd  0x8(%rbp),%xmm0
    172e:	48 89 df             	mov    %rbx,%rdi
    1731:	e8 3a f4 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    1736:	48 83 c4 08          	add    $0x8,%rsp
    173a:	ba 01 00 00 00       	mov    $0x1,%edx
    173f:	48 8d 35 8f 0a 00 00 	lea    0xa8f(%rip),%rsi        # 21d5 <_IO_stdin_used+0x35>
    1746:	5b                   	pop    %rbx
    1747:	48 89 c7             	mov    %rax,%rdi
    174a:	5d                   	pop    %rbp
    174b:	e9 a0 f3 ff ff       	jmpq   af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>

0000000000001750 <_Z6printmPd>:
    1750:	41 57                	push   %r15
    1752:	48 8d 47 60          	lea    0x60(%rdi),%rax
    1756:	41 56                	push   %r14
    1758:	4c 8d 35 71 0a 00 00 	lea    0xa71(%rip),%r14        # 21d0 <_IO_stdin_used+0x30>
    175f:	41 55                	push   %r13
    1761:	41 54                	push   %r12
    1763:	4c 8d 25 b6 18 20 00 	lea    0x2018b6(%rip),%r12        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    176a:	55                   	push   %rbp
    176b:	4c 89 e5             	mov    %r12,%rbp
    176e:	53                   	push   %rbx
    176f:	48 8d 5f 20          	lea    0x20(%rdi),%rbx
    1773:	48 83 ec 18          	sub    $0x18,%rsp
    1777:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    177c:	4c 8d 7b e0          	lea    -0x20(%rbx),%r15
    1780:	ba 01 00 00 00       	mov    $0x1,%edx
    1785:	4c 89 f6             	mov    %r14,%rsi
    1788:	48 89 ef             	mov    %rbp,%rdi
    178b:	49 83 c7 10          	add    $0x10,%r15
    178f:	e8 5c f3 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1794:	f2 41 0f 10 47 f0    	movsd  -0x10(%r15),%xmm0
    179a:	48 89 ef             	mov    %rbp,%rdi
    179d:	e8 ce f3 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    17a2:	ba 02 00 00 00       	mov    $0x2,%edx
    17a7:	48 8d 35 24 0a 00 00 	lea    0xa24(%rip),%rsi        # 21d2 <_IO_stdin_used+0x32>
    17ae:	48 89 c7             	mov    %rax,%rdi
    17b1:	49 89 c5             	mov    %rax,%r13
    17b4:	e8 37 f3 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    17b9:	f2 41 0f 10 47 f8    	movsd  -0x8(%r15),%xmm0
    17bf:	4c 89 ef             	mov    %r13,%rdi
    17c2:	e8 a9 f3 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    17c7:	ba 01 00 00 00       	mov    $0x1,%edx
    17cc:	48 8d 35 02 0a 00 00 	lea    0xa02(%rip),%rsi        # 21d5 <_IO_stdin_used+0x35>
    17d3:	48 89 c7             	mov    %rax,%rdi
    17d6:	e8 15 f3 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    17db:	bf 20 00 00 00       	mov    $0x20,%edi
    17e0:	e8 6b f3 ff ff       	callq  b50 <putchar@plt>
    17e5:	49 39 df             	cmp    %rbx,%r15
    17e8:	75 96                	jne    1780 <_Z6printmPd+0x30>
    17ea:	49 8b 04 24          	mov    (%r12),%rax
    17ee:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    17f2:	4d 8b bc 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%r15
    17f9:	00 
    17fa:	4d 85 ff             	test   %r15,%r15
    17fd:	0f 84 e6 00 00 00    	je     18e9 <_Z6printmPd+0x199>
    1803:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
    1808:	74 76                	je     1880 <_Z6printmPd+0x130>
    180a:	41 0f be 77 43       	movsbl 0x43(%r15),%esi
    180f:	48 89 ef             	mov    %rbp,%rdi
    1812:	48 83 c3 20          	add    $0x20,%rbx
    1816:	e8 85 f2 ff ff       	callq  aa0 <_ZNSo3putEc@plt>
    181b:	48 89 c7             	mov    %rax,%rdi
    181e:	e8 ad f2 ff ff       	callq  ad0 <_ZNSo5flushEv@plt>
    1823:	48 39 5c 24 08       	cmp    %rbx,0x8(%rsp)
    1828:	0f 85 4e ff ff ff    	jne    177c <_Z6printmPd+0x2c>
    182e:	48 8b 05 eb 17 20 00 	mov    0x2017eb(%rip),%rax        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    1835:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1839:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
    1840:	00 
    1841:	48 85 db             	test   %rbx,%rbx
    1844:	0f 84 9f 00 00 00    	je     18e9 <_Z6printmPd+0x199>
    184a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    184e:	74 68                	je     18b8 <_Z6printmPd+0x168>
    1850:	0f be 73 43          	movsbl 0x43(%rbx),%esi
    1854:	48 8d 3d c5 17 20 00 	lea    0x2017c5(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    185b:	e8 40 f2 ff ff       	callq  aa0 <_ZNSo3putEc@plt>
    1860:	48 83 c4 18          	add    $0x18,%rsp
    1864:	5b                   	pop    %rbx
    1865:	48 89 c7             	mov    %rax,%rdi
    1868:	5d                   	pop    %rbp
    1869:	41 5c                	pop    %r12
    186b:	41 5d                	pop    %r13
    186d:	41 5e                	pop    %r14
    186f:	41 5f                	pop    %r15
    1871:	e9 5a f2 ff ff       	jmpq   ad0 <_ZNSo5flushEv@plt>
    1876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    187d:	00 00 00 
    1880:	4c 89 ff             	mov    %r15,%rdi
    1883:	e8 78 f2 ff ff       	callq  b00 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    1888:	49 8b 07             	mov    (%r15),%rax
    188b:	be 0a 00 00 00       	mov    $0xa,%esi
    1890:	48 8d 0d 49 06 00 00 	lea    0x649(%rip),%rcx        # 1ee0 <_ZNKSt5ctypeIcE8do_widenEc>
    1897:	48 8b 40 30          	mov    0x30(%rax),%rax
    189b:	48 39 c8             	cmp    %rcx,%rax
    189e:	0f 84 6b ff ff ff    	je     180f <_Z6printmPd+0xbf>
    18a4:	4c 89 ff             	mov    %r15,%rdi
    18a7:	ff d0                	callq  *%rax
    18a9:	0f be f0             	movsbl %al,%esi
    18ac:	e9 5e ff ff ff       	jmpq   180f <_Z6printmPd+0xbf>
    18b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18b8:	48 89 df             	mov    %rbx,%rdi
    18bb:	e8 40 f2 ff ff       	callq  b00 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    18c0:	48 8b 03             	mov    (%rbx),%rax
    18c3:	be 0a 00 00 00       	mov    $0xa,%esi
    18c8:	48 8d 15 11 06 00 00 	lea    0x611(%rip),%rdx        # 1ee0 <_ZNKSt5ctypeIcE8do_widenEc>
    18cf:	48 8b 40 30          	mov    0x30(%rax),%rax
    18d3:	48 39 d0             	cmp    %rdx,%rax
    18d6:	0f 84 78 ff ff ff    	je     1854 <_Z6printmPd+0x104>
    18dc:	48 89 df             	mov    %rbx,%rdi
    18df:	ff d0                	callq  *%rax
    18e1:	0f be f0             	movsbl %al,%esi
    18e4:	e9 6b ff ff ff       	jmpq   1854 <_Z6printmPd+0x104>
    18e9:	e8 32 f2 ff ff       	callq  b20 <_ZSt16__throw_bad_castv@plt>
    18ee:	66 90                	xchg   %ax,%ax

00000000000018f0 <_Z6printsPd>:
    18f0:	41 57                	push   %r15
    18f2:	41 56                	push   %r14
    18f4:	4c 8d 77 40          	lea    0x40(%rdi),%r14
    18f8:	41 55                	push   %r13
    18fa:	4c 8d 2d cf 08 00 00 	lea    0x8cf(%rip),%r13        # 21d0 <_IO_stdin_used+0x30>
    1901:	41 54                	push   %r12
    1903:	4c 8d 25 16 17 20 00 	lea    0x201716(%rip),%r12        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    190a:	55                   	push   %rbp
    190b:	4c 89 e5             	mov    %r12,%rbp
    190e:	53                   	push   %rbx
    190f:	48 89 fb             	mov    %rdi,%rbx
    1912:	48 83 ec 08          	sub    $0x8,%rsp
    1916:	ba 01 00 00 00       	mov    $0x1,%edx
    191b:	4c 89 ee             	mov    %r13,%rsi
    191e:	48 89 ef             	mov    %rbp,%rdi
    1921:	e8 ca f1 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1926:	f2 0f 10 03          	movsd  (%rbx),%xmm0
    192a:	48 89 ef             	mov    %rbp,%rdi
    192d:	e8 3e f2 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    1932:	ba 02 00 00 00       	mov    $0x2,%edx
    1937:	48 8d 35 94 08 00 00 	lea    0x894(%rip),%rsi        # 21d2 <_IO_stdin_used+0x32>
    193e:	48 89 c7             	mov    %rax,%rdi
    1941:	49 89 c7             	mov    %rax,%r15
    1944:	e8 a7 f1 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1949:	f2 0f 10 43 08       	movsd  0x8(%rbx),%xmm0
    194e:	4c 89 ff             	mov    %r15,%rdi
    1951:	e8 1a f2 ff ff       	callq  b70 <_ZNSo9_M_insertIdEERSoT_@plt>
    1956:	ba 01 00 00 00       	mov    $0x1,%edx
    195b:	48 8d 35 73 08 00 00 	lea    0x873(%rip),%rsi        # 21d5 <_IO_stdin_used+0x35>
    1962:	48 89 c7             	mov    %rax,%rdi
    1965:	e8 86 f1 ff ff       	callq  af0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    196a:	49 8b 04 24          	mov    (%r12),%rax
    196e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    1972:	4d 8b bc 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%r15
    1979:	00 
    197a:	4d 85 ff             	test   %r15,%r15
    197d:	0f 84 da 00 00 00    	je     1a5d <_Z6printsPd+0x16d>
    1983:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
    1988:	74 6e                	je     19f8 <_Z6printsPd+0x108>
    198a:	41 0f be 77 43       	movsbl 0x43(%r15),%esi
    198f:	48 89 ef             	mov    %rbp,%rdi
    1992:	48 83 c3 10          	add    $0x10,%rbx
    1996:	e8 05 f1 ff ff       	callq  aa0 <_ZNSo3putEc@plt>
    199b:	48 89 c7             	mov    %rax,%rdi
    199e:	e8 2d f1 ff ff       	callq  ad0 <_ZNSo5flushEv@plt>
    19a3:	4c 39 f3             	cmp    %r14,%rbx
    19a6:	0f 85 6a ff ff ff    	jne    1916 <_Z6printsPd+0x26>
    19ac:	48 8b 05 6d 16 20 00 	mov    0x20166d(%rip),%rax        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    19b3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    19b7:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
    19be:	00 
    19bf:	48 85 db             	test   %rbx,%rbx
    19c2:	0f 84 95 00 00 00    	je     1a5d <_Z6printsPd+0x16d>
    19c8:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    19cc:	74 62                	je     1a30 <_Z6printsPd+0x140>
    19ce:	0f be 73 43          	movsbl 0x43(%rbx),%esi
    19d2:	48 8d 3d 47 16 20 00 	lea    0x201647(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    19d9:	e8 c2 f0 ff ff       	callq  aa0 <_ZNSo3putEc@plt>
    19de:	48 83 c4 08          	add    $0x8,%rsp
    19e2:	5b                   	pop    %rbx
    19e3:	48 89 c7             	mov    %rax,%rdi
    19e6:	5d                   	pop    %rbp
    19e7:	41 5c                	pop    %r12
    19e9:	41 5d                	pop    %r13
    19eb:	41 5e                	pop    %r14
    19ed:	41 5f                	pop    %r15
    19ef:	e9 dc f0 ff ff       	jmpq   ad0 <_ZNSo5flushEv@plt>
    19f4:	0f 1f 40 00          	nopl   0x0(%rax)
    19f8:	4c 89 ff             	mov    %r15,%rdi
    19fb:	e8 00 f1 ff ff       	callq  b00 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    1a00:	49 8b 07             	mov    (%r15),%rax
    1a03:	be 0a 00 00 00       	mov    $0xa,%esi
    1a08:	48 8d 0d d1 04 00 00 	lea    0x4d1(%rip),%rcx        # 1ee0 <_ZNKSt5ctypeIcE8do_widenEc>
    1a0f:	48 8b 40 30          	mov    0x30(%rax),%rax
    1a13:	48 39 c8             	cmp    %rcx,%rax
    1a16:	0f 84 73 ff ff ff    	je     198f <_Z6printsPd+0x9f>
    1a1c:	4c 89 ff             	mov    %r15,%rdi
    1a1f:	ff d0                	callq  *%rax
    1a21:	0f be f0             	movsbl %al,%esi
    1a24:	e9 66 ff ff ff       	jmpq   198f <_Z6printsPd+0x9f>
    1a29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a30:	48 89 df             	mov    %rbx,%rdi
    1a33:	e8 c8 f0 ff ff       	callq  b00 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    1a38:	48 8b 03             	mov    (%rbx),%rax
    1a3b:	be 0a 00 00 00       	mov    $0xa,%esi
    1a40:	48 8d 15 99 04 00 00 	lea    0x499(%rip),%rdx        # 1ee0 <_ZNKSt5ctypeIcE8do_widenEc>
    1a47:	48 8b 40 30          	mov    0x30(%rax),%rax
    1a4b:	48 39 d0             	cmp    %rdx,%rax
    1a4e:	74 82                	je     19d2 <_Z6printsPd+0xe2>
    1a50:	48 89 df             	mov    %rbx,%rdi
    1a53:	ff d0                	callq  *%rax
    1a55:	0f be f0             	movsbl %al,%esi
    1a58:	e9 75 ff ff ff       	jmpq   19d2 <_Z6printsPd+0xe2>
    1a5d:	e8 be f0 ff ff       	callq  b20 <_ZSt16__throw_bad_castv@plt>
    1a62:	0f 1f 40 00          	nopl   0x0(%rax)
    1a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a6d:	00 00 00 

0000000000001a70 <_Z5sgatePdS_i>:
    1a70:	41 57                	push   %r15
    1a72:	89 d1                	mov    %edx,%ecx
    1a74:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1a7a:	b8 02 00 00 00       	mov    $0x2,%eax
    1a7f:	41 56                	push   %r14
    1a81:	d3 e0                	shl    %cl,%eax
    1a83:	41 d3 e1             	shl    %cl,%r9d
    1a86:	41 55                	push   %r13
    1a88:	41 54                	push   %r12
    1a8a:	55                   	push   %rbp
    1a8b:	53                   	push   %rbx
    1a8c:	89 54 24 d4          	mov    %edx,-0x2c(%rsp)
    1a90:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
    1a94:	45 85 c9             	test   %r9d,%r9d
    1a97:	0f 8e 42 03 00 00    	jle    1ddf <_Z5sgatePdS_i+0x36f>
    1a9d:	44 8d 24 00          	lea    (%rax,%rax,1),%r12d
    1aa1:	48 98                	cltq   
    1aa3:	48 8d 57 40          	lea    0x40(%rdi),%rdx
    1aa7:	44 89 cd             	mov    %r9d,%ebp
    1aaa:	4c 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%r10
    1ab1:	00 
    1ab2:	48 f7 d8             	neg    %rax
    1ab5:	48 89 f1             	mov    %rsi,%rcx
    1ab8:	d1 ed                	shr    %ebp
    1aba:	48 c1 e0 04          	shl    $0x4,%rax
    1abe:	48 89 54 24 c8       	mov    %rdx,-0x38(%rsp)
    1ac3:	4c 29 d1             	sub    %r10,%rcx
    1ac6:	4d 63 e4             	movslq %r12d,%r12
    1ac9:	48 89 44 24 e0       	mov    %rax,-0x20(%rsp)
    1ace:	41 8d 41 ff          	lea    -0x1(%r9),%eax
    1ad2:	44 89 cb             	mov    %r9d,%ebx
    1ad5:	49 c1 e4 03          	shl    $0x3,%r12
    1ad9:	48 c1 e0 04          	shl    $0x4,%rax
    1add:	48 89 4c 24 f0       	mov    %rcx,-0x10(%rsp)
    1ae2:	48 c1 e5 05          	shl    $0x5,%rbp
    1ae6:	83 e3 fe             	and    $0xfffffffe,%ebx
    1ae9:	4c 8d 74 06 10       	lea    0x10(%rsi,%rax,1),%r14
    1aee:	49 63 c1             	movslq %r9d,%rax
    1af1:	4d 89 d0             	mov    %r10,%r8
    1af4:	45 31 ed             	xor    %r13d,%r13d
    1af7:	48 c1 e0 04          	shl    $0x4,%rax
    1afb:	45 31 db             	xor    %r11d,%r11d
    1afe:	31 c9                	xor    %ecx,%ecx
    1b00:	48 01 f0             	add    %rsi,%rax
    1b03:	48 89 44 24 d8       	mov    %rax,-0x28(%rsp)
    1b08:	48 83 e8 08          	sub    $0x8,%rax
    1b0c:	48 89 44 24 e8       	mov    %rax,-0x18(%rsp)
    1b11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b18:	4a 8d 04 1e          	lea    (%rsi,%r11,1),%rax
    1b1c:	48 39 44 24 c8       	cmp    %rax,-0x38(%rsp)
    1b21:	48 8b 44 24 d8       	mov    -0x28(%rsp),%rax
    1b26:	4d 8d 7a 20          	lea    0x20(%r10),%r15
    1b2a:	0f 96 c2             	setbe  %dl
    1b2d:	4c 01 d8             	add    %r11,%rax
    1b30:	48 39 c7             	cmp    %rax,%rdi
    1b33:	0f 93 c0             	setae  %al
    1b36:	09 c2                	or     %eax,%edx
    1b38:	49 8d 43 20          	lea    0x20(%r11),%rax
    1b3c:	4c 39 d0             	cmp    %r10,%rax
    1b3f:	0f 9e c0             	setle  %al
    1b42:	4d 39 fb             	cmp    %r15,%r11
    1b45:	41 0f 9d c7          	setge  %r15b
    1b49:	44 09 f8             	or     %r15d,%eax
    1b4c:	21 c2                	and    %eax,%edx
    1b4e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
    1b52:	85 c0                	test   %eax,%eax
    1b54:	0f 95 c0             	setne  %al
    1b57:	84 c2                	test   %al,%dl
    1b59:	0f 84 91 02 00 00    	je     1df0 <_Z5sgatePdS_i+0x380>
    1b5f:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
    1b64:	4c 01 d0             	add    %r10,%rax
    1b67:	48 39 c7             	cmp    %rax,%rdi
    1b6a:	4a 8d 04 16          	lea    (%rsi,%r10,1),%rax
    1b6e:	0f 93 c2             	setae  %dl
    1b71:	48 39 44 24 c8       	cmp    %rax,-0x38(%rsp)
    1b76:	0f 96 c0             	setbe  %al
    1b79:	08 c2                	or     %al,%dl
    1b7b:	0f 84 6f 02 00 00    	je     1df0 <_Z5sgatePdS_i+0x380>
    1b81:	8d 04 09             	lea    (%rcx,%rcx,1),%eax
    1b84:	f2 44 0f 10 27       	movsd  (%rdi),%xmm12
    1b89:	f2 44 0f 10 5f 08    	movsd  0x8(%rdi),%xmm11
    1b8f:	48 63 d0             	movslq %eax,%rdx
    1b92:	f2 44 0f 10 57 10    	movsd  0x10(%rdi),%xmm10
    1b98:	03 44 24 d0          	add    -0x30(%rsp),%eax
    1b9c:	f2 0f 10 7f 28       	movsd  0x28(%rdi),%xmm7
    1ba1:	f2 0f 10 77 30       	movsd  0x30(%rdi),%xmm6
    1ba6:	48 98                	cltq   
    1ba8:	4c 8d 3c d6          	lea    (%rsi,%rdx,8),%r15
    1bac:	f2 44 0f 10 4f 18    	movsd  0x18(%rdi),%xmm9
    1bb2:	f2 44 0f 10 47 20    	movsd  0x20(%rdi),%xmm8
    1bb8:	48 8d 14 c6          	lea    (%rsi,%rax,8),%rdx
    1bbc:	66 45 0f 14 e4       	unpcklpd %xmm12,%xmm12
    1bc1:	f2 0f 10 6f 38       	movsd  0x38(%rdi),%xmm5
    1bc6:	66 45 0f 14 db       	unpcklpd %xmm11,%xmm11
    1bcb:	66 0f 14 ff          	unpcklpd %xmm7,%xmm7
    1bcf:	31 c0                	xor    %eax,%eax
    1bd1:	66 45 0f 14 d2       	unpcklpd %xmm10,%xmm10
    1bd6:	66 45 0f 14 c9       	unpcklpd %xmm9,%xmm9
    1bdb:	66 45 0f 14 c0       	unpcklpd %xmm8,%xmm8
    1be0:	66 0f 14 f6          	unpcklpd %xmm6,%xmm6
    1be4:	66 0f 14 ed          	unpcklpd %xmm5,%xmm5
    1be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bef:	00 
    1bf0:	66 41 0f 10 04 07    	movupd (%r15,%rax,1),%xmm0
    1bf6:	66 41 0f 10 5c 07 10 	movupd 0x10(%r15,%rax,1),%xmm3
    1bfd:	66 41 0f 28 cc       	movapd %xmm12,%xmm1
    1c02:	66 41 0f 12 5c 07 08 	movlpd 0x8(%r15,%rax,1),%xmm3
    1c09:	66 44 0f 10 2c 02    	movupd (%rdx,%rax,1),%xmm13
    1c0f:	66 41 0f 16 44 07 10 	movhpd 0x10(%r15,%rax,1),%xmm0
    1c16:	66 0f 10 54 02 10    	movupd 0x10(%rdx,%rax,1),%xmm2
    1c1c:	66 0f 12 54 02 08    	movlpd 0x8(%rdx,%rax,1),%xmm2
    1c22:	66 0f 28 e3          	movapd %xmm3,%xmm4
    1c26:	66 44 0f 16 6c 02 10 	movhpd 0x10(%rdx,%rax,1),%xmm13
    1c2d:	66 44 0f 28 fb       	movapd %xmm3,%xmm15
    1c32:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    1c36:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    1c3b:	66 41 0f 59 e3       	mulpd  %xmm11,%xmm4
    1c40:	66 45 0f 59 f1       	mulpd  %xmm9,%xmm14
    1c45:	66 44 0f 59 ff       	mulpd  %xmm7,%xmm15
    1c4a:	66 41 0f 59 d8       	mulpd  %xmm8,%xmm3
    1c4f:	66 0f 5c cc          	subpd  %xmm4,%xmm1
    1c53:	66 0f 28 e1          	movapd %xmm1,%xmm4
    1c57:	66 41 0f 28 ca       	movapd %xmm10,%xmm1
    1c5c:	66 41 0f 59 cd       	mulpd  %xmm13,%xmm1
    1c61:	66 41 0f 5c ce       	subpd  %xmm14,%xmm1
    1c66:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1c6a:	66 0f 28 e0          	movapd %xmm0,%xmm4
    1c6e:	66 41 0f 59 e0       	mulpd  %xmm8,%xmm4
    1c73:	66 0f 59 c7          	mulpd  %xmm7,%xmm0
    1c77:	66 41 0f 5c e7       	subpd  %xmm15,%xmm4
    1c7c:	66 44 0f 28 fa       	movapd %xmm2,%xmm15
    1c81:	66 0f 59 d6          	mulpd  %xmm6,%xmm2
    1c85:	66 0f 58 c3          	addpd  %xmm3,%xmm0
    1c89:	66 44 0f 59 fd       	mulpd  %xmm5,%xmm15
    1c8e:	66 44 0f 28 f4       	movapd %xmm4,%xmm14
    1c93:	66 41 0f 28 e5       	movapd %xmm13,%xmm4
    1c98:	66 44 0f 59 ed       	mulpd  %xmm5,%xmm13
    1c9d:	66 0f 59 e6          	mulpd  %xmm6,%xmm4
    1ca1:	66 41 0f 58 d5       	addpd  %xmm13,%xmm2
    1ca6:	66 41 0f 5c e7       	subpd  %xmm15,%xmm4
    1cab:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    1caf:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1cb3:	66 41 0f 58 e6       	addpd  %xmm14,%xmm4
    1cb8:	66 0f 14 d0          	unpcklpd %xmm0,%xmm2
    1cbc:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1cc0:	66 0f 13 24 02       	movlpd %xmm4,(%rdx,%rax,1)
    1cc5:	66 0f 17 64 02 10    	movhpd %xmm4,0x10(%rdx,%rax,1)
    1ccb:	41 0f 11 14 07       	movups %xmm2,(%r15,%rax,1)
    1cd0:	41 0f 11 4c 07 10    	movups %xmm1,0x10(%r15,%rax,1)
    1cd6:	48 83 c0 20          	add    $0x20,%rax
    1cda:	48 39 e8             	cmp    %rbp,%rax
    1cdd:	0f 85 0d ff ff ff    	jne    1bf0 <_Z5sgatePdS_i+0x180>
    1ce3:	41 39 d9             	cmp    %ebx,%r9d
    1ce6:	0f 84 d2 00 00 00    	je     1dbe <_Z5sgatePdS_i+0x34e>
    1cec:	8d 04 19             	lea    (%rcx,%rbx,1),%eax
    1cef:	f2 0f 10 27          	movsd  (%rdi),%xmm4
    1cf3:	f2 0f 10 6f 08       	movsd  0x8(%rdi),%xmm5
    1cf8:	8d 14 00             	lea    (%rax,%rax,1),%edx
    1cfb:	44 01 c8             	add    %r9d,%eax
    1cfe:	f2 44 0f 10 57 18    	movsd  0x18(%rdi),%xmm10
    1d04:	f2 44 0f 10 47 20    	movsd  0x20(%rdi),%xmm8
    1d0a:	48 63 d2             	movslq %edx,%rdx
    1d0d:	01 c0                	add    %eax,%eax
    1d0f:	f2 44 0f 10 4f 28    	movsd  0x28(%rdi),%xmm9
    1d15:	f2 0f 10 77 30       	movsd  0x30(%rdi),%xmm6
    1d1a:	4c 8d 3c d6          	lea    (%rsi,%rdx,8),%r15
    1d1e:	48 98                	cltq   
    1d20:	f2 0f 10 7f 38       	movsd  0x38(%rdi),%xmm7
    1d25:	f2 41 0f 10 07       	movsd  (%r15),%xmm0
    1d2a:	f2 41 0f 10 5f 08    	movsd  0x8(%r15),%xmm3
    1d30:	48 8d 04 c6          	lea    (%rsi,%rax,8),%rax
    1d34:	f2 0f 10 08          	movsd  (%rax),%xmm1
    1d38:	f2 0f 10 50 08       	movsd  0x8(%rax),%xmm2
    1d3d:	f2 0f 59 eb          	mulsd  %xmm3,%xmm5
    1d41:	f2 0f 59 e0          	mulsd  %xmm0,%xmm4
    1d45:	f2 44 0f 59 d2       	mulsd  %xmm2,%xmm10
    1d4a:	f2 0f 5c e5          	subsd  %xmm5,%xmm4
    1d4e:	f2 0f 10 6f 10       	movsd  0x10(%rdi),%xmm5
    1d53:	f2 0f 59 e9          	mulsd  %xmm1,%xmm5
    1d57:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    1d5c:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
    1d61:	f2 44 0f 59 d7       	mulsd  %xmm7,%xmm10
    1d66:	f2 0f 59 d6          	mulsd  %xmm6,%xmm2
    1d6a:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    1d6e:	66 0f 28 eb          	movapd %xmm3,%xmm5
    1d72:	f2 41 0f 59 e9       	mulsd  %xmm9,%xmm5
    1d77:	f2 41 0f 59 d8       	mulsd  %xmm8,%xmm3
    1d7c:	f2 41 0f 11 27       	movsd  %xmm4,(%r15)
    1d81:	66 0f 28 e0          	movapd %xmm0,%xmm4
    1d85:	f2 41 0f 59 e0       	mulsd  %xmm8,%xmm4
    1d8a:	f2 41 0f 59 c1       	mulsd  %xmm9,%xmm0
    1d8f:	f2 0f 5c e5          	subsd  %xmm5,%xmm4
    1d93:	66 0f 28 e9          	movapd %xmm1,%xmm5
    1d97:	f2 0f 59 ee          	mulsd  %xmm6,%xmm5
    1d9b:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1d9f:	f2 0f 59 cf          	mulsd  %xmm7,%xmm1
    1da3:	f2 41 0f 5c ea       	subsd  %xmm10,%xmm5
    1da8:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1dac:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    1db0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1db4:	f2 0f 11 20          	movsd  %xmm4,(%rax)
    1db8:	f2 0f 11 44 d6 08    	movsd  %xmm0,0x8(%rsi,%rdx,8)
    1dbe:	03 4c 24 d0          	add    -0x30(%rsp),%ecx
    1dc2:	4d 01 e3             	add    %r12,%r11
    1dc5:	4d 01 e2             	add    %r12,%r10
    1dc8:	4c 03 6c 24 e0       	add    -0x20(%rsp),%r13
    1dcd:	4d 01 e0             	add    %r12,%r8
    1dd0:	4d 01 e6             	add    %r12,%r14
    1dd3:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
    1dd9:	0f 8e 39 fd ff ff    	jle    1b18 <_Z5sgatePdS_i+0xa8>
    1ddf:	5b                   	pop    %rbx
    1de0:	5d                   	pop    %rbp
    1de1:	41 5c                	pop    %r12
    1de3:	41 5d                	pop    %r13
    1de5:	41 5e                	pop    %r14
    1de7:	41 5f                	pop    %r15
    1de9:	c3                   	retq   
    1dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1df0:	48 8b 44 24 f0       	mov    -0x10(%rsp),%rax
    1df5:	4c 01 c0             	add    %r8,%rax
    1df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1dff:	00 
    1e00:	49 8d 54 05 00       	lea    0x0(%r13,%rax,1),%rdx
    1e05:	f2 0f 10 57 10       	movsd  0x10(%rdi),%xmm2
    1e0a:	f2 44 0f 10 4f 18    	movsd  0x18(%rdi),%xmm9
    1e10:	48 83 c0 10          	add    $0x10,%rax
    1e14:	f2 42 0f 10 3c 02    	movsd  (%rdx,%r8,1),%xmm7
    1e1a:	f2 46 0f 10 44 02 08 	movsd  0x8(%rdx,%r8,1),%xmm8
    1e21:	f2 0f 10 68 f0       	movsd  -0x10(%rax),%xmm5
    1e26:	f2 0f 10 70 f8       	movsd  -0x8(%rax),%xmm6
    1e2b:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
    1e30:	f2 44 0f 10 57 08    	movsd  0x8(%rdi),%xmm10
    1e36:	f2 0f 10 47 30       	movsd  0x30(%rdi),%xmm0
    1e3b:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    1e3f:	f2 0f 10 67 38       	movsd  0x38(%rdi),%xmm4
    1e44:	f2 0f 10 4f 20       	movsd  0x20(%rdi),%xmm1
    1e49:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    1e4e:	f2 0f 10 5f 28       	movsd  0x28(%rdi),%xmm3
    1e53:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    1e58:	f2 44 0f 10 0f       	movsd  (%rdi),%xmm9
    1e5d:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
    1e62:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    1e67:	66 44 0f 28 d3       	movapd %xmm3,%xmm10
    1e6c:	f2 44 0f 59 d6       	mulsd  %xmm6,%xmm10
    1e71:	f2 0f 59 dd          	mulsd  %xmm5,%xmm3
    1e75:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    1e7a:	66 44 0f 28 cc       	movapd %xmm4,%xmm9
    1e7f:	f2 45 0f 59 c8       	mulsd  %xmm8,%xmm9
    1e84:	f2 0f 59 e7          	mulsd  %xmm7,%xmm4
    1e88:	f2 0f 11 50 f0       	movsd  %xmm2,-0x10(%rax)
    1e8d:	66 0f 28 d0          	movapd %xmm0,%xmm2
    1e91:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    1e95:	f2 41 0f 59 c0       	mulsd  %xmm8,%xmm0
    1e9a:	f2 41 0f 5c d1       	subsd  %xmm9,%xmm2
    1e9f:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    1ea4:	f2 44 0f 59 cd       	mulsd  %xmm5,%xmm9
    1ea9:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    1ead:	f2 0f 59 ce          	mulsd  %xmm6,%xmm1
    1eb1:	f2 45 0f 5c ca       	subsd  %xmm10,%xmm9
    1eb6:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1eba:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    1ebf:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1ec3:	f2 42 0f 11 14 02    	movsd  %xmm2,(%rdx,%r8,1)
    1ec9:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
    1ece:	49 39 c6             	cmp    %rax,%r14
    1ed1:	0f 85 29 ff ff ff    	jne    1e00 <_Z5sgatePdS_i+0x390>
    1ed7:	e9 e2 fe ff ff       	jmpq   1dbe <_Z5sgatePdS_i+0x34e>
    1edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001ee0 <_ZNKSt5ctypeIcE8do_widenEc>:
    1ee0:	89 f0                	mov    %esi,%eax
    1ee2:	c3                   	retq   

0000000000001ee3 <cmatvec_asm>:
    1ee3:	48 d1 e2             	shl    %rdx
    1ee6:	48 d1 e1             	shl    %rcx
    1ee9:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
    1eed:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
    1ef1:	f2 0f 10 07          	movsd  (%rdi),%xmm0
    1ef5:	f2 0f 10 4f 08       	movsd  0x8(%rdi),%xmm1
    1efa:	f2 0f 10 57 10       	movsd  0x10(%rdi),%xmm2
    1eff:	f2 0f 10 5f 18       	movsd  0x18(%rdi),%xmm3
    1f04:	f2 0f 10 67 20       	movsd  0x20(%rdi),%xmm4
    1f09:	f2 0f 10 6f 28       	movsd  0x28(%rdi),%xmm5
    1f0e:	f2 0f 10 77 30       	movsd  0x30(%rdi),%xmm6
    1f13:	f2 0f 10 7f 38       	movsd  0x38(%rdi),%xmm7
    1f18:	f2 45 0f 10 00       	movsd  (%r8),%xmm8
    1f1d:	f2 45 0f 10 48 08    	movsd  0x8(%r8),%xmm9
    1f23:	f2 45 0f 10 11       	movsd  (%r9),%xmm10
    1f28:	f2 45 0f 10 59 08    	movsd  0x8(%r9),%xmm11
    1f2e:	c5 3b 59 e0          	vmulsd %xmm0,%xmm8,%xmm12
    1f32:	c5 33 59 e9          	vmulsd %xmm1,%xmm9,%xmm13
    1f36:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
    1f3b:	c5 2b 59 ea          	vmulsd %xmm2,%xmm10,%xmm13
    1f3f:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1f44:	c5 23 59 eb          	vmulsd %xmm3,%xmm11,%xmm13
    1f48:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
    1f4d:	f2 45 0f 11 20       	movsd  %xmm12,(%r8)
    1f52:	c5 33 59 e0          	vmulsd %xmm0,%xmm9,%xmm12
    1f56:	c5 3b 59 e9          	vmulsd %xmm1,%xmm8,%xmm13
    1f5a:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1f5f:	c5 23 59 ea          	vmulsd %xmm2,%xmm11,%xmm13
    1f63:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1f68:	c5 2b 59 eb          	vmulsd %xmm3,%xmm10,%xmm13
    1f6c:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1f71:	f2 45 0f 11 60 08    	movsd  %xmm12,0x8(%r8)
    1f77:	c5 3b 59 e0          	vmulsd %xmm0,%xmm8,%xmm12
    1f7b:	c5 33 59 e9          	vmulsd %xmm1,%xmm9,%xmm13
    1f7f:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
    1f84:	c5 2b 59 ea          	vmulsd %xmm2,%xmm10,%xmm13
    1f88:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1f8d:	c5 23 59 eb          	vmulsd %xmm3,%xmm11,%xmm13
    1f91:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
    1f96:	f2 45 0f 11 21       	movsd  %xmm12,(%r9)
    1f9b:	c5 33 59 e0          	vmulsd %xmm0,%xmm9,%xmm12
    1f9f:	c5 3b 59 e9          	vmulsd %xmm1,%xmm8,%xmm13
    1fa3:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1fa8:	c5 23 59 ea          	vmulsd %xmm2,%xmm11,%xmm13
    1fac:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1fb1:	c5 2b 59 eb          	vmulsd %xmm3,%xmm10,%xmm13
    1fb5:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
    1fba:	f2 45 0f 11 61 08    	movsd  %xmm12,0x8(%r9)
    1fc0:	c3                   	retq   

0000000000001fc1 <cmatvec2_asm>:
    1fc1:	48 d1 e2             	shl    %rdx
    1fc4:	48 d1 e1             	shl    %rcx
    1fc7:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
    1fcb:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
    1fcf:	f2 0f 12 07          	movddup (%rdi),%xmm0
    1fd3:	f2 0f 12 4f 08       	movddup 0x8(%rdi),%xmm1
    1fd8:	f2 0f 12 57 10       	movddup 0x10(%rdi),%xmm2
    1fdd:	f2 0f 12 5f 18       	movddup 0x18(%rdi),%xmm3
    1fe2:	66 45 0f 28 00       	movapd (%r8),%xmm8
    1fe7:	66 45 0f 70 c8 4e    	pshufd $0x4e,%xmm8,%xmm9
    1fed:	66 45 0f 28 51 10    	movapd 0x10(%r9),%xmm10
    1ff3:	66 45 0f 70 da 4e    	pshufd $0x4e,%xmm10,%xmm11
    1ff9:	c5 39 59 e0          	vmulpd %xmm0,%xmm8,%xmm12
    1ffd:	c5 31 59 e9          	vmulpd %xmm1,%xmm9,%xmm13
    2001:	c4 41 19 d0 e5       	vaddsubpd %xmm13,%xmm12,%xmm12
    2006:	c5 29 59 ea          	vmulpd %xmm2,%xmm10,%xmm13
    200a:	c4 41 19 58 e5       	vaddpd %xmm13,%xmm12,%xmm12
    200f:	c5 21 59 eb          	vmulpd %xmm3,%xmm11,%xmm13
    2013:	c4 41 19 d0 e5       	vaddsubpd %xmm13,%xmm12,%xmm12
    2018:	66 45 0f 29 20       	movapd %xmm12,(%r8)
    201d:	f2 0f 12 67 20       	movddup 0x20(%rdi),%xmm4
    2022:	f2 0f 12 6f 28       	movddup 0x28(%rdi),%xmm5
    2027:	f2 0f 12 77 30       	movddup 0x30(%rdi),%xmm6
    202c:	f2 0f 12 7f 38       	movddup 0x38(%rdi),%xmm7
    2031:	c5 39 59 f4          	vmulpd %xmm4,%xmm8,%xmm14
    2035:	c5 31 59 ed          	vmulpd %xmm5,%xmm9,%xmm13
    2039:	c4 41 09 d0 f5       	vaddsubpd %xmm13,%xmm14,%xmm14
    203e:	c5 29 59 ee          	vmulpd %xmm6,%xmm10,%xmm13
    2042:	c4 41 09 58 f5       	vaddpd %xmm13,%xmm14,%xmm14
    2047:	c5 21 59 ef          	vmulpd %xmm7,%xmm11,%xmm13
    204b:	c4 41 09 d0 f5       	vaddsubpd %xmm13,%xmm14,%xmm14
    2050:	66 45 0f 29 31       	movapd %xmm14,(%r9)
    2055:	c3                   	retq   

0000000000002056 <cmatvec3_asm>:
    2056:	48 d1 e2             	shl    %rdx
    2059:	48 d1 e1             	shl    %rcx
    205c:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
    2060:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
    2064:	c5 fb 12 07          	vmovddup (%rdi),%xmm0
    2068:	c5 fb 12 4f 08       	vmovddup 0x8(%rdi),%xmm1
    206d:	c5 fb 12 57 10       	vmovddup 0x10(%rdi),%xmm2
    2072:	c5 fb 12 5f 18       	vmovddup 0x18(%rdi),%xmm3
    2077:	c4 e3 7d 18 47 20 01 	vinsertf128 $0x1,0x20(%rdi),%ymm0,%ymm0
    207e:	c4 e3 75 18 4f 28 01 	vinsertf128 $0x1,0x28(%rdi),%ymm1,%ymm1
    2085:	c4 e3 6d 18 57 30 01 	vinsertf128 $0x1,0x30(%rdi),%ymm2,%ymm2
    208c:	c4 e3 65 18 5f 38 01 	vinsertf128 $0x1,0x38(%rdi),%ymm3,%ymm3
    2093:	c4 41 79 28 00       	vmovapd (%r8),%xmm8
    2098:	c4 43 3d 06 c0 01    	vperm2f128 $0x1,%ymm8,%ymm8,%ymm8
    209e:	c4 43 7d 05 c8 05    	vpermilpd $0x5,%ymm8,%ymm9
    20a4:	c4 41 79 28 11       	vmovapd (%r9),%xmm10
    20a9:	c4 43 2d 06 d2 01    	vperm2f128 $0x1,%ymm10,%ymm10,%ymm10
    20af:	c4 43 7d 05 da 05    	vpermilpd $0x5,%ymm10,%ymm11
    20b5:	c5 3d 59 e0          	vmulpd %ymm0,%ymm8,%ymm12
    20b9:	c5 35 59 e9          	vmulpd %ymm1,%ymm9,%ymm13
    20bd:	c4 41 1d d0 e5       	vaddsubpd %ymm13,%ymm12,%ymm12
    20c2:	c5 2d 59 ea          	vmulpd %ymm2,%ymm10,%ymm13
    20c6:	c4 41 1d 58 e5       	vaddpd %ymm13,%ymm12,%ymm12
    20cb:	c5 25 59 eb          	vmulpd %ymm3,%ymm11,%ymm13
    20cf:	c4 41 1d d0 e5       	vaddsubpd %ymm13,%ymm12,%ymm12
    20d4:	c4 41 79 29 20       	vmovapd %xmm12,(%r8)
    20d9:	c4 43 1d 06 e4 01    	vperm2f128 $0x1,%ymm12,%ymm12,%ymm12
    20df:	c4 41 79 29 21       	vmovapd %xmm12,(%r9)
    20e4:	c3                   	retq   

00000000000020e5 <cmatvec1_asm>:
    20e5:	48 d1 e2             	shl    %rdx
    20e8:	48 d1 e1             	shl    %rcx
    20eb:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
    20ef:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
    20f3:	c5 fd 28 07          	vmovapd (%rdi),%ymm0
    20f7:	c5 fd 28 4f 20       	vmovapd 0x20(%rdi),%ymm1
    20fc:	c5 fd 28 57 40       	vmovapd 0x40(%rdi),%ymm2
    2101:	c5 fd 28 5f 60       	vmovapd 0x60(%rdi),%ymm3
    2106:	66 41 0f 28 08       	movapd (%r8),%xmm1
    210b:	66 0f 70 d9 4e       	pshufd $0x4e,%xmm1,%xmm3
    2110:	66 41 0f 28 29       	movapd (%r9),%xmm5
    2115:	66 0f 70 fd 4e       	pshufd $0x4e,%xmm5,%xmm7
    211a:	c3                   	retq   
    211b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002120 <__libc_csu_init>:
    2120:	41 57                	push   %r15
    2122:	41 56                	push   %r14
    2124:	49 89 d7             	mov    %rdx,%r15
    2127:	41 55                	push   %r13
    2129:	41 54                	push   %r12
    212b:	4c 8d 25 fe 0b 20 00 	lea    0x200bfe(%rip),%r12        # 202d30 <__frame_dummy_init_array_entry>
    2132:	55                   	push   %rbp
    2133:	48 8d 2d 06 0c 20 00 	lea    0x200c06(%rip),%rbp        # 202d40 <__init_array_end>
    213a:	53                   	push   %rbx
    213b:	41 89 fd             	mov    %edi,%r13d
    213e:	49 89 f6             	mov    %rsi,%r14
    2141:	4c 29 e5             	sub    %r12,%rbp
    2144:	48 83 ec 08          	sub    $0x8,%rsp
    2148:	48 c1 fd 03          	sar    $0x3,%rbp
    214c:	e8 27 e9 ff ff       	callq  a78 <_init>
    2151:	48 85 ed             	test   %rbp,%rbp
    2154:	74 20                	je     2176 <__libc_csu_init+0x56>
    2156:	31 db                	xor    %ebx,%ebx
    2158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    215f:	00 
    2160:	4c 89 fa             	mov    %r15,%rdx
    2163:	4c 89 f6             	mov    %r14,%rsi
    2166:	44 89 ef             	mov    %r13d,%edi
    2169:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    216d:	48 83 c3 01          	add    $0x1,%rbx
    2171:	48 39 dd             	cmp    %rbx,%rbp
    2174:	75 ea                	jne    2160 <__libc_csu_init+0x40>
    2176:	48 83 c4 08          	add    $0x8,%rsp
    217a:	5b                   	pop    %rbx
    217b:	5d                   	pop    %rbp
    217c:	41 5c                	pop    %r12
    217e:	41 5d                	pop    %r13
    2180:	41 5e                	pop    %r14
    2182:	41 5f                	pop    %r15
    2184:	c3                   	retq   
    2185:	90                   	nop
    2186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    218d:	00 00 00 

0000000000002190 <__libc_csu_fini>:
    2190:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002194 <_fini>:
    2194:	48 83 ec 08          	sub    $0x8,%rsp
    2198:	48 83 c4 08          	add    $0x8,%rsp
    219c:	c3                   	retq   
