
arithmetic.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cmatvec_asm>:
   0:	48 d1 e2             	shl    %rdx
   3:	48 d1 e1             	shl    %rcx
   6:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
   a:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
   e:	f2 0f 10 07          	movsd  (%rdi),%xmm0
  12:	f2 0f 10 4f 08       	movsd  0x8(%rdi),%xmm1
  17:	f2 0f 10 57 10       	movsd  0x10(%rdi),%xmm2
  1c:	f2 0f 10 5f 18       	movsd  0x18(%rdi),%xmm3
  21:	f2 0f 10 67 20       	movsd  0x20(%rdi),%xmm4
  26:	f2 0f 10 6f 28       	movsd  0x28(%rdi),%xmm5
  2b:	f2 0f 10 77 30       	movsd  0x30(%rdi),%xmm6
  30:	f2 0f 10 7f 38       	movsd  0x38(%rdi),%xmm7
  35:	f2 45 0f 10 00       	movsd  (%r8),%xmm8
  3a:	f2 45 0f 10 48 08    	movsd  0x8(%r8),%xmm9
  40:	f2 45 0f 10 11       	movsd  (%r9),%xmm10
  45:	f2 45 0f 10 59 08    	movsd  0x8(%r9),%xmm11
  4b:	c5 3b 59 e0          	vmulsd %xmm0,%xmm8,%xmm12
  4f:	c5 33 59 e9          	vmulsd %xmm1,%xmm9,%xmm13
  53:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
  58:	c5 2b 59 ea          	vmulsd %xmm2,%xmm10,%xmm13
  5c:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  61:	c5 23 59 eb          	vmulsd %xmm3,%xmm11,%xmm13
  65:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
  6a:	f2 45 0f 11 20       	movsd  %xmm12,(%r8)
  6f:	c5 33 59 e0          	vmulsd %xmm0,%xmm9,%xmm12
  73:	c5 3b 59 e9          	vmulsd %xmm1,%xmm8,%xmm13
  77:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  7c:	c5 23 59 ea          	vmulsd %xmm2,%xmm11,%xmm13
  80:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  85:	c5 2b 59 eb          	vmulsd %xmm3,%xmm10,%xmm13
  89:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  8e:	f2 45 0f 11 60 08    	movsd  %xmm12,0x8(%r8)
  94:	c5 3b 59 e0          	vmulsd %xmm0,%xmm8,%xmm12
  98:	c5 33 59 e9          	vmulsd %xmm1,%xmm9,%xmm13
  9c:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
  a1:	c5 2b 59 ea          	vmulsd %xmm2,%xmm10,%xmm13
  a5:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  aa:	c5 23 59 eb          	vmulsd %xmm3,%xmm11,%xmm13
  ae:	c4 41 1b 5c e5       	vsubsd %xmm13,%xmm12,%xmm12
  b3:	f2 45 0f 11 21       	movsd  %xmm12,(%r9)
  b8:	c5 33 59 e0          	vmulsd %xmm0,%xmm9,%xmm12
  bc:	c5 3b 59 e9          	vmulsd %xmm1,%xmm8,%xmm13
  c0:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  c5:	c5 23 59 ea          	vmulsd %xmm2,%xmm11,%xmm13
  c9:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  ce:	c5 2b 59 eb          	vmulsd %xmm3,%xmm10,%xmm13
  d2:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  d7:	f2 45 0f 11 61 08    	movsd  %xmm12,0x8(%r9)
  dd:	c3                   	retq   

00000000000000de <cmatvec2_asm>:
  de:	48 d1 e2             	shl    %rdx
  e1:	48 d1 e1             	shl    %rcx
  e4:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
  e8:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
  ec:	f2 0f 12 07          	movddup (%rdi),%xmm0
  f0:	f2 0f 12 4f 08       	movddup 0x8(%rdi),%xmm1
  f5:	f2 0f 12 57 10       	movddup 0x10(%rdi),%xmm2
  fa:	f2 0f 12 5f 18       	movddup 0x18(%rdi),%xmm3
  ff:	66 45 0f 28 00       	movapd (%r8),%xmm8
 104:	66 45 0f 70 c8 4e    	pshufd $0x4e,%xmm8,%xmm9
 10a:	66 45 0f 28 51 10    	movapd 0x10(%r9),%xmm10
 110:	66 45 0f 70 da 4e    	pshufd $0x4e,%xmm10,%xmm11
 116:	c5 39 59 e0          	vmulpd %xmm0,%xmm8,%xmm12
 11a:	c5 31 59 e9          	vmulpd %xmm1,%xmm9,%xmm13
 11e:	c4 41 19 d0 e5       	vaddsubpd %xmm13,%xmm12,%xmm12
 123:	c5 29 59 ea          	vmulpd %xmm2,%xmm10,%xmm13
 127:	c4 41 19 58 e5       	vaddpd %xmm13,%xmm12,%xmm12
 12c:	c5 21 59 eb          	vmulpd %xmm3,%xmm11,%xmm13
 130:	c4 41 19 d0 e5       	vaddsubpd %xmm13,%xmm12,%xmm12
 135:	66 45 0f 29 20       	movapd %xmm12,(%r8)
 13a:	f2 0f 12 67 20       	movddup 0x20(%rdi),%xmm4
 13f:	f2 0f 12 6f 28       	movddup 0x28(%rdi),%xmm5
 144:	f2 0f 12 77 30       	movddup 0x30(%rdi),%xmm6
 149:	f2 0f 12 7f 38       	movddup 0x38(%rdi),%xmm7
 14e:	c5 39 59 f4          	vmulpd %xmm4,%xmm8,%xmm14
 152:	c5 31 59 ed          	vmulpd %xmm5,%xmm9,%xmm13
 156:	c4 41 09 d0 f5       	vaddsubpd %xmm13,%xmm14,%xmm14
 15b:	c5 29 59 ee          	vmulpd %xmm6,%xmm10,%xmm13
 15f:	c4 41 09 58 f5       	vaddpd %xmm13,%xmm14,%xmm14
 164:	c5 21 59 ef          	vmulpd %xmm7,%xmm11,%xmm13
 168:	c4 41 09 d0 f5       	vaddsubpd %xmm13,%xmm14,%xmm14
 16d:	66 45 0f 29 31       	movapd %xmm14,(%r9)
 172:	c3                   	retq   

0000000000000173 <cmatvec3_asm>:
 173:	48 d1 e2             	shl    %rdx
 176:	48 d1 e1             	shl    %rcx
 179:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
 17d:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
 181:	c5 fb 12 07          	vmovddup (%rdi),%xmm0
 185:	c5 fb 12 4f 08       	vmovddup 0x8(%rdi),%xmm1
 18a:	c5 fb 12 57 10       	vmovddup 0x10(%rdi),%xmm2
 18f:	c5 fb 12 5f 18       	vmovddup 0x18(%rdi),%xmm3
 194:	c4 e3 7d 18 47 20 01 	vinsertf128 $0x1,0x20(%rdi),%ymm0,%ymm0
 19b:	c4 e3 75 18 4f 28 01 	vinsertf128 $0x1,0x28(%rdi),%ymm1,%ymm1
 1a2:	c4 e3 6d 18 57 30 01 	vinsertf128 $0x1,0x30(%rdi),%ymm2,%ymm2
 1a9:	c4 e3 65 18 5f 38 01 	vinsertf128 $0x1,0x38(%rdi),%ymm3,%ymm3
 1b0:	c4 41 79 28 00       	vmovapd (%r8),%xmm8
 1b5:	c4 43 3d 06 c0 01    	vperm2f128 $0x1,%ymm8,%ymm8,%ymm8
 1bb:	c4 43 7d 05 c8 05    	vpermilpd $0x5,%ymm8,%ymm9
 1c1:	c4 41 79 28 11       	vmovapd (%r9),%xmm10
 1c6:	c4 43 2d 06 d2 01    	vperm2f128 $0x1,%ymm10,%ymm10,%ymm10
 1cc:	c4 43 7d 05 da 05    	vpermilpd $0x5,%ymm10,%ymm11
 1d2:	c5 3d 59 e0          	vmulpd %ymm0,%ymm8,%ymm12
 1d6:	c5 35 59 e9          	vmulpd %ymm1,%ymm9,%ymm13
 1da:	c4 41 1d d0 e5       	vaddsubpd %ymm13,%ymm12,%ymm12
 1df:	c5 2d 59 ea          	vmulpd %ymm2,%ymm10,%ymm13
 1e3:	c4 41 1d 58 e5       	vaddpd %ymm13,%ymm12,%ymm12
 1e8:	c5 25 59 eb          	vmulpd %ymm3,%ymm11,%ymm13
 1ec:	c4 41 1d d0 e5       	vaddsubpd %ymm13,%ymm12,%ymm12
 1f1:	c4 41 79 29 20       	vmovapd %xmm12,(%r8)
 1f6:	c4 43 1d 06 e4 01    	vperm2f128 $0x1,%ymm12,%ymm12,%ymm12
 1fc:	c4 41 79 29 21       	vmovapd %xmm12,(%r9)
 201:	c3                   	retq   

0000000000000202 <cmatvec1_asm>:
 202:	48 d1 e2             	shl    %rdx
 205:	48 d1 e1             	shl    %rcx
 208:	4c 8d 04 d6          	lea    (%rsi,%rdx,8),%r8
 20c:	4c 8d 0c ce          	lea    (%rsi,%rcx,8),%r9
 210:	c5 fd 28 07          	vmovapd (%rdi),%ymm0
 214:	c5 fd 28 4f 20       	vmovapd 0x20(%rdi),%ymm1
 219:	c5 fd 28 57 40       	vmovapd 0x40(%rdi),%ymm2
 21e:	c5 fd 28 5f 60       	vmovapd 0x60(%rdi),%ymm3
 223:	66 41 0f 28 08       	movapd (%r8),%xmm1
 228:	66 0f 70 d9 4e       	pshufd $0x4e,%xmm1,%xmm3
 22d:	66 41 0f 28 29       	movapd (%r9),%xmm5
 232:	66 0f 70 fd 4e       	pshufd $0x4e,%xmm5,%xmm7
 237:	c3                   	retq   
