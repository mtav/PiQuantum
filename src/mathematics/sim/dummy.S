
dummy.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_Z13dummy_cmatvecPKdii>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text.startup:

00000000 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59f4018 	ldr	r4, [pc, #24]	; 24 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   8:	e1a00004 	mov	r0, r4
   c:	ebfffffe 	bl	0 <_ZNSt8ios_base4InitC1Ev>
  10:	e1a00004 	mov	r0, r4
  14:	e59f200c 	ldr	r2, [pc, #12]	; 28 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
  18:	e59f100c 	ldr	r1, [pc, #12]	; 2c <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	eafffffe 	b	0 <__aeabi_atexit>
	...
