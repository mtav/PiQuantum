
math_test:     file format elf32-littlearm


Disassembly of section .init:

000108c8 <_init>:
   108c8:	e92d4008 	push	{r3, lr}
   108cc:	eb00018a 	bl	10efc <call_weak_fn>
   108d0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000108d4 <.plt>:
   108d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   108d8:	e59fe004 	ldr	lr, [pc, #4]	; 108e4 <.plt+0x10>
   108dc:	e08fe00e 	add	lr, pc, lr
   108e0:	e5bef008 	ldr	pc, [lr, #8]!
   108e4:	0001171c 	.word	0x0001171c

000108e8 <_ZNSo3putEc@plt>:
   108e8:	e28fc600 	add	ip, pc, #0, 12
   108ec:	e28cca11 	add	ip, ip, #69632	; 0x11000
   108f0:	e5bcf71c 	ldr	pc, [ip, #1820]!	; 0x71c

000108f4 <__aeabi_atexit@plt>:
   108f4:	e28fc600 	add	ip, pc, #0, 12
   108f8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   108fc:	e5bcf714 	ldr	pc, [ip, #1812]!	; 0x714

00010900 <free@plt>:
   10900:	e28fc600 	add	ip, pc, #0, 12
   10904:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10908:	e5bcf70c 	ldr	pc, [ip, #1804]!	; 0x70c

0001090c <__gcc_personality_v0@plt>:
   1090c:	e28fc600 	add	ip, pc, #0, 12
   10910:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10914:	e5bcf704 	ldr	pc, [ip, #1796]!	; 0x704

00010918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   10918:	e28fc600 	add	ip, pc, #0, 12
   1091c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10920:	e5bcf6fc 	ldr	pc, [ip, #1788]!	; 0x6fc

00010924 <exit@plt>:
   10924:	e28fc600 	add	ip, pc, #0, 12
   10928:	e28cca11 	add	ip, ip, #69632	; 0x11000
   1092c:	e5bcf6f4 	ldr	pc, [ip, #1780]!	; 0x6f4

00010930 <_ZNSo5flushEv@plt>:
   10930:	e28fc600 	add	ip, pc, #0, 12
   10934:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10938:	e5bcf6ec 	ldr	pc, [ip, #1772]!	; 0x6ec

0001093c <_ZNSo9_M_insertIPKvEERSoT_@plt>:
   1093c:	e28fc600 	add	ip, pc, #0, 12
   10940:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10944:	e5bcf6e4 	ldr	pc, [ip, #1764]!	; 0x6e4

00010948 <abort@plt>:
   10948:	e28fc600 	add	ip, pc, #0, 12
   1094c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10950:	e5bcf6dc 	ldr	pc, [ip, #1756]!	; 0x6dc

00010954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   10954:	e28fc600 	add	ip, pc, #0, 12
   10958:	e28cca11 	add	ip, ip, #69632	; 0x11000
   1095c:	e5bcf6d4 	ldr	pc, [ip, #1748]!	; 0x6d4

00010960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
   10960:	e28fc600 	add	ip, pc, #0, 12
   10964:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10968:	e5bcf6cc 	ldr	pc, [ip, #1740]!	; 0x6cc

0001096c <_ZSt16__throw_bad_castv@plt>:
   1096c:	e28fc600 	add	ip, pc, #0, 12
   10970:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10974:	e5bcf6c4 	ldr	pc, [ip, #1732]!	; 0x6c4

00010978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>:
   10978:	e28fc600 	add	ip, pc, #0, 12
   1097c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10980:	e5bcf6bc 	ldr	pc, [ip, #1724]!	; 0x6bc

00010984 <malloc@plt>:
   10984:	e28fc600 	add	ip, pc, #0, 12
   10988:	e28cca11 	add	ip, ip, #69632	; 0x11000
   1098c:	e5bcf6b4 	ldr	pc, [ip, #1716]!	; 0x6b4

00010990 <_ZNSt8ios_base4InitC1Ev@plt>:
   10990:	e28fc600 	add	ip, pc, #0, 12
   10994:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10998:	e5bcf6ac 	ldr	pc, [ip, #1708]!	; 0x6ac

0001099c <_ZNSo9_M_insertIdEERSoT_@plt>:
   1099c:	e28fc600 	add	ip, pc, #0, 12
   109a0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109a4:	e5bcf6a4 	ldr	pc, [ip, #1700]!	; 0x6a4

000109a8 <_ZNSolsEi@plt>:
   109a8:	e28fc600 	add	ip, pc, #0, 12
   109ac:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109b0:	e5bcf69c 	ldr	pc, [ip, #1692]!	; 0x69c

000109b4 <_Unwind_Resume@plt>:
   109b4:	e28fc600 	add	ip, pc, #0, 12
   109b8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109bc:	e5bcf694 	ldr	pc, [ip, #1684]!	; 0x694

000109c0 <__libc_start_main@plt>:
   109c0:	e28fc600 	add	ip, pc, #0, 12
   109c4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109c8:	e5bcf68c 	ldr	pc, [ip, #1676]!	; 0x68c

000109cc <__gmon_start__@plt>:
   109cc:	e28fc600 	add	ip, pc, #0, 12
   109d0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109d4:	e5bcf684 	ldr	pc, [ip, #1668]!	; 0x684

000109d8 <_ZNSt8ios_base4InitD1Ev@plt>:
   109d8:	e28fc600 	add	ip, pc, #0, 12
   109dc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   109e0:	e5bcf67c 	ldr	pc, [ip, #1660]!	; 0x67c

Disassembly of section .text:

000109e4 <_GLOBAL__I_65535_0_test.o.5678>:
   109e4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   109e8:	e59f403c 	ldr	r4, [pc, #60]	; 10a2c <_GLOBAL__I_65535_0_test.o.5678+0x48>
   109ec:	e59f703c 	ldr	r7, [pc, #60]	; 10a30 <_GLOBAL__I_65535_0_test.o.5678+0x4c>
   109f0:	e59f603c 	ldr	r6, [pc, #60]	; 10a34 <_GLOBAL__I_65535_0_test.o.5678+0x50>
   109f4:	e1a00004 	mov	r0, r4
   109f8:	ebffffe4 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   109fc:	e2845004 	add	r5, r4, #4
   10a00:	e1a02007 	mov	r2, r7
   10a04:	e1a01006 	mov	r1, r6
   10a08:	e1a00004 	mov	r0, r4
   10a0c:	ebffffb8 	bl	108f4 <__aeabi_atexit@plt>
   10a10:	e1a00005 	mov	r0, r5
   10a14:	ebffffdd 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10a18:	e1a02007 	mov	r2, r7
   10a1c:	e1a01006 	mov	r1, r6
   10a20:	e1a00005 	mov	r0, r5
   10a24:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10a28:	eaffffb1 	b	108f4 <__aeabi_atexit@plt>
   10a2c:	00022190 	.word	0x00022190
   10a30:	00022068 	.word	0x00022068
   10a34:	000109d8 	.word	0x000109d8

00010a38 <main>:
   10a38:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10a3c:	ed2d8b0a 	vpush	{d8-d12}
   10a40:	e3a01014 	mov	r1, #20
   10a44:	e3a02601 	mov	r2, #1048576	; 0x100000
   10a48:	e3a03000 	mov	r3, #0
   10a4c:	e24dd04c 	sub	sp, sp, #76	; 0x4c
   10a50:	e3a00401 	mov	r0, #16777216	; 0x1000000
   10a54:	e58d102c 	str	r1, [sp, #44]	; 0x2c
   10a58:	e58d2030 	str	r2, [sp, #48]	; 0x30
   10a5c:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10a60:	ebffffc7 	bl	10984 <malloc@plt>
   10a64:	e3500000 	cmp	r0, #0
   10a68:	e58d0038 	str	r0, [sp, #56]	; 0x38
   10a6c:	0a0000d2 	beq	10dbc <main+0x384>
   10a70:	e1a03000 	mov	r3, r0
   10a74:	e3a0201b 	mov	r2, #27
   10a78:	e59f13e8 	ldr	r1, [pc, #1000]	; 10e68 <main+0x430>
   10a7c:	e59f03e8 	ldr	r0, [pc, #1000]	; 10e6c <main+0x434>
   10a80:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10a84:	ebffffbb 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10a88:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
   10a8c:	e59f03d8 	ldr	r0, [pc, #984]	; 10e6c <main+0x434>
   10a90:	ebffffa9 	bl	1093c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10a94:	ebffff9f 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10a98:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   10a9c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
   10aa0:	e59f13c8 	ldr	r1, [pc, #968]	; 10e70 <main+0x438>
   10aa4:	e3a00000 	mov	r0, #0
   10aa8:	e1a0c083 	lsl	ip, r3, #1
   10aac:	e35c0001 	cmp	ip, #1
   10ab0:	e1c200f0 	strd	r0, [r2]
   10ab4:	c3a04000 	movgt	r4, #0
   10ab8:	c2821008 	addgt	r1, r2, #8
   10abc:	c3a05000 	movgt	r5, #0
   10ac0:	c0822203 	addgt	r2, r2, r3, lsl #4
   10ac4:	da000002 	ble	10ad4 <main+0x9c>
   10ac8:	e0c140f8 	strd	r4, [r1], #8
   10acc:	e1520001 	cmp	r2, r1
   10ad0:	1afffffc 	bne	10ac8 <main+0x90>
   10ad4:	e1a04183 	lsl	r4, r3, #3
   10ad8:	e1a00004 	mov	r0, r4
   10adc:	ebffffa8 	bl	10984 <malloc@plt>
   10ae0:	e58d0040 	str	r0, [sp, #64]	; 0x40
   10ae4:	e1a00004 	mov	r0, r4
   10ae8:	ebffffa5 	bl	10984 <malloc@plt>
   10aec:	e58d0044 	str	r0, [sp, #68]	; 0x44
   10af0:	e28d002c 	add	r0, sp, #44	; 0x2c
   10af4:	eb00014c 	bl	1102c <_ZN5State5printEv>
   10af8:	e28d0024 	add	r0, sp, #36	; 0x24
   10afc:	eb000139 	bl	10fe8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b00:	e59f436c 	ldr	r4, [pc, #876]	; 10e74 <main+0x43c>
   10b04:	e59f536c 	ldr	r5, [pc, #876]	; 10e78 <main+0x440>
   10b08:	e59f6364 	ldr	r6, [pc, #868]	; 10e74 <main+0x43c>
   10b0c:	e59f7368 	ldr	r7, [pc, #872]	; 10e7c <main+0x444>
   10b10:	e1a03000 	mov	r3, r0
   10b14:	e3a01000 	mov	r1, #0
   10b18:	e3a00000 	mov	r0, #0
   10b1c:	e1c340f0 	strd	r4, [r3]
   10b20:	e1c300f8 	strd	r0, [r3, #8]
   10b24:	e1c301f8 	strd	r0, [r3, #24]
   10b28:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10b2c:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10b30:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
   10b34:	e1c341f0 	strd	r4, [r3, #16]
   10b38:	e1c342f0 	strd	r4, [r3, #32]
   10b3c:	e28d001c 	add	r0, sp, #28
   10b40:	e58d3024 	str	r3, [sp, #36]	; 0x24
   10b44:	eb000127 	bl	10fe8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b48:	e59f5320 	ldr	r5, [pc, #800]	; 10e70 <main+0x438>
   10b4c:	e1a03000 	mov	r3, r0
   10b50:	e3a01000 	mov	r1, #0
   10b54:	e3a00000 	mov	r0, #0
   10b58:	e3a04000 	mov	r4, #0
   10b5c:	e1c300f0 	strd	r0, [r3]
   10b60:	e1c300f8 	strd	r0, [r3, #8]
   10b64:	e1c301f8 	strd	r0, [r3, #24]
   10b68:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10b6c:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10b70:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10b74:	e1c341f0 	strd	r4, [r3, #16]
   10b78:	e1c342f0 	strd	r4, [r3, #32]
   10b7c:	e28d0014 	add	r0, sp, #20
   10b80:	e58d301c 	str	r3, [sp, #28]
   10b84:	eb000117 	bl	10fe8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b88:	e59f72f0 	ldr	r7, [pc, #752]	; 10e80 <main+0x448>
   10b8c:	e1a03000 	mov	r3, r0
   10b90:	e3a01000 	mov	r1, #0
   10b94:	e3a00000 	mov	r0, #0
   10b98:	e3a06000 	mov	r6, #0
   10b9c:	e1c300f0 	strd	r0, [r3]
   10ba0:	e1c300f8 	strd	r0, [r3, #8]
   10ba4:	e1c301f0 	strd	r0, [r3, #16]
   10ba8:	e1c302f0 	strd	r0, [r3, #32]
   10bac:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10bb0:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10bb4:	e1c361f8 	strd	r6, [r3, #24]
   10bb8:	e1c342f8 	strd	r4, [r3, #40]	; 0x28
   10bbc:	e28d000c 	add	r0, sp, #12
   10bc0:	e58d3014 	str	r3, [sp, #20]
   10bc4:	eb000107 	bl	10fe8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10bc8:	e1a05007 	mov	r5, r7
   10bcc:	e1a04006 	mov	r4, r6
   10bd0:	e3a03000 	mov	r3, #0
   10bd4:	e3a02000 	mov	r2, #0
   10bd8:	e59f9290 	ldr	r9, [pc, #656]	; 10e70 <main+0x438>
   10bdc:	e1c043f0 	strd	r4, [r0, #48]	; 0x30
   10be0:	e59f729c 	ldr	r7, [pc, #668]	; 10e84 <main+0x44c>
   10be4:	e59f5280 	ldr	r5, [pc, #640]	; 10e6c <main+0x434>
   10be8:	e3a08000 	mov	r8, #0
   10bec:	e3a0600a 	mov	r6, #10
   10bf0:	e1c020f8 	strd	r2, [r0, #8]
   10bf4:	e1c021f0 	strd	r2, [r0, #16]
   10bf8:	e1c021f8 	strd	r2, [r0, #24]
   10bfc:	e1c022f0 	strd	r2, [r0, #32]
   10c00:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10c04:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10c08:	e3a03014 	mov	r3, #20
   10c0c:	e1c080f0 	strd	r8, [r0]
   10c10:	e58d3004 	str	r3, [sp, #4]
   10c14:	e58d000c 	str	r0, [sp, #12]
   10c18:	e3a04000 	mov	r4, #0
   10c1c:	e59db030 	ldr	fp, [sp, #48]	; 0x30
   10c20:	e59d301c 	ldr	r3, [sp, #28]
   10c24:	e35b0000 	cmp	fp, #0
   10c28:	da000033 	ble	10cfc <main+0x2c4>
   10c2c:	e3a02002 	mov	r2, #2
   10c30:	e59de034 	ldr	lr, [sp, #52]	; 0x34
   10c34:	e1a0a412 	lsl	sl, r2, r4
   10c38:	e3a02010 	mov	r2, #16
   10c3c:	e1a0920a 	lsl	r9, sl, #4
   10c40:	e08ec412 	add	ip, lr, r2, lsl r4
   10c44:	e3a08000 	mov	r8, #0
   10c48:	e28e0008 	add	r0, lr, #8
   10c4c:	e1a0200c 	mov	r2, ip
   10c50:	e1a0100e 	mov	r1, lr
   10c54:	ed917b02 	vldr	d7, [r1, #8]
   10c58:	ed939b02 	vldr	d9, [r3, #8]
   10c5c:	ed93ab00 	vldr	d10, [r3]
   10c60:	ed938b08 	vldr	d8, [r3, #32]
   10c64:	ed930b0a 	vldr	d0, [r3, #40]	; 0x28
   10c68:	ee274b09 	vmul.f64	d4, d7, d9
   10c6c:	ed102b02 	vldr	d2, [r0, #-8]
   10c70:	ee275b0a 	vmul.f64	d5, d7, d10
   10c74:	ed923b00 	vldr	d3, [r2]
   10c78:	ee276b00 	vmul.f64	d6, d7, d0
   10c7c:	ed93bb04 	vldr	d11, [r3, #16]
   10c80:	ee277b08 	vmul.f64	d7, d7, d8
   10c84:	ed931b06 	vldr	d1, [r3, #24]
   10c88:	ed93cb0c 	vldr	d12, [r3, #48]	; 0x30
   10c8c:	ee124b0a 	vnmls.f64	d4, d2, d10
   10c90:	ed93ab0e 	vldr	d10, [r3, #56]	; 0x38
   10c94:	ee025b09 	vmla.f64	d5, d2, d9
   10c98:	ed929b02 	vldr	d9, [r2, #8]
   10c9c:	ee126b08 	vnmls.f64	d6, d2, d8
   10ca0:	e2811010 	add	r1, r1, #16
   10ca4:	ee027b00 	vmla.f64	d7, d2, d0
   10ca8:	e2800010 	add	r0, r0, #16
   10cac:	e2822010 	add	r2, r2, #16
   10cb0:	ee034b0b 	vmla.f64	d4, d3, d11
   10cb4:	ee035b01 	vmla.f64	d5, d3, d1
   10cb8:	ee036b0c 	vmla.f64	d6, d3, d12
   10cbc:	ee037b0a 	vmla.f64	d7, d3, d10
   10cc0:	ee094b41 	vmls.f64	d4, d9, d1
   10cc4:	ee095b0b 	vmla.f64	d5, d9, d11
   10cc8:	ee096b4a 	vmls.f64	d6, d9, d10
   10ccc:	ee097b0c 	vmla.f64	d7, d9, d12
   10cd0:	ed004b06 	vstr	d4, [r0, #-24]	; 0xffffffe8
   10cd4:	ed015b02 	vstr	d5, [r1, #-8]
   10cd8:	e15c0001 	cmp	ip, r1
   10cdc:	ed026b04 	vstr	d6, [r2, #-16]
   10ce0:	ed027b02 	vstr	d7, [r2, #-8]
   10ce4:	1affffda 	bne	10c54 <main+0x21c>
   10ce8:	e088800a 	add	r8, r8, sl
   10cec:	e15b0008 	cmp	fp, r8
   10cf0:	e08ee009 	add	lr, lr, r9
   10cf4:	e08cc009 	add	ip, ip, r9
   10cf8:	caffffd2 	bgt	10c48 <main+0x210>
   10cfc:	e1a02006 	mov	r2, r6
   10d00:	e1a01007 	mov	r1, r7
   10d04:	e1a00005 	mov	r0, r5
   10d08:	ebffff1a 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d0c:	e1a01004 	mov	r1, r4
   10d10:	e1a00005 	mov	r0, r5
   10d14:	ebffff23 	bl	109a8 <_ZNSolsEi@plt>
   10d18:	e5903000 	ldr	r3, [r0]
   10d1c:	e1a09000 	mov	r9, r0
   10d20:	e513300c 	ldr	r3, [r3, #-12]
   10d24:	e0803003 	add	r3, r0, r3
   10d28:	e593807c 	ldr	r8, [r3, #124]	; 0x7c
   10d2c:	e3580000 	cmp	r8, #0
   10d30:	0a000032 	beq	10e00 <main+0x3c8>
   10d34:	e5d8301c 	ldrb	r3, [r8, #28]
   10d38:	e3530000 	cmp	r3, #0
   10d3c:	0a000026 	beq	10ddc <main+0x3a4>
   10d40:	e5d81027 	ldrb	r1, [r8, #39]	; 0x27
   10d44:	e1a00009 	mov	r0, r9
   10d48:	ebfffee6 	bl	108e8 <_ZNSo3putEc@plt>
   10d4c:	ebfffef7 	bl	10930 <_ZNSo5flushEv@plt>
   10d50:	e2844001 	add	r4, r4, #1
   10d54:	e3540014 	cmp	r4, #20
   10d58:	1affffaf 	bne	10c1c <main+0x1e4>
   10d5c:	e59d3004 	ldr	r3, [sp, #4]
   10d60:	e2533001 	subs	r3, r3, #1
   10d64:	e58d3004 	str	r3, [sp, #4]
   10d68:	1affffaa 	bne	10c18 <main+0x1e0>
   10d6c:	e28d002c 	add	r0, sp, #44	; 0x2c
   10d70:	eb0000ad 	bl	1102c <_ZN5State5printEv>
   10d74:	e28d000c 	add	r0, sp, #12
   10d78:	eb0000e6 	bl	11118 <_ZN8OperatorD2Ev>
   10d7c:	e28d0014 	add	r0, sp, #20
   10d80:	eb0000e4 	bl	11118 <_ZN8OperatorD2Ev>
   10d84:	e28d001c 	add	r0, sp, #28
   10d88:	eb0000e2 	bl	11118 <_ZN8OperatorD2Ev>
   10d8c:	e28d0024 	add	r0, sp, #36	; 0x24
   10d90:	eb0000e0 	bl	11118 <_ZN8OperatorD2Ev>
   10d94:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10d98:	ebfffed8 	bl	10900 <free@plt>
   10d9c:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10da0:	ebfffed6 	bl	10900 <free@plt>
   10da4:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10da8:	ebfffed4 	bl	10900 <free@plt>
   10dac:	e3a00000 	mov	r0, #0
   10db0:	e28dd04c 	add	sp, sp, #76	; 0x4c
   10db4:	ecbd8b0a 	vpop	{d8-d12}
   10db8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10dbc:	e3a02022 	mov	r2, #34	; 0x22
   10dc0:	e59f10c0 	ldr	r1, [pc, #192]	; 10e88 <main+0x450>
   10dc4:	e59f00c0 	ldr	r0, [pc, #192]	; 10e8c <main+0x454>
   10dc8:	ebfffeea 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10dcc:	e59f00b8 	ldr	r0, [pc, #184]	; 10e8c <main+0x454>
   10dd0:	ebfffed0 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10dd4:	e3a00001 	mov	r0, #1
   10dd8:	ebfffed1 	bl	10924 <exit@plt>
   10ddc:	e1a00008 	mov	r0, r8
   10de0:	ebfffede 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10de4:	e5983000 	ldr	r3, [r8]
   10de8:	e1a00008 	mov	r0, r8
   10dec:	e1a01006 	mov	r1, r6
   10df0:	e5933018 	ldr	r3, [r3, #24]
   10df4:	e12fff33 	blx	r3
   10df8:	e1a01000 	mov	r1, r0
   10dfc:	eaffffd0 	b	10d44 <main+0x30c>
   10e00:	ebfffed9 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   10e04:	e1a04000 	mov	r4, r0
   10e08:	e28d000c 	add	r0, sp, #12
   10e0c:	eb0000c1 	bl	11118 <_ZN8OperatorD2Ev>
   10e10:	e28d0014 	add	r0, sp, #20
   10e14:	eb0000bf 	bl	11118 <_ZN8OperatorD2Ev>
   10e18:	e28d001c 	add	r0, sp, #28
   10e1c:	eb0000bd 	bl	11118 <_ZN8OperatorD2Ev>
   10e20:	e28d0024 	add	r0, sp, #36	; 0x24
   10e24:	eb0000bb 	bl	11118 <_ZN8OperatorD2Ev>
   10e28:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10e2c:	ebfffeb3 	bl	10900 <free@plt>
   10e30:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10e34:	ebfffeb1 	bl	10900 <free@plt>
   10e38:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10e3c:	ebfffeaf 	bl	10900 <free@plt>
   10e40:	e1a00004 	mov	r0, r4
   10e44:	ebfffeda 	bl	109b4 <_Unwind_Resume@plt>
   10e48:	e1a04000 	mov	r4, r0
   10e4c:	eaffffef 	b	10e10 <main+0x3d8>
   10e50:	e1a04000 	mov	r4, r0
   10e54:	eaffffef 	b	10e18 <main+0x3e0>
   10e58:	e1a04000 	mov	r4, r0
   10e5c:	eaffffef 	b	10e20 <main+0x3e8>
   10e60:	e1a04000 	mov	r4, r0
   10e64:	eaffffef 	b	10e28 <main+0x3f0>
   10e68:	000111d4 	.word	0x000111d4
   10e6c:	00022070 	.word	0x00022070
   10e70:	3ff00000 	.word	0x3ff00000
   10e74:	667f3bcc 	.word	0x667f3bcc
   10e78:	3fe6a09e 	.word	0x3fe6a09e
   10e7c:	bfe6a09e 	.word	0xbfe6a09e
   10e80:	bff00000 	.word	0xbff00000
   10e84:	000111f0 	.word	0x000111f0
   10e88:	000111a4 	.word	0x000111a4
   10e8c:	00022100 	.word	0x00022100

00010e90 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   10e90:	e92d4010 	push	{r4, lr}
   10e94:	e59f4018 	ldr	r4, [pc, #24]	; 10eb4 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   10e98:	e1a00004 	mov	r0, r4
   10e9c:	ebfffebb 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10ea0:	e1a00004 	mov	r0, r4
   10ea4:	e59f200c 	ldr	r2, [pc, #12]	; 10eb8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   10ea8:	e59f100c 	ldr	r1, [pc, #12]	; 10ebc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   10eac:	e8bd4010 	pop	{r4, lr}
   10eb0:	eafffe8f 	b	108f4 <__aeabi_atexit@plt>
   10eb4:	00022198 	.word	0x00022198
   10eb8:	00022068 	.word	0x00022068
   10ebc:	000109d8 	.word	0x000109d8

00010ec0 <_start>:
   10ec0:	e3a0b000 	mov	fp, #0
   10ec4:	e3a0e000 	mov	lr, #0
   10ec8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10ecc:	e1a0200d 	mov	r2, sp
   10ed0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10ed4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10ed8:	e59fc010 	ldr	ip, [pc, #16]	; 10ef0 <_start+0x30>
   10edc:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10ee0:	e59f000c 	ldr	r0, [pc, #12]	; 10ef4 <_start+0x34>
   10ee4:	e59f300c 	ldr	r3, [pc, #12]	; 10ef8 <_start+0x38>
   10ee8:	ebfffeb4 	bl	109c0 <__libc_start_main@plt>
   10eec:	ebfffe95 	bl	10948 <abort@plt>
   10ef0:	00011194 	.word	0x00011194
   10ef4:	00010a38 	.word	0x00010a38
   10ef8:	00011134 	.word	0x00011134

00010efc <call_weak_fn>:
   10efc:	e59f3014 	ldr	r3, [pc, #20]	; 10f18 <call_weak_fn+0x1c>
   10f00:	e59f2014 	ldr	r2, [pc, #20]	; 10f1c <call_weak_fn+0x20>
   10f04:	e08f3003 	add	r3, pc, r3
   10f08:	e7932002 	ldr	r2, [r3, r2]
   10f0c:	e3520000 	cmp	r2, #0
   10f10:	012fff1e 	bxeq	lr
   10f14:	eafffeac 	b	109cc <__gmon_start__@plt>
   10f18:	000110f4 	.word	0x000110f4
   10f1c:	00000060 	.word	0x00000060

00010f20 <deregister_tm_clones>:
   10f20:	e59f301c 	ldr	r3, [pc, #28]	; 10f44 <deregister_tm_clones+0x24>
   10f24:	e59f001c 	ldr	r0, [pc, #28]	; 10f48 <deregister_tm_clones+0x28>
   10f28:	e0433000 	sub	r3, r3, r0
   10f2c:	e3530006 	cmp	r3, #6
   10f30:	912fff1e 	bxls	lr
   10f34:	e59f3010 	ldr	r3, [pc, #16]	; 10f4c <deregister_tm_clones+0x2c>
   10f38:	e3530000 	cmp	r3, #0
   10f3c:	012fff1e 	bxeq	lr
   10f40:	e12fff13 	bx	r3
   10f44:	0002206f 	.word	0x0002206f
   10f48:	0002206c 	.word	0x0002206c
   10f4c:	00000000 	.word	0x00000000

00010f50 <register_tm_clones>:
   10f50:	e59f1024 	ldr	r1, [pc, #36]	; 10f7c <register_tm_clones+0x2c>
   10f54:	e59f0024 	ldr	r0, [pc, #36]	; 10f80 <register_tm_clones+0x30>
   10f58:	e0411000 	sub	r1, r1, r0
   10f5c:	e1a01141 	asr	r1, r1, #2
   10f60:	e0811fa1 	add	r1, r1, r1, lsr #31
   10f64:	e1b010c1 	asrs	r1, r1, #1
   10f68:	012fff1e 	bxeq	lr
   10f6c:	e59f3010 	ldr	r3, [pc, #16]	; 10f84 <register_tm_clones+0x34>
   10f70:	e3530000 	cmp	r3, #0
   10f74:	012fff1e 	bxeq	lr
   10f78:	e12fff13 	bx	r3
   10f7c:	0002206c 	.word	0x0002206c
   10f80:	0002206c 	.word	0x0002206c
   10f84:	00000000 	.word	0x00000000

00010f88 <__do_global_dtors_aux>:
   10f88:	e92d4010 	push	{r4, lr}
   10f8c:	e59f4018 	ldr	r4, [pc, #24]	; 10fac <__do_global_dtors_aux+0x24>
   10f90:	e5d43000 	ldrb	r3, [r4]
   10f94:	e3530000 	cmp	r3, #0
   10f98:	18bd8010 	popne	{r4, pc}
   10f9c:	ebffffdf 	bl	10f20 <deregister_tm_clones>
   10fa0:	e3a03001 	mov	r3, #1
   10fa4:	e5c43000 	strb	r3, [r4]
   10fa8:	e8bd8010 	pop	{r4, pc}
   10fac:	0002218c 	.word	0x0002218c

00010fb0 <frame_dummy>:
   10fb0:	e59f0028 	ldr	r0, [pc, #40]	; 10fe0 <frame_dummy+0x30>
   10fb4:	e5903000 	ldr	r3, [r0]
   10fb8:	e3530000 	cmp	r3, #0
   10fbc:	1a000000 	bne	10fc4 <frame_dummy+0x14>
   10fc0:	eaffffe2 	b	10f50 <register_tm_clones>
   10fc4:	e59f3018 	ldr	r3, [pc, #24]	; 10fe4 <frame_dummy+0x34>
   10fc8:	e3530000 	cmp	r3, #0
   10fcc:	0afffffb 	beq	10fc0 <frame_dummy+0x10>
   10fd0:	e92d4010 	push	{r4, lr}
   10fd4:	e12fff33 	blx	r3
   10fd8:	e8bd4010 	pop	{r4, lr}
   10fdc:	eaffffdb 	b	10f50 <register_tm_clones>
   10fe0:	00021efc 	.word	0x00021efc
   10fe4:	00000000 	.word	0x00000000

00010fe8 <_ZN8Operator11malloc_gateEi.constprop.3>:
   10fe8:	e92d4010 	push	{r4, lr}
   10fec:	e1a04000 	mov	r4, r0
   10ff0:	e3a0005f 	mov	r0, #95	; 0x5f
   10ff4:	ebfffe62 	bl	10984 <malloc@plt>
   10ff8:	e3500000 	cmp	r0, #0
   10ffc:	e5840004 	str	r0, [r4, #4]
   11000:	0a000002 	beq	11010 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   11004:	e280001f 	add	r0, r0, #31
   11008:	e3c0001f 	bic	r0, r0, #31
   1100c:	e8bd8010 	pop	{r4, pc}
   11010:	e59f100c 	ldr	r1, [pc, #12]	; 11024 <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   11014:	e59f000c 	ldr	r0, [pc, #12]	; 11028 <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   11018:	ebfffe4d 	bl	10954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   1101c:	e3a00001 	mov	r0, #1
   11020:	ebfffe3f 	bl	10924 <exit@plt>
   11024:	000111a4 	.word	0x000111a4
   11028:	00022100 	.word	0x00022100

0001102c <_ZN5State5printEv>:
   1102c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11030:	e1a09000 	mov	r9, r0
   11034:	e59f70cc 	ldr	r7, [pc, #204]	; 11108 <_ZN5State5printEv+0xdc>
   11038:	e59fb0cc 	ldr	fp, [pc, #204]	; 1110c <_ZN5State5printEv+0xe0>
   1103c:	e1a06007 	mov	r6, r7
   11040:	e3a05000 	mov	r5, #0
   11044:	e3a08001 	mov	r8, #1
   11048:	e5994008 	ldr	r4, [r9, #8]
   1104c:	e1a02008 	mov	r2, r8
   11050:	e0844005 	add	r4, r4, r5
   11054:	e1a0100b 	mov	r1, fp
   11058:	e1a00006 	mov	r0, r6
   1105c:	ebfffe45 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11060:	ed940b00 	vldr	d0, [r4]
   11064:	e1a00006 	mov	r0, r6
   11068:	ebfffe4b 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   1106c:	e3a02002 	mov	r2, #2
   11070:	e59f1098 	ldr	r1, [pc, #152]	; 11110 <_ZN5State5printEv+0xe4>
   11074:	e1a0a000 	mov	sl, r0
   11078:	ebfffe3e 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1107c:	ed940b02 	vldr	d0, [r4, #8]
   11080:	e1a0000a 	mov	r0, sl
   11084:	ebfffe44 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   11088:	e1a02008 	mov	r2, r8
   1108c:	e59f1080 	ldr	r1, [pc, #128]	; 11114 <_ZN5State5printEv+0xe8>
   11090:	ebfffe38 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11094:	e5973000 	ldr	r3, [r7]
   11098:	e513300c 	ldr	r3, [r3, #-12]
   1109c:	e0873003 	add	r3, r7, r3
   110a0:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110a4:	e3540000 	cmp	r4, #0
   110a8:	0a000015 	beq	11104 <_ZN5State5printEv+0xd8>
   110ac:	e5d4301c 	ldrb	r3, [r4, #28]
   110b0:	e3530000 	cmp	r3, #0
   110b4:	0a000009 	beq	110e0 <_ZN5State5printEv+0xb4>
   110b8:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110bc:	e1a00006 	mov	r0, r6
   110c0:	ebfffe08 	bl	108e8 <_ZNSo3putEc@plt>
   110c4:	e2855010 	add	r5, r5, #16
   110c8:	ebfffe18 	bl	10930 <_ZNSo5flushEv@plt>
   110cc:	e3550040 	cmp	r5, #64	; 0x40
   110d0:	1affffdc 	bne	11048 <_ZN5State5printEv+0x1c>
   110d4:	e59f002c 	ldr	r0, [pc, #44]	; 11108 <_ZN5State5printEv+0xdc>
   110d8:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   110dc:	eafffe0d 	b	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   110e0:	e1a00004 	mov	r0, r4
   110e4:	ebfffe1d 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   110e8:	e5943000 	ldr	r3, [r4]
   110ec:	e3a0100a 	mov	r1, #10
   110f0:	e1a00004 	mov	r0, r4
   110f4:	e5933018 	ldr	r3, [r3, #24]
   110f8:	e12fff33 	blx	r3
   110fc:	e1a01000 	mov	r1, r0
   11100:	eaffffed 	b	110bc <_ZN5State5printEv+0x90>
   11104:	ebfffe18 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   11108:	00022070 	.word	0x00022070
   1110c:	000111c8 	.word	0x000111c8
   11110:	000111cc 	.word	0x000111cc
   11114:	000111d0 	.word	0x000111d0

00011118 <_ZN8OperatorD2Ev>:
   11118:	e92d4010 	push	{r4, lr}
   1111c:	e1a04000 	mov	r4, r0
   11120:	e5900004 	ldr	r0, [r0, #4]
   11124:	ebfffdf5 	bl	10900 <free@plt>
   11128:	e1a00004 	mov	r0, r4
   1112c:	e8bd8010 	pop	{r4, pc}

00011130 <_Z13dummy_cmatvecPKdii>:
   11130:	e12fff1e 	bx	lr

00011134 <__libc_csu_init>:
   11134:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11138:	e1a07000 	mov	r7, r0
   1113c:	e59f6048 	ldr	r6, [pc, #72]	; 1118c <__libc_csu_init+0x58>
   11140:	e59f5048 	ldr	r5, [pc, #72]	; 11190 <__libc_csu_init+0x5c>
   11144:	e08f6006 	add	r6, pc, r6
   11148:	e08f5005 	add	r5, pc, r5
   1114c:	e0466005 	sub	r6, r6, r5
   11150:	e1a08001 	mov	r8, r1
   11154:	e1a09002 	mov	r9, r2
   11158:	ebfffdda 	bl	108c8 <_init>
   1115c:	e1b06146 	asrs	r6, r6, #2
   11160:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   11164:	e3a04000 	mov	r4, #0
   11168:	e2844001 	add	r4, r4, #1
   1116c:	e4953004 	ldr	r3, [r5], #4
   11170:	e1a02009 	mov	r2, r9
   11174:	e1a01008 	mov	r1, r8
   11178:	e1a00007 	mov	r0, r7
   1117c:	e12fff33 	blx	r3
   11180:	e1560004 	cmp	r6, r4
   11184:	1afffff7 	bne	11168 <__libc_csu_init+0x34>
   11188:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   1118c:	00010dac 	.word	0x00010dac
   11190:	00010d9c 	.word	0x00010d9c

00011194 <__libc_csu_fini>:
   11194:	e12fff1e 	bx	lr

Disassembly of section .fini:

00011198 <_fini>:
   11198:	e92d4008 	push	{r3, lr}
   1119c:	e8bd8008 	pop	{r3, pc}
