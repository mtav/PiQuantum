
math_test:     file format elf32-littlearm


Disassembly of section .init:

000108c8 <_init>:
   108c8:	e92d4008 	push	{r3, lr}
   108cc:	eb000194 	bl	10f24 <call_weak_fn>
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

000109e4 <_GLOBAL__I_65535_0_test.o.5677>:
   109e4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   109e8:	e59f403c 	ldr	r4, [pc, #60]	; 10a2c <_GLOBAL__I_65535_0_test.o.5677+0x48>
   109ec:	e59f703c 	ldr	r7, [pc, #60]	; 10a30 <_GLOBAL__I_65535_0_test.o.5677+0x4c>
   109f0:	e59f603c 	ldr	r6, [pc, #60]	; 10a34 <_GLOBAL__I_65535_0_test.o.5677+0x50>
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
   10a4c:	e24dd054 	sub	sp, sp, #84	; 0x54
   10a50:	e3a00401 	mov	r0, #16777216	; 0x1000000
   10a54:	e58d1034 	str	r1, [sp, #52]	; 0x34
   10a58:	e58d2038 	str	r2, [sp, #56]	; 0x38
   10a5c:	e58d303c 	str	r3, [sp, #60]	; 0x3c
   10a60:	ebffffc7 	bl	10984 <malloc@plt>
   10a64:	e3500000 	cmp	r0, #0
   10a68:	e58d0040 	str	r0, [sp, #64]	; 0x40
   10a6c:	0a0000dc 	beq	10de4 <main+0x3ac>
   10a70:	e1a03000 	mov	r3, r0
   10a74:	e3a0201b 	mov	r2, #27
   10a78:	e59f1410 	ldr	r1, [pc, #1040]	; 10e90 <main+0x458>
   10a7c:	e59f0410 	ldr	r0, [pc, #1040]	; 10e94 <main+0x45c>
   10a80:	e58d303c 	str	r3, [sp, #60]	; 0x3c
   10a84:	ebffffbb 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10a88:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   10a8c:	e59f0400 	ldr	r0, [pc, #1024]	; 10e94 <main+0x45c>
   10a90:	ebffffa9 	bl	1093c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10a94:	ebffff9f 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10a98:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
   10a9c:	e59d203c 	ldr	r2, [sp, #60]	; 0x3c
   10aa0:	e59f13f0 	ldr	r1, [pc, #1008]	; 10e98 <main+0x460>
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
   10ae0:	e58d0048 	str	r0, [sp, #72]	; 0x48
   10ae4:	e1a00004 	mov	r0, r4
   10ae8:	ebffffa5 	bl	10984 <malloc@plt>
   10aec:	e58d004c 	str	r0, [sp, #76]	; 0x4c
   10af0:	e28d0034 	add	r0, sp, #52	; 0x34
   10af4:	eb000156 	bl	11054 <_ZN5State5printEv>
   10af8:	e28d002c 	add	r0, sp, #44	; 0x2c
   10afc:	eb000143 	bl	11010 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b00:	e59f4394 	ldr	r4, [pc, #916]	; 10e9c <main+0x464>
   10b04:	e59f5394 	ldr	r5, [pc, #916]	; 10ea0 <main+0x468>
   10b08:	e59f638c 	ldr	r6, [pc, #908]	; 10e9c <main+0x464>
   10b0c:	e59f7390 	ldr	r7, [pc, #912]	; 10ea4 <main+0x46c>
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
   10b3c:	e28d0024 	add	r0, sp, #36	; 0x24
   10b40:	e58d302c 	str	r3, [sp, #44]	; 0x2c
   10b44:	eb000131 	bl	11010 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b48:	e59f5348 	ldr	r5, [pc, #840]	; 10e98 <main+0x460>
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
   10b7c:	e28d001c 	add	r0, sp, #28
   10b80:	e58d3024 	str	r3, [sp, #36]	; 0x24
   10b84:	eb000121 	bl	11010 <_ZN8Operator11malloc_gateEi.constprop.3>
   10b88:	e59f7318 	ldr	r7, [pc, #792]	; 10ea8 <main+0x470>
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
   10bbc:	e28d0014 	add	r0, sp, #20
   10bc0:	e58d301c 	str	r3, [sp, #28]
   10bc4:	eb000111 	bl	11010 <_ZN8Operator11malloc_gateEi.constprop.3>
   10bc8:	e1a05007 	mov	r5, r7
   10bcc:	e1a04006 	mov	r4, r6
   10bd0:	e3a03000 	mov	r3, #0
   10bd4:	e3a02000 	mov	r2, #0
   10bd8:	e59f72b8 	ldr	r7, [pc, #696]	; 10e98 <main+0x460>
   10bdc:	e1c043f0 	strd	r4, [r0, #48]	; 0x30
   10be0:	e59f52ac 	ldr	r5, [pc, #684]	; 10e94 <main+0x45c>
   10be4:	e3a06000 	mov	r6, #0
   10be8:	e1c020f8 	strd	r2, [r0, #8]
   10bec:	e1c021f0 	strd	r2, [r0, #16]
   10bf0:	e1c021f8 	strd	r2, [r0, #24]
   10bf4:	e1c022f0 	strd	r2, [r0, #32]
   10bf8:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10bfc:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10c00:	e3a03014 	mov	r3, #20
   10c04:	e1c060f0 	strd	r6, [r0]
   10c08:	e58d300c 	str	r3, [sp, #12]
   10c0c:	e58d0014 	str	r0, [sp, #20]
   10c10:	e3a04000 	mov	r4, #0
   10c14:	e59db038 	ldr	fp, [sp, #56]	; 0x38
   10c18:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
   10c1c:	e35b0000 	cmp	fp, #0
   10c20:	da00003f 	ble	10d24 <main+0x2ec>
   10c24:	e3a02002 	mov	r2, #2
   10c28:	e59d703c 	ldr	r7, [sp, #60]	; 0x3c
   10c2c:	e1a0a412 	lsl	sl, r2, r4
   10c30:	e3a02010 	mov	r2, #16
   10c34:	e1a0920a 	lsl	r9, sl, #4
   10c38:	e087e412 	add	lr, r7, r2, lsl r4
   10c3c:	e3a08000 	mov	r8, #0
   10c40:	e2870008 	add	r0, r7, #8
   10c44:	e28e1008 	add	r1, lr, #8
   10c48:	e1a0c00e 	mov	ip, lr
   10c4c:	e1a02007 	mov	r2, r7
   10c50:	e58d7008 	str	r7, [sp, #8]
   10c54:	ed927b02 	vldr	d7, [r2, #8]
   10c58:	ed93ab02 	vldr	d10, [r3, #8]
   10c5c:	ed93bb00 	vldr	d11, [r3]
   10c60:	ed93fb0a 	vldr	d15, [r3, #40]	; 0x28
   10c64:	ed93eb08 	vldr	d14, [r3, #32]
   10c68:	ee2a3b07 	vmul.f64	d3, d10, d7
   10c6c:	ed9c6b02 	vldr	d6, [ip, #8]
   10c70:	ee2b4b07 	vmul.f64	d4, d11, d7
   10c74:	ed930b0e 	vldr	d0, [r3, #56]	; 0x38
   10c78:	ee275b0f 	vmul.f64	d5, d7, d15
   10c7c:	ed93db06 	vldr	d13, [r3, #24]
   10c80:	ee277b0e 	vmul.f64	d7, d7, d14
   10c84:	ed93cb04 	vldr	d12, [r3, #16]
   10c88:	ee260b00 	vmul.f64	d0, d6, d0
   10c8c:	ed101b02 	vldr	d1, [r0, #-8]
   10c90:	ee2d9b06 	vmul.f64	d9, d13, d6
   10c94:	ed112b02 	vldr	d2, [r1, #-8]
   10c98:	ee2c8b06 	vmul.f64	d8, d12, d6
   10c9c:	e2822010 	add	r2, r2, #16
   10ca0:	ee014b0a 	vmla.f64	d4, d1, d10
   10ca4:	ed8d7b00 	vstr	d7, [sp]
   10ca8:	ed937b0c 	vldr	d7, [r3, #48]	; 0x30
   10cac:	ee1b3b01 	vnmls.f64	d3, d11, d1
   10cb0:	e28cc010 	add	ip, ip, #16
   10cb4:	ee115b0e 	vnmls.f64	d5, d1, d14
   10cb8:	e2800010 	add	r0, r0, #16
   10cbc:	ee266b07 	vmul.f64	d6, d6, d7
   10cc0:	ed9d7b00 	vldr	d7, [sp]
   10cc4:	ee1c9b02 	vnmls.f64	d9, d12, d2
   10cc8:	ee028b0d 	vmla.f64	d8, d2, d13
   10ccc:	ee017b0f 	vmla.f64	d7, d1, d15
   10cd0:	ed931b0c 	vldr	d1, [r3, #48]	; 0x30
   10cd4:	ee120b01 	vnmls.f64	d0, d2, d1
   10cd8:	ed931b0e 	vldr	d1, [r3, #56]	; 0x38
   10cdc:	ee333b09 	vadd.f64	d3, d3, d9
   10ce0:	ee344b08 	vadd.f64	d4, d4, d8
   10ce4:	ee026b01 	vmla.f64	d6, d2, d1
   10ce8:	ee355b00 	vadd.f64	d5, d5, d0
   10cec:	ed003b06 	vstr	d3, [r0, #-24]	; 0xffffffe8
   10cf0:	ed024b02 	vstr	d4, [r2, #-8]
   10cf4:	e15e0002 	cmp	lr, r2
   10cf8:	ee376b06 	vadd.f64	d6, d7, d6
   10cfc:	ed015b02 	vstr	d5, [r1, #-8]
   10d00:	ec576b16 	vmov	r6, r7, d6
   10d04:	e0c161f0 	strd	r6, [r1], #16
   10d08:	1affffd1 	bne	10c54 <main+0x21c>
   10d0c:	e59d7008 	ldr	r7, [sp, #8]
   10d10:	e088800a 	add	r8, r8, sl
   10d14:	e15b0008 	cmp	fp, r8
   10d18:	e0877009 	add	r7, r7, r9
   10d1c:	e08ee009 	add	lr, lr, r9
   10d20:	caffffc6 	bgt	10c40 <main+0x208>
   10d24:	e3a0200a 	mov	r2, #10
   10d28:	e59f117c 	ldr	r1, [pc, #380]	; 10eac <main+0x474>
   10d2c:	e1a00005 	mov	r0, r5
   10d30:	ebffff10 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d34:	e1a01004 	mov	r1, r4
   10d38:	e1a00005 	mov	r0, r5
   10d3c:	ebffff19 	bl	109a8 <_ZNSolsEi@plt>
   10d40:	e5903000 	ldr	r3, [r0]
   10d44:	e1a08000 	mov	r8, r0
   10d48:	e513300c 	ldr	r3, [r3, #-12]
   10d4c:	e0803003 	add	r3, r0, r3
   10d50:	e593707c 	ldr	r7, [r3, #124]	; 0x7c
   10d54:	e3570000 	cmp	r7, #0
   10d58:	0a000032 	beq	10e28 <main+0x3f0>
   10d5c:	e5d7301c 	ldrb	r3, [r7, #28]
   10d60:	e3530000 	cmp	r3, #0
   10d64:	0a000026 	beq	10e04 <main+0x3cc>
   10d68:	e5d71027 	ldrb	r1, [r7, #39]	; 0x27
   10d6c:	e1a00008 	mov	r0, r8
   10d70:	ebfffedc 	bl	108e8 <_ZNSo3putEc@plt>
   10d74:	ebfffeed 	bl	10930 <_ZNSo5flushEv@plt>
   10d78:	e2844001 	add	r4, r4, #1
   10d7c:	e3540014 	cmp	r4, #20
   10d80:	1affffa3 	bne	10c14 <main+0x1dc>
   10d84:	e59d300c 	ldr	r3, [sp, #12]
   10d88:	e2533001 	subs	r3, r3, #1
   10d8c:	e58d300c 	str	r3, [sp, #12]
   10d90:	1affff9e 	bne	10c10 <main+0x1d8>
   10d94:	e28d0034 	add	r0, sp, #52	; 0x34
   10d98:	eb0000ad 	bl	11054 <_ZN5State5printEv>
   10d9c:	e28d0014 	add	r0, sp, #20
   10da0:	eb0000e6 	bl	11140 <_ZN8OperatorD2Ev>
   10da4:	e28d001c 	add	r0, sp, #28
   10da8:	eb0000e4 	bl	11140 <_ZN8OperatorD2Ev>
   10dac:	e28d0024 	add	r0, sp, #36	; 0x24
   10db0:	eb0000e2 	bl	11140 <_ZN8OperatorD2Ev>
   10db4:	e28d002c 	add	r0, sp, #44	; 0x2c
   10db8:	eb0000e0 	bl	11140 <_ZN8OperatorD2Ev>
   10dbc:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10dc0:	ebfffece 	bl	10900 <free@plt>
   10dc4:	e59d0048 	ldr	r0, [sp, #72]	; 0x48
   10dc8:	ebfffecc 	bl	10900 <free@plt>
   10dcc:	e59d004c 	ldr	r0, [sp, #76]	; 0x4c
   10dd0:	ebfffeca 	bl	10900 <free@plt>
   10dd4:	e3a00000 	mov	r0, #0
   10dd8:	e28dd054 	add	sp, sp, #84	; 0x54
   10ddc:	ecbd8b10 	vpop	{d8-d15}
   10de0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10de4:	e3a02022 	mov	r2, #34	; 0x22
   10de8:	e59f10c0 	ldr	r1, [pc, #192]	; 10eb0 <main+0x478>
   10dec:	e59f00c0 	ldr	r0, [pc, #192]	; 10eb4 <main+0x47c>
   10df0:	ebfffee0 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10df4:	e59f00b8 	ldr	r0, [pc, #184]	; 10eb4 <main+0x47c>
   10df8:	ebfffec6 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10dfc:	e3a00001 	mov	r0, #1
   10e00:	ebfffec7 	bl	10924 <exit@plt>
   10e04:	e1a00007 	mov	r0, r7
   10e08:	ebfffed4 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10e0c:	e5973000 	ldr	r3, [r7]
   10e10:	e1a00007 	mov	r0, r7
   10e14:	e3a0100a 	mov	r1, #10
   10e18:	e5933018 	ldr	r3, [r3, #24]
   10e1c:	e12fff33 	blx	r3
   10e20:	e1a01000 	mov	r1, r0
   10e24:	eaffffd0 	b	10d6c <main+0x334>
   10e28:	ebfffecf 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   10e2c:	e1a04000 	mov	r4, r0
   10e30:	e28d0014 	add	r0, sp, #20
   10e34:	eb0000c1 	bl	11140 <_ZN8OperatorD2Ev>
   10e38:	e28d001c 	add	r0, sp, #28
   10e3c:	eb0000bf 	bl	11140 <_ZN8OperatorD2Ev>
   10e40:	e28d0024 	add	r0, sp, #36	; 0x24
   10e44:	eb0000bd 	bl	11140 <_ZN8OperatorD2Ev>
   10e48:	e28d002c 	add	r0, sp, #44	; 0x2c
   10e4c:	eb0000bb 	bl	11140 <_ZN8OperatorD2Ev>
   10e50:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10e54:	ebfffea9 	bl	10900 <free@plt>
   10e58:	e59d0048 	ldr	r0, [sp, #72]	; 0x48
   10e5c:	ebfffea7 	bl	10900 <free@plt>
   10e60:	e59d004c 	ldr	r0, [sp, #76]	; 0x4c
   10e64:	ebfffea5 	bl	10900 <free@plt>
   10e68:	e1a00004 	mov	r0, r4
   10e6c:	ebfffed0 	bl	109b4 <_Unwind_Resume@plt>
   10e70:	e1a04000 	mov	r4, r0
   10e74:	eaffffef 	b	10e38 <main+0x400>
   10e78:	e1a04000 	mov	r4, r0
   10e7c:	eaffffef 	b	10e40 <main+0x408>
   10e80:	e1a04000 	mov	r4, r0
   10e84:	eaffffef 	b	10e48 <main+0x410>
   10e88:	e1a04000 	mov	r4, r0
   10e8c:	eaffffef 	b	10e50 <main+0x418>
   10e90:	000111fc 	.word	0x000111fc
   10e94:	00022070 	.word	0x00022070
   10e98:	3ff00000 	.word	0x3ff00000
   10e9c:	667f3bcc 	.word	0x667f3bcc
   10ea0:	3fe6a09e 	.word	0x3fe6a09e
   10ea4:	bfe6a09e 	.word	0xbfe6a09e
   10ea8:	bff00000 	.word	0xbff00000
   10eac:	00011218 	.word	0x00011218
   10eb0:	000111cc 	.word	0x000111cc
   10eb4:	00022100 	.word	0x00022100

00010eb8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   10eb8:	e92d4010 	push	{r4, lr}
   10ebc:	e59f4018 	ldr	r4, [pc, #24]	; 10edc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   10ec0:	e1a00004 	mov	r0, r4
   10ec4:	ebfffeb1 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10ec8:	e1a00004 	mov	r0, r4
   10ecc:	e59f200c 	ldr	r2, [pc, #12]	; 10ee0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   10ed0:	e59f100c 	ldr	r1, [pc, #12]	; 10ee4 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   10ed4:	e8bd4010 	pop	{r4, lr}
   10ed8:	eafffe85 	b	108f4 <__aeabi_atexit@plt>
   10edc:	00022198 	.word	0x00022198
   10ee0:	00022068 	.word	0x00022068
   10ee4:	000109d8 	.word	0x000109d8

00010ee8 <_start>:
   10ee8:	e3a0b000 	mov	fp, #0
   10eec:	e3a0e000 	mov	lr, #0
   10ef0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10ef4:	e1a0200d 	mov	r2, sp
   10ef8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10efc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10f00:	e59fc010 	ldr	ip, [pc, #16]	; 10f18 <_start+0x30>
   10f04:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10f08:	e59f000c 	ldr	r0, [pc, #12]	; 10f1c <_start+0x34>
   10f0c:	e59f300c 	ldr	r3, [pc, #12]	; 10f20 <_start+0x38>
   10f10:	ebfffeaa 	bl	109c0 <__libc_start_main@plt>
   10f14:	ebfffe8b 	bl	10948 <abort@plt>
   10f18:	000111bc 	.word	0x000111bc
   10f1c:	00010a38 	.word	0x00010a38
   10f20:	0001115c 	.word	0x0001115c

00010f24 <call_weak_fn>:
   10f24:	e59f3014 	ldr	r3, [pc, #20]	; 10f40 <call_weak_fn+0x1c>
   10f28:	e59f2014 	ldr	r2, [pc, #20]	; 10f44 <call_weak_fn+0x20>
   10f2c:	e08f3003 	add	r3, pc, r3
   10f30:	e7932002 	ldr	r2, [r3, r2]
   10f34:	e3520000 	cmp	r2, #0
   10f38:	012fff1e 	bxeq	lr
   10f3c:	eafffea2 	b	109cc <__gmon_start__@plt>
   10f40:	000110cc 	.word	0x000110cc
   10f44:	00000060 	.word	0x00000060

00010f48 <deregister_tm_clones>:
   10f48:	e59f301c 	ldr	r3, [pc, #28]	; 10f6c <deregister_tm_clones+0x24>
   10f4c:	e59f001c 	ldr	r0, [pc, #28]	; 10f70 <deregister_tm_clones+0x28>
   10f50:	e0433000 	sub	r3, r3, r0
   10f54:	e3530006 	cmp	r3, #6
   10f58:	912fff1e 	bxls	lr
   10f5c:	e59f3010 	ldr	r3, [pc, #16]	; 10f74 <deregister_tm_clones+0x2c>
   10f60:	e3530000 	cmp	r3, #0
   10f64:	012fff1e 	bxeq	lr
   10f68:	e12fff13 	bx	r3
   10f6c:	0002206f 	.word	0x0002206f
   10f70:	0002206c 	.word	0x0002206c
   10f74:	00000000 	.word	0x00000000

00010f78 <register_tm_clones>:
   10f78:	e59f1024 	ldr	r1, [pc, #36]	; 10fa4 <register_tm_clones+0x2c>
   10f7c:	e59f0024 	ldr	r0, [pc, #36]	; 10fa8 <register_tm_clones+0x30>
   10f80:	e0411000 	sub	r1, r1, r0
   10f84:	e1a01141 	asr	r1, r1, #2
   10f88:	e0811fa1 	add	r1, r1, r1, lsr #31
   10f8c:	e1b010c1 	asrs	r1, r1, #1
   10f90:	012fff1e 	bxeq	lr
   10f94:	e59f3010 	ldr	r3, [pc, #16]	; 10fac <register_tm_clones+0x34>
   10f98:	e3530000 	cmp	r3, #0
   10f9c:	012fff1e 	bxeq	lr
   10fa0:	e12fff13 	bx	r3
   10fa4:	0002206c 	.word	0x0002206c
   10fa8:	0002206c 	.word	0x0002206c
   10fac:	00000000 	.word	0x00000000

00010fb0 <__do_global_dtors_aux>:
   10fb0:	e92d4010 	push	{r4, lr}
   10fb4:	e59f4018 	ldr	r4, [pc, #24]	; 10fd4 <__do_global_dtors_aux+0x24>
   10fb8:	e5d43000 	ldrb	r3, [r4]
   10fbc:	e3530000 	cmp	r3, #0
   10fc0:	18bd8010 	popne	{r4, pc}
   10fc4:	ebffffdf 	bl	10f48 <deregister_tm_clones>
   10fc8:	e3a03001 	mov	r3, #1
   10fcc:	e5c43000 	strb	r3, [r4]
   10fd0:	e8bd8010 	pop	{r4, pc}
   10fd4:	0002218c 	.word	0x0002218c

00010fd8 <frame_dummy>:
   10fd8:	e59f0028 	ldr	r0, [pc, #40]	; 11008 <frame_dummy+0x30>
   10fdc:	e5903000 	ldr	r3, [r0]
   10fe0:	e3530000 	cmp	r3, #0
   10fe4:	1a000000 	bne	10fec <frame_dummy+0x14>
   10fe8:	eaffffe2 	b	10f78 <register_tm_clones>
   10fec:	e59f3018 	ldr	r3, [pc, #24]	; 1100c <frame_dummy+0x34>
   10ff0:	e3530000 	cmp	r3, #0
   10ff4:	0afffffb 	beq	10fe8 <frame_dummy+0x10>
   10ff8:	e92d4010 	push	{r4, lr}
   10ffc:	e12fff33 	blx	r3
   11000:	e8bd4010 	pop	{r4, lr}
   11004:	eaffffdb 	b	10f78 <register_tm_clones>
   11008:	00021efc 	.word	0x00021efc
   1100c:	00000000 	.word	0x00000000

00011010 <_ZN8Operator11malloc_gateEi.constprop.3>:
   11010:	e92d4010 	push	{r4, lr}
   11014:	e1a04000 	mov	r4, r0
   11018:	e3a0005f 	mov	r0, #95	; 0x5f
   1101c:	ebfffe58 	bl	10984 <malloc@plt>
   11020:	e3500000 	cmp	r0, #0
   11024:	e5840004 	str	r0, [r4, #4]
   11028:	0a000002 	beq	11038 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   1102c:	e280001f 	add	r0, r0, #31
   11030:	e3c0001f 	bic	r0, r0, #31
   11034:	e8bd8010 	pop	{r4, pc}
   11038:	e59f100c 	ldr	r1, [pc, #12]	; 1104c <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   1103c:	e59f000c 	ldr	r0, [pc, #12]	; 11050 <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   11040:	ebfffe43 	bl	10954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11044:	e3a00001 	mov	r0, #1
   11048:	ebfffe35 	bl	10924 <exit@plt>
   1104c:	000111cc 	.word	0x000111cc
   11050:	00022100 	.word	0x00022100

00011054 <_ZN5State5printEv>:
   11054:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11058:	e1a09000 	mov	r9, r0
   1105c:	e59f70cc 	ldr	r7, [pc, #204]	; 11130 <_ZN5State5printEv+0xdc>
   11060:	e59fb0cc 	ldr	fp, [pc, #204]	; 11134 <_ZN5State5printEv+0xe0>
   11064:	e1a06007 	mov	r6, r7
   11068:	e3a05000 	mov	r5, #0
   1106c:	e3a08001 	mov	r8, #1
   11070:	e5994008 	ldr	r4, [r9, #8]
   11074:	e1a02008 	mov	r2, r8
   11078:	e0844005 	add	r4, r4, r5
   1107c:	e1a0100b 	mov	r1, fp
   11080:	e1a00006 	mov	r0, r6
   11084:	ebfffe3b 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11088:	ed940b00 	vldr	d0, [r4]
   1108c:	e1a00006 	mov	r0, r6
   11090:	ebfffe41 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   11094:	e3a02002 	mov	r2, #2
   11098:	e59f1098 	ldr	r1, [pc, #152]	; 11138 <_ZN5State5printEv+0xe4>
   1109c:	e1a0a000 	mov	sl, r0
   110a0:	ebfffe34 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110a4:	ed940b02 	vldr	d0, [r4, #8]
   110a8:	e1a0000a 	mov	r0, sl
   110ac:	ebfffe3a 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   110b0:	e1a02008 	mov	r2, r8
   110b4:	e59f1080 	ldr	r1, [pc, #128]	; 1113c <_ZN5State5printEv+0xe8>
   110b8:	ebfffe2e 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110bc:	e5973000 	ldr	r3, [r7]
   110c0:	e513300c 	ldr	r3, [r3, #-12]
   110c4:	e0873003 	add	r3, r7, r3
   110c8:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110cc:	e3540000 	cmp	r4, #0
   110d0:	0a000015 	beq	1112c <_ZN5State5printEv+0xd8>
   110d4:	e5d4301c 	ldrb	r3, [r4, #28]
   110d8:	e3530000 	cmp	r3, #0
   110dc:	0a000009 	beq	11108 <_ZN5State5printEv+0xb4>
   110e0:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110e4:	e1a00006 	mov	r0, r6
   110e8:	ebfffdfe 	bl	108e8 <_ZNSo3putEc@plt>
   110ec:	e2855010 	add	r5, r5, #16
   110f0:	ebfffe0e 	bl	10930 <_ZNSo5flushEv@plt>
   110f4:	e3550040 	cmp	r5, #64	; 0x40
   110f8:	1affffdc 	bne	11070 <_ZN5State5printEv+0x1c>
   110fc:	e59f002c 	ldr	r0, [pc, #44]	; 11130 <_ZN5State5printEv+0xdc>
   11100:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11104:	eafffe03 	b	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   11108:	e1a00004 	mov	r0, r4
   1110c:	ebfffe13 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11110:	e5943000 	ldr	r3, [r4]
   11114:	e3a0100a 	mov	r1, #10
   11118:	e1a00004 	mov	r0, r4
   1111c:	e5933018 	ldr	r3, [r3, #24]
   11120:	e12fff33 	blx	r3
   11124:	e1a01000 	mov	r1, r0
   11128:	eaffffed 	b	110e4 <_ZN5State5printEv+0x90>
   1112c:	ebfffe0e 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   11130:	00022070 	.word	0x00022070
   11134:	000111f0 	.word	0x000111f0
   11138:	000111f4 	.word	0x000111f4
   1113c:	000111f8 	.word	0x000111f8

00011140 <_ZN8OperatorD2Ev>:
   11140:	e92d4010 	push	{r4, lr}
   11144:	e1a04000 	mov	r4, r0
   11148:	e5900004 	ldr	r0, [r0, #4]
   1114c:	ebfffdeb 	bl	10900 <free@plt>
   11150:	e1a00004 	mov	r0, r4
   11154:	e8bd8010 	pop	{r4, pc}

00011158 <_Z13dummy_cmatvecPKdii>:
   11158:	e12fff1e 	bx	lr

0001115c <__libc_csu_init>:
   1115c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11160:	e1a07000 	mov	r7, r0
   11164:	e59f6048 	ldr	r6, [pc, #72]	; 111b4 <__libc_csu_init+0x58>
   11168:	e59f5048 	ldr	r5, [pc, #72]	; 111b8 <__libc_csu_init+0x5c>
   1116c:	e08f6006 	add	r6, pc, r6
   11170:	e08f5005 	add	r5, pc, r5
   11174:	e0466005 	sub	r6, r6, r5
   11178:	e1a08001 	mov	r8, r1
   1117c:	e1a09002 	mov	r9, r2
   11180:	ebfffdd0 	bl	108c8 <_init>
   11184:	e1b06146 	asrs	r6, r6, #2
   11188:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   1118c:	e3a04000 	mov	r4, #0
   11190:	e2844001 	add	r4, r4, #1
   11194:	e4953004 	ldr	r3, [r5], #4
   11198:	e1a02009 	mov	r2, r9
   1119c:	e1a01008 	mov	r1, r8
   111a0:	e1a00007 	mov	r0, r7
   111a4:	e12fff33 	blx	r3
   111a8:	e1560004 	cmp	r6, r4
   111ac:	1afffff7 	bne	11190 <__libc_csu_init+0x34>
   111b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   111b4:	00010d84 	.word	0x00010d84
   111b8:	00010d74 	.word	0x00010d74

000111bc <__libc_csu_fini>:
   111bc:	e12fff1e 	bx	lr

Disassembly of section .fini:

000111c0 <_fini>:
   111c0:	e92d4008 	push	{r3, lr}
   111c4:	e8bd8008 	pop	{r3, pc}
