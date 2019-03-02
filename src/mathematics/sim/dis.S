
test:     file format elf32-littlearm


Disassembly of section .init:

00010918 <_init>:
   10918:	e92d4008 	push	{r3, lr}
   1091c:	eb0001b2 	bl	10fec <call_weak_fn>
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
   10a44:	ed2d8b10 	vpush	{d8-d15}
   10a48:	e3a01014 	mov	r1, #20
   10a4c:	e3a02601 	mov	r2, #1048576	; 0x100000
   10a50:	e3a03000 	mov	r3, #0
   10a54:	e24dd044 	sub	sp, sp, #68	; 0x44
   10a58:	e3a00402 	mov	r0, #33554432	; 0x2000000
   10a5c:	e58d1024 	str	r1, [sp, #36]	; 0x24
   10a60:	e58d2028 	str	r2, [sp, #40]	; 0x28
   10a64:	e58d302c 	str	r3, [sp, #44]	; 0x2c
   10a68:	ebffffdc 	bl	109e0 <malloc@plt>
   10a6c:	e3500000 	cmp	r0, #0
   10a70:	e58d0030 	str	r0, [sp, #48]	; 0x30
   10a74:	03a02022 	moveq	r2, #34	; 0x22
   10a78:	059f14d0 	ldreq	r1, [pc, #1232]	; 10f50 <main+0x510>
   10a7c:	0a0000f2 	beq	10e4c <main+0x40c>
   10a80:	e2802401 	add	r2, r0, #16777216	; 0x1000000
   10a84:	e2422001 	sub	r2, r2, #1
   10a88:	e20224ff 	and	r2, r2, #-16777216	; 0xff000000
   10a8c:	e2603401 	rsb	r3, r0, #16777216	; 0x1000000
   10a90:	e0833002 	add	r3, r3, r2
   10a94:	e3530402 	cmp	r3, #33554432	; 0x2000000
   10a98:	8a0000e9 	bhi	10e44 <main+0x404>
   10a9c:	e3520000 	cmp	r2, #0
   10aa0:	e58d202c 	str	r2, [sp, #44]	; 0x2c
   10aa4:	0a0000e6 	beq	10e44 <main+0x404>
   10aa8:	e3a0201b 	mov	r2, #27
   10aac:	e59f14a0 	ldr	r1, [pc, #1184]	; 10f54 <main+0x514>
   10ab0:	e59f04a0 	ldr	r0, [pc, #1184]	; 10f58 <main+0x518>
   10ab4:	ebffffc6 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10ab8:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
   10abc:	e59f0494 	ldr	r0, [pc, #1172]	; 10f58 <main+0x518>
   10ac0:	ebffffb1 	bl	1098c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10ac4:	e5903000 	ldr	r3, [r0]
   10ac8:	e1a05000 	mov	r5, r0
   10acc:	e513300c 	ldr	r3, [r3, #-12]
   10ad0:	e0803003 	add	r3, r0, r3
   10ad4:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   10ad8:	e3540000 	cmp	r4, #0
   10adc:	0a00011a 	beq	10f4c <main+0x50c>
   10ae0:	e5d4301c 	ldrb	r3, [r4, #28]
   10ae4:	e3530000 	cmp	r3, #0
   10ae8:	0a00010a 	beq	10f18 <main+0x4d8>
   10aec:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   10af0:	e1a00005 	mov	r0, r5
   10af4:	ebffff8f 	bl	10938 <_ZNSo3putEc@plt>
   10af8:	ebffffa0 	bl	10980 <_ZNSo5flushEv@plt>
   10afc:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
   10b00:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
   10b04:	e59f1450 	ldr	r1, [pc, #1104]	; 10f5c <main+0x51c>
   10b08:	e3a00000 	mov	r0, #0
   10b0c:	e1a0c083 	lsl	ip, r3, #1
   10b10:	e35c0001 	cmp	ip, #1
   10b14:	e1c200f0 	strd	r0, [r2]
   10b18:	c3a04000 	movgt	r4, #0
   10b1c:	c2821008 	addgt	r1, r2, #8
   10b20:	c3a05000 	movgt	r5, #0
   10b24:	c0822203 	addgt	r2, r2, r3, lsl #4
   10b28:	da000002 	ble	10b38 <main+0xf8>
   10b2c:	e0c140f8 	strd	r4, [r1], #8
   10b30:	e1520001 	cmp	r2, r1
   10b34:	1afffffc 	bne	10b2c <main+0xec>
   10b38:	e1a04183 	lsl	r4, r3, #3
   10b3c:	e1a00004 	mov	r0, r4
   10b40:	ebffffa6 	bl	109e0 <malloc@plt>
   10b44:	e58d0038 	str	r0, [sp, #56]	; 0x38
   10b48:	e1a00004 	mov	r0, r4
   10b4c:	ebffffa3 	bl	109e0 <malloc@plt>
   10b50:	e58d003c 	str	r0, [sp, #60]	; 0x3c
   10b54:	e28d002c 	add	r0, sp, #44	; 0x2c
   10b58:	eb000177 	bl	1113c <_ZN5State5printEv.isra.6>
   10b5c:	e3a0005f 	mov	r0, #95	; 0x5f
   10b60:	ebffff9e 	bl	109e0 <malloc@plt>
   10b64:	e2503000 	subs	r3, r0, #0
   10b68:	e58d300c 	str	r3, [sp, #12]
   10b6c:	0a0000e3 	beq	10f00 <main+0x4c0>
   10b70:	e59d300c 	ldr	r3, [sp, #12]
   10b74:	e59f03e4 	ldr	r0, [pc, #996]	; 10f60 <main+0x520>
   10b78:	e59f13e4 	ldr	r1, [pc, #996]	; 10f64 <main+0x524>
   10b7c:	e59f43dc 	ldr	r4, [pc, #988]	; 10f60 <main+0x520>
   10b80:	e59f53e0 	ldr	r5, [pc, #992]	; 10f68 <main+0x528>
   10b84:	e283301f 	add	r3, r3, #31
   10b88:	e3c3301f 	bic	r3, r3, #31
   10b8c:	e3a06000 	mov	r6, #0
   10b90:	e3a07000 	mov	r7, #0
   10b94:	e1c300f0 	strd	r0, [r3]
   10b98:	e1c301f0 	strd	r0, [r3, #16]
   10b9c:	e1c302f0 	strd	r0, [r3, #32]
   10ba0:	e1c343f0 	strd	r4, [r3, #48]	; 0x30
   10ba4:	e1c360f8 	strd	r6, [r3, #8]
   10ba8:	e1c361f8 	strd	r6, [r3, #24]
   10bac:	e1c362f8 	strd	r6, [r3, #40]	; 0x28
   10bb0:	e1c363f8 	strd	r6, [r3, #56]	; 0x38
   10bb4:	e3a0005f 	mov	r0, #95	; 0x5f
   10bb8:	ebffff88 	bl	109e0 <malloc@plt>
   10bbc:	e2503000 	subs	r3, r0, #0
   10bc0:	e58d3010 	str	r3, [sp, #16]
   10bc4:	0a0000c9 	beq	10ef0 <main+0x4b0>
   10bc8:	e59d3010 	ldr	r3, [sp, #16]
   10bcc:	e59f9388 	ldr	r9, [pc, #904]	; 10f5c <main+0x51c>
   10bd0:	e283401f 	add	r4, r3, #31
   10bd4:	e3c4401f 	bic	r4, r4, #31
   10bd8:	e3a08000 	mov	r8, #0
   10bdc:	e3a0005f 	mov	r0, #95	; 0x5f
   10be0:	e1c460f0 	strd	r6, [r4]
   10be4:	e1c460f8 	strd	r6, [r4, #8]
   10be8:	e1c461f8 	strd	r6, [r4, #24]
   10bec:	e1c462f8 	strd	r6, [r4, #40]	; 0x28
   10bf0:	e1c463f0 	strd	r6, [r4, #48]	; 0x30
   10bf4:	e1c463f8 	strd	r6, [r4, #56]	; 0x38
   10bf8:	e1c481f0 	strd	r8, [r4, #16]
   10bfc:	e1c482f0 	strd	r8, [r4, #32]
   10c00:	ebffff76 	bl	109e0 <malloc@plt>
   10c04:	e2503000 	subs	r3, r0, #0
   10c08:	e58d3014 	str	r3, [sp, #20]
   10c0c:	0a0000b1 	beq	10ed8 <main+0x498>
   10c10:	e59d3014 	ldr	r3, [sp, #20]
   10c14:	e59fb350 	ldr	fp, [pc, #848]	; 10f6c <main+0x52c>
   10c18:	e283301f 	add	r3, r3, #31
   10c1c:	e3c3301f 	bic	r3, r3, #31
   10c20:	e3a0a000 	mov	sl, #0
   10c24:	e1c360f0 	strd	r6, [r3]
   10c28:	e1c360f8 	strd	r6, [r3, #8]
   10c2c:	e1c361f0 	strd	r6, [r3, #16]
   10c30:	e1c362f0 	strd	r6, [r3, #32]
   10c34:	e1c382f8 	strd	r8, [r3, #40]	; 0x28
   10c38:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
   10c3c:	e1c363f8 	strd	r6, [r3, #56]	; 0x38
   10c40:	e1c3a1f8 	strd	sl, [r3, #24]
   10c44:	e3a0005f 	mov	r0, #95	; 0x5f
   10c48:	ebffff64 	bl	109e0 <malloc@plt>
   10c4c:	e2503000 	subs	r3, r0, #0
   10c50:	e58d3018 	str	r3, [sp, #24]
   10c54:	0a00009b 	beq	10ec8 <main+0x488>
   10c58:	e59d3018 	ldr	r3, [sp, #24]
   10c5c:	e283301f 	add	r3, r3, #31
   10c60:	e3c3301f 	bic	r3, r3, #31
   10c64:	e1c380f0 	strd	r8, [r3]
   10c68:	e1c360f8 	strd	r6, [r3, #8]
   10c6c:	e1c361f0 	strd	r6, [r3, #16]
   10c70:	e1c361f8 	strd	r6, [r3, #24]
   10c74:	e1c362f0 	strd	r6, [r3, #32]
   10c78:	e1c362f8 	strd	r6, [r3, #40]	; 0x28
   10c7c:	e1c3a3f0 	strd	sl, [r3, #48]	; 0x30
   10c80:	e1c363f8 	strd	r6, [r3, #56]	; 0x38
   10c84:	e3a03014 	mov	r3, #20
   10c88:	e58d301c 	str	r3, [sp, #28]
   10c8c:	e3a05000 	mov	r5, #0
   10c90:	e59db028 	ldr	fp, [sp, #40]	; 0x28
   10c94:	e35b0000 	cmp	fp, #0
   10c98:	da00003d 	ble	10d94 <main+0x354>
   10c9c:	e3a03002 	mov	r3, #2
   10ca0:	e59de02c 	ldr	lr, [sp, #44]	; 0x2c
   10ca4:	e1a0a513 	lsl	sl, r3, r5
   10ca8:	e3a03010 	mov	r3, #16
   10cac:	e1a0920a 	lsl	r9, sl, #4
   10cb0:	e08ec513 	add	ip, lr, r3, lsl r5
   10cb4:	e3a08000 	mov	r8, #0
   10cb8:	e28e1008 	add	r1, lr, #8
   10cbc:	e28c2008 	add	r2, ip, #8
   10cc0:	e1a0000c 	mov	r0, ip
   10cc4:	e1a0300e 	mov	r3, lr
   10cc8:	ed937b02 	vldr	d7, [r3, #8]
   10ccc:	ed94ab02 	vldr	d10, [r4, #8]
   10cd0:	ed94bb00 	vldr	d11, [r4]
   10cd4:	ed94fb0a 	vldr	d15, [r4, #40]	; 0x28
   10cd8:	ed94eb08 	vldr	d14, [r4, #32]
   10cdc:	ee2a3b07 	vmul.f64	d3, d10, d7
   10ce0:	ed906b02 	vldr	d6, [r0, #8]
   10ce4:	ee2b4b07 	vmul.f64	d4, d11, d7
   10ce8:	ed940b0e 	vldr	d0, [r4, #56]	; 0x38
   10cec:	ee275b0f 	vmul.f64	d5, d7, d15
   10cf0:	ed94db06 	vldr	d13, [r4, #24]
   10cf4:	ee277b0e 	vmul.f64	d7, d7, d14
   10cf8:	ed94cb04 	vldr	d12, [r4, #16]
   10cfc:	ee260b00 	vmul.f64	d0, d6, d0
   10d00:	ed111b02 	vldr	d1, [r1, #-8]
   10d04:	ee2d9b06 	vmul.f64	d9, d13, d6
   10d08:	ed122b02 	vldr	d2, [r2, #-8]
   10d0c:	ee2c8b06 	vmul.f64	d8, d12, d6
   10d10:	e2833010 	add	r3, r3, #16
   10d14:	ee014b0a 	vmla.f64	d4, d1, d10
   10d18:	ed8d7b00 	vstr	d7, [sp]
   10d1c:	ed947b0c 	vldr	d7, [r4, #48]	; 0x30
   10d20:	ee1b3b01 	vnmls.f64	d3, d11, d1
   10d24:	e2800010 	add	r0, r0, #16
   10d28:	ee115b0e 	vnmls.f64	d5, d1, d14
   10d2c:	e2811010 	add	r1, r1, #16
   10d30:	ee266b07 	vmul.f64	d6, d6, d7
   10d34:	ed9d7b00 	vldr	d7, [sp]
   10d38:	ee1c9b02 	vnmls.f64	d9, d12, d2
   10d3c:	ee028b0d 	vmla.f64	d8, d2, d13
   10d40:	ee017b0f 	vmla.f64	d7, d1, d15
   10d44:	ed941b0c 	vldr	d1, [r4, #48]	; 0x30
   10d48:	ee120b01 	vnmls.f64	d0, d2, d1
   10d4c:	ed941b0e 	vldr	d1, [r4, #56]	; 0x38
   10d50:	ee333b09 	vadd.f64	d3, d3, d9
   10d54:	ee344b08 	vadd.f64	d4, d4, d8
   10d58:	ee026b01 	vmla.f64	d6, d2, d1
   10d5c:	ee355b00 	vadd.f64	d5, d5, d0
   10d60:	ed013b06 	vstr	d3, [r1, #-24]	; 0xffffffe8
   10d64:	ed034b02 	vstr	d4, [r3, #-8]
   10d68:	e15c0003 	cmp	ip, r3
   10d6c:	ee376b06 	vadd.f64	d6, d7, d6
   10d70:	ed025b02 	vstr	d5, [r2, #-8]
   10d74:	ec576b16 	vmov	r6, r7, d6
   10d78:	e0c261f0 	strd	r6, [r2], #16
   10d7c:	1affffd1 	bne	10cc8 <main+0x288>
   10d80:	e088800a 	add	r8, r8, sl
   10d84:	e15b0008 	cmp	fp, r8
   10d88:	e08ee009 	add	lr, lr, r9
   10d8c:	e08cc009 	add	ip, ip, r9
   10d90:	caffffc8 	bgt	10cb8 <main+0x278>
   10d94:	e3a0200a 	mov	r2, #10
   10d98:	e59f11d0 	ldr	r1, [pc, #464]	; 10f70 <main+0x530>
   10d9c:	e59f01b4 	ldr	r0, [pc, #436]	; 10f58 <main+0x518>
   10da0:	ebffff0b 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10da4:	e1a01005 	mov	r1, r5
   10da8:	e59f01a8 	ldr	r0, [pc, #424]	; 10f58 <main+0x518>
   10dac:	ebffff17 	bl	10a10 <_ZNSolsEi@plt>
   10db0:	e5903000 	ldr	r3, [r0]
   10db4:	e1a09000 	mov	r9, r0
   10db8:	e513300c 	ldr	r3, [r3, #-12]
   10dbc:	e0803003 	add	r3, r0, r3
   10dc0:	e593807c 	ldr	r8, [r3, #124]	; 0x7c
   10dc4:	e3580000 	cmp	r8, #0
   10dc8:	0a000032 	beq	10e98 <main+0x458>
   10dcc:	e5d8301c 	ldrb	r3, [r8, #28]
   10dd0:	e3530000 	cmp	r3, #0
   10dd4:	0a000022 	beq	10e64 <main+0x424>
   10dd8:	e5d81027 	ldrb	r1, [r8, #39]	; 0x27
   10ddc:	e1a00009 	mov	r0, r9
   10de0:	ebfffed4 	bl	10938 <_ZNSo3putEc@plt>
   10de4:	ebfffee5 	bl	10980 <_ZNSo5flushEv@plt>
   10de8:	e2855001 	add	r5, r5, #1
   10dec:	e3550014 	cmp	r5, #20
   10df0:	1affffa6 	bne	10c90 <main+0x250>
   10df4:	e59d301c 	ldr	r3, [sp, #28]
   10df8:	e2533001 	subs	r3, r3, #1
   10dfc:	e58d301c 	str	r3, [sp, #28]
   10e00:	1affffa1 	bne	10c8c <main+0x24c>
   10e04:	e28d002c 	add	r0, sp, #44	; 0x2c
   10e08:	eb0000cb 	bl	1113c <_ZN5State5printEv.isra.6>
   10e0c:	e59d0018 	ldr	r0, [sp, #24]
   10e10:	ebfffece 	bl	10950 <free@plt>
   10e14:	e59d0014 	ldr	r0, [sp, #20]
   10e18:	ebfffecc 	bl	10950 <free@plt>
   10e1c:	e59d0010 	ldr	r0, [sp, #16]
   10e20:	ebfffeca 	bl	10950 <free@plt>
   10e24:	e59d000c 	ldr	r0, [sp, #12]
   10e28:	ebfffec8 	bl	10950 <free@plt>
   10e2c:	e28d0024 	add	r0, sp, #36	; 0x24
   10e30:	eb0001a4 	bl	114c8 <_ZN5StateD1Ev>
   10e34:	e3a00000 	mov	r0, #0
   10e38:	e28dd044 	add	sp, sp, #68	; 0x44
   10e3c:	ecbd8b10 	vpop	{d8-d15}
   10e40:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10e44:	e59f1128 	ldr	r1, [pc, #296]	; 10f74 <main+0x534>
   10e48:	e3a02025 	mov	r2, #37	; 0x25
   10e4c:	e59f0124 	ldr	r0, [pc, #292]	; 10f78 <main+0x538>
   10e50:	ebfffedf 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10e54:	e59f011c 	ldr	r0, [pc, #284]	; 10f78 <main+0x538>
   10e58:	ebfffebf 	bl	1095c <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10e5c:	e3a00001 	mov	r0, #1
   10e60:	ebfffec0 	bl	10968 <exit@plt>
   10e64:	e1a00008 	mov	r0, r8
   10e68:	ebfffed3 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10e6c:	e5983000 	ldr	r3, [r8]
   10e70:	e59f2104 	ldr	r2, [pc, #260]	; 10f7c <main+0x53c>
   10e74:	e5933018 	ldr	r3, [r3, #24]
   10e78:	e1530002 	cmp	r3, r2
   10e7c:	03a0100a 	moveq	r1, #10
   10e80:	0affffd5 	beq	10ddc <main+0x39c>
   10e84:	e1a00008 	mov	r0, r8
   10e88:	e3a0100a 	mov	r1, #10
   10e8c:	e12fff33 	blx	r3
   10e90:	e1a01000 	mov	r1, r0
   10e94:	eaffffd0 	b	10ddc <main+0x39c>
   10e98:	ebfffeca 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   10e9c:	e59d0018 	ldr	r0, [sp, #24]
   10ea0:	ebfffeaa 	bl	10950 <free@plt>
   10ea4:	e59d0014 	ldr	r0, [sp, #20]
   10ea8:	ebfffea8 	bl	10950 <free@plt>
   10eac:	e59d0010 	ldr	r0, [sp, #16]
   10eb0:	ebfffea6 	bl	10950 <free@plt>
   10eb4:	e59d000c 	ldr	r0, [sp, #12]
   10eb8:	ebfffea4 	bl	10950 <free@plt>
   10ebc:	e28d0024 	add	r0, sp, #36	; 0x24
   10ec0:	eb000180 	bl	114c8 <_ZN5StateD1Ev>
   10ec4:	ebfffeb9 	bl	109b0 <__cxa_end_cleanup@plt>
   10ec8:	e59f1080 	ldr	r1, [pc, #128]	; 10f50 <main+0x510>
   10ecc:	e59f00a4 	ldr	r0, [pc, #164]	; 10f78 <main+0x538>
   10ed0:	ebfffeb3 	bl	109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   10ed4:	eaffffe0 	b	10e5c <main+0x41c>
   10ed8:	e59f1070 	ldr	r1, [pc, #112]	; 10f50 <main+0x510>
   10edc:	e59f0094 	ldr	r0, [pc, #148]	; 10f78 <main+0x538>
   10ee0:	ebfffeaf 	bl	109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   10ee4:	eaffffdc 	b	10e5c <main+0x41c>
   10ee8:	eaffffed 	b	10ea4 <main+0x464>
   10eec:	eaffffee 	b	10eac <main+0x46c>
   10ef0:	e59f1058 	ldr	r1, [pc, #88]	; 10f50 <main+0x510>
   10ef4:	e59f007c 	ldr	r0, [pc, #124]	; 10f78 <main+0x538>
   10ef8:	ebfffea9 	bl	109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   10efc:	eaffffd6 	b	10e5c <main+0x41c>
   10f00:	e59f1048 	ldr	r1, [pc, #72]	; 10f50 <main+0x510>
   10f04:	e59f006c 	ldr	r0, [pc, #108]	; 10f78 <main+0x538>
   10f08:	ebfffea5 	bl	109a4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   10f0c:	eaffffd2 	b	10e5c <main+0x41c>
   10f10:	eaffffe7 	b	10eb4 <main+0x474>
   10f14:	eaffffe8 	b	10ebc <main+0x47c>
   10f18:	e1a00004 	mov	r0, r4
   10f1c:	ebfffea6 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10f20:	e5943000 	ldr	r3, [r4]
   10f24:	e59f2050 	ldr	r2, [pc, #80]	; 10f7c <main+0x53c>
   10f28:	e5933018 	ldr	r3, [r3, #24]
   10f2c:	e1530002 	cmp	r3, r2
   10f30:	03a0100a 	moveq	r1, #10
   10f34:	0afffeed 	beq	10af0 <main+0xb0>
   10f38:	e3a0100a 	mov	r1, #10
   10f3c:	e1a00004 	mov	r0, r4
   10f40:	e12fff33 	blx	r3
   10f44:	e1a01000 	mov	r1, r0
   10f48:	eafffee8 	b	10af0 <main+0xb0>
   10f4c:	ebfffe9d 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   10f50:	0001156c 	.word	0x0001156c
   10f54:	00011590 	.word	0x00011590
   10f58:	00022070 	.word	0x00022070
   10f5c:	3ff00000 	.word	0x3ff00000
   10f60:	667f3bcc 	.word	0x667f3bcc
   10f64:	3fe6a09e 	.word	0x3fe6a09e
   10f68:	bfe6a09e 	.word	0xbfe6a09e
   10f6c:	bff00000 	.word	0xbff00000
   10f70:	000115ac 	.word	0x000115ac
   10f74:	000115b8 	.word	0x000115b8
   10f78:	00022100 	.word	0x00022100
   10f7c:	000114c0 	.word	0x000114c0

00010f80 <_GLOBAL__sub_I__Z6printcPd>:
   10f80:	e92d4010 	push	{r4, lr}
   10f84:	e59f4018 	ldr	r4, [pc, #24]	; 10fa4 <_GLOBAL__sub_I__Z6printcPd+0x24>
   10f88:	e1a00004 	mov	r0, r4
   10f8c:	ebfffe96 	bl	109ec <_ZNSt8ios_base4InitC1Ev@plt>
   10f90:	e1a00004 	mov	r0, r4
   10f94:	e59f200c 	ldr	r2, [pc, #12]	; 10fa8 <_GLOBAL__sub_I__Z6printcPd+0x28>
   10f98:	e59f100c 	ldr	r1, [pc, #12]	; 10fac <_GLOBAL__sub_I__Z6printcPd+0x2c>
   10f9c:	e8bd4010 	pop	{r4, lr}
   10fa0:	eafffe67 	b	10944 <__aeabi_atexit@plt>
   10fa4:	00022190 	.word	0x00022190
   10fa8:	0002206c 	.word	0x0002206c
   10fac:	00010a34 	.word	0x00010a34

00010fb0 <_start>:
   10fb0:	e3a0b000 	mov	fp, #0
   10fb4:	e3a0e000 	mov	lr, #0
   10fb8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10fbc:	e1a0200d 	mov	r2, sp
   10fc0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10fc4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10fc8:	e59fc010 	ldr	ip, [pc, #16]	; 10fe0 <_start+0x30>
   10fcc:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10fd0:	e59f000c 	ldr	r0, [pc, #12]	; 10fe4 <_start+0x34>
   10fd4:	e59f300c 	ldr	r3, [pc, #12]	; 10fe8 <_start+0x38>
   10fd8:	ebfffe8f 	bl	10a1c <__libc_start_main@plt>
   10fdc:	ebfffe6d 	bl	10998 <abort@plt>
   10fe0:	00011550 	.word	0x00011550
   10fe4:	00010a40 	.word	0x00010a40
   10fe8:	000114f0 	.word	0x000114f0

00010fec <call_weak_fn>:
   10fec:	e59f3014 	ldr	r3, [pc, #20]	; 11008 <call_weak_fn+0x1c>
   10ff0:	e59f2014 	ldr	r2, [pc, #20]	; 1100c <call_weak_fn+0x20>
   10ff4:	e08f3003 	add	r3, pc, r3
   10ff8:	e7932002 	ldr	r2, [r3, r2]
   10ffc:	e3520000 	cmp	r2, #0
   11000:	012fff1e 	bxeq	lr
   11004:	eafffe87 	b	10a28 <__gmon_start__@plt>
   11008:	00011004 	.word	0x00011004
   1100c:	00000064 	.word	0x00000064

00011010 <deregister_tm_clones>:
   11010:	e59f301c 	ldr	r3, [pc, #28]	; 11034 <deregister_tm_clones+0x24>
   11014:	e59f001c 	ldr	r0, [pc, #28]	; 11038 <deregister_tm_clones+0x28>
   11018:	e0433000 	sub	r3, r3, r0
   1101c:	e3530006 	cmp	r3, #6
   11020:	912fff1e 	bxls	lr
   11024:	e59f3010 	ldr	r3, [pc, #16]	; 1103c <deregister_tm_clones+0x2c>
   11028:	e3530000 	cmp	r3, #0
   1102c:	012fff1e 	bxeq	lr
   11030:	e12fff13 	bx	r3
   11034:	00022073 	.word	0x00022073
   11038:	00022070 	.word	0x00022070
   1103c:	00000000 	.word	0x00000000

00011040 <register_tm_clones>:
   11040:	e59f1024 	ldr	r1, [pc, #36]	; 1106c <register_tm_clones+0x2c>
   11044:	e59f0024 	ldr	r0, [pc, #36]	; 11070 <register_tm_clones+0x30>
   11048:	e0411000 	sub	r1, r1, r0
   1104c:	e1a01141 	asr	r1, r1, #2
   11050:	e0811fa1 	add	r1, r1, r1, lsr #31
   11054:	e1b010c1 	asrs	r1, r1, #1
   11058:	012fff1e 	bxeq	lr
   1105c:	e59f3010 	ldr	r3, [pc, #16]	; 11074 <register_tm_clones+0x34>
   11060:	e3530000 	cmp	r3, #0
   11064:	012fff1e 	bxeq	lr
   11068:	e12fff13 	bx	r3
   1106c:	00022070 	.word	0x00022070
   11070:	00022070 	.word	0x00022070
   11074:	00000000 	.word	0x00000000

00011078 <__do_global_dtors_aux>:
   11078:	e92d4010 	push	{r4, lr}
   1107c:	e59f4018 	ldr	r4, [pc, #24]	; 1109c <__do_global_dtors_aux+0x24>
   11080:	e5d43000 	ldrb	r3, [r4]
   11084:	e3530000 	cmp	r3, #0
   11088:	18bd8010 	popne	{r4, pc}
   1108c:	ebffffdf 	bl	11010 <deregister_tm_clones>
   11090:	e3a03001 	mov	r3, #1
   11094:	e5c43000 	strb	r3, [r4]
   11098:	e8bd8010 	pop	{r4, pc}
   1109c:	0002218c 	.word	0x0002218c

000110a0 <frame_dummy>:
   110a0:	e59f0028 	ldr	r0, [pc, #40]	; 110d0 <frame_dummy+0x30>
   110a4:	e5903000 	ldr	r3, [r0]
   110a8:	e3530000 	cmp	r3, #0
   110ac:	1a000000 	bne	110b4 <frame_dummy+0x14>
   110b0:	eaffffe2 	b	11040 <register_tm_clones>
   110b4:	e59f3018 	ldr	r3, [pc, #24]	; 110d4 <frame_dummy+0x34>
   110b8:	e3530000 	cmp	r3, #0
   110bc:	0afffffb 	beq	110b0 <frame_dummy+0x10>
   110c0:	e92d4010 	push	{r4, lr}
   110c4:	e12fff33 	blx	r3
   110c8:	e8bd4010 	pop	{r4, lr}
   110cc:	eaffffdb 	b	11040 <register_tm_clones>
   110d0:	00021efc 	.word	0x00021efc
   110d4:	00000000 	.word	0x00000000

000110d8 <_Z6printcPd>:
   110d8:	e92d4070 	push	{r4, r5, r6, lr}
   110dc:	e1a04000 	mov	r4, r0
   110e0:	e59f5044 	ldr	r5, [pc, #68]	; 1112c <_Z6printcPd+0x54>
   110e4:	e3a02001 	mov	r2, #1
   110e8:	e59f1040 	ldr	r1, [pc, #64]	; 11130 <_Z6printcPd+0x58>
   110ec:	e1a00005 	mov	r0, r5
   110f0:	ebfffe37 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110f4:	ed940b00 	vldr	d0, [r4]
   110f8:	e1a00005 	mov	r0, r5
   110fc:	ebfffe3d 	bl	109f8 <_ZNSo9_M_insertIdEERSoT_@plt>
   11100:	e3a02002 	mov	r2, #2
   11104:	e59f1028 	ldr	r1, [pc, #40]	; 11134 <_Z6printcPd+0x5c>
   11108:	e1a05000 	mov	r5, r0
   1110c:	ebfffe30 	bl	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11110:	e1a00005 	mov	r0, r5
   11114:	ed940b02 	vldr	d0, [r4, #8]
   11118:	ebfffe36 	bl	109f8 <_ZNSo9_M_insertIdEERSoT_@plt>
   1111c:	e3a02001 	mov	r2, #1
   11120:	e59f1010 	ldr	r1, [pc, #16]	; 11138 <_Z6printcPd+0x60>
   11124:	e8bd4070 	pop	{r4, r5, r6, lr}
   11128:	eafffe29 	b	109d4 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1112c:	00022070 	.word	0x00022070
   11130:	00011560 	.word	0x00011560
   11134:	00011564 	.word	0x00011564
   11138:	00011568 	.word	0x00011568

0001113c <_ZN5State5printEv.isra.6>:
   1113c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11140:	e1a07000 	mov	r7, r0
   11144:	e59f6098 	ldr	r6, [pc, #152]	; 111e4 <_ZN5State5printEv.isra.6+0xa8>
   11148:	e59f9098 	ldr	r9, [pc, #152]	; 111e8 <_ZN5State5printEv.isra.6+0xac>
   1114c:	e1a08006 	mov	r8, r6
   11150:	e3a05000 	mov	r5, #0
   11154:	e3a0a00a 	mov	sl, #10
   11158:	e5970000 	ldr	r0, [r7]
   1115c:	e0800005 	add	r0, r0, r5
   11160:	ebffffdc 	bl	110d8 <_Z6printcPd>
   11164:	e5963000 	ldr	r3, [r6]
   11168:	e513300c 	ldr	r3, [r3, #-12]
   1116c:	e0863003 	add	r3, r6, r3
   11170:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   11174:	e3540000 	cmp	r4, #0
   11178:	0a000018 	beq	111e0 <_ZN5State5printEv.isra.6+0xa4>
   1117c:	e5d4301c 	ldrb	r3, [r4, #28]
   11180:	e3530000 	cmp	r3, #0
   11184:	0a000009 	beq	111b0 <_ZN5State5printEv.isra.6+0x74>
   11188:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   1118c:	e1a00008 	mov	r0, r8
   11190:	ebfffde8 	bl	10938 <_ZNSo3putEc@plt>
   11194:	e2855010 	add	r5, r5, #16
   11198:	ebfffdf8 	bl	10980 <_ZNSo5flushEv@plt>
   1119c:	e3550040 	cmp	r5, #64	; 0x40
   111a0:	1affffec 	bne	11158 <_ZN5State5printEv.isra.6+0x1c>
   111a4:	e59f0038 	ldr	r0, [pc, #56]	; 111e4 <_ZN5State5printEv.isra.6+0xa8>
   111a8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
   111ac:	eafffdea 	b	1095c <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   111b0:	e1a00004 	mov	r0, r4
   111b4:	ebfffe00 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   111b8:	e5943000 	ldr	r3, [r4]
   111bc:	e5933018 	ldr	r3, [r3, #24]
   111c0:	e1530009 	cmp	r3, r9
   111c4:	01a0100a 	moveq	r1, sl
   111c8:	0affffef 	beq	1118c <_ZN5State5printEv.isra.6+0x50>
   111cc:	e1a0100a 	mov	r1, sl
   111d0:	e1a00004 	mov	r0, r4
   111d4:	e12fff33 	blx	r3
   111d8:	e1a01000 	mov	r1, r0
   111dc:	eaffffea 	b	1118c <_ZN5State5printEv.isra.6+0x50>
   111e0:	ebfffdf8 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   111e4:	00022070 	.word	0x00022070
   111e8:	000114c0 	.word	0x000114c0

000111ec <_Z6printmPd>:
   111ec:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   111f0:	e1a04000 	mov	r4, r0
   111f4:	e59f5110 	ldr	r5, [pc, #272]	; 1130c <_Z6printmPd+0x120>
   111f8:	e59fb110 	ldr	fp, [pc, #272]	; 11310 <_Z6printmPd+0x124>
   111fc:	e2809040 	add	r9, r0, #64	; 0x40
   11200:	e1a08005 	mov	r8, r5
   11204:	e3a07020 	mov	r7, #32
   11208:	e3a0a00a 	mov	sl, #10
   1120c:	e1a00004 	mov	r0, r4
   11210:	ebffffb0 	bl	110d8 <_Z6printcPd>
   11214:	e1a00007 	mov	r0, r7
   11218:	ebfffdd5 	bl	10974 <putchar@plt>
   1121c:	e2840010 	add	r0, r4, #16
   11220:	ebffffac 	bl	110d8 <_Z6printcPd>
   11224:	e1a00007 	mov	r0, r7
   11228:	ebfffdd1 	bl	10974 <putchar@plt>
   1122c:	e5953000 	ldr	r3, [r5]
   11230:	e513300c 	ldr	r3, [r3, #-12]
   11234:	e0853003 	add	r3, r5, r3
   11238:	e593607c 	ldr	r6, [r3, #124]	; 0x7c
   1123c:	e3560000 	cmp	r6, #0
   11240:	0a000030 	beq	11308 <_Z6printmPd+0x11c>
   11244:	e5d6301c 	ldrb	r3, [r6, #28]
   11248:	e3530000 	cmp	r3, #0
   1124c:	0a000014 	beq	112a4 <_Z6printmPd+0xb8>
   11250:	e5d61027 	ldrb	r1, [r6, #39]	; 0x27
   11254:	e1a00008 	mov	r0, r8
   11258:	ebfffdb6 	bl	10938 <_ZNSo3putEc@plt>
   1125c:	e2844020 	add	r4, r4, #32
   11260:	ebfffdc6 	bl	10980 <_ZNSo5flushEv@plt>
   11264:	e1590004 	cmp	r9, r4
   11268:	1affffe7 	bne	1120c <_Z6printmPd+0x20>
   1126c:	e5953000 	ldr	r3, [r5]
   11270:	e513300c 	ldr	r3, [r3, #-12]
   11274:	e0855003 	add	r5, r5, r3
   11278:	e595407c 	ldr	r4, [r5, #124]	; 0x7c
   1127c:	e3540000 	cmp	r4, #0
   11280:	0a000020 	beq	11308 <_Z6printmPd+0x11c>
   11284:	e5d4301c 	ldrb	r3, [r4, #28]
   11288:	e3530000 	cmp	r3, #0
   1128c:	0a000010 	beq	112d4 <_Z6printmPd+0xe8>
   11290:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   11294:	e59f0070 	ldr	r0, [pc, #112]	; 1130c <_Z6printmPd+0x120>
   11298:	ebfffda6 	bl	10938 <_ZNSo3putEc@plt>
   1129c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   112a0:	eafffdb6 	b	10980 <_ZNSo5flushEv@plt>
   112a4:	e1a00006 	mov	r0, r6
   112a8:	ebfffdc3 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   112ac:	e5963000 	ldr	r3, [r6]
   112b0:	e5933018 	ldr	r3, [r3, #24]
   112b4:	e153000b 	cmp	r3, fp
   112b8:	01a0100a 	moveq	r1, sl
   112bc:	0affffe4 	beq	11254 <_Z6printmPd+0x68>
   112c0:	e1a0100a 	mov	r1, sl
   112c4:	e1a00006 	mov	r0, r6
   112c8:	e12fff33 	blx	r3
   112cc:	e1a01000 	mov	r1, r0
   112d0:	eaffffdf 	b	11254 <_Z6printmPd+0x68>
   112d4:	e1a00004 	mov	r0, r4
   112d8:	ebfffdb7 	bl	109bc <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   112dc:	e5943000 	ldr	r3, [r4]
   112e0:	e59f2028 	ldr	r2, [pc, #40]	; 11310 <_Z6printmPd+0x124>
   112e4:	e5933018 	ldr	r3, [r3, #24]
   112e8:	e1530002 	cmp	r3, r2
   112ec:	03a0100a 	moveq	r1, #10
   112f0:	0affffe7 	beq	11294 <_Z6printmPd+0xa8>
   112f4:	e3a0100a 	mov	r1, #10
   112f8:	e1a00004 	mov	r0, r4
   112fc:	e12fff33 	blx	r3
   11300:	e1a01000 	mov	r1, r0
   11304:	eaffffe2 	b	11294 <_Z6printmPd+0xa8>
   11308:	ebfffdae 	bl	109c8 <_ZSt16__throw_bad_castv@plt>
   1130c:	00022070 	.word	0x00022070
   11310:	000114c0 	.word	0x000114c0

00011314 <_Z4caddPKdS0_Pd>:
   11314:	ed916b00 	vldr	d6, [r1]
   11318:	ed907b00 	vldr	d7, [r0]
   1131c:	ee377b06 	vadd.f64	d7, d7, d6
   11320:	ed827b00 	vstr	d7, [r2]
   11324:	ed907b02 	vldr	d7, [r0, #8]
   11328:	ed916b02 	vldr	d6, [r1, #8]
   1132c:	ee377b06 	vadd.f64	d7, d7, d6
   11330:	ed827b02 	vstr	d7, [r2, #8]
   11334:	e12fff1e 	bx	lr

00011338 <_Z4cmulPKdS0_Pd>:
   11338:	ed914b02 	vldr	d4, [r1, #8]
   1133c:	ed907b02 	vldr	d7, [r0, #8]
   11340:	ed905b00 	vldr	d5, [r0]
   11344:	ed916b00 	vldr	d6, [r1]
   11348:	ee277b04 	vmul.f64	d7, d7, d4
   1134c:	ee157b06 	vnmls.f64	d7, d5, d6
   11350:	ed827b00 	vstr	d7, [r2]
   11354:	ed907b00 	vldr	d7, [r0]
   11358:	ed914b02 	vldr	d4, [r1, #8]
   1135c:	ed905b02 	vldr	d5, [r0, #8]
   11360:	ed916b00 	vldr	d6, [r1]
   11364:	ee277b04 	vmul.f64	d7, d7, d4
   11368:	ee057b06 	vmla.f64	d7, d5, d6
   1136c:	ed827b02 	vstr	d7, [r2, #8]
   11370:	e12fff1e 	bx	lr

00011374 <_Z7cmatmulPKdS0_Pd>:
   11374:	ed900b02 	vldr	d0, [r0, #8]
   11378:	ed901b04 	vldr	d1, [r0, #16]
   1137c:	ed903b06 	vldr	d3, [r0, #24]
   11380:	ed915b02 	vldr	d5, [r1, #8]
   11384:	ed917b0a 	vldr	d7, [r1, #40]	; 0x28
   11388:	ed2d8b04 	vpush	{d8-d9}
   1138c:	ed909b00 	vldr	d9, [r0]
   11390:	ee204b05 	vmul.f64	d4, d0, d5
   11394:	ed918b00 	vldr	d8, [r1]
   11398:	ee236b07 	vmul.f64	d6, d3, d7
   1139c:	ed912b08 	vldr	d2, [r1, #32]
   113a0:	ee295b05 	vmul.f64	d5, d9, d5
   113a4:	ee217b07 	vmul.f64	d7, d1, d7
   113a8:	ee194b08 	vnmls.f64	d4, d9, d8
   113ac:	ee116b02 	vnmls.f64	d6, d1, d2
   113b0:	ee085b00 	vmla.f64	d5, d8, d0
   113b4:	ee027b03 	vmla.f64	d7, d2, d3
   113b8:	ee366b04 	vadd.f64	d6, d6, d4
   113bc:	ee377b05 	vadd.f64	d7, d7, d5
   113c0:	ed826b00 	vstr	d6, [r2]
   113c4:	ed827b02 	vstr	d7, [r2, #8]
   113c8:	ed909b00 	vldr	d9, [r0]
   113cc:	ed900b02 	vldr	d0, [r0, #8]
   113d0:	ed901b04 	vldr	d1, [r0, #16]
   113d4:	ed903b06 	vldr	d3, [r0, #24]
   113d8:	ed915b06 	vldr	d5, [r1, #24]
   113dc:	ed917b0e 	vldr	d7, [r1, #56]	; 0x38
   113e0:	ed918b04 	vldr	d8, [r1, #16]
   113e4:	ed912b0c 	vldr	d2, [r1, #48]	; 0x30
   113e8:	ee204b05 	vmul.f64	d4, d0, d5
   113ec:	ee236b07 	vmul.f64	d6, d3, d7
   113f0:	ee295b05 	vmul.f64	d5, d9, d5
   113f4:	ee217b07 	vmul.f64	d7, d1, d7
   113f8:	ee194b08 	vnmls.f64	d4, d9, d8
   113fc:	ee116b02 	vnmls.f64	d6, d1, d2
   11400:	ee085b00 	vmla.f64	d5, d8, d0
   11404:	ee027b03 	vmla.f64	d7, d2, d3
   11408:	ee366b04 	vadd.f64	d6, d6, d4
   1140c:	ee377b05 	vadd.f64	d7, d7, d5
   11410:	ed826b04 	vstr	d6, [r2, #16]
   11414:	ed827b06 	vstr	d7, [r2, #24]
   11418:	ed909b08 	vldr	d9, [r0, #32]
   1141c:	ed900b0a 	vldr	d0, [r0, #40]	; 0x28
   11420:	ed901b0c 	vldr	d1, [r0, #48]	; 0x30
   11424:	ed903b0e 	vldr	d3, [r0, #56]	; 0x38
   11428:	ed915b02 	vldr	d5, [r1, #8]
   1142c:	ed917b0a 	vldr	d7, [r1, #40]	; 0x28
   11430:	ed912b08 	vldr	d2, [r1, #32]
   11434:	ed918b00 	vldr	d8, [r1]
   11438:	ee204b05 	vmul.f64	d4, d0, d5
   1143c:	ee236b07 	vmul.f64	d6, d3, d7
   11440:	ee295b05 	vmul.f64	d5, d9, d5
   11444:	ee217b07 	vmul.f64	d7, d1, d7
   11448:	ee194b08 	vnmls.f64	d4, d9, d8
   1144c:	ee116b02 	vnmls.f64	d6, d1, d2
   11450:	ee085b00 	vmla.f64	d5, d8, d0
   11454:	ee027b03 	vmla.f64	d7, d2, d3
   11458:	ee366b04 	vadd.f64	d6, d6, d4
   1145c:	ee377b05 	vadd.f64	d7, d7, d5
   11460:	ed826b08 	vstr	d6, [r2, #32]
   11464:	ed827b0a 	vstr	d7, [r2, #40]	; 0x28
   11468:	ed909b08 	vldr	d9, [r0, #32]
   1146c:	ed918b04 	vldr	d8, [r1, #16]
   11470:	ed900b0a 	vldr	d0, [r0, #40]	; 0x28
   11474:	ed915b06 	vldr	d5, [r1, #24]
   11478:	ed901b0c 	vldr	d1, [r0, #48]	; 0x30
   1147c:	ed903b0e 	vldr	d3, [r0, #56]	; 0x38
   11480:	ed917b0e 	vldr	d7, [r1, #56]	; 0x38
   11484:	ee204b05 	vmul.f64	d4, d0, d5
   11488:	ed912b0c 	vldr	d2, [r1, #48]	; 0x30
   1148c:	ee295b05 	vmul.f64	d5, d9, d5
   11490:	ee236b07 	vmul.f64	d6, d3, d7
   11494:	ee217b07 	vmul.f64	d7, d1, d7
   11498:	ee194b08 	vnmls.f64	d4, d9, d8
   1149c:	ee085b00 	vmla.f64	d5, d8, d0
   114a0:	ecbd8b04 	vpop	{d8-d9}
   114a4:	ee116b02 	vnmls.f64	d6, d1, d2
   114a8:	ee027b03 	vmla.f64	d7, d2, d3
   114ac:	ee366b04 	vadd.f64	d6, d6, d4
   114b0:	ee377b05 	vadd.f64	d7, d7, d5
   114b4:	ed826b0c 	vstr	d6, [r2, #48]	; 0x30
   114b8:	ed827b0e 	vstr	d7, [r2, #56]	; 0x38
   114bc:	e12fff1e 	bx	lr

000114c0 <_ZNKSt5ctypeIcE8do_widenEc>:
   114c0:	e1a00001 	mov	r0, r1
   114c4:	e12fff1e 	bx	lr

000114c8 <_ZN5StateD1Ev>:
   114c8:	e92d4010 	push	{r4, lr}
   114cc:	e1a04000 	mov	r4, r0
   114d0:	e590000c 	ldr	r0, [r0, #12]
   114d4:	ebfffd1d 	bl	10950 <free@plt>
   114d8:	e5940014 	ldr	r0, [r4, #20]
   114dc:	ebfffd1b 	bl	10950 <free@plt>
   114e0:	e5940018 	ldr	r0, [r4, #24]
   114e4:	ebfffd19 	bl	10950 <free@plt>
   114e8:	e1a00004 	mov	r0, r4
   114ec:	e8bd8010 	pop	{r4, pc}

000114f0 <__libc_csu_init>:
   114f0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   114f4:	e1a07000 	mov	r7, r0
   114f8:	e59f6048 	ldr	r6, [pc, #72]	; 11548 <__libc_csu_init+0x58>
   114fc:	e59f5048 	ldr	r5, [pc, #72]	; 1154c <__libc_csu_init+0x5c>
   11500:	e08f6006 	add	r6, pc, r6
   11504:	e08f5005 	add	r5, pc, r5
   11508:	e0466005 	sub	r6, r6, r5
   1150c:	e1a08001 	mov	r8, r1
   11510:	e1a09002 	mov	r9, r2
   11514:	ebfffcff 	bl	10918 <_init>
   11518:	e1b06146 	asrs	r6, r6, #2
   1151c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   11520:	e3a04000 	mov	r4, #0
   11524:	e2844001 	add	r4, r4, #1
   11528:	e4953004 	ldr	r3, [r5], #4
   1152c:	e1a02009 	mov	r2, r9
   11530:	e1a01008 	mov	r1, r8
   11534:	e1a00007 	mov	r0, r7
   11538:	e12fff33 	blx	r3
   1153c:	e1560004 	cmp	r6, r4
   11540:	1afffff7 	bne	11524 <__libc_csu_init+0x34>
   11544:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11548:	000109f0 	.word	0x000109f0
   1154c:	000109e4 	.word	0x000109e4

00011550 <__libc_csu_fini>:
   11550:	e12fff1e 	bx	lr

Disassembly of section .fini:

00011554 <_fini>:
   11554:	e92d4008 	push	{r3, lr}
   11558:	e8bd8008 	pop	{r3, pc}
