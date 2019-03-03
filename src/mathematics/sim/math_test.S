
math_test:     file format elf32-littlearm


Disassembly of section .init:

000108c8 <_init>:
   108c8:	e92d4008 	push	{r3, lr}
   108cc:	eb000190 	bl	10f14 <call_weak_fn>
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
   10a6c:	0a0000d8 	beq	10dd4 <main+0x39c>
   10a70:	e1a03000 	mov	r3, r0
   10a74:	e3a0201b 	mov	r2, #27
   10a78:	e59f1400 	ldr	r1, [pc, #1024]	; 10e80 <main+0x448>
   10a7c:	e59f0400 	ldr	r0, [pc, #1024]	; 10e84 <main+0x44c>
   10a80:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10a84:	ebffffbb 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10a88:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
   10a8c:	e59f03f0 	ldr	r0, [pc, #1008]	; 10e84 <main+0x44c>
   10a90:	ebffffa9 	bl	1093c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10a94:	ebffff9f 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10a98:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   10a9c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
   10aa0:	e59f13e0 	ldr	r1, [pc, #992]	; 10e88 <main+0x450>
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
   10af4:	eb000152 	bl	11044 <_ZN5State5printEv>
   10af8:	e28d0024 	add	r0, sp, #36	; 0x24
   10afc:	eb00013f 	bl	11000 <_ZN8Operator11malloc_gateEi.constprop.4>
   10b00:	e59f4384 	ldr	r4, [pc, #900]	; 10e8c <main+0x454>
   10b04:	e59f5384 	ldr	r5, [pc, #900]	; 10e90 <main+0x458>
   10b08:	e59f637c 	ldr	r6, [pc, #892]	; 10e8c <main+0x454>
   10b0c:	e59f7380 	ldr	r7, [pc, #896]	; 10e94 <main+0x45c>
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
   10b44:	eb00012d 	bl	11000 <_ZN8Operator11malloc_gateEi.constprop.4>
   10b48:	e59f5338 	ldr	r5, [pc, #824]	; 10e88 <main+0x450>
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
   10b84:	eb00011d 	bl	11000 <_ZN8Operator11malloc_gateEi.constprop.4>
   10b88:	e59f7308 	ldr	r7, [pc, #776]	; 10e98 <main+0x460>
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
   10bc4:	eb00010d 	bl	11000 <_ZN8Operator11malloc_gateEi.constprop.4>
   10bc8:	e3a03000 	mov	r3, #0
   10bcc:	e3a02000 	mov	r2, #0
   10bd0:	e1c040f0 	strd	r4, [r0]
   10bd4:	e1c020f8 	strd	r2, [r0, #8]
   10bd8:	e1c021f0 	strd	r2, [r0, #16]
   10bdc:	e1c021f8 	strd	r2, [r0, #24]
   10be0:	e1c022f0 	strd	r2, [r0, #32]
   10be4:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10be8:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10bec:	e3a03014 	mov	r3, #20
   10bf0:	e1c063f0 	strd	r6, [r0, #48]	; 0x30
   10bf4:	e58d3004 	str	r3, [sp, #4]
   10bf8:	e58d000c 	str	r0, [sp, #12]
   10bfc:	e3a05000 	mov	r5, #0
   10c00:	e59d9030 	ldr	r9, [sp, #48]	; 0x30
   10c04:	e3a02001 	mov	r2, #1
   10c08:	e3590000 	cmp	r9, #0
   10c0c:	e59d301c 	ldr	r3, [sp, #28]
   10c10:	e1a06512 	lsl	r6, r2, r5
   10c14:	da00003e 	ble	10d14 <main+0x2dc>
   10c18:	e3a02002 	mov	r2, #2
   10c1c:	e59d8034 	ldr	r8, [sp, #52]	; 0x34
   10c20:	e1a07512 	lsl	r7, r2, r5
   10c24:	e3a02010 	mov	r2, #16
   10c28:	e2466001 	sub	r6, r6, #1
   10c2c:	e088e512 	add	lr, r8, r2, lsl r5
   10c30:	e3e0200f 	mvn	r2, #15
   10c34:	e3c66001 	bic	r6, r6, #1
   10c38:	e1a0b512 	lsl	fp, r2, r5
   10c3c:	e2866002 	add	r6, r6, #2
   10c40:	e1a0a207 	lsl	sl, r7, #4
   10c44:	e3a04000 	mov	r4, #0
   10c48:	e086c004 	add	ip, r6, r4
   10c4c:	e08b200e 	add	r2, fp, lr
   10c50:	e088c20c 	add	ip, r8, ip, lsl #4
   10c54:	e1a0000e 	mov	r0, lr
   10c58:	e1a0100e 	mov	r1, lr
   10c5c:	ed922b06 	vldr	d2, [r2, #24]
   10c60:	ed93cb02 	vldr	d12, [r3, #8]
   10c64:	ed906b06 	vldr	d6, [r0, #24]
   10c68:	ed93db04 	vldr	d13, [r3, #16]
   10c6c:	ed93eb06 	vldr	d14, [r3, #24]
   10c70:	ed93fb0c 	vldr	d15, [r3, #48]	; 0x30
   10c74:	ed935b0e 	vldr	d5, [r3, #56]	; 0x38
   10c78:	ee2cab02 	vmul.f64	d10, d12, d2
   10c7c:	ed93bb00 	vldr	d11, [r3]
   10c80:	ed921b04 	vldr	d1, [r2, #16]
   10c84:	ed937b0a 	vldr	d7, [r3, #40]	; 0x28
   10c88:	ee2e3b06 	vmul.f64	d3, d14, d6
   10c8c:	ed910b04 	vldr	d0, [r1, #16]
   10c90:	ee264b0d 	vmul.f64	d4, d6, d13
   10c94:	e2822020 	add	r2, r2, #32
   10c98:	ee255b06 	vmul.f64	d5, d5, d6
   10c9c:	e2800020 	add	r0, r0, #32
   10ca0:	ee2f6b06 	vmul.f64	d6, d15, d6
   10ca4:	e2811020 	add	r1, r1, #32
   10ca8:	ee2b9b02 	vmul.f64	d9, d11, d2
   10cac:	ee278b02 	vmul.f64	d8, d7, d2
   10cb0:	ee277b01 	vmul.f64	d7, d7, d1
   10cb4:	ee1bab01 	vnmls.f64	d10, d11, d1
   10cb8:	ed93bb0e 	vldr	d11, [r3, #56]	; 0x38
   10cbc:	ee103b0d 	vnmls.f64	d3, d0, d13
   10cc0:	ee004b0e 	vmla.f64	d4, d0, d14
   10cc4:	ee105b0f 	vnmls.f64	d5, d0, d15
   10cc8:	ee006b0b 	vmla.f64	d6, d0, d11
   10ccc:	ed930b08 	vldr	d0, [r3, #32]
   10cd0:	ee019b0c 	vmla.f64	d9, d1, d12
   10cd4:	ee33ab0a 	vadd.f64	d10, d3, d10
   10cd8:	ee108b01 	vnmls.f64	d8, d0, d1
   10cdc:	ee007b02 	vmla.f64	d7, d0, d2
   10ce0:	ee349b09 	vadd.f64	d9, d4, d9
   10ce4:	ed02ab04 	vstr	d10, [r2, #-16]
   10ce8:	ee355b08 	vadd.f64	d5, d5, d8
   10cec:	ee377b06 	vadd.f64	d7, d7, d6
   10cf0:	ed029b02 	vstr	d9, [r2, #-8]
   10cf4:	e15c0002 	cmp	ip, r2
   10cf8:	ed015b04 	vstr	d5, [r1, #-16]
   10cfc:	ed017b02 	vstr	d7, [r1, #-8]
   10d00:	1affffd5 	bne	10c5c <main+0x224>
   10d04:	e0844007 	add	r4, r4, r7
   10d08:	e1590004 	cmp	r9, r4
   10d0c:	e08ee00a 	add	lr, lr, sl
   10d10:	caffffcc 	bgt	10c48 <main+0x210>
   10d14:	e3a0200a 	mov	r2, #10
   10d18:	e59f117c 	ldr	r1, [pc, #380]	; 10e9c <main+0x464>
   10d1c:	e59f0160 	ldr	r0, [pc, #352]	; 10e84 <main+0x44c>
   10d20:	ebffff14 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d24:	e1a01005 	mov	r1, r5
   10d28:	e59f0154 	ldr	r0, [pc, #340]	; 10e84 <main+0x44c>
   10d2c:	ebffff1d 	bl	109a8 <_ZNSolsEi@plt>
   10d30:	e5903000 	ldr	r3, [r0]
   10d34:	e1a06000 	mov	r6, r0
   10d38:	e513300c 	ldr	r3, [r3, #-12]
   10d3c:	e0803003 	add	r3, r0, r3
   10d40:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   10d44:	e3540000 	cmp	r4, #0
   10d48:	0a000032 	beq	10e18 <main+0x3e0>
   10d4c:	e5d4301c 	ldrb	r3, [r4, #28]
   10d50:	e3530000 	cmp	r3, #0
   10d54:	0a000026 	beq	10df4 <main+0x3bc>
   10d58:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   10d5c:	e1a00006 	mov	r0, r6
   10d60:	ebfffee0 	bl	108e8 <_ZNSo3putEc@plt>
   10d64:	ebfffef1 	bl	10930 <_ZNSo5flushEv@plt>
   10d68:	e2855001 	add	r5, r5, #1
   10d6c:	e3550014 	cmp	r5, #20
   10d70:	1affffa2 	bne	10c00 <main+0x1c8>
   10d74:	e59d3004 	ldr	r3, [sp, #4]
   10d78:	e2533001 	subs	r3, r3, #1
   10d7c:	e58d3004 	str	r3, [sp, #4]
   10d80:	1affff9d 	bne	10bfc <main+0x1c4>
   10d84:	e28d002c 	add	r0, sp, #44	; 0x2c
   10d88:	eb0000ad 	bl	11044 <_ZN5State5printEv>
   10d8c:	e28d000c 	add	r0, sp, #12
   10d90:	eb0000e6 	bl	11130 <_ZN8OperatorD2Ev>
   10d94:	e28d0014 	add	r0, sp, #20
   10d98:	eb0000e4 	bl	11130 <_ZN8OperatorD2Ev>
   10d9c:	e28d001c 	add	r0, sp, #28
   10da0:	eb0000e2 	bl	11130 <_ZN8OperatorD2Ev>
   10da4:	e28d0024 	add	r0, sp, #36	; 0x24
   10da8:	eb0000e0 	bl	11130 <_ZN8OperatorD2Ev>
   10dac:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10db0:	ebfffed2 	bl	10900 <free@plt>
   10db4:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10db8:	ebfffed0 	bl	10900 <free@plt>
   10dbc:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10dc0:	ebfffece 	bl	10900 <free@plt>
   10dc4:	e3a00000 	mov	r0, #0
   10dc8:	e28dd04c 	add	sp, sp, #76	; 0x4c
   10dcc:	ecbd8b10 	vpop	{d8-d15}
   10dd0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10dd4:	e3a02022 	mov	r2, #34	; 0x22
   10dd8:	e59f10c0 	ldr	r1, [pc, #192]	; 10ea0 <main+0x468>
   10ddc:	e59f00c0 	ldr	r0, [pc, #192]	; 10ea4 <main+0x46c>
   10de0:	ebfffee4 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10de4:	e59f00b8 	ldr	r0, [pc, #184]	; 10ea4 <main+0x46c>
   10de8:	ebfffeca 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10dec:	e3a00001 	mov	r0, #1
   10df0:	ebfffecb 	bl	10924 <exit@plt>
   10df4:	e1a00004 	mov	r0, r4
   10df8:	ebfffed8 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10dfc:	e5943000 	ldr	r3, [r4]
   10e00:	e1a00004 	mov	r0, r4
   10e04:	e3a0100a 	mov	r1, #10
   10e08:	e5933018 	ldr	r3, [r3, #24]
   10e0c:	e12fff33 	blx	r3
   10e10:	e1a01000 	mov	r1, r0
   10e14:	eaffffd0 	b	10d5c <main+0x324>
   10e18:	ebfffed3 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   10e1c:	e1a04000 	mov	r4, r0
   10e20:	e28d000c 	add	r0, sp, #12
   10e24:	eb0000c1 	bl	11130 <_ZN8OperatorD2Ev>
   10e28:	e28d0014 	add	r0, sp, #20
   10e2c:	eb0000bf 	bl	11130 <_ZN8OperatorD2Ev>
   10e30:	e28d001c 	add	r0, sp, #28
   10e34:	eb0000bd 	bl	11130 <_ZN8OperatorD2Ev>
   10e38:	e28d0024 	add	r0, sp, #36	; 0x24
   10e3c:	eb0000bb 	bl	11130 <_ZN8OperatorD2Ev>
   10e40:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10e44:	ebfffead 	bl	10900 <free@plt>
   10e48:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10e4c:	ebfffeab 	bl	10900 <free@plt>
   10e50:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10e54:	ebfffea9 	bl	10900 <free@plt>
   10e58:	e1a00004 	mov	r0, r4
   10e5c:	ebfffed4 	bl	109b4 <_Unwind_Resume@plt>
   10e60:	e1a04000 	mov	r4, r0
   10e64:	eaffffef 	b	10e28 <main+0x3f0>
   10e68:	e1a04000 	mov	r4, r0
   10e6c:	eafffff1 	b	10e38 <main+0x400>
   10e70:	e1a04000 	mov	r4, r0
   10e74:	eafffff1 	b	10e40 <main+0x408>
   10e78:	e1a04000 	mov	r4, r0
   10e7c:	eaffffeb 	b	10e30 <main+0x3f8>
   10e80:	000111ec 	.word	0x000111ec
   10e84:	00022070 	.word	0x00022070
   10e88:	3ff00000 	.word	0x3ff00000
   10e8c:	667f3bcc 	.word	0x667f3bcc
   10e90:	3fe6a09e 	.word	0x3fe6a09e
   10e94:	bfe6a09e 	.word	0xbfe6a09e
   10e98:	bff00000 	.word	0xbff00000
   10e9c:	00011208 	.word	0x00011208
   10ea0:	000111bc 	.word	0x000111bc
   10ea4:	00022100 	.word	0x00022100

00010ea8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   10ea8:	e92d4010 	push	{r4, lr}
   10eac:	e59f4018 	ldr	r4, [pc, #24]	; 10ecc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   10eb0:	e1a00004 	mov	r0, r4
   10eb4:	ebfffeb5 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10eb8:	e1a00004 	mov	r0, r4
   10ebc:	e59f200c 	ldr	r2, [pc, #12]	; 10ed0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   10ec0:	e59f100c 	ldr	r1, [pc, #12]	; 10ed4 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   10ec4:	e8bd4010 	pop	{r4, lr}
   10ec8:	eafffe89 	b	108f4 <__aeabi_atexit@plt>
   10ecc:	00022198 	.word	0x00022198
   10ed0:	00022068 	.word	0x00022068
   10ed4:	000109d8 	.word	0x000109d8

00010ed8 <_start>:
   10ed8:	e3a0b000 	mov	fp, #0
   10edc:	e3a0e000 	mov	lr, #0
   10ee0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10ee4:	e1a0200d 	mov	r2, sp
   10ee8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10eec:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10ef0:	e59fc010 	ldr	ip, [pc, #16]	; 10f08 <_start+0x30>
   10ef4:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10ef8:	e59f000c 	ldr	r0, [pc, #12]	; 10f0c <_start+0x34>
   10efc:	e59f300c 	ldr	r3, [pc, #12]	; 10f10 <_start+0x38>
   10f00:	ebfffeae 	bl	109c0 <__libc_start_main@plt>
   10f04:	ebfffe8f 	bl	10948 <abort@plt>
   10f08:	000111ac 	.word	0x000111ac
   10f0c:	00010a38 	.word	0x00010a38
   10f10:	0001114c 	.word	0x0001114c

00010f14 <call_weak_fn>:
   10f14:	e59f3014 	ldr	r3, [pc, #20]	; 10f30 <call_weak_fn+0x1c>
   10f18:	e59f2014 	ldr	r2, [pc, #20]	; 10f34 <call_weak_fn+0x20>
   10f1c:	e08f3003 	add	r3, pc, r3
   10f20:	e7932002 	ldr	r2, [r3, r2]
   10f24:	e3520000 	cmp	r2, #0
   10f28:	012fff1e 	bxeq	lr
   10f2c:	eafffea6 	b	109cc <__gmon_start__@plt>
   10f30:	000110dc 	.word	0x000110dc
   10f34:	00000060 	.word	0x00000060

00010f38 <deregister_tm_clones>:
   10f38:	e59f301c 	ldr	r3, [pc, #28]	; 10f5c <deregister_tm_clones+0x24>
   10f3c:	e59f001c 	ldr	r0, [pc, #28]	; 10f60 <deregister_tm_clones+0x28>
   10f40:	e0433000 	sub	r3, r3, r0
   10f44:	e3530006 	cmp	r3, #6
   10f48:	912fff1e 	bxls	lr
   10f4c:	e59f3010 	ldr	r3, [pc, #16]	; 10f64 <deregister_tm_clones+0x2c>
   10f50:	e3530000 	cmp	r3, #0
   10f54:	012fff1e 	bxeq	lr
   10f58:	e12fff13 	bx	r3
   10f5c:	0002206f 	.word	0x0002206f
   10f60:	0002206c 	.word	0x0002206c
   10f64:	00000000 	.word	0x00000000

00010f68 <register_tm_clones>:
   10f68:	e59f1024 	ldr	r1, [pc, #36]	; 10f94 <register_tm_clones+0x2c>
   10f6c:	e59f0024 	ldr	r0, [pc, #36]	; 10f98 <register_tm_clones+0x30>
   10f70:	e0411000 	sub	r1, r1, r0
   10f74:	e1a01141 	asr	r1, r1, #2
   10f78:	e0811fa1 	add	r1, r1, r1, lsr #31
   10f7c:	e1b010c1 	asrs	r1, r1, #1
   10f80:	012fff1e 	bxeq	lr
   10f84:	e59f3010 	ldr	r3, [pc, #16]	; 10f9c <register_tm_clones+0x34>
   10f88:	e3530000 	cmp	r3, #0
   10f8c:	012fff1e 	bxeq	lr
   10f90:	e12fff13 	bx	r3
   10f94:	0002206c 	.word	0x0002206c
   10f98:	0002206c 	.word	0x0002206c
   10f9c:	00000000 	.word	0x00000000

00010fa0 <__do_global_dtors_aux>:
   10fa0:	e92d4010 	push	{r4, lr}
   10fa4:	e59f4018 	ldr	r4, [pc, #24]	; 10fc4 <__do_global_dtors_aux+0x24>
   10fa8:	e5d43000 	ldrb	r3, [r4]
   10fac:	e3530000 	cmp	r3, #0
   10fb0:	18bd8010 	popne	{r4, pc}
   10fb4:	ebffffdf 	bl	10f38 <deregister_tm_clones>
   10fb8:	e3a03001 	mov	r3, #1
   10fbc:	e5c43000 	strb	r3, [r4]
   10fc0:	e8bd8010 	pop	{r4, pc}
   10fc4:	0002218c 	.word	0x0002218c

00010fc8 <frame_dummy>:
   10fc8:	e59f0028 	ldr	r0, [pc, #40]	; 10ff8 <frame_dummy+0x30>
   10fcc:	e5903000 	ldr	r3, [r0]
   10fd0:	e3530000 	cmp	r3, #0
   10fd4:	1a000000 	bne	10fdc <frame_dummy+0x14>
   10fd8:	eaffffe2 	b	10f68 <register_tm_clones>
   10fdc:	e59f3018 	ldr	r3, [pc, #24]	; 10ffc <frame_dummy+0x34>
   10fe0:	e3530000 	cmp	r3, #0
   10fe4:	0afffffb 	beq	10fd8 <frame_dummy+0x10>
   10fe8:	e92d4010 	push	{r4, lr}
   10fec:	e12fff33 	blx	r3
   10ff0:	e8bd4010 	pop	{r4, lr}
   10ff4:	eaffffdb 	b	10f68 <register_tm_clones>
   10ff8:	00021efc 	.word	0x00021efc
   10ffc:	00000000 	.word	0x00000000

00011000 <_ZN8Operator11malloc_gateEi.constprop.4>:
   11000:	e92d4010 	push	{r4, lr}
   11004:	e1a04000 	mov	r4, r0
   11008:	e3a0005f 	mov	r0, #95	; 0x5f
   1100c:	ebfffe5c 	bl	10984 <malloc@plt>
   11010:	e3500000 	cmp	r0, #0
   11014:	e5840004 	str	r0, [r4, #4]
   11018:	0a000002 	beq	11028 <_ZN8Operator11malloc_gateEi.constprop.4+0x28>
   1101c:	e280001f 	add	r0, r0, #31
   11020:	e3c0001f 	bic	r0, r0, #31
   11024:	e8bd8010 	pop	{r4, pc}
   11028:	e59f100c 	ldr	r1, [pc, #12]	; 1103c <_ZN8Operator11malloc_gateEi.constprop.4+0x3c>
   1102c:	e59f000c 	ldr	r0, [pc, #12]	; 11040 <_ZN8Operator11malloc_gateEi.constprop.4+0x40>
   11030:	ebfffe47 	bl	10954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11034:	e3a00001 	mov	r0, #1
   11038:	ebfffe39 	bl	10924 <exit@plt>
   1103c:	000111bc 	.word	0x000111bc
   11040:	00022100 	.word	0x00022100

00011044 <_ZN5State5printEv>:
   11044:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11048:	e1a09000 	mov	r9, r0
   1104c:	e59f70cc 	ldr	r7, [pc, #204]	; 11120 <_ZN5State5printEv+0xdc>
   11050:	e59fb0cc 	ldr	fp, [pc, #204]	; 11124 <_ZN5State5printEv+0xe0>
   11054:	e1a06007 	mov	r6, r7
   11058:	e3a05000 	mov	r5, #0
   1105c:	e3a08001 	mov	r8, #1
   11060:	e5994008 	ldr	r4, [r9, #8]
   11064:	e1a02008 	mov	r2, r8
   11068:	e0844005 	add	r4, r4, r5
   1106c:	e1a0100b 	mov	r1, fp
   11070:	e1a00006 	mov	r0, r6
   11074:	ebfffe3f 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11078:	ed940b00 	vldr	d0, [r4]
   1107c:	e1a00006 	mov	r0, r6
   11080:	ebfffe45 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   11084:	e3a02002 	mov	r2, #2
   11088:	e59f1098 	ldr	r1, [pc, #152]	; 11128 <_ZN5State5printEv+0xe4>
   1108c:	e1a0a000 	mov	sl, r0
   11090:	ebfffe38 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11094:	ed940b02 	vldr	d0, [r4, #8]
   11098:	e1a0000a 	mov	r0, sl
   1109c:	ebfffe3e 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   110a0:	e1a02008 	mov	r2, r8
   110a4:	e59f1080 	ldr	r1, [pc, #128]	; 1112c <_ZN5State5printEv+0xe8>
   110a8:	ebfffe32 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110ac:	e5973000 	ldr	r3, [r7]
   110b0:	e513300c 	ldr	r3, [r3, #-12]
   110b4:	e0873003 	add	r3, r7, r3
   110b8:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110bc:	e3540000 	cmp	r4, #0
   110c0:	0a000015 	beq	1111c <_ZN5State5printEv+0xd8>
   110c4:	e5d4301c 	ldrb	r3, [r4, #28]
   110c8:	e3530000 	cmp	r3, #0
   110cc:	0a000009 	beq	110f8 <_ZN5State5printEv+0xb4>
   110d0:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110d4:	e1a00006 	mov	r0, r6
   110d8:	ebfffe02 	bl	108e8 <_ZNSo3putEc@plt>
   110dc:	e2855010 	add	r5, r5, #16
   110e0:	ebfffe12 	bl	10930 <_ZNSo5flushEv@plt>
   110e4:	e3550040 	cmp	r5, #64	; 0x40
   110e8:	1affffdc 	bne	11060 <_ZN5State5printEv+0x1c>
   110ec:	e59f002c 	ldr	r0, [pc, #44]	; 11120 <_ZN5State5printEv+0xdc>
   110f0:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   110f4:	eafffe07 	b	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   110f8:	e1a00004 	mov	r0, r4
   110fc:	ebfffe17 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11100:	e5943000 	ldr	r3, [r4]
   11104:	e3a0100a 	mov	r1, #10
   11108:	e1a00004 	mov	r0, r4
   1110c:	e5933018 	ldr	r3, [r3, #24]
   11110:	e12fff33 	blx	r3
   11114:	e1a01000 	mov	r1, r0
   11118:	eaffffed 	b	110d4 <_ZN5State5printEv+0x90>
   1111c:	ebfffe12 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   11120:	00022070 	.word	0x00022070
   11124:	000111e0 	.word	0x000111e0
   11128:	000111e4 	.word	0x000111e4
   1112c:	000111e8 	.word	0x000111e8

00011130 <_ZN8OperatorD2Ev>:
   11130:	e92d4010 	push	{r4, lr}
   11134:	e1a04000 	mov	r4, r0
   11138:	e5900004 	ldr	r0, [r0, #4]
   1113c:	ebfffdef 	bl	10900 <free@plt>
   11140:	e1a00004 	mov	r0, r4
   11144:	e8bd8010 	pop	{r4, pc}

00011148 <_Z13dummy_cmatvecPKdii>:
   11148:	e12fff1e 	bx	lr

0001114c <__libc_csu_init>:
   1114c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11150:	e1a07000 	mov	r7, r0
   11154:	e59f6048 	ldr	r6, [pc, #72]	; 111a4 <__libc_csu_init+0x58>
   11158:	e59f5048 	ldr	r5, [pc, #72]	; 111a8 <__libc_csu_init+0x5c>
   1115c:	e08f6006 	add	r6, pc, r6
   11160:	e08f5005 	add	r5, pc, r5
   11164:	e0466005 	sub	r6, r6, r5
   11168:	e1a08001 	mov	r8, r1
   1116c:	e1a09002 	mov	r9, r2
   11170:	ebfffdd4 	bl	108c8 <_init>
   11174:	e1b06146 	asrs	r6, r6, #2
   11178:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   1117c:	e3a04000 	mov	r4, #0
   11180:	e2844001 	add	r4, r4, #1
   11184:	e4953004 	ldr	r3, [r5], #4
   11188:	e1a02009 	mov	r2, r9
   1118c:	e1a01008 	mov	r1, r8
   11190:	e1a00007 	mov	r0, r7
   11194:	e12fff33 	blx	r3
   11198:	e1560004 	cmp	r6, r4
   1119c:	1afffff7 	bne	11180 <__libc_csu_init+0x34>
   111a0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   111a4:	00010d94 	.word	0x00010d94
   111a8:	00010d84 	.word	0x00010d84

000111ac <__libc_csu_fini>:
   111ac:	e12fff1e 	bx	lr

Disassembly of section .fini:

000111b0 <_fini>:
   111b0:	e92d4008 	push	{r3, lr}
   111b4:	e8bd8008 	pop	{r3, pc}
