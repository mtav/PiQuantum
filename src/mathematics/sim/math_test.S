
math_test:     file format elf32-littlearm


Disassembly of section .init:

000108c8 <_init>:
   108c8:	e92d4008 	push	{r3, lr}
   108cc:	eb00018e 	bl	10f0c <call_weak_fn>
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
   10a3c:	ed2d8b10 	vpush	{d8-d15}
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
   10a6c:	0a0000d6 	beq	10dcc <main+0x394>
   10a70:	e1a03000 	mov	r3, r0
   10a74:	e3a0201b 	mov	r2, #27
   10a78:	e59f13f8 	ldr	r1, [pc, #1016]	; 10e78 <main+0x440>
   10a7c:	e59f03f8 	ldr	r0, [pc, #1016]	; 10e7c <main+0x444>
   10a80:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10a84:	ebffffbb 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10a88:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
   10a8c:	e59f03e8 	ldr	r0, [pc, #1000]	; 10e7c <main+0x444>
   10a90:	ebffffa9 	bl	1093c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10a94:	ebffff9f 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10a98:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   10a9c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
   10aa0:	e59f13d8 	ldr	r1, [pc, #984]	; 10e80 <main+0x448>
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
   10af4:	eb000150 	bl	1103c <_ZN5State5printEv>
   10af8:	e28d0024 	add	r0, sp, #36	; 0x24
   10afc:	eb00013d 	bl	10ff8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b00:	e59f437c 	ldr	r4, [pc, #892]	; 10e84 <main+0x44c>
   10b04:	e59f537c 	ldr	r5, [pc, #892]	; 10e88 <main+0x450>
   10b08:	e59f6374 	ldr	r6, [pc, #884]	; 10e84 <main+0x44c>
   10b0c:	e59f7378 	ldr	r7, [pc, #888]	; 10e8c <main+0x454>
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
   10b44:	eb00012b 	bl	10ff8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b48:	e59f5330 	ldr	r5, [pc, #816]	; 10e80 <main+0x448>
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
   10b84:	eb00011b 	bl	10ff8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b88:	e59f7300 	ldr	r7, [pc, #768]	; 10e90 <main+0x458>
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
   10bc4:	eb00010b 	bl	10ff8 <_ZN8Operator11malloc_gateEi.constprop.3>
   10bc8:	e1a05007 	mov	r5, r7
   10bcc:	e1a04006 	mov	r4, r6
   10bd0:	e3a03000 	mov	r3, #0
   10bd4:	e3a02000 	mov	r2, #0
   10bd8:	e59f92a0 	ldr	r9, [pc, #672]	; 10e80 <main+0x448>
   10bdc:	e1c043f0 	strd	r4, [r0, #48]	; 0x30
   10be0:	e59f72ac 	ldr	r7, [pc, #684]	; 10e94 <main+0x45c>
   10be4:	e59f5290 	ldr	r5, [pc, #656]	; 10e7c <main+0x444>
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
   10c28:	da000037 	ble	10d0c <main+0x2d4>
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
   10c58:	ed93ab02 	vldr	d10, [r3, #8]
   10c5c:	ed939b00 	vldr	d9, [r3]
   10c60:	ed926b02 	vldr	d6, [r2, #8]
   10c64:	ed93bb06 	vldr	d11, [r3, #24]
   10c68:	ee278b0a 	vmul.f64	d8, d7, d10
   10c6c:	ed93cb08 	vldr	d12, [r3, #32]
   10c70:	ee273b09 	vmul.f64	d3, d7, d9
   10c74:	ed93db0a 	vldr	d13, [r3, #40]	; 0x28
   10c78:	ee265b0b 	vmul.f64	d5, d6, d11
   10c7c:	ed93eb0c 	vldr	d14, [r3, #48]	; 0x30
   10c80:	ed93fb0e 	vldr	d15, [r3, #56]	; 0x38
   10c84:	ed101b02 	vldr	d1, [r0, #-8]
   10c88:	ee274b0d 	vmul.f64	d4, d7, d13
   10c8c:	ed922b00 	vldr	d2, [r2]
   10c90:	ee260b0f 	vmul.f64	d0, d6, d15
   10c94:	e2811010 	add	r1, r1, #16
   10c98:	ee277b0c 	vmul.f64	d7, d7, d12
   10c9c:	e2800010 	add	r0, r0, #16
   10ca0:	ee266b0e 	vmul.f64	d6, d6, d14
   10ca4:	e2822010 	add	r2, r2, #16
   10ca8:	ee013b0a 	vmla.f64	d3, d1, d10
   10cac:	ed93ab04 	vldr	d10, [r3, #16]
   10cb0:	ee118b09 	vnmls.f64	d8, d1, d9
   10cb4:	eeb09b45 	vmov.f64	d9, d5
   10cb8:	ee125b0a 	vnmls.f64	d5, d2, d10
   10cbc:	ee114b0c 	vnmls.f64	d4, d1, d12
   10cc0:	ee029b0b 	vmla.f64	d9, d2, d11
   10cc4:	ee017b0d 	vmla.f64	d7, d1, d13
   10cc8:	ee120b0e 	vnmls.f64	d0, d2, d14
   10ccc:	ee026b0f 	vmla.f64	d6, d2, d15
   10cd0:	ee358b08 	vadd.f64	d8, d5, d8
   10cd4:	ee333b09 	vadd.f64	d3, d3, d9
   10cd8:	ee344b00 	vadd.f64	d4, d4, d0
   10cdc:	ee376b06 	vadd.f64	d6, d7, d6
   10ce0:	ed008b06 	vstr	d8, [r0, #-24]	; 0xffffffe8
   10ce4:	ed013b02 	vstr	d3, [r1, #-8]
   10ce8:	e15c0001 	cmp	ip, r1
   10cec:	ed024b04 	vstr	d4, [r2, #-16]
   10cf0:	ed026b02 	vstr	d6, [r2, #-8]
   10cf4:	1affffd6 	bne	10c54 <main+0x21c>
   10cf8:	e088800a 	add	r8, r8, sl
   10cfc:	e15b0008 	cmp	fp, r8
   10d00:	e08ee009 	add	lr, lr, r9
   10d04:	e08cc009 	add	ip, ip, r9
   10d08:	caffffce 	bgt	10c48 <main+0x210>
   10d0c:	e1a02006 	mov	r2, r6
   10d10:	e1a01007 	mov	r1, r7
   10d14:	e1a00005 	mov	r0, r5
   10d18:	ebffff16 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d1c:	e1a01004 	mov	r1, r4
   10d20:	e1a00005 	mov	r0, r5
   10d24:	ebffff1f 	bl	109a8 <_ZNSolsEi@plt>
   10d28:	e5903000 	ldr	r3, [r0]
   10d2c:	e1a09000 	mov	r9, r0
   10d30:	e513300c 	ldr	r3, [r3, #-12]
   10d34:	e0803003 	add	r3, r0, r3
   10d38:	e593807c 	ldr	r8, [r3, #124]	; 0x7c
   10d3c:	e3580000 	cmp	r8, #0
   10d40:	0a000032 	beq	10e10 <main+0x3d8>
   10d44:	e5d8301c 	ldrb	r3, [r8, #28]
   10d48:	e3530000 	cmp	r3, #0
   10d4c:	0a000026 	beq	10dec <main+0x3b4>
   10d50:	e5d81027 	ldrb	r1, [r8, #39]	; 0x27
   10d54:	e1a00009 	mov	r0, r9
   10d58:	ebfffee2 	bl	108e8 <_ZNSo3putEc@plt>
   10d5c:	ebfffef3 	bl	10930 <_ZNSo5flushEv@plt>
   10d60:	e2844001 	add	r4, r4, #1
   10d64:	e3540014 	cmp	r4, #20
   10d68:	1affffab 	bne	10c1c <main+0x1e4>
   10d6c:	e59d3004 	ldr	r3, [sp, #4]
   10d70:	e2533001 	subs	r3, r3, #1
   10d74:	e58d3004 	str	r3, [sp, #4]
   10d78:	1affffa6 	bne	10c18 <main+0x1e0>
   10d7c:	e28d002c 	add	r0, sp, #44	; 0x2c
   10d80:	eb0000ad 	bl	1103c <_ZN5State5printEv>
   10d84:	e28d000c 	add	r0, sp, #12
   10d88:	eb0000e6 	bl	11128 <_ZN8OperatorD2Ev>
   10d8c:	e28d0014 	add	r0, sp, #20
   10d90:	eb0000e4 	bl	11128 <_ZN8OperatorD2Ev>
   10d94:	e28d001c 	add	r0, sp, #28
   10d98:	eb0000e2 	bl	11128 <_ZN8OperatorD2Ev>
   10d9c:	e28d0024 	add	r0, sp, #36	; 0x24
   10da0:	eb0000e0 	bl	11128 <_ZN8OperatorD2Ev>
   10da4:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10da8:	ebfffed4 	bl	10900 <free@plt>
   10dac:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10db0:	ebfffed2 	bl	10900 <free@plt>
   10db4:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10db8:	ebfffed0 	bl	10900 <free@plt>
   10dbc:	e3a00000 	mov	r0, #0
   10dc0:	e28dd04c 	add	sp, sp, #76	; 0x4c
   10dc4:	ecbd8b10 	vpop	{d8-d15}
   10dc8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10dcc:	e3a02022 	mov	r2, #34	; 0x22
   10dd0:	e59f10c0 	ldr	r1, [pc, #192]	; 10e98 <main+0x460>
   10dd4:	e59f00c0 	ldr	r0, [pc, #192]	; 10e9c <main+0x464>
   10dd8:	ebfffee6 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10ddc:	e59f00b8 	ldr	r0, [pc, #184]	; 10e9c <main+0x464>
   10de0:	ebfffecc 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10de4:	e3a00001 	mov	r0, #1
   10de8:	ebfffecd 	bl	10924 <exit@plt>
   10dec:	e1a00008 	mov	r0, r8
   10df0:	ebfffeda 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10df4:	e5983000 	ldr	r3, [r8]
   10df8:	e1a00008 	mov	r0, r8
   10dfc:	e1a01006 	mov	r1, r6
   10e00:	e5933018 	ldr	r3, [r3, #24]
   10e04:	e12fff33 	blx	r3
   10e08:	e1a01000 	mov	r1, r0
   10e0c:	eaffffd0 	b	10d54 <main+0x31c>
   10e10:	ebfffed5 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   10e14:	e1a04000 	mov	r4, r0
   10e18:	e28d000c 	add	r0, sp, #12
   10e1c:	eb0000c1 	bl	11128 <_ZN8OperatorD2Ev>
   10e20:	e28d0014 	add	r0, sp, #20
   10e24:	eb0000bf 	bl	11128 <_ZN8OperatorD2Ev>
   10e28:	e28d001c 	add	r0, sp, #28
   10e2c:	eb0000bd 	bl	11128 <_ZN8OperatorD2Ev>
   10e30:	e28d0024 	add	r0, sp, #36	; 0x24
   10e34:	eb0000bb 	bl	11128 <_ZN8OperatorD2Ev>
   10e38:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10e3c:	ebfffeaf 	bl	10900 <free@plt>
   10e40:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10e44:	ebfffead 	bl	10900 <free@plt>
   10e48:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10e4c:	ebfffeab 	bl	10900 <free@plt>
   10e50:	e1a00004 	mov	r0, r4
   10e54:	ebfffed6 	bl	109b4 <_Unwind_Resume@plt>
   10e58:	e1a04000 	mov	r4, r0
   10e5c:	eaffffef 	b	10e20 <main+0x3e8>
   10e60:	e1a04000 	mov	r4, r0
   10e64:	eaffffef 	b	10e28 <main+0x3f0>
   10e68:	e1a04000 	mov	r4, r0
   10e6c:	eaffffef 	b	10e30 <main+0x3f8>
   10e70:	e1a04000 	mov	r4, r0
   10e74:	eaffffef 	b	10e38 <main+0x400>
   10e78:	000111e4 	.word	0x000111e4
   10e7c:	00022070 	.word	0x00022070
   10e80:	3ff00000 	.word	0x3ff00000
   10e84:	667f3bcc 	.word	0x667f3bcc
   10e88:	3fe6a09e 	.word	0x3fe6a09e
   10e8c:	bfe6a09e 	.word	0xbfe6a09e
   10e90:	bff00000 	.word	0xbff00000
   10e94:	00011200 	.word	0x00011200
   10e98:	000111b4 	.word	0x000111b4
   10e9c:	00022100 	.word	0x00022100

00010ea0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   10ea0:	e92d4010 	push	{r4, lr}
   10ea4:	e59f4018 	ldr	r4, [pc, #24]	; 10ec4 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   10ea8:	e1a00004 	mov	r0, r4
   10eac:	ebfffeb7 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10eb0:	e1a00004 	mov	r0, r4
   10eb4:	e59f200c 	ldr	r2, [pc, #12]	; 10ec8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   10eb8:	e59f100c 	ldr	r1, [pc, #12]	; 10ecc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   10ebc:	e8bd4010 	pop	{r4, lr}
   10ec0:	eafffe8b 	b	108f4 <__aeabi_atexit@plt>
   10ec4:	00022198 	.word	0x00022198
   10ec8:	00022068 	.word	0x00022068
   10ecc:	000109d8 	.word	0x000109d8

00010ed0 <_start>:
   10ed0:	e3a0b000 	mov	fp, #0
   10ed4:	e3a0e000 	mov	lr, #0
   10ed8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10edc:	e1a0200d 	mov	r2, sp
   10ee0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10ee4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10ee8:	e59fc010 	ldr	ip, [pc, #16]	; 10f00 <_start+0x30>
   10eec:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10ef0:	e59f000c 	ldr	r0, [pc, #12]	; 10f04 <_start+0x34>
   10ef4:	e59f300c 	ldr	r3, [pc, #12]	; 10f08 <_start+0x38>
   10ef8:	ebfffeb0 	bl	109c0 <__libc_start_main@plt>
   10efc:	ebfffe91 	bl	10948 <abort@plt>
   10f00:	000111a4 	.word	0x000111a4
   10f04:	00010a38 	.word	0x00010a38
   10f08:	00011144 	.word	0x00011144

00010f0c <call_weak_fn>:
   10f0c:	e59f3014 	ldr	r3, [pc, #20]	; 10f28 <call_weak_fn+0x1c>
   10f10:	e59f2014 	ldr	r2, [pc, #20]	; 10f2c <call_weak_fn+0x20>
   10f14:	e08f3003 	add	r3, pc, r3
   10f18:	e7932002 	ldr	r2, [r3, r2]
   10f1c:	e3520000 	cmp	r2, #0
   10f20:	012fff1e 	bxeq	lr
   10f24:	eafffea8 	b	109cc <__gmon_start__@plt>
   10f28:	000110e4 	.word	0x000110e4
   10f2c:	00000060 	.word	0x00000060

00010f30 <deregister_tm_clones>:
   10f30:	e59f301c 	ldr	r3, [pc, #28]	; 10f54 <deregister_tm_clones+0x24>
   10f34:	e59f001c 	ldr	r0, [pc, #28]	; 10f58 <deregister_tm_clones+0x28>
   10f38:	e0433000 	sub	r3, r3, r0
   10f3c:	e3530006 	cmp	r3, #6
   10f40:	912fff1e 	bxls	lr
   10f44:	e59f3010 	ldr	r3, [pc, #16]	; 10f5c <deregister_tm_clones+0x2c>
   10f48:	e3530000 	cmp	r3, #0
   10f4c:	012fff1e 	bxeq	lr
   10f50:	e12fff13 	bx	r3
   10f54:	0002206f 	.word	0x0002206f
   10f58:	0002206c 	.word	0x0002206c
   10f5c:	00000000 	.word	0x00000000

00010f60 <register_tm_clones>:
   10f60:	e59f1024 	ldr	r1, [pc, #36]	; 10f8c <register_tm_clones+0x2c>
   10f64:	e59f0024 	ldr	r0, [pc, #36]	; 10f90 <register_tm_clones+0x30>
   10f68:	e0411000 	sub	r1, r1, r0
   10f6c:	e1a01141 	asr	r1, r1, #2
   10f70:	e0811fa1 	add	r1, r1, r1, lsr #31
   10f74:	e1b010c1 	asrs	r1, r1, #1
   10f78:	012fff1e 	bxeq	lr
   10f7c:	e59f3010 	ldr	r3, [pc, #16]	; 10f94 <register_tm_clones+0x34>
   10f80:	e3530000 	cmp	r3, #0
   10f84:	012fff1e 	bxeq	lr
   10f88:	e12fff13 	bx	r3
   10f8c:	0002206c 	.word	0x0002206c
   10f90:	0002206c 	.word	0x0002206c
   10f94:	00000000 	.word	0x00000000

00010f98 <__do_global_dtors_aux>:
   10f98:	e92d4010 	push	{r4, lr}
   10f9c:	e59f4018 	ldr	r4, [pc, #24]	; 10fbc <__do_global_dtors_aux+0x24>
   10fa0:	e5d43000 	ldrb	r3, [r4]
   10fa4:	e3530000 	cmp	r3, #0
   10fa8:	18bd8010 	popne	{r4, pc}
   10fac:	ebffffdf 	bl	10f30 <deregister_tm_clones>
   10fb0:	e3a03001 	mov	r3, #1
   10fb4:	e5c43000 	strb	r3, [r4]
   10fb8:	e8bd8010 	pop	{r4, pc}
   10fbc:	0002218c 	.word	0x0002218c

00010fc0 <frame_dummy>:
   10fc0:	e59f0028 	ldr	r0, [pc, #40]	; 10ff0 <frame_dummy+0x30>
   10fc4:	e5903000 	ldr	r3, [r0]
   10fc8:	e3530000 	cmp	r3, #0
   10fcc:	1a000000 	bne	10fd4 <frame_dummy+0x14>
   10fd0:	eaffffe2 	b	10f60 <register_tm_clones>
   10fd4:	e59f3018 	ldr	r3, [pc, #24]	; 10ff4 <frame_dummy+0x34>
   10fd8:	e3530000 	cmp	r3, #0
   10fdc:	0afffffb 	beq	10fd0 <frame_dummy+0x10>
   10fe0:	e92d4010 	push	{r4, lr}
   10fe4:	e12fff33 	blx	r3
   10fe8:	e8bd4010 	pop	{r4, lr}
   10fec:	eaffffdb 	b	10f60 <register_tm_clones>
   10ff0:	00021efc 	.word	0x00021efc
   10ff4:	00000000 	.word	0x00000000

00010ff8 <_ZN8Operator11malloc_gateEi.constprop.3>:
   10ff8:	e92d4010 	push	{r4, lr}
   10ffc:	e1a04000 	mov	r4, r0
   11000:	e3a0005f 	mov	r0, #95	; 0x5f
   11004:	ebfffe5e 	bl	10984 <malloc@plt>
   11008:	e3500000 	cmp	r0, #0
   1100c:	e5840004 	str	r0, [r4, #4]
   11010:	0a000002 	beq	11020 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   11014:	e280001f 	add	r0, r0, #31
   11018:	e3c0001f 	bic	r0, r0, #31
   1101c:	e8bd8010 	pop	{r4, pc}
   11020:	e59f100c 	ldr	r1, [pc, #12]	; 11034 <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   11024:	e59f000c 	ldr	r0, [pc, #12]	; 11038 <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   11028:	ebfffe49 	bl	10954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   1102c:	e3a00001 	mov	r0, #1
   11030:	ebfffe3b 	bl	10924 <exit@plt>
   11034:	000111b4 	.word	0x000111b4
   11038:	00022100 	.word	0x00022100

0001103c <_ZN5State5printEv>:
   1103c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11040:	e1a09000 	mov	r9, r0
   11044:	e59f70cc 	ldr	r7, [pc, #204]	; 11118 <_ZN5State5printEv+0xdc>
   11048:	e59fb0cc 	ldr	fp, [pc, #204]	; 1111c <_ZN5State5printEv+0xe0>
   1104c:	e1a06007 	mov	r6, r7
   11050:	e3a05000 	mov	r5, #0
   11054:	e3a08001 	mov	r8, #1
   11058:	e5994008 	ldr	r4, [r9, #8]
   1105c:	e1a02008 	mov	r2, r8
   11060:	e0844005 	add	r4, r4, r5
   11064:	e1a0100b 	mov	r1, fp
   11068:	e1a00006 	mov	r0, r6
   1106c:	ebfffe41 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11070:	ed940b00 	vldr	d0, [r4]
   11074:	e1a00006 	mov	r0, r6
   11078:	ebfffe47 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   1107c:	e3a02002 	mov	r2, #2
   11080:	e59f1098 	ldr	r1, [pc, #152]	; 11120 <_ZN5State5printEv+0xe4>
   11084:	e1a0a000 	mov	sl, r0
   11088:	ebfffe3a 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1108c:	ed940b02 	vldr	d0, [r4, #8]
   11090:	e1a0000a 	mov	r0, sl
   11094:	ebfffe40 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   11098:	e1a02008 	mov	r2, r8
   1109c:	e59f1080 	ldr	r1, [pc, #128]	; 11124 <_ZN5State5printEv+0xe8>
   110a0:	ebfffe34 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110a4:	e5973000 	ldr	r3, [r7]
   110a8:	e513300c 	ldr	r3, [r3, #-12]
   110ac:	e0873003 	add	r3, r7, r3
   110b0:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110b4:	e3540000 	cmp	r4, #0
   110b8:	0a000015 	beq	11114 <_ZN5State5printEv+0xd8>
   110bc:	e5d4301c 	ldrb	r3, [r4, #28]
   110c0:	e3530000 	cmp	r3, #0
   110c4:	0a000009 	beq	110f0 <_ZN5State5printEv+0xb4>
   110c8:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110cc:	e1a00006 	mov	r0, r6
   110d0:	ebfffe04 	bl	108e8 <_ZNSo3putEc@plt>
   110d4:	e2855010 	add	r5, r5, #16
   110d8:	ebfffe14 	bl	10930 <_ZNSo5flushEv@plt>
   110dc:	e3550040 	cmp	r5, #64	; 0x40
   110e0:	1affffdc 	bne	11058 <_ZN5State5printEv+0x1c>
   110e4:	e59f002c 	ldr	r0, [pc, #44]	; 11118 <_ZN5State5printEv+0xdc>
   110e8:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   110ec:	eafffe09 	b	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   110f0:	e1a00004 	mov	r0, r4
   110f4:	ebfffe19 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   110f8:	e5943000 	ldr	r3, [r4]
   110fc:	e3a0100a 	mov	r1, #10
   11100:	e1a00004 	mov	r0, r4
   11104:	e5933018 	ldr	r3, [r3, #24]
   11108:	e12fff33 	blx	r3
   1110c:	e1a01000 	mov	r1, r0
   11110:	eaffffed 	b	110cc <_ZN5State5printEv+0x90>
   11114:	ebfffe14 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   11118:	00022070 	.word	0x00022070
   1111c:	000111d8 	.word	0x000111d8
   11120:	000111dc 	.word	0x000111dc
   11124:	000111e0 	.word	0x000111e0

00011128 <_ZN8OperatorD2Ev>:
   11128:	e92d4010 	push	{r4, lr}
   1112c:	e1a04000 	mov	r4, r0
   11130:	e5900004 	ldr	r0, [r0, #4]
   11134:	ebfffdf1 	bl	10900 <free@plt>
   11138:	e1a00004 	mov	r0, r4
   1113c:	e8bd8010 	pop	{r4, pc}

00011140 <_Z13dummy_cmatvecPKdii>:
   11140:	e12fff1e 	bx	lr

00011144 <__libc_csu_init>:
   11144:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11148:	e1a07000 	mov	r7, r0
   1114c:	e59f6048 	ldr	r6, [pc, #72]	; 1119c <__libc_csu_init+0x58>
   11150:	e59f5048 	ldr	r5, [pc, #72]	; 111a0 <__libc_csu_init+0x5c>
   11154:	e08f6006 	add	r6, pc, r6
   11158:	e08f5005 	add	r5, pc, r5
   1115c:	e0466005 	sub	r6, r6, r5
   11160:	e1a08001 	mov	r8, r1
   11164:	e1a09002 	mov	r9, r2
   11168:	ebfffdd6 	bl	108c8 <_init>
   1116c:	e1b06146 	asrs	r6, r6, #2
   11170:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   11174:	e3a04000 	mov	r4, #0
   11178:	e2844001 	add	r4, r4, #1
   1117c:	e4953004 	ldr	r3, [r5], #4
   11180:	e1a02009 	mov	r2, r9
   11184:	e1a01008 	mov	r1, r8
   11188:	e1a00007 	mov	r0, r7
   1118c:	e12fff33 	blx	r3
   11190:	e1560004 	cmp	r6, r4
   11194:	1afffff7 	bne	11178 <__libc_csu_init+0x34>
   11198:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   1119c:	00010d9c 	.word	0x00010d9c
   111a0:	00010d8c 	.word	0x00010d8c

000111a4 <__libc_csu_fini>:
   111a4:	e12fff1e 	bx	lr

Disassembly of section .fini:

000111a8 <_fini>:
   111a8:	e92d4008 	push	{r3, lr}
   111ac:	e8bd8008 	pop	{r3, pc}
