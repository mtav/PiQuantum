
math_test:     file format elf32-littlearm


Disassembly of section .init:

00010918 <_init>:
   10918:	e92d4008 	push	{r3, lr}
   1091c:	eb0000fb 	bl	10d10 <call_weak_fn>
   10920:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010924 <.plt>:
   10924:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10928:	e59fe004 	ldr	lr, [pc, #4]	; 10934 <.plt+0x10>
   1092c:	e08fe00e 	add	lr, pc, lr
   10930:	e5bef008 	ldr	pc, [lr, #8]!
   10934:	000116cc 	.word	0x000116cc

00010938 <_ZNSo3putEc@plt>:
   10938:	e28fc600 	add	ip, pc, #0, 12
   1093c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10940:	e5bcf6cc 	ldr	pc, [ip, #1740]!	; 0x6cc

00010944 <__aeabi_atexit@plt>:
   10944:	e28fc600 	add	ip, pc, #0, 12
   10948:	e28cca11 	add	ip, ip, #69632	; 0x11000
   1094c:	e5bcf6c4 	ldr	pc, [ip, #1732]!	; 0x6c4

00010950 <free@plt>:
   10950:	e28fc600 	add	ip, pc, #0, 12
   10954:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10958:	e5bcf6bc 	ldr	pc, [ip, #1724]!	; 0x6bc

0001095c <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   1095c:	e28fc600 	add	ip, pc, #0, 12
   10960:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10964:	e5bcf6b4 	ldr	pc, [ip, #1716]!	; 0x6b4

00010968 <exit@plt>:
   10968:	e28fc600 	add	ip, pc, #0, 12
   1096c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10970:	e5bcf6ac 	ldr	pc, [ip, #1708]!	; 0x6ac

00010974 <putchar@plt>:
   10974:	e28fc600 	add	ip, pc, #0, 12
   10978:	e28cca11 	add	ip, ip, #69632	; 0x11000
   1097c:	e5bcf6a4 	ldr	pc, [ip, #1700]!	; 0x6a4

00010980 <_ZNSo5flushEv@plt>:
   10980:	e28fc600 	add	ip, pc, #0, 12
   10984:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10988:	e5bcf69c 	ldr	pc, [ip, #1692]!	; 0x69c

0001098c <_ZNSo9_M_insertIPKvEERSoT_@plt>:
   1098c:	e28fc600 	add	ip, pc, #0, 12
   10990:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10994:	e5bcf694 	ldr	pc, [ip, #1684]!	; 0x694

00010998 <abort@plt>:
   10998:	e28fc600 	add	ip, pc, #0, 12
   1099c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109a0:	e5bcf68c 	ldr	pc, [ip, #1676]!	; 0x68c

000109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   109a4:	e28fc600 	add	ip, pc, #0, 12
   109a8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109ac:	e5bcf684 	ldr	pc, [ip, #1668]!	; 0x684

000109b0 <__cxa_end_cleanup@plt>:
   109b0:	e28fc600 	add	ip, pc, #0, 12
   109b4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109b8:	e5bcf67c 	ldr	pc, [ip, #1660]!	; 0x67c

000109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
   109bc:	e28fc600 	add	ip, pc, #0, 12
   109c0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109c4:	e5bcf674 	ldr	pc, [ip, #1652]!	; 0x674

000109c8 <_ZSt16__throw_bad_castv@plt>:
   109c8:	e28fc600 	add	ip, pc, #0, 12
   109cc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109d0:	e5bcf66c 	ldr	pc, [ip, #1644]!	; 0x66c

000109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>:
   109d4:	e28fc600 	add	ip, pc, #0, 12
   109d8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109dc:	e5bcf664 	ldr	pc, [ip, #1636]!	; 0x664

000109e0 <malloc@plt>:
   109e0:	e28fc600 	add	ip, pc, #0, 12
   109e4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109e8:	e5bcf65c 	ldr	pc, [ip, #1628]!	; 0x65c

000109ec <_ZNSt8ios_base4InitC1Ev@plt>:
   109ec:	e28fc600 	add	ip, pc, #0, 12
   109f0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109f4:	e5bcf654 	ldr	pc, [ip, #1620]!	; 0x654

000109f8 <_ZNSo9_M_insertIdEERSoT_@plt>:
   109f8:	e28fc600 	add	ip, pc, #0, 12
   109fc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a00:	e5bcf64c 	ldr	pc, [ip, #1612]!	; 0x64c

00010a04 <__gxx_personality_v0@plt>:
   10a04:	e28fc600 	add	ip, pc, #0, 12
   10a08:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a0c:	e5bcf644 	ldr	pc, [ip, #1604]!	; 0x644

00010a10 <_ZNSolsEi@plt>:
   10a10:	e28fc600 	add	ip, pc, #0, 12
   10a14:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a18:	e5bcf63c 	ldr	pc, [ip, #1596]!	; 0x63c

00010a1c <__libc_start_main@plt>:
   10a1c:	e28fc600 	add	ip, pc, #0, 12
   10a20:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a24:	e5bcf634 	ldr	pc, [ip, #1588]!	; 0x634

00010a28 <__gmon_start__@plt>:
   10a28:	e28fc600 	add	ip, pc, #0, 12
   10a2c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a30:	e5bcf62c 	ldr	pc, [ip, #1580]!	; 0x62c

00010a34 <_ZNSt8ios_base4InitD1Ev@plt>:
   10a34:	e28fc600 	add	ip, pc, #0, 12
   10a38:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10a3c:	e5bcf624 	ldr	pc, [ip, #1572]!	; 0x624

Disassembly of section .text:

00010a40 <main>:
   10a40:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10a44:	e24dd044 	sub	sp, sp, #68	; 0x44
   10a48:	e28d0024 	add	r0, sp, #36	; 0x24
   10a4c:	e3a01014 	mov	r1, #20
   10a50:	eb0002d1 	bl	1159c <_ZN5StateC1Ei>
   10a54:	e28d0024 	add	r0, sp, #36	; 0x24
   10a58:	eb0002fc 	bl	11650 <_ZN5State5printEv>
   10a5c:	ed9f7b77 	vldr	d7, [pc, #476]	; 10c40 <main+0x200>
   10a60:	ed9f4b78 	vldr	d4, [pc, #480]	; 10c48 <main+0x208>
   10a64:	e28d0004 	add	r0, sp, #4
   10a68:	ed9f6b78 	vldr	d6, [pc, #480]	; 10c50 <main+0x210>
   10a6c:	eeb05b47 	vmov.f64	d5, d7
   10a70:	eeb03b47 	vmov.f64	d3, d7
   10a74:	eeb01b47 	vmov.f64	d1, d7
   10a78:	eeb02b44 	vmov.f64	d2, d4
   10a7c:	eeb00b44 	vmov.f64	d0, d4
   10a80:	eb0001d6 	bl	111e0 <_ZN8OperatorC1Edddddddd>
   10a84:	ed9f7b6d 	vldr	d7, [pc, #436]	; 10c40 <main+0x200>
   10a88:	ed9f4b72 	vldr	d4, [pc, #456]	; 10c58 <main+0x218>
   10a8c:	e28d000c 	add	r0, sp, #12
   10a90:	eeb06b47 	vmov.f64	d6, d7
   10a94:	eeb05b47 	vmov.f64	d5, d7
   10a98:	eeb03b47 	vmov.f64	d3, d7
   10a9c:	eeb01b47 	vmov.f64	d1, d7
   10aa0:	eeb00b47 	vmov.f64	d0, d7
   10aa4:	eeb02b44 	vmov.f64	d2, d4
   10aa8:	eb0001cc 	bl	111e0 <_ZN8OperatorC1Edddddddd>
   10aac:	ed9f7b63 	vldr	d7, [pc, #396]	; 10c40 <main+0x200>
   10ab0:	e28d0014 	add	r0, sp, #20
   10ab4:	ed9f5b67 	vldr	d5, [pc, #412]	; 10c58 <main+0x218>
   10ab8:	ed9f3b68 	vldr	d3, [pc, #416]	; 10c60 <main+0x220>
   10abc:	eeb06b47 	vmov.f64	d6, d7
   10ac0:	eeb04b47 	vmov.f64	d4, d7
   10ac4:	eeb02b47 	vmov.f64	d2, d7
   10ac8:	eeb01b47 	vmov.f64	d1, d7
   10acc:	eeb00b47 	vmov.f64	d0, d7
   10ad0:	eb0001c2 	bl	111e0 <_ZN8OperatorC1Edddddddd>
   10ad4:	ed9f7b59 	vldr	d7, [pc, #356]	; 10c40 <main+0x200>
   10ad8:	e28d001c 	add	r0, sp, #28
   10adc:	ed9f6b5f 	vldr	d6, [pc, #380]	; 10c60 <main+0x220>
   10ae0:	ed9f0b5c 	vldr	d0, [pc, #368]	; 10c58 <main+0x218>
   10ae4:	eeb05b47 	vmov.f64	d5, d7
   10ae8:	eeb04b47 	vmov.f64	d4, d7
   10aec:	eeb03b47 	vmov.f64	d3, d7
   10af0:	eeb02b47 	vmov.f64	d2, d7
   10af4:	eeb01b47 	vmov.f64	d1, d7
   10af8:	eb0001b8 	bl	111e0 <_ZN8OperatorC1Edddddddd>
   10afc:	e59f9164 	ldr	r9, [pc, #356]	; 10c68 <main+0x228>
   10b00:	e59f7164 	ldr	r7, [pc, #356]	; 10c6c <main+0x22c>
   10b04:	e59fa164 	ldr	sl, [pc, #356]	; 10c70 <main+0x230>
   10b08:	e3a0b014 	mov	fp, #20
   10b0c:	e3a0800a 	mov	r8, #10
   10b10:	e3a04000 	mov	r4, #0
   10b14:	ea000006 	b	10b34 <main+0xf4>
   10b18:	e5d51027 	ldrb	r1, [r5, #39]	; 0x27
   10b1c:	e1a00006 	mov	r0, r6
   10b20:	ebffff84 	bl	10938 <_ZNSo3putEc@plt>
   10b24:	ebffff95 	bl	10980 <_ZNSo5flushEv@plt>
   10b28:	e2844001 	add	r4, r4, #1
   10b2c:	e3540014 	cmp	r4, #20
   10b30:	0a000020 	beq	10bb8 <main+0x178>
   10b34:	e1a02004 	mov	r2, r4
   10b38:	e28d100c 	add	r1, sp, #12
   10b3c:	e28d0024 	add	r0, sp, #36	; 0x24
   10b40:	eb000306 	bl	11760 <_ZN5State5sgateERK8Operatori>
   10b44:	e1a02008 	mov	r2, r8
   10b48:	e1a01009 	mov	r1, r9
   10b4c:	e1a00007 	mov	r0, r7
   10b50:	ebffff9f 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10b54:	e1a01004 	mov	r1, r4
   10b58:	e1a00007 	mov	r0, r7
   10b5c:	ebffffab 	bl	10a10 <_ZNSolsEi@plt>
   10b60:	e5903000 	ldr	r3, [r0]
   10b64:	e1a06000 	mov	r6, r0
   10b68:	e513300c 	ldr	r3, [r3, #-12]
   10b6c:	e0803003 	add	r3, r0, r3
   10b70:	e593507c 	ldr	r5, [r3, #124]	; 0x7c
   10b74:	e3550000 	cmp	r5, #0
   10b78:	0a00001f 	beq	10bfc <main+0x1bc>
   10b7c:	e5d5301c 	ldrb	r3, [r5, #28]
   10b80:	e3530000 	cmp	r3, #0
   10b84:	1affffe3 	bne	10b18 <main+0xd8>
   10b88:	e1a00005 	mov	r0, r5
   10b8c:	ebffff8a 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10b90:	e5953000 	ldr	r3, [r5]
   10b94:	e5933018 	ldr	r3, [r3, #24]
   10b98:	e153000a 	cmp	r3, sl
   10b9c:	01a01008 	moveq	r1, r8
   10ba0:	0affffdd 	beq	10b1c <main+0xdc>
   10ba4:	e1a00005 	mov	r0, r5
   10ba8:	e1a01008 	mov	r1, r8
   10bac:	e12fff33 	blx	r3
   10bb0:	e1a01000 	mov	r1, r0
   10bb4:	eaffffd8 	b	10b1c <main+0xdc>
   10bb8:	e25bb001 	subs	fp, fp, #1
   10bbc:	1affffd3 	bne	10b10 <main+0xd0>
   10bc0:	e28d0024 	add	r0, sp, #36	; 0x24
   10bc4:	eb0002a1 	bl	11650 <_ZN5State5printEv>
   10bc8:	e28d001c 	add	r0, sp, #28
   10bcc:	eb00019d 	bl	11248 <_ZN8OperatorD1Ev>
   10bd0:	e28d0014 	add	r0, sp, #20
   10bd4:	eb00019b 	bl	11248 <_ZN8OperatorD1Ev>
   10bd8:	e28d000c 	add	r0, sp, #12
   10bdc:	eb000199 	bl	11248 <_ZN8OperatorD1Ev>
   10be0:	e28d0004 	add	r0, sp, #4
   10be4:	eb000197 	bl	11248 <_ZN8OperatorD1Ev>
   10be8:	e28d0024 	add	r0, sp, #36	; 0x24
   10bec:	eb00028d 	bl	11628 <_ZN5StateD1Ev>
   10bf0:	e3a00000 	mov	r0, #0
   10bf4:	e28dd044 	add	sp, sp, #68	; 0x44
   10bf8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10bfc:	ebffff71 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   10c00:	e28d001c 	add	r0, sp, #28
   10c04:	eb00018f 	bl	11248 <_ZN8OperatorD1Ev>
   10c08:	e28d0014 	add	r0, sp, #20
   10c0c:	eb00018d 	bl	11248 <_ZN8OperatorD1Ev>
   10c10:	e28d000c 	add	r0, sp, #12
   10c14:	eb00018b 	bl	11248 <_ZN8OperatorD1Ev>
   10c18:	e28d0004 	add	r0, sp, #4
   10c1c:	eb000189 	bl	11248 <_ZN8OperatorD1Ev>
   10c20:	e28d0024 	add	r0, sp, #36	; 0x24
   10c24:	eb00027f 	bl	11628 <_ZN5StateD1Ev>
   10c28:	ebffff60 	bl	109b0 <__cxa_end_cleanup@plt>
   10c2c:	eafffff7 	b	10c10 <main+0x1d0>
   10c30:	eafffff4 	b	10c08 <main+0x1c8>
   10c34:	eafffff7 	b	10c18 <main+0x1d8>
   10c38:	eafffff8 	b	10c20 <main+0x1e0>
   10c3c:	e1a00000 	nop			; (mov r0, r0)
	...
   10c48:	667f3bcc 	.word	0x667f3bcc
   10c4c:	3fe6a09e 	.word	0x3fe6a09e
   10c50:	667f3bcc 	.word	0x667f3bcc
   10c54:	bfe6a09e 	.word	0xbfe6a09e
   10c58:	00000000 	.word	0x00000000
   10c5c:	3ff00000 	.word	0x3ff00000
   10c60:	00000000 	.word	0x00000000
   10c64:	bff00000 	.word	0xbff00000
   10c68:	00011a20 	.word	0x00011a20
   10c6c:	00022070 	.word	0x00022070
   10c70:	00010dfc 	.word	0x00010dfc

00010c74 <_GLOBAL__sub_I_main>:
   10c74:	e92d4010 	push	{r4, lr}
   10c78:	e59f4018 	ldr	r4, [pc, #24]	; 10c98 <_GLOBAL__sub_I_main+0x24>
   10c7c:	e1a00004 	mov	r0, r4
   10c80:	ebffff59 	bl	109ec <_ZNSt8ios_base4InitC1Ev@plt>
   10c84:	e1a00004 	mov	r0, r4
   10c88:	e59f200c 	ldr	r2, [pc, #12]	; 10c9c <_GLOBAL__sub_I_main+0x28>
   10c8c:	e59f100c 	ldr	r1, [pc, #12]	; 10ca0 <_GLOBAL__sub_I_main+0x2c>
   10c90:	e8bd4010 	pop	{r4, lr}
   10c94:	eaffff2a 	b	10944 <__aeabi_atexit@plt>
   10c98:	00022190 	.word	0x00022190
   10c9c:	0002206c 	.word	0x0002206c
   10ca0:	00010a34 	.word	0x00010a34

00010ca4 <_GLOBAL__sub_I__Z6printcPd>:
   10ca4:	e92d4010 	push	{r4, lr}
   10ca8:	e59f4018 	ldr	r4, [pc, #24]	; 10cc8 <_GLOBAL__sub_I__Z6printcPd+0x24>
   10cac:	e1a00004 	mov	r0, r4
   10cb0:	ebffff4d 	bl	109ec <_ZNSt8ios_base4InitC1Ev@plt>
   10cb4:	e1a00004 	mov	r0, r4
   10cb8:	e59f200c 	ldr	r2, [pc, #12]	; 10ccc <_GLOBAL__sub_I__Z6printcPd+0x28>
   10cbc:	e59f100c 	ldr	r1, [pc, #12]	; 10cd0 <_GLOBAL__sub_I__Z6printcPd+0x2c>
   10cc0:	e8bd4010 	pop	{r4, lr}
   10cc4:	eaffff1e 	b	10944 <__aeabi_atexit@plt>
   10cc8:	00022194 	.word	0x00022194
   10ccc:	0002206c 	.word	0x0002206c
   10cd0:	00010a34 	.word	0x00010a34

00010cd4 <_start>:
   10cd4:	e3a0b000 	mov	fp, #0
   10cd8:	e3a0e000 	mov	lr, #0
   10cdc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10ce0:	e1a0200d 	mov	r2, sp
   10ce4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10ce8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10cec:	e59fc010 	ldr	ip, [pc, #16]	; 10d04 <_start+0x30>
   10cf0:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10cf4:	e59f000c 	ldr	r0, [pc, #12]	; 10d08 <_start+0x34>
   10cf8:	e59f300c 	ldr	r3, [pc, #12]	; 10d0c <_start+0x38>
   10cfc:	ebffff46 	bl	10a1c <__libc_start_main@plt>
   10d00:	ebffff24 	bl	10998 <abort@plt>
   10d04:	00011a10 	.word	0x00011a10
   10d08:	00010a40 	.word	0x00010a40
   10d0c:	000119b0 	.word	0x000119b0

00010d10 <call_weak_fn>:
   10d10:	e59f3014 	ldr	r3, [pc, #20]	; 10d2c <call_weak_fn+0x1c>
   10d14:	e59f2014 	ldr	r2, [pc, #20]	; 10d30 <call_weak_fn+0x20>
   10d18:	e08f3003 	add	r3, pc, r3
   10d1c:	e7932002 	ldr	r2, [r3, r2]
   10d20:	e3520000 	cmp	r2, #0
   10d24:	012fff1e 	bxeq	lr
   10d28:	eaffff3e 	b	10a28 <__gmon_start__@plt>
   10d2c:	000112e0 	.word	0x000112e0
   10d30:	00000064 	.word	0x00000064

00010d34 <deregister_tm_clones>:
   10d34:	e59f301c 	ldr	r3, [pc, #28]	; 10d58 <deregister_tm_clones+0x24>
   10d38:	e59f001c 	ldr	r0, [pc, #28]	; 10d5c <deregister_tm_clones+0x28>
   10d3c:	e0433000 	sub	r3, r3, r0
   10d40:	e3530006 	cmp	r3, #6
   10d44:	912fff1e 	bxls	lr
   10d48:	e59f3010 	ldr	r3, [pc, #16]	; 10d60 <deregister_tm_clones+0x2c>
   10d4c:	e3530000 	cmp	r3, #0
   10d50:	012fff1e 	bxeq	lr
   10d54:	e12fff13 	bx	r3
   10d58:	00022073 	.word	0x00022073
   10d5c:	00022070 	.word	0x00022070
   10d60:	00000000 	.word	0x00000000

00010d64 <register_tm_clones>:
   10d64:	e59f1024 	ldr	r1, [pc, #36]	; 10d90 <register_tm_clones+0x2c>
   10d68:	e59f0024 	ldr	r0, [pc, #36]	; 10d94 <register_tm_clones+0x30>
   10d6c:	e0411000 	sub	r1, r1, r0
   10d70:	e1a01141 	asr	r1, r1, #2
   10d74:	e0811fa1 	add	r1, r1, r1, lsr #31
   10d78:	e1b010c1 	asrs	r1, r1, #1
   10d7c:	012fff1e 	bxeq	lr
   10d80:	e59f3010 	ldr	r3, [pc, #16]	; 10d98 <register_tm_clones+0x34>
   10d84:	e3530000 	cmp	r3, #0
   10d88:	012fff1e 	bxeq	lr
   10d8c:	e12fff13 	bx	r3
   10d90:	00022070 	.word	0x00022070
   10d94:	00022070 	.word	0x00022070
   10d98:	00000000 	.word	0x00000000

00010d9c <__do_global_dtors_aux>:
   10d9c:	e92d4010 	push	{r4, lr}
   10da0:	e59f4018 	ldr	r4, [pc, #24]	; 10dc0 <__do_global_dtors_aux+0x24>
   10da4:	e5d43000 	ldrb	r3, [r4]
   10da8:	e3530000 	cmp	r3, #0
   10dac:	18bd8010 	popne	{r4, pc}
   10db0:	ebffffdf 	bl	10d34 <deregister_tm_clones>
   10db4:	e3a03001 	mov	r3, #1
   10db8:	e5c43000 	strb	r3, [r4]
   10dbc:	e8bd8010 	pop	{r4, pc}
   10dc0:	0002218c 	.word	0x0002218c

00010dc4 <frame_dummy>:
   10dc4:	e59f0028 	ldr	r0, [pc, #40]	; 10df4 <frame_dummy+0x30>
   10dc8:	e5903000 	ldr	r3, [r0]
   10dcc:	e3530000 	cmp	r3, #0
   10dd0:	1a000000 	bne	10dd8 <frame_dummy+0x14>
   10dd4:	eaffffe2 	b	10d64 <register_tm_clones>
   10dd8:	e59f3018 	ldr	r3, [pc, #24]	; 10df8 <frame_dummy+0x34>
   10ddc:	e3530000 	cmp	r3, #0
   10de0:	0afffffb 	beq	10dd4 <frame_dummy+0x10>
   10de4:	e92d4010 	push	{r4, lr}
   10de8:	e12fff33 	blx	r3
   10dec:	e8bd4010 	pop	{r4, lr}
   10df0:	eaffffdb 	b	10d64 <register_tm_clones>
   10df4:	00021efc 	.word	0x00021efc
   10df8:	00000000 	.word	0x00000000

00010dfc <_ZNKSt5ctypeIcE8do_widenEc>:
   10dfc:	e1a00001 	mov	r0, r1
   10e00:	e12fff1e 	bx	lr
   10e04:	00000000 	andeq	r0, r0, r0

00010e08 <_Z6printcPd>:
   10e08:	e92d4070 	push	{r4, r5, r6, lr}
   10e0c:	e1a04000 	mov	r4, r0
   10e10:	e59f5044 	ldr	r5, [pc, #68]	; 10e5c <_Z6printcPd+0x54>
   10e14:	e3a02001 	mov	r2, #1
   10e18:	e59f1040 	ldr	r1, [pc, #64]	; 10e60 <_Z6printcPd+0x58>
   10e1c:	e1a00005 	mov	r0, r5
   10e20:	ebfffeeb 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10e24:	ed940b00 	vldr	d0, [r4]
   10e28:	e1a00005 	mov	r0, r5
   10e2c:	ebfffef1 	bl	109f8 <_ZNSo9_M_insertIdEERSoT_@plt>
   10e30:	e3a02002 	mov	r2, #2
   10e34:	e59f1028 	ldr	r1, [pc, #40]	; 10e64 <_Z6printcPd+0x5c>
   10e38:	e1a05000 	mov	r5, r0
   10e3c:	ebfffee4 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10e40:	e1a00005 	mov	r0, r5
   10e44:	ed940b02 	vldr	d0, [r4, #8]
   10e48:	ebfffeea 	bl	109f8 <_ZNSo9_M_insertIdEERSoT_@plt>
   10e4c:	e3a02001 	mov	r2, #1
   10e50:	e59f1010 	ldr	r1, [pc, #16]	; 10e68 <_Z6printcPd+0x60>
   10e54:	e8bd4070 	pop	{r4, r5, r6, lr}
   10e58:	eafffedd 	b	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10e5c:	00022070 	.word	0x00022070
   10e60:	00011a2c 	.word	0x00011a2c
   10e64:	00011a30 	.word	0x00011a30
   10e68:	00011a34 	.word	0x00011a34

00010e6c <_Z6printmPd>:
   10e6c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10e70:	e1a04000 	mov	r4, r0
   10e74:	e59f5110 	ldr	r5, [pc, #272]	; 10f8c <_Z6printmPd+0x120>
   10e78:	e59fb110 	ldr	fp, [pc, #272]	; 10f90 <_Z6printmPd+0x124>
   10e7c:	e2809040 	add	r9, r0, #64	; 0x40
   10e80:	e1a08005 	mov	r8, r5
   10e84:	e3a07020 	mov	r7, #32
   10e88:	e3a0a00a 	mov	sl, #10
   10e8c:	e1a00004 	mov	r0, r4
   10e90:	ebffffdc 	bl	10e08 <_Z6printcPd>
   10e94:	e1a00007 	mov	r0, r7
   10e98:	ebfffeb5 	bl	10974 <putchar@plt>
   10e9c:	e2840010 	add	r0, r4, #16
   10ea0:	ebffffd8 	bl	10e08 <_Z6printcPd>
   10ea4:	e1a00007 	mov	r0, r7
   10ea8:	ebfffeb1 	bl	10974 <putchar@plt>
   10eac:	e5953000 	ldr	r3, [r5]
   10eb0:	e513300c 	ldr	r3, [r3, #-12]
   10eb4:	e0853003 	add	r3, r5, r3
   10eb8:	e593607c 	ldr	r6, [r3, #124]	; 0x7c
   10ebc:	e3560000 	cmp	r6, #0
   10ec0:	0a000030 	beq	10f88 <_Z6printmPd+0x11c>
   10ec4:	e5d6301c 	ldrb	r3, [r6, #28]
   10ec8:	e3530000 	cmp	r3, #0
   10ecc:	0a000014 	beq	10f24 <_Z6printmPd+0xb8>
   10ed0:	e5d61027 	ldrb	r1, [r6, #39]	; 0x27
   10ed4:	e1a00008 	mov	r0, r8
   10ed8:	ebfffe96 	bl	10938 <_ZNSo3putEc@plt>
   10edc:	e2844020 	add	r4, r4, #32
   10ee0:	ebfffea6 	bl	10980 <_ZNSo5flushEv@plt>
   10ee4:	e1590004 	cmp	r9, r4
   10ee8:	1affffe7 	bne	10e8c <_Z6printmPd+0x20>
   10eec:	e5953000 	ldr	r3, [r5]
   10ef0:	e513300c 	ldr	r3, [r3, #-12]
   10ef4:	e0855003 	add	r5, r5, r3
   10ef8:	e595407c 	ldr	r4, [r5, #124]	; 0x7c
   10efc:	e3540000 	cmp	r4, #0
   10f00:	0a000020 	beq	10f88 <_Z6printmPd+0x11c>
   10f04:	e5d4301c 	ldrb	r3, [r4, #28]
   10f08:	e3530000 	cmp	r3, #0
   10f0c:	0a000010 	beq	10f54 <_Z6printmPd+0xe8>
   10f10:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   10f14:	e59f0070 	ldr	r0, [pc, #112]	; 10f8c <_Z6printmPd+0x120>
   10f18:	ebfffe86 	bl	10938 <_ZNSo3putEc@plt>
   10f1c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10f20:	eafffe96 	b	10980 <_ZNSo5flushEv@plt>
   10f24:	e1a00006 	mov	r0, r6
   10f28:	ebfffea3 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10f2c:	e5963000 	ldr	r3, [r6]
   10f30:	e5933018 	ldr	r3, [r3, #24]
   10f34:	e153000b 	cmp	r3, fp
   10f38:	01a0100a 	moveq	r1, sl
   10f3c:	0affffe4 	beq	10ed4 <_Z6printmPd+0x68>
   10f40:	e1a0100a 	mov	r1, sl
   10f44:	e1a00006 	mov	r0, r6
   10f48:	e12fff33 	blx	r3
   10f4c:	e1a01000 	mov	r1, r0
   10f50:	eaffffdf 	b	10ed4 <_Z6printmPd+0x68>
   10f54:	e1a00004 	mov	r0, r4
   10f58:	ebfffe97 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10f5c:	e5943000 	ldr	r3, [r4]
   10f60:	e59f2028 	ldr	r2, [pc, #40]	; 10f90 <_Z6printmPd+0x124>
   10f64:	e5933018 	ldr	r3, [r3, #24]
   10f68:	e1530002 	cmp	r3, r2
   10f6c:	03a0100a 	moveq	r1, #10
   10f70:	0affffe7 	beq	10f14 <_Z6printmPd+0xa8>
   10f74:	e3a0100a 	mov	r1, #10
   10f78:	e1a00004 	mov	r0, r4
   10f7c:	e12fff33 	blx	r3
   10f80:	e1a01000 	mov	r1, r0
   10f84:	eaffffe2 	b	10f14 <_Z6printmPd+0xa8>
   10f88:	ebfffe8e 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   10f8c:	00022070 	.word	0x00022070
   10f90:	00010dfc 	.word	0x00010dfc

00010f94 <_Z4caddPKdS0_Pd>:
   10f94:	ed916b00 	vldr	d6, [r1]
   10f98:	ed907b00 	vldr	d7, [r0]
   10f9c:	ee377b06 	vadd.f64	d7, d7, d6
   10fa0:	ed827b00 	vstr	d7, [r2]
   10fa4:	ed907b02 	vldr	d7, [r0, #8]
   10fa8:	ed916b02 	vldr	d6, [r1, #8]
   10fac:	ee377b06 	vadd.f64	d7, d7, d6
   10fb0:	ed827b02 	vstr	d7, [r2, #8]
   10fb4:	e12fff1e 	bx	lr

00010fb8 <_Z4cmulPKdS0_Pd>:
   10fb8:	ed914b02 	vldr	d4, [r1, #8]
   10fbc:	ed907b02 	vldr	d7, [r0, #8]
   10fc0:	ed905b00 	vldr	d5, [r0]
   10fc4:	ed916b00 	vldr	d6, [r1]
   10fc8:	ee277b04 	vmul.f64	d7, d7, d4
   10fcc:	ee157b06 	vnmls.f64	d7, d5, d6
   10fd0:	ed827b00 	vstr	d7, [r2]
   10fd4:	ed907b00 	vldr	d7, [r0]
   10fd8:	ed914b02 	vldr	d4, [r1, #8]
   10fdc:	ed905b02 	vldr	d5, [r0, #8]
   10fe0:	ed916b00 	vldr	d6, [r1]
   10fe4:	ee277b04 	vmul.f64	d7, d7, d4
   10fe8:	ee057b06 	vmla.f64	d7, d5, d6
   10fec:	ed827b02 	vstr	d7, [r2, #8]
   10ff0:	e12fff1e 	bx	lr

00010ff4 <_Z7cmatmulPKdS0_Pd>:
   10ff4:	ed900b02 	vldr	d0, [r0, #8]
   10ff8:	ed901b04 	vldr	d1, [r0, #16]
   10ffc:	ed903b06 	vldr	d3, [r0, #24]
   11000:	ed915b02 	vldr	d5, [r1, #8]
   11004:	ed917b0a 	vldr	d7, [r1, #40]	; 0x28
   11008:	ed2d8b04 	vpush	{d8-d9}
   1100c:	ed909b00 	vldr	d9, [r0]
   11010:	ee204b05 	vmul.f64	d4, d0, d5
   11014:	ed918b00 	vldr	d8, [r1]
   11018:	ee236b07 	vmul.f64	d6, d3, d7
   1101c:	ed912b08 	vldr	d2, [r1, #32]
   11020:	ee295b05 	vmul.f64	d5, d9, d5
   11024:	ee217b07 	vmul.f64	d7, d1, d7
   11028:	ee194b08 	vnmls.f64	d4, d9, d8
   1102c:	ee116b02 	vnmls.f64	d6, d1, d2
   11030:	ee085b00 	vmla.f64	d5, d8, d0
   11034:	ee027b03 	vmla.f64	d7, d2, d3
   11038:	ee366b04 	vadd.f64	d6, d6, d4
   1103c:	ee377b05 	vadd.f64	d7, d7, d5
   11040:	ed826b00 	vstr	d6, [r2]
   11044:	ed827b02 	vstr	d7, [r2, #8]
   11048:	ed909b00 	vldr	d9, [r0]
   1104c:	ed900b02 	vldr	d0, [r0, #8]
   11050:	ed901b04 	vldr	d1, [r0, #16]
   11054:	ed903b06 	vldr	d3, [r0, #24]
   11058:	ed915b06 	vldr	d5, [r1, #24]
   1105c:	ed917b0e 	vldr	d7, [r1, #56]	; 0x38
   11060:	ed918b04 	vldr	d8, [r1, #16]
   11064:	ed912b0c 	vldr	d2, [r1, #48]	; 0x30
   11068:	ee204b05 	vmul.f64	d4, d0, d5
   1106c:	ee236b07 	vmul.f64	d6, d3, d7
   11070:	ee295b05 	vmul.f64	d5, d9, d5
   11074:	ee217b07 	vmul.f64	d7, d1, d7
   11078:	ee194b08 	vnmls.f64	d4, d9, d8
   1107c:	ee116b02 	vnmls.f64	d6, d1, d2
   11080:	ee085b00 	vmla.f64	d5, d8, d0
   11084:	ee027b03 	vmla.f64	d7, d2, d3
   11088:	ee366b04 	vadd.f64	d6, d6, d4
   1108c:	ee377b05 	vadd.f64	d7, d7, d5
   11090:	ed826b04 	vstr	d6, [r2, #16]
   11094:	ed827b06 	vstr	d7, [r2, #24]
   11098:	ed909b08 	vldr	d9, [r0, #32]
   1109c:	ed900b0a 	vldr	d0, [r0, #40]	; 0x28
   110a0:	ed901b0c 	vldr	d1, [r0, #48]	; 0x30
   110a4:	ed903b0e 	vldr	d3, [r0, #56]	; 0x38
   110a8:	ed915b02 	vldr	d5, [r1, #8]
   110ac:	ed917b0a 	vldr	d7, [r1, #40]	; 0x28
   110b0:	ed912b08 	vldr	d2, [r1, #32]
   110b4:	ed918b00 	vldr	d8, [r1]
   110b8:	ee204b05 	vmul.f64	d4, d0, d5
   110bc:	ee236b07 	vmul.f64	d6, d3, d7
   110c0:	ee295b05 	vmul.f64	d5, d9, d5
   110c4:	ee217b07 	vmul.f64	d7, d1, d7
   110c8:	ee194b08 	vnmls.f64	d4, d9, d8
   110cc:	ee116b02 	vnmls.f64	d6, d1, d2
   110d0:	ee085b00 	vmla.f64	d5, d8, d0
   110d4:	ee027b03 	vmla.f64	d7, d2, d3
   110d8:	ee366b04 	vadd.f64	d6, d6, d4
   110dc:	ee377b05 	vadd.f64	d7, d7, d5
   110e0:	ed826b08 	vstr	d6, [r2, #32]
   110e4:	ed827b0a 	vstr	d7, [r2, #40]	; 0x28
   110e8:	ed909b08 	vldr	d9, [r0, #32]
   110ec:	ed918b04 	vldr	d8, [r1, #16]
   110f0:	ed900b0a 	vldr	d0, [r0, #40]	; 0x28
   110f4:	ed915b06 	vldr	d5, [r1, #24]
   110f8:	ed901b0c 	vldr	d1, [r0, #48]	; 0x30
   110fc:	ed903b0e 	vldr	d3, [r0, #56]	; 0x38
   11100:	ed917b0e 	vldr	d7, [r1, #56]	; 0x38
   11104:	ee204b05 	vmul.f64	d4, d0, d5
   11108:	ed912b0c 	vldr	d2, [r1, #48]	; 0x30
   1110c:	ee295b05 	vmul.f64	d5, d9, d5
   11110:	ee236b07 	vmul.f64	d6, d3, d7
   11114:	ee217b07 	vmul.f64	d7, d1, d7
   11118:	ee194b08 	vnmls.f64	d4, d9, d8
   1111c:	ee085b00 	vmla.f64	d5, d8, d0
   11120:	ecbd8b04 	vpop	{d8-d9}
   11124:	ee116b02 	vnmls.f64	d6, d1, d2
   11128:	ee027b03 	vmla.f64	d7, d2, d3
   1112c:	ee366b04 	vadd.f64	d6, d6, d4
   11130:	ee377b05 	vadd.f64	d7, d7, d5
   11134:	ed826b0c 	vstr	d6, [r2, #48]	; 0x30
   11138:	ed827b0e 	vstr	d7, [r2, #56]	; 0x38
   1113c:	e12fff1e 	bx	lr

00011140 <_ZN8Operator11malloc_gateEi>:
   11140:	e1a01181 	lsl	r1, r1, #3
   11144:	e92d4010 	push	{r4, lr}
   11148:	e1a04000 	mov	r4, r0
   1114c:	e281001f 	add	r0, r1, #31
   11150:	ebfffe22 	bl	109e0 <malloc@plt>
   11154:	e3500000 	cmp	r0, #0
   11158:	e5840004 	str	r0, [r4, #4]
   1115c:	0a000002 	beq	1116c <_ZN8Operator11malloc_gateEi+0x2c>
   11160:	e280001f 	add	r0, r0, #31
   11164:	e3c0001f 	bic	r0, r0, #31
   11168:	e8bd8010 	pop	{r4, pc}
   1116c:	e59f100c 	ldr	r1, [pc, #12]	; 11180 <_ZN8Operator11malloc_gateEi+0x40>
   11170:	e59f000c 	ldr	r0, [pc, #12]	; 11184 <_ZN8Operator11malloc_gateEi+0x44>
   11174:	ebfffe0a 	bl	109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11178:	e3a00001 	mov	r0, #1
   1117c:	ebfffdf9 	bl	10968 <exit@plt>
   11180:	00011a38 	.word	0x00011a38
   11184:	00022100 	.word	0x00022100

00011188 <_ZN8Operator9make_gateEdddddddd>:
   11188:	e92d4010 	push	{r4, lr}
   1118c:	e3a01008 	mov	r1, #8
   11190:	ed2d8b10 	vpush	{d8-d15}
   11194:	eeb0db40 	vmov.f64	d13, d0
   11198:	eeb0cb41 	vmov.f64	d12, d1
   1119c:	eeb0eb42 	vmov.f64	d14, d2
   111a0:	eeb0bb43 	vmov.f64	d11, d3
   111a4:	eeb0ab44 	vmov.f64	d10, d4
   111a8:	eeb0fb45 	vmov.f64	d15, d5
   111ac:	eeb09b46 	vmov.f64	d9, d6
   111b0:	eeb08b47 	vmov.f64	d8, d7
   111b4:	ebffffe1 	bl	11140 <_ZN8Operator11malloc_gateEi>
   111b8:	ed80db00 	vstr	d13, [r0]
   111bc:	ed80cb02 	vstr	d12, [r0, #8]
   111c0:	ed80eb04 	vstr	d14, [r0, #16]
   111c4:	ed80bb06 	vstr	d11, [r0, #24]
   111c8:	ed80ab08 	vstr	d10, [r0, #32]
   111cc:	ed80fb0a 	vstr	d15, [r0, #40]	; 0x28
   111d0:	ed809b0c 	vstr	d9, [r0, #48]	; 0x30
   111d4:	ed808b0e 	vstr	d8, [r0, #56]	; 0x38
   111d8:	ecbd8b10 	vpop	{d8-d15}
   111dc:	e8bd8010 	pop	{r4, pc}

000111e0 <_ZN8OperatorC1Edddddddd>:
   111e0:	e92d4010 	push	{r4, lr}
   111e4:	e3a01008 	mov	r1, #8
   111e8:	ed2d8b10 	vpush	{d8-d15}
   111ec:	e1a04000 	mov	r4, r0
   111f0:	eeb0db40 	vmov.f64	d13, d0
   111f4:	eeb0cb41 	vmov.f64	d12, d1
   111f8:	eeb0eb42 	vmov.f64	d14, d2
   111fc:	eeb0bb43 	vmov.f64	d11, d3
   11200:	eeb0ab44 	vmov.f64	d10, d4
   11204:	eeb0fb45 	vmov.f64	d15, d5
   11208:	eeb09b46 	vmov.f64	d9, d6
   1120c:	eeb08b47 	vmov.f64	d8, d7
   11210:	ebffffca 	bl	11140 <_ZN8Operator11malloc_gateEi>
   11214:	e1a03000 	mov	r3, r0
   11218:	e1a00004 	mov	r0, r4
   1121c:	ed83db00 	vstr	d13, [r3]
   11220:	ed83cb02 	vstr	d12, [r3, #8]
   11224:	ed83eb04 	vstr	d14, [r3, #16]
   11228:	ed83bb06 	vstr	d11, [r3, #24]
   1122c:	ed83ab08 	vstr	d10, [r3, #32]
   11230:	ed83fb0a 	vstr	d15, [r3, #40]	; 0x28
   11234:	ed839b0c 	vstr	d9, [r3, #48]	; 0x30
   11238:	ed838b0e 	vstr	d8, [r3, #56]	; 0x38
   1123c:	ecbd8b10 	vpop	{d8-d15}
   11240:	e5843000 	str	r3, [r4]
   11244:	e8bd8010 	pop	{r4, pc}

00011248 <_ZN8OperatorD1Ev>:
   11248:	e92d4010 	push	{r4, lr}
   1124c:	e1a04000 	mov	r4, r0
   11250:	e5900004 	ldr	r0, [r0, #4]
   11254:	ebfffdbd 	bl	10950 <free@plt>
   11258:	e1a00004 	mov	r0, r4
   1125c:	e8bd8010 	pop	{r4, pc}

00011260 <_ZNK8Operator7get_matEv>:
   11260:	e5900000 	ldr	r0, [r0]
   11264:	e12fff1e 	bx	lr

00011268 <_ZN8Operator5printEv>:
   11268:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1126c:	e1a08000 	mov	r8, r0
   11270:	e59f511c 	ldr	r5, [pc, #284]	; 11394 <_ZN8Operator5printEv+0x12c>
   11274:	e59fb11c 	ldr	fp, [pc, #284]	; 11398 <_ZN8Operator5printEv+0x130>
   11278:	e1a09005 	mov	r9, r5
   1127c:	e3a04000 	mov	r4, #0
   11280:	e3a07020 	mov	r7, #32
   11284:	e3a0a00a 	mov	sl, #10
   11288:	e5980000 	ldr	r0, [r8]
   1128c:	e0800004 	add	r0, r0, r4
   11290:	ebfffedc 	bl	10e08 <_Z6printcPd>
   11294:	e1a00007 	mov	r0, r7
   11298:	ebfffdb5 	bl	10974 <putchar@plt>
   1129c:	e5980000 	ldr	r0, [r8]
   112a0:	e2843010 	add	r3, r4, #16
   112a4:	e0800003 	add	r0, r0, r3
   112a8:	ebfffed6 	bl	10e08 <_Z6printcPd>
   112ac:	e1a00007 	mov	r0, r7
   112b0:	ebfffdaf 	bl	10974 <putchar@plt>
   112b4:	e5953000 	ldr	r3, [r5]
   112b8:	e513300c 	ldr	r3, [r3, #-12]
   112bc:	e0853003 	add	r3, r5, r3
   112c0:	e593607c 	ldr	r6, [r3, #124]	; 0x7c
   112c4:	e3560000 	cmp	r6, #0
   112c8:	0a000030 	beq	11390 <_ZN8Operator5printEv+0x128>
   112cc:	e5d6301c 	ldrb	r3, [r6, #28]
   112d0:	e3530000 	cmp	r3, #0
   112d4:	0a000014 	beq	1132c <_ZN8Operator5printEv+0xc4>
   112d8:	e5d61027 	ldrb	r1, [r6, #39]	; 0x27
   112dc:	e1a00009 	mov	r0, r9
   112e0:	ebfffd94 	bl	10938 <_ZNSo3putEc@plt>
   112e4:	e2844020 	add	r4, r4, #32
   112e8:	ebfffda4 	bl	10980 <_ZNSo5flushEv@plt>
   112ec:	e3540040 	cmp	r4, #64	; 0x40
   112f0:	1affffe4 	bne	11288 <_ZN8Operator5printEv+0x20>
   112f4:	e5953000 	ldr	r3, [r5]
   112f8:	e513300c 	ldr	r3, [r3, #-12]
   112fc:	e0855003 	add	r5, r5, r3
   11300:	e595407c 	ldr	r4, [r5, #124]	; 0x7c
   11304:	e3540000 	cmp	r4, #0
   11308:	0a000020 	beq	11390 <_ZN8Operator5printEv+0x128>
   1130c:	e5d4301c 	ldrb	r3, [r4, #28]
   11310:	e3530000 	cmp	r3, #0
   11314:	0a000010 	beq	1135c <_ZN8Operator5printEv+0xf4>
   11318:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   1131c:	e59f0070 	ldr	r0, [pc, #112]	; 11394 <_ZN8Operator5printEv+0x12c>
   11320:	ebfffd84 	bl	10938 <_ZNSo3putEc@plt>
   11324:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11328:	eafffd94 	b	10980 <_ZNSo5flushEv@plt>
   1132c:	e1a00006 	mov	r0, r6
   11330:	ebfffda1 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11334:	e5963000 	ldr	r3, [r6]
   11338:	e5933018 	ldr	r3, [r3, #24]
   1133c:	e153000b 	cmp	r3, fp
   11340:	01a0100a 	moveq	r1, sl
   11344:	0affffe4 	beq	112dc <_ZN8Operator5printEv+0x74>
   11348:	e1a0100a 	mov	r1, sl
   1134c:	e1a00006 	mov	r0, r6
   11350:	e12fff33 	blx	r3
   11354:	e1a01000 	mov	r1, r0
   11358:	eaffffdf 	b	112dc <_ZN8Operator5printEv+0x74>
   1135c:	e1a00004 	mov	r0, r4
   11360:	ebfffd95 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11364:	e5943000 	ldr	r3, [r4]
   11368:	e59f2028 	ldr	r2, [pc, #40]	; 11398 <_ZN8Operator5printEv+0x130>
   1136c:	e5933018 	ldr	r3, [r3, #24]
   11370:	e1530002 	cmp	r3, r2
   11374:	03a0100a 	moveq	r1, #10
   11378:	0affffe7 	beq	1131c <_ZN8Operator5printEv+0xb4>
   1137c:	e3a0100a 	mov	r1, #10
   11380:	e1a00004 	mov	r0, r4
   11384:	e12fff33 	blx	r3
   11388:	e1a01000 	mov	r1, r0
   1138c:	eaffffe2 	b	1131c <_ZN8Operator5printEv+0xb4>
   11390:	ebfffd8c 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   11394:	00022070 	.word	0x00022070
   11398:	00010dfc 	.word	0x00010dfc

0001139c <_ZN5State7cmatvecEPKdii>:
   1139c:	e5900008 	ldr	r0, [r0, #8]
   113a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   113a4:	e080e202 	add	lr, r0, r2, lsl #4
   113a8:	ed2d8b0e 	vpush	{d8-d14}
   113ac:	ed9e6b02 	vldr	d6, [lr, #8]
   113b0:	ed91ab00 	vldr	d10, [r1]
   113b4:	e080c203 	add	ip, r0, r3, lsl #4
   113b8:	ed919b02 	vldr	d9, [r1, #8]
   113bc:	ed9c5b02 	vldr	d5, [ip, #8]
   113c0:	ed918b04 	vldr	d8, [r1, #16]
   113c4:	ee2acb06 	vmul.f64	d12, d10, d6
   113c8:	ed9e7b00 	vldr	d7, [lr]
   113cc:	ee29bb06 	vmul.f64	d11, d9, d6
   113d0:	ed910b06 	vldr	d0, [r1, #24]
   113d4:	ee28eb05 	vmul.f64	d14, d8, d5
   113d8:	ed914b0a 	vldr	d4, [r1, #40]	; 0x28
   113dc:	ed912b0e 	vldr	d2, [r1, #56]	; 0x38
   113e0:	ed913b08 	vldr	d3, [r1, #32]
   113e4:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
   113e8:	ee07cb09 	vmla.f64	d12, d7, d9
   113ec:	ed9c9b00 	vldr	d9, [ip]
   113f0:	ee20db05 	vmul.f64	d13, d0, d5
   113f4:	ee1abb07 	vnmls.f64	d11, d10, d7
   113f8:	ee09eb00 	vmla.f64	d14, d9, d0
   113fc:	ee22ab05 	vmul.f64	d10, d2, d5
   11400:	ee240b06 	vmul.f64	d0, d4, d6
   11404:	ee215b05 	vmul.f64	d5, d1, d5
   11408:	ee236b06 	vmul.f64	d6, d3, d6
   1140c:	ee18db09 	vnmls.f64	d13, d8, d9
   11410:	ee11ab09 	vnmls.f64	d10, d1, d9
   11414:	ee130b07 	vnmls.f64	d0, d3, d7
   11418:	ee025b09 	vmla.f64	d5, d2, d9
   1141c:	ee046b07 	vmla.f64	d6, d4, d7
   11420:	ee3ddb0b 	vadd.f64	d13, d13, d11
   11424:	ee3eeb0c 	vadd.f64	d14, d14, d12
   11428:	ee3aab00 	vadd.f64	d10, d10, d0
   1142c:	ee355b06 	vadd.f64	d5, d5, d6
   11430:	ed8edb00 	vstr	d13, [lr]
   11434:	ed8eeb02 	vstr	d14, [lr, #8]
   11438:	ed8cab00 	vstr	d10, [ip]
   1143c:	ecbd8b0e 	vpop	{d8-d14}
   11440:	ed8c5b02 	vstr	d5, [ip, #8]
   11444:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00011448 <_ZN5State12malloc_stateEii>:
   11448:	e3520000 	cmp	r2, #0
   1144c:	e92d4070 	push	{r4, r5, r6, lr}
   11450:	e1a05000 	mov	r5, r0
   11454:	e1a04001 	mov	r4, r1
   11458:	1a00001b 	bne	114cc <_ZN5State12malloc_stateEii+0x84>
   1145c:	e1a00201 	lsl	r0, r1, #4
   11460:	ebfffd5e 	bl	109e0 <malloc@plt>
   11464:	e3500000 	cmp	r0, #0
   11468:	e585000c 	str	r0, [r5, #12]
   1146c:	15850008 	strne	r0, [r5, #8]
   11470:	0a00003f 	beq	11574 <_ZN5State12malloc_stateEii+0x12c>
   11474:	e3a0201b 	mov	r2, #27
   11478:	e59f1104 	ldr	r1, [pc, #260]	; 11584 <_ZN5State12malloc_stateEii+0x13c>
   1147c:	e59f0104 	ldr	r0, [pc, #260]	; 11588 <_ZN5State12malloc_stateEii+0x140>
   11480:	ebfffd53 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11484:	e5951008 	ldr	r1, [r5, #8]
   11488:	e59f00f8 	ldr	r0, [pc, #248]	; 11588 <_ZN5State12malloc_stateEii+0x140>
   1148c:	ebfffd3e 	bl	1098c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   11490:	e5903000 	ldr	r3, [r0]
   11494:	e1a05000 	mov	r5, r0
   11498:	e513300c 	ldr	r3, [r3, #-12]
   1149c:	e0803003 	add	r3, r0, r3
   114a0:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   114a4:	e3540000 	cmp	r4, #0
   114a8:	0a000034 	beq	11580 <_ZN5State12malloc_stateEii+0x138>
   114ac:	e5d4301c 	ldrb	r3, [r4, #28]
   114b0:	e3530000 	cmp	r3, #0
   114b4:	0a000017 	beq	11518 <_ZN5State12malloc_stateEii+0xd0>
   114b8:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   114bc:	e1a00005 	mov	r0, r5
   114c0:	ebfffd1c 	bl	10938 <_ZNSo3putEc@plt>
   114c4:	e8bd4070 	pop	{r4, r5, r6, lr}
   114c8:	eafffd2c 	b	10980 <_ZNSo5flushEv@plt>
   114cc:	e1a06281 	lsl	r6, r1, #5
   114d0:	e1a00006 	mov	r0, r6
   114d4:	ebfffd41 	bl	109e0 <malloc@plt>
   114d8:	e3500000 	cmp	r0, #0
   114dc:	e585000c 	str	r0, [r5, #12]
   114e0:	0a000023 	beq	11574 <_ZN5State12malloc_stateEii+0x12c>
   114e4:	e1a04204 	lsl	r4, r4, #4
   114e8:	e2441001 	sub	r1, r4, #1
   114ec:	e0811000 	add	r1, r1, r0
   114f0:	e2644000 	rsb	r4, r4, #0
   114f4:	e0044001 	and	r4, r4, r1
   114f8:	e06000a6 	rsb	r0, r0, r6, lsr #1
   114fc:	e0800004 	add	r0, r0, r4
   11500:	e1560000 	cmp	r6, r0
   11504:	3a000010 	bcc	1154c <_ZN5State12malloc_stateEii+0x104>
   11508:	e3540000 	cmp	r4, #0
   1150c:	e5854008 	str	r4, [r5, #8]
   11510:	1affffd7 	bne	11474 <_ZN5State12malloc_stateEii+0x2c>
   11514:	ea00000e 	b	11554 <_ZN5State12malloc_stateEii+0x10c>
   11518:	e1a00004 	mov	r0, r4
   1151c:	ebfffd26 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11520:	e5943000 	ldr	r3, [r4]
   11524:	e59f2060 	ldr	r2, [pc, #96]	; 1158c <_ZN5State12malloc_stateEii+0x144>
   11528:	e5933018 	ldr	r3, [r3, #24]
   1152c:	e1530002 	cmp	r3, r2
   11530:	03a0100a 	moveq	r1, #10
   11534:	0affffe0 	beq	114bc <_ZN5State12malloc_stateEii+0x74>
   11538:	e3a0100a 	mov	r1, #10
   1153c:	e1a00004 	mov	r0, r4
   11540:	e12fff33 	blx	r3
   11544:	e1a01000 	mov	r1, r0
   11548:	eaffffdb 	b	114bc <_ZN5State12malloc_stateEii+0x74>
   1154c:	e3a03000 	mov	r3, #0
   11550:	e5853008 	str	r3, [r5, #8]
   11554:	e59f1034 	ldr	r1, [pc, #52]	; 11590 <_ZN5State12malloc_stateEii+0x148>
   11558:	e3a02025 	mov	r2, #37	; 0x25
   1155c:	e59f0030 	ldr	r0, [pc, #48]	; 11594 <_ZN5State12malloc_stateEii+0x14c>
   11560:	ebfffd1b 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11564:	e59f0028 	ldr	r0, [pc, #40]	; 11594 <_ZN5State12malloc_stateEii+0x14c>
   11568:	ebfffcfb 	bl	1095c <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   1156c:	e3a00001 	mov	r0, #1
   11570:	ebfffcfc 	bl	10968 <exit@plt>
   11574:	e3a02022 	mov	r2, #34	; 0x22
   11578:	e59f1018 	ldr	r1, [pc, #24]	; 11598 <_ZN5State12malloc_stateEii+0x150>
   1157c:	eafffff6 	b	1155c <_ZN5State12malloc_stateEii+0x114>
   11580:	ebfffd10 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   11584:	00011a84 	.word	0x00011a84
   11588:	00022070 	.word	0x00022070
   1158c:	00010dfc 	.word	0x00010dfc
   11590:	00011a5c 	.word	0x00011a5c
   11594:	00022100 	.word	0x00022100
   11598:	00011a38 	.word	0x00011a38

0001159c <_ZN5StateC1Ei>:
   1159c:	e3a03001 	mov	r3, #1
   115a0:	e92d4070 	push	{r4, r5, r6, lr}
   115a4:	e1a03113 	lsl	r3, r3, r1
   115a8:	e3a02000 	mov	r2, #0
   115ac:	e1a06000 	mov	r6, r0
   115b0:	e880000a 	stm	r0, {r1, r3}
   115b4:	e5802008 	str	r2, [r0, #8]
   115b8:	e580200c 	str	r2, [r0, #12]
   115bc:	e1a01003 	mov	r1, r3
   115c0:	ebffffa0 	bl	11448 <_ZN5State12malloc_stateEii>
   115c4:	e5960004 	ldr	r0, [r6, #4]
   115c8:	e59f5054 	ldr	r5, [pc, #84]	; 11624 <_ZN5StateC1Ei+0x88>
   115cc:	e5962008 	ldr	r2, [r6, #8]
   115d0:	e3a04000 	mov	r4, #0
   115d4:	e1a03080 	lsl	r3, r0, #1
   115d8:	e3530001 	cmp	r3, #1
   115dc:	e1c240f0 	strd	r4, [r2]
   115e0:	da000006 	ble	11600 <_ZN5StateC1Ei+0x64>
   115e4:	e2823008 	add	r3, r2, #8
   115e8:	e3a04000 	mov	r4, #0
   115ec:	e3a05000 	mov	r5, #0
   115f0:	e0822200 	add	r2, r2, r0, lsl #4
   115f4:	e0c340f8 	strd	r4, [r3], #8
   115f8:	e1530002 	cmp	r3, r2
   115fc:	1afffffc 	bne	115f4 <_ZN5StateC1Ei+0x58>
   11600:	e1a04180 	lsl	r4, r0, #3
   11604:	e1a00004 	mov	r0, r4
   11608:	ebfffcf4 	bl	109e0 <malloc@plt>
   1160c:	e5860014 	str	r0, [r6, #20]
   11610:	e1a00004 	mov	r0, r4
   11614:	ebfffcf1 	bl	109e0 <malloc@plt>
   11618:	e5860018 	str	r0, [r6, #24]
   1161c:	e1a00006 	mov	r0, r6
   11620:	e8bd8070 	pop	{r4, r5, r6, pc}
   11624:	3ff00000 	.word	0x3ff00000

00011628 <_ZN5StateD1Ev>:
   11628:	e92d4010 	push	{r4, lr}
   1162c:	e1a04000 	mov	r4, r0
   11630:	e590000c 	ldr	r0, [r0, #12]
   11634:	ebfffcc5 	bl	10950 <free@plt>
   11638:	e5940014 	ldr	r0, [r4, #20]
   1163c:	ebfffcc3 	bl	10950 <free@plt>
   11640:	e5940018 	ldr	r0, [r4, #24]
   11644:	ebfffcc1 	bl	10950 <free@plt>
   11648:	e1a00004 	mov	r0, r4
   1164c:	e8bd8010 	pop	{r4, pc}

00011650 <_ZN5State5printEv>:
   11650:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11654:	e1a07000 	mov	r7, r0
   11658:	e59f60f8 	ldr	r6, [pc, #248]	; 11758 <_ZN5State5printEv+0x108>
   1165c:	e59f90f8 	ldr	r9, [pc, #248]	; 1175c <_ZN5State5printEv+0x10c>
   11660:	e1a08006 	mov	r8, r6
   11664:	e3a05000 	mov	r5, #0
   11668:	e3a0a00a 	mov	sl, #10
   1166c:	e5970008 	ldr	r0, [r7, #8]
   11670:	e0800005 	add	r0, r0, r5
   11674:	ebfffde3 	bl	10e08 <_Z6printcPd>
   11678:	e5963000 	ldr	r3, [r6]
   1167c:	e513300c 	ldr	r3, [r3, #-12]
   11680:	e0863003 	add	r3, r6, r3
   11684:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   11688:	e3540000 	cmp	r4, #0
   1168c:	0a000030 	beq	11754 <_ZN5State5printEv+0x104>
   11690:	e5d4301c 	ldrb	r3, [r4, #28]
   11694:	e3530000 	cmp	r3, #0
   11698:	0a000014 	beq	116f0 <_ZN5State5printEv+0xa0>
   1169c:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   116a0:	e1a00008 	mov	r0, r8
   116a4:	ebfffca3 	bl	10938 <_ZNSo3putEc@plt>
   116a8:	e2855010 	add	r5, r5, #16
   116ac:	ebfffcb3 	bl	10980 <_ZNSo5flushEv@plt>
   116b0:	e3550040 	cmp	r5, #64	; 0x40
   116b4:	1affffec 	bne	1166c <_ZN5State5printEv+0x1c>
   116b8:	e5963000 	ldr	r3, [r6]
   116bc:	e513300c 	ldr	r3, [r3, #-12]
   116c0:	e0866003 	add	r6, r6, r3
   116c4:	e596407c 	ldr	r4, [r6, #124]	; 0x7c
   116c8:	e3540000 	cmp	r4, #0
   116cc:	0a000020 	beq	11754 <_ZN5State5printEv+0x104>
   116d0:	e5d4301c 	ldrb	r3, [r4, #28]
   116d4:	e3530000 	cmp	r3, #0
   116d8:	0a000010 	beq	11720 <_ZN5State5printEv+0xd0>
   116dc:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   116e0:	e59f0070 	ldr	r0, [pc, #112]	; 11758 <_ZN5State5printEv+0x108>
   116e4:	ebfffc93 	bl	10938 <_ZNSo3putEc@plt>
   116e8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
   116ec:	eafffca3 	b	10980 <_ZNSo5flushEv@plt>
   116f0:	e1a00004 	mov	r0, r4
   116f4:	ebfffcb0 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   116f8:	e5943000 	ldr	r3, [r4]
   116fc:	e5933018 	ldr	r3, [r3, #24]
   11700:	e1530009 	cmp	r3, r9
   11704:	01a0100a 	moveq	r1, sl
   11708:	0affffe4 	beq	116a0 <_ZN5State5printEv+0x50>
   1170c:	e1a0100a 	mov	r1, sl
   11710:	e1a00004 	mov	r0, r4
   11714:	e12fff33 	blx	r3
   11718:	e1a01000 	mov	r1, r0
   1171c:	eaffffdf 	b	116a0 <_ZN5State5printEv+0x50>
   11720:	e1a00004 	mov	r0, r4
   11724:	ebfffca4 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11728:	e5943000 	ldr	r3, [r4]
   1172c:	e59f2028 	ldr	r2, [pc, #40]	; 1175c <_ZN5State5printEv+0x10c>
   11730:	e5933018 	ldr	r3, [r3, #24]
   11734:	e1530002 	cmp	r3, r2
   11738:	03a0100a 	moveq	r1, #10
   1173c:	0affffe7 	beq	116e0 <_ZN5State5printEv+0x90>
   11740:	e3a0100a 	mov	r1, #10
   11744:	e1a00004 	mov	r0, r4
   11748:	e12fff33 	blx	r3
   1174c:	e1a01000 	mov	r1, r0
   11750:	eaffffe2 	b	116e0 <_ZN5State5printEv+0x90>
   11754:	ebfffc9b 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   11758:	00022070 	.word	0x00022070
   1175c:	00010dfc 	.word	0x00010dfc

00011760 <_ZN5State5sgateERK8Operatori>:
   11760:	e5903004 	ldr	r3, [r0, #4]
   11764:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11768:	e3530000 	cmp	r3, #0
   1176c:	e3a05001 	mov	r5, #1
   11770:	e5918000 	ldr	r8, [r1]
   11774:	e1a05215 	lsl	r5, r5, r2
   11778:	d8bd87f0 	pople	{r4, r5, r6, r7, r8, r9, sl, pc}
   1177c:	e3a0a002 	mov	sl, #2
   11780:	e1a06000 	mov	r6, r0
   11784:	e1a0a21a 	lsl	sl, sl, r2
   11788:	e3a09000 	mov	r9, #0
   1178c:	e3550000 	cmp	r5, #0
   11790:	c1a04009 	movgt	r4, r9
   11794:	c0897005 	addgt	r7, r9, r5
   11798:	da000008 	ble	117c0 <_ZN5State5sgateERK8Operatori+0x60>
   1179c:	e0853004 	add	r3, r5, r4
   117a0:	e1a02004 	mov	r2, r4
   117a4:	e1a01008 	mov	r1, r8
   117a8:	e2844001 	add	r4, r4, #1
   117ac:	e1a00006 	mov	r0, r6
   117b0:	ebfffef9 	bl	1139c <_ZN5State7cmatvecEPKdii>
   117b4:	e1540007 	cmp	r4, r7
   117b8:	1afffff7 	bne	1179c <_ZN5State5sgateERK8Operatori+0x3c>
   117bc:	e5963004 	ldr	r3, [r6, #4]
   117c0:	e089900a 	add	r9, r9, sl
   117c4:	e1530009 	cmp	r3, r9
   117c8:	caffffef 	bgt	1178c <_ZN5State5sgateERK8Operatori+0x2c>
   117cc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

000117d0 <_ZN5State5cgateERK8Operatorii>:
   117d0:	e590c004 	ldr	ip, [r0, #4]
   117d4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   117d8:	e3a05001 	mov	r5, #1
   117dc:	e35c0000 	cmp	ip, #0
   117e0:	e1a0a215 	lsl	sl, r5, r2
   117e4:	e24dd014 	sub	sp, sp, #20
   117e8:	e5918000 	ldr	r8, [r1]
   117ec:	e1a05315 	lsl	r5, r5, r3
   117f0:	da000026 	ble	11890 <_ZN5State5cgateERK8Operatorii+0xc0>
   117f4:	e3a01002 	mov	r1, #2
   117f8:	e1a07000 	mov	r7, r0
   117fc:	e1a03311 	lsl	r3, r1, r3
   11800:	e58d300c 	str	r3, [sp, #12]
   11804:	e1a03211 	lsl	r3, r1, r2
   11808:	e26ab000 	rsb	fp, sl, #0
   1180c:	e58d3004 	str	r3, [sp, #4]
   11810:	e3a03000 	mov	r3, #0
   11814:	e58d3008 	str	r3, [sp, #8]
   11818:	e3550000 	cmp	r5, #0
   1181c:	c59d3008 	ldrgt	r3, [sp, #8]
   11820:	c083900a 	addgt	r9, r3, sl
   11824:	da000011 	ble	11870 <_ZN5State5cgateERK8Operatorii+0xa0>
   11828:	e35a0000 	cmp	sl, #0
   1182c:	c089600a 	addgt	r6, r9, sl
   11830:	c1a04009 	movgt	r4, r9
   11834:	da000007 	ble	11858 <_ZN5State5cgateERK8Operatorii+0x88>
   11838:	e0853004 	add	r3, r5, r4
   1183c:	e1a02004 	mov	r2, r4
   11840:	e1a01008 	mov	r1, r8
   11844:	e2844001 	add	r4, r4, #1
   11848:	e1a00007 	mov	r0, r7
   1184c:	ebfffed2 	bl	1139c <_ZN5State7cmatvecEPKdii>
   11850:	e1540006 	cmp	r4, r6
   11854:	1afffff7 	bne	11838 <_ZN5State5cgateERK8Operatorii+0x68>
   11858:	e59d3004 	ldr	r3, [sp, #4]
   1185c:	e0899003 	add	r9, r9, r3
   11860:	e089300b 	add	r3, r9, fp
   11864:	e1550003 	cmp	r5, r3
   11868:	caffffee 	bgt	11828 <_ZN5State5cgateERK8Operatorii+0x58>
   1186c:	e597c004 	ldr	ip, [r7, #4]
   11870:	e59d200c 	ldr	r2, [sp, #12]
   11874:	e59d1008 	ldr	r1, [sp, #8]
   11878:	e04bb002 	sub	fp, fp, r2
   1187c:	e0813002 	add	r3, r1, r2
   11880:	e15c0003 	cmp	ip, r3
   11884:	e58d3008 	str	r3, [sp, #8]
   11888:	e1a03002 	mov	r3, r2
   1188c:	caffffe1 	bgt	11818 <_ZN5State5cgateERK8Operatorii+0x48>
   11890:	e28dd014 	add	sp, sp, #20
   11894:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00011898 <_ZN5State7averageEPd>:
   11898:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1189c:	e5905004 	ldr	r5, [r0, #4]
   118a0:	e3550000 	cmp	r5, #0
   118a4:	da00003b 	ble	11998 <_ZN5State7averageEPd+0x100>
   118a8:	e5903008 	ldr	r3, [r0, #8]
   118ac:	e590e014 	ldr	lr, [r0, #20]
   118b0:	e3a0c000 	mov	ip, #0
   118b4:	e2834020 	add	r4, r3, #32
   118b8:	e1a0200e 	mov	r2, lr
   118bc:	ed936b02 	vldr	d6, [r3, #8]
   118c0:	ed937b00 	vldr	d7, [r3]
   118c4:	e2833010 	add	r3, r3, #16
   118c8:	ee266b06 	vmul.f64	d6, d6, d6
   118cc:	ee076b07 	vmla.f64	d6, d7, d7
   118d0:	ed826b00 	vstr	d6, [r2]
   118d4:	ed937b02 	vldr	d7, [r3, #8]
   118d8:	ed935b00 	vldr	d5, [r3]
   118dc:	e1540003 	cmp	r4, r3
   118e0:	ee277b07 	vmul.f64	d7, d7, d7
   118e4:	ee057b05 	vmla.f64	d7, d5, d5
   118e8:	ec576b17 	vmov	r6, r7, d7
   118ec:	e1e260f8 	strd	r6, [r2, #8]!
   118f0:	1afffff1 	bne	118bc <_ZN5State7averageEPd+0x24>
   118f4:	e28cc002 	add	ip, ip, #2
   118f8:	e155000c 	cmp	r5, ip
   118fc:	e28ee010 	add	lr, lr, #16
   11900:	caffffeb 	bgt	118b4 <_ZN5State7averageEPd+0x1c>
   11904:	e590a000 	ldr	sl, [r0]
   11908:	e35a0001 	cmp	sl, #1
   1190c:	c3a08001 	movgt	r8, #1
   11910:	c1a09001 	movgt	r9, r1
   11914:	c1a0b008 	movgt	fp, r8
   11918:	da000021 	ble	119a4 <_ZN5State7averageEPd+0x10c>
   1191c:	e1a0e81b 	lsl	lr, fp, r8
   11920:	e3550000 	cmp	r5, #0
   11924:	e1a0608e 	lsl	r6, lr, #1
   11928:	da000013 	ble	1197c <_ZN5State7averageEPd+0xe4>
   1192c:	e3a03008 	mov	r3, #8
   11930:	e1a0420e 	lsl	r4, lr, #4
   11934:	e1a0c813 	lsl	ip, r3, r8
   11938:	e3a01000 	mov	r1, #0
   1193c:	e35e0000 	cmp	lr, #0
   11940:	da000009 	ble	1196c <_ZN5State7averageEPd+0xd4>
   11944:	e5903014 	ldr	r3, [r0, #20]
   11948:	e083200c 	add	r2, r3, ip
   1194c:	e1a07002 	mov	r7, r2
   11950:	e0833181 	add	r3, r3, r1, lsl #3
   11954:	ecb34b02 	vldmia	r3!, {d4}
   11958:	ecb75b02 	vldmia	r7!, {d5}
   1195c:	e1520003 	cmp	r2, r3
   11960:	ee366b04 	vadd.f64	d6, d6, d4
   11964:	ee377b05 	vadd.f64	d7, d7, d5
   11968:	1afffff9 	bne	11954 <_ZN5State7averageEPd+0xbc>
   1196c:	e0811006 	add	r1, r1, r6
   11970:	e1550001 	cmp	r5, r1
   11974:	e08cc004 	add	ip, ip, r4
   11978:	caffffef 	bgt	1193c <_ZN5State7averageEPd+0xa4>
   1197c:	e2888001 	add	r8, r8, #1
   11980:	e15a0008 	cmp	sl, r8
   11984:	ed896b04 	vstr	d6, [r9, #16]
   11988:	ed897b06 	vstr	d7, [r9, #24]
   1198c:	e2899010 	add	r9, r9, #16
   11990:	1affffe1 	bne	1191c <_ZN5State7averageEPd+0x84>
   11994:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11998:	ed9f7b02 	vldr	d7, [pc, #8]	; 119a8 <_ZN5State7averageEPd+0x110>
   1199c:	eeb06b47 	vmov.f64	d6, d7
   119a0:	eaffffd7 	b	11904 <_ZN5State7averageEPd+0x6c>
   119a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
	...

000119b0 <__libc_csu_init>:
   119b0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   119b4:	e1a07000 	mov	r7, r0
   119b8:	e59f6048 	ldr	r6, [pc, #72]	; 11a08 <__libc_csu_init+0x58>
   119bc:	e59f5048 	ldr	r5, [pc, #72]	; 11a0c <__libc_csu_init+0x5c>
   119c0:	e08f6006 	add	r6, pc, r6
   119c4:	e08f5005 	add	r5, pc, r5
   119c8:	e0466005 	sub	r6, r6, r5
   119cc:	e1a08001 	mov	r8, r1
   119d0:	e1a09002 	mov	r9, r2
   119d4:	ebfffbcf 	bl	10918 <_init>
   119d8:	e1b06146 	asrs	r6, r6, #2
   119dc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   119e0:	e3a04000 	mov	r4, #0
   119e4:	e2844001 	add	r4, r4, #1
   119e8:	e4953004 	ldr	r3, [r5], #4
   119ec:	e1a02009 	mov	r2, r9
   119f0:	e1a01008 	mov	r1, r8
   119f4:	e1a00007 	mov	r0, r7
   119f8:	e12fff33 	blx	r3
   119fc:	e1560004 	cmp	r6, r4
   11a00:	1afffff7 	bne	119e4 <__libc_csu_init+0x34>
   11a04:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11a08:	00010530 	.word	0x00010530
   11a0c:	00010520 	.word	0x00010520

00011a10 <__libc_csu_fini>:
   11a10:	e12fff1e 	bx	lr

Disassembly of section .fini:

00011a14 <_fini>:
   11a14:	e92d4008 	push	{r3, lr}
   11a18:	e8bd8008 	pop	{r3, pc}
