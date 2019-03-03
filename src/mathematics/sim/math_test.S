
math_test:     file format elf32-littlearm


Disassembly of section .init:

000108c8 <_init>:
   108c8:	e92d4008 	push	{r3, lr}
   108cc:	eb00018b 	bl	10f00 <call_weak_fn>
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
   10a6c:	0a0000d3 	beq	10dc0 <main+0x388>
   10a70:	e1a03000 	mov	r3, r0
   10a74:	e3a0201b 	mov	r2, #27
   10a78:	e59f13ec 	ldr	r1, [pc, #1004]	; 10e6c <main+0x434>
   10a7c:	e59f03ec 	ldr	r0, [pc, #1004]	; 10e70 <main+0x438>
   10a80:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10a84:	ebffffbb 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10a88:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
   10a8c:	e59f03dc 	ldr	r0, [pc, #988]	; 10e70 <main+0x438>
   10a90:	ebffffa9 	bl	1093c <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10a94:	ebffff9f 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10a98:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   10a9c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
   10aa0:	e59f13cc 	ldr	r1, [pc, #972]	; 10e74 <main+0x43c>
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
   10af4:	eb00014d 	bl	11030 <_ZN5State5printEv>
   10af8:	e28d0024 	add	r0, sp, #36	; 0x24
   10afc:	eb00013a 	bl	10fec <_ZN8Operator11malloc_gateEi.constprop.3>
   10b00:	e59f4370 	ldr	r4, [pc, #880]	; 10e78 <main+0x440>
   10b04:	e59f5370 	ldr	r5, [pc, #880]	; 10e7c <main+0x444>
   10b08:	e59f6368 	ldr	r6, [pc, #872]	; 10e78 <main+0x440>
   10b0c:	e59f736c 	ldr	r7, [pc, #876]	; 10e80 <main+0x448>
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
   10b44:	eb000128 	bl	10fec <_ZN8Operator11malloc_gateEi.constprop.3>
   10b48:	e59f5324 	ldr	r5, [pc, #804]	; 10e74 <main+0x43c>
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
   10b84:	eb000118 	bl	10fec <_ZN8Operator11malloc_gateEi.constprop.3>
   10b88:	e59f72f4 	ldr	r7, [pc, #756]	; 10e84 <main+0x44c>
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
   10bc4:	eb000108 	bl	10fec <_ZN8Operator11malloc_gateEi.constprop.3>
   10bc8:	e1a05007 	mov	r5, r7
   10bcc:	e1a04006 	mov	r4, r6
   10bd0:	e3a03000 	mov	r3, #0
   10bd4:	e3a02000 	mov	r2, #0
   10bd8:	e59f9294 	ldr	r9, [pc, #660]	; 10e74 <main+0x43c>
   10bdc:	e1c043f0 	strd	r4, [r0, #48]	; 0x30
   10be0:	e59f72a0 	ldr	r7, [pc, #672]	; 10e88 <main+0x450>
   10be4:	e59f5284 	ldr	r5, [pc, #644]	; 10e70 <main+0x438>
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
   10c28:	da000034 	ble	10d00 <main+0x2c8>
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
   10c70:	ee276b0a 	vmul.f64	d6, d7, d10
   10c74:	ed923b00 	vldr	d3, [r2]
   10c78:	ee275b00 	vmul.f64	d5, d7, d0
   10c7c:	ed921b02 	vldr	d1, [r2, #8]
   10c80:	ee277b08 	vmul.f64	d7, d7, d8
   10c84:	ed93bb06 	vldr	d11, [r3, #24]
   10c88:	ed93cb04 	vldr	d12, [r3, #16]
   10c8c:	ee124b0a 	vnmls.f64	d4, d2, d10
   10c90:	ed93ab0c 	vldr	d10, [r3, #48]	; 0x30
   10c94:	ee026b09 	vmla.f64	d6, d2, d9
   10c98:	ed939b0e 	vldr	d9, [r3, #56]	; 0x38
   10c9c:	ee125b08 	vnmls.f64	d5, d2, d8
   10ca0:	e2811010 	add	r1, r1, #16
   10ca4:	ee027b00 	vmla.f64	d7, d2, d0
   10ca8:	e2800010 	add	r0, r0, #16
   10cac:	ee212b0b 	vmul.f64	d2, d1, d11
   10cb0:	e2822010 	add	r2, r2, #16
   10cb4:	ee034b0c 	vmla.f64	d4, d3, d12
   10cb8:	ee036b0b 	vmla.f64	d6, d3, d11
   10cbc:	ee035b0a 	vmla.f64	d5, d3, d10
   10cc0:	ee037b09 	vmla.f64	d7, d3, d9
   10cc4:	ee344b42 	vsub.f64	d4, d4, d2
   10cc8:	ee362b02 	vadd.f64	d2, d6, d2
   10ccc:	ee015b49 	vmls.f64	d5, d1, d9
   10cd0:	ee017b0a 	vmla.f64	d7, d1, d10
   10cd4:	ed004b06 	vstr	d4, [r0, #-24]	; 0xffffffe8
   10cd8:	ed012b02 	vstr	d2, [r1, #-8]
   10cdc:	e15c0001 	cmp	ip, r1
   10ce0:	ed025b04 	vstr	d5, [r2, #-16]
   10ce4:	ed027b02 	vstr	d7, [r2, #-8]
   10ce8:	1affffd9 	bne	10c54 <main+0x21c>
   10cec:	e088800a 	add	r8, r8, sl
   10cf0:	e15b0008 	cmp	fp, r8
   10cf4:	e08ee009 	add	lr, lr, r9
   10cf8:	e08cc009 	add	ip, ip, r9
   10cfc:	caffffd1 	bgt	10c48 <main+0x210>
   10d00:	e1a02006 	mov	r2, r6
   10d04:	e1a01007 	mov	r1, r7
   10d08:	e1a00005 	mov	r0, r5
   10d0c:	ebffff19 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d10:	e1a01004 	mov	r1, r4
   10d14:	e1a00005 	mov	r0, r5
   10d18:	ebffff22 	bl	109a8 <_ZNSolsEi@plt>
   10d1c:	e5903000 	ldr	r3, [r0]
   10d20:	e1a09000 	mov	r9, r0
   10d24:	e513300c 	ldr	r3, [r3, #-12]
   10d28:	e0803003 	add	r3, r0, r3
   10d2c:	e593807c 	ldr	r8, [r3, #124]	; 0x7c
   10d30:	e3580000 	cmp	r8, #0
   10d34:	0a000032 	beq	10e04 <main+0x3cc>
   10d38:	e5d8301c 	ldrb	r3, [r8, #28]
   10d3c:	e3530000 	cmp	r3, #0
   10d40:	0a000026 	beq	10de0 <main+0x3a8>
   10d44:	e5d81027 	ldrb	r1, [r8, #39]	; 0x27
   10d48:	e1a00009 	mov	r0, r9
   10d4c:	ebfffee5 	bl	108e8 <_ZNSo3putEc@plt>
   10d50:	ebfffef6 	bl	10930 <_ZNSo5flushEv@plt>
   10d54:	e2844001 	add	r4, r4, #1
   10d58:	e3540014 	cmp	r4, #20
   10d5c:	1affffae 	bne	10c1c <main+0x1e4>
   10d60:	e59d3004 	ldr	r3, [sp, #4]
   10d64:	e2533001 	subs	r3, r3, #1
   10d68:	e58d3004 	str	r3, [sp, #4]
   10d6c:	1affffa9 	bne	10c18 <main+0x1e0>
   10d70:	e28d002c 	add	r0, sp, #44	; 0x2c
   10d74:	eb0000ad 	bl	11030 <_ZN5State5printEv>
   10d78:	e28d000c 	add	r0, sp, #12
   10d7c:	eb0000e6 	bl	1111c <_ZN8OperatorD2Ev>
   10d80:	e28d0014 	add	r0, sp, #20
   10d84:	eb0000e4 	bl	1111c <_ZN8OperatorD2Ev>
   10d88:	e28d001c 	add	r0, sp, #28
   10d8c:	eb0000e2 	bl	1111c <_ZN8OperatorD2Ev>
   10d90:	e28d0024 	add	r0, sp, #36	; 0x24
   10d94:	eb0000e0 	bl	1111c <_ZN8OperatorD2Ev>
   10d98:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10d9c:	ebfffed7 	bl	10900 <free@plt>
   10da0:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10da4:	ebfffed5 	bl	10900 <free@plt>
   10da8:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10dac:	ebfffed3 	bl	10900 <free@plt>
   10db0:	e3a00000 	mov	r0, #0
   10db4:	e28dd04c 	add	sp, sp, #76	; 0x4c
   10db8:	ecbd8b0a 	vpop	{d8-d12}
   10dbc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10dc0:	e3a02022 	mov	r2, #34	; 0x22
   10dc4:	e59f10c0 	ldr	r1, [pc, #192]	; 10e8c <main+0x454>
   10dc8:	e59f00c0 	ldr	r0, [pc, #192]	; 10e90 <main+0x458>
   10dcc:	ebfffee9 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10dd0:	e59f00b8 	ldr	r0, [pc, #184]	; 10e90 <main+0x458>
   10dd4:	ebfffecf 	bl	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10dd8:	e3a00001 	mov	r0, #1
   10ddc:	ebfffed0 	bl	10924 <exit@plt>
   10de0:	e1a00008 	mov	r0, r8
   10de4:	ebfffedd 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   10de8:	e5983000 	ldr	r3, [r8]
   10dec:	e1a00008 	mov	r0, r8
   10df0:	e1a01006 	mov	r1, r6
   10df4:	e5933018 	ldr	r3, [r3, #24]
   10df8:	e12fff33 	blx	r3
   10dfc:	e1a01000 	mov	r1, r0
   10e00:	eaffffd0 	b	10d48 <main+0x310>
   10e04:	ebfffed8 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   10e08:	e1a04000 	mov	r4, r0
   10e0c:	e28d000c 	add	r0, sp, #12
   10e10:	eb0000c1 	bl	1111c <_ZN8OperatorD2Ev>
   10e14:	e28d0014 	add	r0, sp, #20
   10e18:	eb0000bf 	bl	1111c <_ZN8OperatorD2Ev>
   10e1c:	e28d001c 	add	r0, sp, #28
   10e20:	eb0000bd 	bl	1111c <_ZN8OperatorD2Ev>
   10e24:	e28d0024 	add	r0, sp, #36	; 0x24
   10e28:	eb0000bb 	bl	1111c <_ZN8OperatorD2Ev>
   10e2c:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10e30:	ebfffeb2 	bl	10900 <free@plt>
   10e34:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   10e38:	ebfffeb0 	bl	10900 <free@plt>
   10e3c:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
   10e40:	ebfffeae 	bl	10900 <free@plt>
   10e44:	e1a00004 	mov	r0, r4
   10e48:	ebfffed9 	bl	109b4 <_Unwind_Resume@plt>
   10e4c:	e1a04000 	mov	r4, r0
   10e50:	eaffffef 	b	10e14 <main+0x3dc>
   10e54:	e1a04000 	mov	r4, r0
   10e58:	eaffffef 	b	10e1c <main+0x3e4>
   10e5c:	e1a04000 	mov	r4, r0
   10e60:	eaffffef 	b	10e24 <main+0x3ec>
   10e64:	e1a04000 	mov	r4, r0
   10e68:	eaffffef 	b	10e2c <main+0x3f4>
   10e6c:	000111d8 	.word	0x000111d8
   10e70:	00022070 	.word	0x00022070
   10e74:	3ff00000 	.word	0x3ff00000
   10e78:	667f3bcc 	.word	0x667f3bcc
   10e7c:	3fe6a09e 	.word	0x3fe6a09e
   10e80:	bfe6a09e 	.word	0xbfe6a09e
   10e84:	bff00000 	.word	0xbff00000
   10e88:	000111f4 	.word	0x000111f4
   10e8c:	000111a8 	.word	0x000111a8
   10e90:	00022100 	.word	0x00022100

00010e94 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   10e94:	e92d4010 	push	{r4, lr}
   10e98:	e59f4018 	ldr	r4, [pc, #24]	; 10eb8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   10e9c:	e1a00004 	mov	r0, r4
   10ea0:	ebfffeba 	bl	10990 <_ZNSt8ios_base4InitC1Ev@plt>
   10ea4:	e1a00004 	mov	r0, r4
   10ea8:	e59f200c 	ldr	r2, [pc, #12]	; 10ebc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   10eac:	e59f100c 	ldr	r1, [pc, #12]	; 10ec0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   10eb0:	e8bd4010 	pop	{r4, lr}
   10eb4:	eafffe8e 	b	108f4 <__aeabi_atexit@plt>
   10eb8:	00022198 	.word	0x00022198
   10ebc:	00022068 	.word	0x00022068
   10ec0:	000109d8 	.word	0x000109d8

00010ec4 <_start>:
   10ec4:	e3a0b000 	mov	fp, #0
   10ec8:	e3a0e000 	mov	lr, #0
   10ecc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10ed0:	e1a0200d 	mov	r2, sp
   10ed4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10ed8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10edc:	e59fc010 	ldr	ip, [pc, #16]	; 10ef4 <_start+0x30>
   10ee0:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10ee4:	e59f000c 	ldr	r0, [pc, #12]	; 10ef8 <_start+0x34>
   10ee8:	e59f300c 	ldr	r3, [pc, #12]	; 10efc <_start+0x38>
   10eec:	ebfffeb3 	bl	109c0 <__libc_start_main@plt>
   10ef0:	ebfffe94 	bl	10948 <abort@plt>
   10ef4:	00011198 	.word	0x00011198
   10ef8:	00010a38 	.word	0x00010a38
   10efc:	00011138 	.word	0x00011138

00010f00 <call_weak_fn>:
   10f00:	e59f3014 	ldr	r3, [pc, #20]	; 10f1c <call_weak_fn+0x1c>
   10f04:	e59f2014 	ldr	r2, [pc, #20]	; 10f20 <call_weak_fn+0x20>
   10f08:	e08f3003 	add	r3, pc, r3
   10f0c:	e7932002 	ldr	r2, [r3, r2]
   10f10:	e3520000 	cmp	r2, #0
   10f14:	012fff1e 	bxeq	lr
   10f18:	eafffeab 	b	109cc <__gmon_start__@plt>
   10f1c:	000110f0 	.word	0x000110f0
   10f20:	00000060 	.word	0x00000060

00010f24 <deregister_tm_clones>:
   10f24:	e59f301c 	ldr	r3, [pc, #28]	; 10f48 <deregister_tm_clones+0x24>
   10f28:	e59f001c 	ldr	r0, [pc, #28]	; 10f4c <deregister_tm_clones+0x28>
   10f2c:	e0433000 	sub	r3, r3, r0
   10f30:	e3530006 	cmp	r3, #6
   10f34:	912fff1e 	bxls	lr
   10f38:	e59f3010 	ldr	r3, [pc, #16]	; 10f50 <deregister_tm_clones+0x2c>
   10f3c:	e3530000 	cmp	r3, #0
   10f40:	012fff1e 	bxeq	lr
   10f44:	e12fff13 	bx	r3
   10f48:	0002206f 	.word	0x0002206f
   10f4c:	0002206c 	.word	0x0002206c
   10f50:	00000000 	.word	0x00000000

00010f54 <register_tm_clones>:
   10f54:	e59f1024 	ldr	r1, [pc, #36]	; 10f80 <register_tm_clones+0x2c>
   10f58:	e59f0024 	ldr	r0, [pc, #36]	; 10f84 <register_tm_clones+0x30>
   10f5c:	e0411000 	sub	r1, r1, r0
   10f60:	e1a01141 	asr	r1, r1, #2
   10f64:	e0811fa1 	add	r1, r1, r1, lsr #31
   10f68:	e1b010c1 	asrs	r1, r1, #1
   10f6c:	012fff1e 	bxeq	lr
   10f70:	e59f3010 	ldr	r3, [pc, #16]	; 10f88 <register_tm_clones+0x34>
   10f74:	e3530000 	cmp	r3, #0
   10f78:	012fff1e 	bxeq	lr
   10f7c:	e12fff13 	bx	r3
   10f80:	0002206c 	.word	0x0002206c
   10f84:	0002206c 	.word	0x0002206c
   10f88:	00000000 	.word	0x00000000

00010f8c <__do_global_dtors_aux>:
   10f8c:	e92d4010 	push	{r4, lr}
   10f90:	e59f4018 	ldr	r4, [pc, #24]	; 10fb0 <__do_global_dtors_aux+0x24>
   10f94:	e5d43000 	ldrb	r3, [r4]
   10f98:	e3530000 	cmp	r3, #0
   10f9c:	18bd8010 	popne	{r4, pc}
   10fa0:	ebffffdf 	bl	10f24 <deregister_tm_clones>
   10fa4:	e3a03001 	mov	r3, #1
   10fa8:	e5c43000 	strb	r3, [r4]
   10fac:	e8bd8010 	pop	{r4, pc}
   10fb0:	0002218c 	.word	0x0002218c

00010fb4 <frame_dummy>:
   10fb4:	e59f0028 	ldr	r0, [pc, #40]	; 10fe4 <frame_dummy+0x30>
   10fb8:	e5903000 	ldr	r3, [r0]
   10fbc:	e3530000 	cmp	r3, #0
   10fc0:	1a000000 	bne	10fc8 <frame_dummy+0x14>
   10fc4:	eaffffe2 	b	10f54 <register_tm_clones>
   10fc8:	e59f3018 	ldr	r3, [pc, #24]	; 10fe8 <frame_dummy+0x34>
   10fcc:	e3530000 	cmp	r3, #0
   10fd0:	0afffffb 	beq	10fc4 <frame_dummy+0x10>
   10fd4:	e92d4010 	push	{r4, lr}
   10fd8:	e12fff33 	blx	r3
   10fdc:	e8bd4010 	pop	{r4, lr}
   10fe0:	eaffffdb 	b	10f54 <register_tm_clones>
   10fe4:	00021efc 	.word	0x00021efc
   10fe8:	00000000 	.word	0x00000000

00010fec <_ZN8Operator11malloc_gateEi.constprop.3>:
   10fec:	e92d4010 	push	{r4, lr}
   10ff0:	e1a04000 	mov	r4, r0
   10ff4:	e3a0005f 	mov	r0, #95	; 0x5f
   10ff8:	ebfffe61 	bl	10984 <malloc@plt>
   10ffc:	e3500000 	cmp	r0, #0
   11000:	e5840004 	str	r0, [r4, #4]
   11004:	0a000002 	beq	11014 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   11008:	e280001f 	add	r0, r0, #31
   1100c:	e3c0001f 	bic	r0, r0, #31
   11010:	e8bd8010 	pop	{r4, pc}
   11014:	e59f100c 	ldr	r1, [pc, #12]	; 11028 <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   11018:	e59f000c 	ldr	r0, [pc, #12]	; 1102c <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   1101c:	ebfffe4c 	bl	10954 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11020:	e3a00001 	mov	r0, #1
   11024:	ebfffe3e 	bl	10924 <exit@plt>
   11028:	000111a8 	.word	0x000111a8
   1102c:	00022100 	.word	0x00022100

00011030 <_ZN5State5printEv>:
   11030:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11034:	e1a09000 	mov	r9, r0
   11038:	e59f70cc 	ldr	r7, [pc, #204]	; 1110c <_ZN5State5printEv+0xdc>
   1103c:	e59fb0cc 	ldr	fp, [pc, #204]	; 11110 <_ZN5State5printEv+0xe0>
   11040:	e1a06007 	mov	r6, r7
   11044:	e3a05000 	mov	r5, #0
   11048:	e3a08001 	mov	r8, #1
   1104c:	e5994008 	ldr	r4, [r9, #8]
   11050:	e1a02008 	mov	r2, r8
   11054:	e0844005 	add	r4, r4, r5
   11058:	e1a0100b 	mov	r1, fp
   1105c:	e1a00006 	mov	r0, r6
   11060:	ebfffe44 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11064:	ed940b00 	vldr	d0, [r4]
   11068:	e1a00006 	mov	r0, r6
   1106c:	ebfffe4a 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   11070:	e3a02002 	mov	r2, #2
   11074:	e59f1098 	ldr	r1, [pc, #152]	; 11114 <_ZN5State5printEv+0xe4>
   11078:	e1a0a000 	mov	sl, r0
   1107c:	ebfffe3d 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11080:	ed940b02 	vldr	d0, [r4, #8]
   11084:	e1a0000a 	mov	r0, sl
   11088:	ebfffe43 	bl	1099c <_ZNSo9_M_insertIdEERSoT_@plt>
   1108c:	e1a02008 	mov	r2, r8
   11090:	e59f1080 	ldr	r1, [pc, #128]	; 11118 <_ZN5State5printEv+0xe8>
   11094:	ebfffe37 	bl	10978 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11098:	e5973000 	ldr	r3, [r7]
   1109c:	e513300c 	ldr	r3, [r3, #-12]
   110a0:	e0873003 	add	r3, r7, r3
   110a4:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110a8:	e3540000 	cmp	r4, #0
   110ac:	0a000015 	beq	11108 <_ZN5State5printEv+0xd8>
   110b0:	e5d4301c 	ldrb	r3, [r4, #28]
   110b4:	e3530000 	cmp	r3, #0
   110b8:	0a000009 	beq	110e4 <_ZN5State5printEv+0xb4>
   110bc:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110c0:	e1a00006 	mov	r0, r6
   110c4:	ebfffe07 	bl	108e8 <_ZNSo3putEc@plt>
   110c8:	e2855010 	add	r5, r5, #16
   110cc:	ebfffe17 	bl	10930 <_ZNSo5flushEv@plt>
   110d0:	e3550040 	cmp	r5, #64	; 0x40
   110d4:	1affffdc 	bne	1104c <_ZN5State5printEv+0x1c>
   110d8:	e59f002c 	ldr	r0, [pc, #44]	; 1110c <_ZN5State5printEv+0xdc>
   110dc:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   110e0:	eafffe0c 	b	10918 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   110e4:	e1a00004 	mov	r0, r4
   110e8:	ebfffe1c 	bl	10960 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   110ec:	e5943000 	ldr	r3, [r4]
   110f0:	e3a0100a 	mov	r1, #10
   110f4:	e1a00004 	mov	r0, r4
   110f8:	e5933018 	ldr	r3, [r3, #24]
   110fc:	e12fff33 	blx	r3
   11100:	e1a01000 	mov	r1, r0
   11104:	eaffffed 	b	110c0 <_ZN5State5printEv+0x90>
   11108:	ebfffe17 	bl	1096c <_ZSt16__throw_bad_castv@plt>
   1110c:	00022070 	.word	0x00022070
   11110:	000111cc 	.word	0x000111cc
   11114:	000111d0 	.word	0x000111d0
   11118:	000111d4 	.word	0x000111d4

0001111c <_ZN8OperatorD2Ev>:
   1111c:	e92d4010 	push	{r4, lr}
   11120:	e1a04000 	mov	r4, r0
   11124:	e5900004 	ldr	r0, [r0, #4]
   11128:	ebfffdf4 	bl	10900 <free@plt>
   1112c:	e1a00004 	mov	r0, r4
   11130:	e8bd8010 	pop	{r4, pc}

00011134 <_Z13dummy_cmatvecPKdii>:
   11134:	e12fff1e 	bx	lr

00011138 <__libc_csu_init>:
   11138:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1113c:	e1a07000 	mov	r7, r0
   11140:	e59f6048 	ldr	r6, [pc, #72]	; 11190 <__libc_csu_init+0x58>
   11144:	e59f5048 	ldr	r5, [pc, #72]	; 11194 <__libc_csu_init+0x5c>
   11148:	e08f6006 	add	r6, pc, r6
   1114c:	e08f5005 	add	r5, pc, r5
   11150:	e0466005 	sub	r6, r6, r5
   11154:	e1a08001 	mov	r8, r1
   11158:	e1a09002 	mov	r9, r2
   1115c:	ebfffdd9 	bl	108c8 <_init>
   11160:	e1b06146 	asrs	r6, r6, #2
   11164:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   11168:	e3a04000 	mov	r4, #0
   1116c:	e2844001 	add	r4, r4, #1
   11170:	e4953004 	ldr	r3, [r5], #4
   11174:	e1a02009 	mov	r2, r9
   11178:	e1a01008 	mov	r1, r8
   1117c:	e1a00007 	mov	r0, r7
   11180:	e12fff33 	blx	r3
   11184:	e1560004 	cmp	r6, r4
   11188:	1afffff7 	bne	1116c <__libc_csu_init+0x34>
   1118c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11190:	00010da8 	.word	0x00010da8
   11194:	00010d98 	.word	0x00010d98

00011198 <__libc_csu_fini>:
   11198:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001119c <_fini>:
   1119c:	e92d4008 	push	{r3, lr}
   111a0:	e8bd8008 	pop	{r3, pc}
