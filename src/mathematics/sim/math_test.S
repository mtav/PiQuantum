
math_test:     file format elf32-littlearm


Disassembly of section .init:

00010b0c <_init>:
   10b0c:	e92d4008 	push	{r3, lr}
   10b10:	eb0001fb 	bl	11304 <call_weak_fn>
   10b14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010b18 <.plt>:
   10b18:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10b1c:	e59fe004 	ldr	lr, [pc, #4]	; 10b28 <.plt+0x10>
   10b20:	e08fe00e 	add	lr, pc, lr
   10b24:	e5bef008 	ldr	pc, [lr, #8]!
   10b28:	000114d8 	.word	0x000114d8

00010b2c <_ZNSo3putEc@plt>:
   10b2c:	e28fc600 	add	ip, pc, #0, 12
   10b30:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b34:	e5bcf4d8 	ldr	pc, [ip, #1240]!	; 0x4d8

00010b38 <_Znwj@plt>:
   10b38:	e28fc600 	add	ip, pc, #0, 12
   10b3c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b40:	e5bcf4d0 	ldr	pc, [ip, #1232]!	; 0x4d0

00010b44 <__aeabi_atexit@plt>:
   10b44:	e28fc600 	add	ip, pc, #0, 12
   10b48:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b4c:	e5bcf4c8 	ldr	pc, [ip, #1224]!	; 0x4c8

00010b50 <_ZSt9terminatev@plt>:
   10b50:	e28fc600 	add	ip, pc, #0, 12
   10b54:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b58:	e5bcf4c0 	ldr	pc, [ip, #1216]!	; 0x4c0

00010b5c <free@plt>:
   10b5c:	e28fc600 	add	ip, pc, #0, 12
   10b60:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b64:	e5bcf4b8 	ldr	pc, [ip, #1208]!	; 0x4b8

00010b68 <__gcc_personality_v0@plt>:
   10b68:	e28fc600 	add	ip, pc, #0, 12
   10b6c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b70:	e5bcf4b0 	ldr	pc, [ip, #1200]!	; 0x4b0

00010b74 <_ZNSt6thread6_StateD2Ev@plt>:
   10b74:	e28fc600 	add	ip, pc, #0, 12
   10b78:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b7c:	e5bcf4a8 	ldr	pc, [ip, #1192]!	; 0x4a8

00010b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   10b80:	e28fc600 	add	ip, pc, #0, 12
   10b84:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b88:	e5bcf4a0 	ldr	pc, [ip, #1184]!	; 0x4a0

00010b8c <exit@plt>:
   10b8c:	e28fc600 	add	ip, pc, #0, 12
   10b90:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b94:	e5bcf498 	ldr	pc, [ip, #1176]!	; 0x498

00010b98 <_ZNSo5flushEv@plt>:
   10b98:	e28fc600 	add	ip, pc, #0, 12
   10b9c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10ba0:	e5bcf490 	ldr	pc, [ip, #1168]!	; 0x490

00010ba4 <_ZNSo9_M_insertIPKvEERSoT_@plt>:
   10ba4:	e28fc600 	add	ip, pc, #0, 12
   10ba8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bac:	e5bcf488 	ldr	pc, [ip, #1160]!	; 0x488

00010bb0 <abort@plt>:
   10bb0:	e28fc600 	add	ip, pc, #0, 12
   10bb4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bb8:	e5bcf480 	ldr	pc, [ip, #1152]!	; 0x480

00010bbc <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>:
   10bbc:	e28fc600 	add	ip, pc, #0, 12
   10bc0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bc4:	e5bcf478 	ldr	pc, [ip, #1144]!	; 0x478

00010bc8 <_ZdlPv@plt>:
   10bc8:	e28fc600 	add	ip, pc, #0, 12
   10bcc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bd0:	e5bcf470 	ldr	pc, [ip, #1136]!	; 0x470

00010bd4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   10bd4:	e28fc600 	add	ip, pc, #0, 12
   10bd8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bdc:	e5bcf468 	ldr	pc, [ip, #1128]!	; 0x468

00010be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
   10be0:	e28fc600 	add	ip, pc, #0, 12
   10be4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10be8:	e5bcf460 	ldr	pc, [ip, #1120]!	; 0x460

00010bec <_ZSt16__throw_bad_castv@plt>:
   10bec:	e28fc600 	add	ip, pc, #0, 12
   10bf0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bf4:	e5bcf458 	ldr	pc, [ip, #1112]!	; 0x458

00010bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>:
   10bf8:	e28fc600 	add	ip, pc, #0, 12
   10bfc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c00:	e5bcf450 	ldr	pc, [ip, #1104]!	; 0x450

00010c04 <malloc@plt>:
   10c04:	e28fc600 	add	ip, pc, #0, 12
   10c08:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c0c:	e5bcf448 	ldr	pc, [ip, #1096]!	; 0x448

00010c10 <_ZNSt8ios_base4InitC1Ev@plt>:
   10c10:	e28fc600 	add	ip, pc, #0, 12
   10c14:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c18:	e5bcf440 	ldr	pc, [ip, #1088]!	; 0x440

00010c1c <_ZNSo9_M_insertIdEERSoT_@plt>:
   10c1c:	e28fc600 	add	ip, pc, #0, 12
   10c20:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c24:	e5bcf438 	ldr	pc, [ip, #1080]!	; 0x438

00010c28 <pthread_create@plt>:
   10c28:	e28fc600 	add	ip, pc, #0, 12
   10c2c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c30:	e5bcf430 	ldr	pc, [ip, #1072]!	; 0x430

00010c34 <_ZNSolsEi@plt>:
   10c34:	e28fc600 	add	ip, pc, #0, 12
   10c38:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c3c:	e5bcf428 	ldr	pc, [ip, #1064]!	; 0x428

00010c40 <_Unwind_Resume@plt>:
   10c40:	e28fc600 	add	ip, pc, #0, 12
   10c44:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c48:	e5bcf420 	ldr	pc, [ip, #1056]!	; 0x420

00010c4c <__libc_start_main@plt>:
   10c4c:	e28fc600 	add	ip, pc, #0, 12
   10c50:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c54:	e5bcf418 	ldr	pc, [ip, #1048]!	; 0x418

00010c58 <__gmon_start__@plt>:
   10c58:	e28fc600 	add	ip, pc, #0, 12
   10c5c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c60:	e5bcf410 	ldr	pc, [ip, #1040]!	; 0x410

00010c64 <_ZNSt8ios_base4InitD1Ev@plt>:
   10c64:	e28fc600 	add	ip, pc, #0, 12
   10c68:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c6c:	e5bcf408 	ldr	pc, [ip, #1032]!	; 0x408

Disassembly of section .text:

00010c70 <_GLOBAL__I_65535_0_test.o.5829>:
   10c70:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10c74:	e59f403c 	ldr	r4, [pc, #60]	; 10cb8 <_GLOBAL__I_65535_0_test.o.5829+0x48>
   10c78:	e59f703c 	ldr	r7, [pc, #60]	; 10cbc <_GLOBAL__I_65535_0_test.o.5829+0x4c>
   10c7c:	e59f603c 	ldr	r6, [pc, #60]	; 10cc0 <_GLOBAL__I_65535_0_test.o.5829+0x50>
   10c80:	e1a00004 	mov	r0, r4
   10c84:	ebffffe1 	bl	10c10 <_ZNSt8ios_base4InitC1Ev@plt>
   10c88:	e2845004 	add	r5, r4, #4
   10c8c:	e1a02007 	mov	r2, r7
   10c90:	e1a01006 	mov	r1, r6
   10c94:	e1a00004 	mov	r0, r4
   10c98:	ebffffa9 	bl	10b44 <__aeabi_atexit@plt>
   10c9c:	e1a00005 	mov	r0, r5
   10ca0:	ebffffda 	bl	10c10 <_ZNSt8ios_base4InitC1Ev@plt>
   10ca4:	e1a02007 	mov	r2, r7
   10ca8:	e1a01006 	mov	r1, r6
   10cac:	e1a00005 	mov	r0, r5
   10cb0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10cb4:	eaffffa2 	b	10b44 <__aeabi_atexit@plt>
   10cb8:	000221a8 	.word	0x000221a8
   10cbc:	00022080 	.word	0x00022080
   10cc0:	00010c64 	.word	0x00010c64

00010cc4 <main>:
   10cc4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10cc8:	ed2d8b10 	vpush	{d8-d15}
   10ccc:	e3a03000 	mov	r3, #0
   10cd0:	e3a01014 	mov	r1, #20
   10cd4:	e3a02601 	mov	r2, #1048576	; 0x100000
   10cd8:	e24dd094 	sub	sp, sp, #148	; 0x94
   10cdc:	e3a00401 	mov	r0, #16777216	; 0x1000000
   10ce0:	e58d1040 	str	r1, [sp, #64]	; 0x40
   10ce4:	e58d2044 	str	r2, [sp, #68]	; 0x44
   10ce8:	e58d3048 	str	r3, [sp, #72]	; 0x48
   10cec:	e58d3054 	str	r3, [sp, #84]	; 0x54
   10cf0:	e58d3058 	str	r3, [sp, #88]	; 0x58
   10cf4:	ebffffc2 	bl	10c04 <malloc@plt>
   10cf8:	e3500000 	cmp	r0, #0
   10cfc:	e58d004c 	str	r0, [sp, #76]	; 0x4c
   10d00:	0a0000d5 	beq	1105c <main+0x398>
   10d04:	e1a03000 	mov	r3, r0
   10d08:	e3a0201b 	mov	r2, #27
   10d0c:	e59f154c 	ldr	r1, [pc, #1356]	; 11260 <main+0x59c>
   10d10:	e59f054c 	ldr	r0, [pc, #1356]	; 11264 <main+0x5a0>
   10d14:	e58d3048 	str	r3, [sp, #72]	; 0x48
   10d18:	ebffffb6 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d1c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
   10d20:	e59f053c 	ldr	r0, [pc, #1340]	; 11264 <main+0x5a0>
   10d24:	ebffff9e 	bl	10ba4 <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10d28:	ebffff94 	bl	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10d2c:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   10d30:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
   10d34:	e59f152c 	ldr	r1, [pc, #1324]	; 11268 <main+0x5a4>
   10d38:	e3a00000 	mov	r0, #0
   10d3c:	e1a0c083 	lsl	ip, r3, #1
   10d40:	e35c0001 	cmp	ip, #1
   10d44:	e1c200f0 	strd	r0, [r2]
   10d48:	c3a04000 	movgt	r4, #0
   10d4c:	c2821008 	addgt	r1, r2, #8
   10d50:	c3a05000 	movgt	r5, #0
   10d54:	c0822203 	addgt	r2, r2, r3, lsl #4
   10d58:	da000002 	ble	10d68 <main+0xa4>
   10d5c:	e0c140f8 	strd	r4, [r1], #8
   10d60:	e1520001 	cmp	r2, r1
   10d64:	1afffffc 	bne	10d5c <main+0x98>
   10d68:	e1a04183 	lsl	r4, r3, #3
   10d6c:	e1a00004 	mov	r0, r4
   10d70:	ebffffa3 	bl	10c04 <malloc@plt>
   10d74:	e58d0088 	str	r0, [sp, #136]	; 0x88
   10d78:	e1a00004 	mov	r0, r4
   10d7c:	ebffffa0 	bl	10c04 <malloc@plt>
   10d80:	e3a03000 	mov	r3, #0
   10d84:	e58d3030 	str	r3, [sp, #48]	; 0x30
   10d88:	e58d008c 	str	r0, [sp, #140]	; 0x8c
   10d8c:	e3a00010 	mov	r0, #16
   10d90:	ebffff68 	bl	10b38 <_Znwj@plt>
   10d94:	e1a03000 	mov	r3, r0
   10d98:	e28d2090 	add	r2, sp, #144	; 0x90
   10d9c:	e1a01002 	mov	r1, r2
   10da0:	e59f04c4 	ldr	r0, [pc, #1220]	; 1126c <main+0x5a8>
   10da4:	e59f24c4 	ldr	r2, [pc, #1220]	; 11270 <main+0x5ac>
   10da8:	e3a0c000 	mov	ip, #0
   10dac:	e583c00c 	str	ip, [r3, #12]
   10db0:	e28dc040 	add	ip, sp, #64	; 0x40
   10db4:	e5213058 	str	r3, [r1, #-88]!	; 0xffffffa8
   10db8:	e5830000 	str	r0, [r3]
   10dbc:	e5832008 	str	r2, [r3, #8]
   10dc0:	e28d0030 	add	r0, sp, #48	; 0x30
   10dc4:	e59f24a8 	ldr	r2, [pc, #1192]	; 11274 <main+0x5b0>
   10dc8:	e583c004 	str	ip, [r3, #4]
   10dcc:	e58d1018 	str	r1, [sp, #24]
   10dd0:	ebffff79 	bl	10bbc <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   10dd4:	e59d0038 	ldr	r0, [sp, #56]	; 0x38
   10dd8:	e3500000 	cmp	r0, #0
   10ddc:	0a000002 	beq	10dec <main+0x128>
   10de0:	e5903000 	ldr	r3, [r0]
   10de4:	e5933004 	ldr	r3, [r3, #4]
   10de8:	e12fff33 	blx	r3
   10dec:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
   10df0:	e3530000 	cmp	r3, #0
   10df4:	1a000117 	bne	11258 <main+0x594>
   10df8:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   10dfc:	e28d0040 	add	r0, sp, #64	; 0x40
   10e00:	e58d3054 	str	r3, [sp, #84]	; 0x54
   10e04:	eb0001dd 	bl	11580 <_ZN5State5printEv>
   10e08:	e59d0018 	ldr	r0, [sp, #24]
   10e0c:	eb000180 	bl	11414 <_ZN8Operator11malloc_gateEi.constprop.4>
   10e10:	e59f4460 	ldr	r4, [pc, #1120]	; 11278 <main+0x5b4>
   10e14:	e59f5460 	ldr	r5, [pc, #1120]	; 1127c <main+0x5b8>
   10e18:	e59f6458 	ldr	r6, [pc, #1112]	; 11278 <main+0x5b4>
   10e1c:	e59f745c 	ldr	r7, [pc, #1116]	; 11280 <main+0x5bc>
   10e20:	e1a03000 	mov	r3, r0
   10e24:	e3a01000 	mov	r1, #0
   10e28:	e3a00000 	mov	r0, #0
   10e2c:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
   10e30:	e1c300f8 	strd	r0, [r3, #8]
   10e34:	e1c301f8 	strd	r0, [r3, #24]
   10e38:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e3c:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e40:	e1c340f0 	strd	r4, [r3]
   10e44:	e1c341f0 	strd	r4, [r3, #16]
   10e48:	e1c342f0 	strd	r4, [r3, #32]
   10e4c:	e28d0030 	add	r0, sp, #48	; 0x30
   10e50:	e58d3038 	str	r3, [sp, #56]	; 0x38
   10e54:	eb00016e 	bl	11414 <_ZN8Operator11malloc_gateEi.constprop.4>
   10e58:	e59f5408 	ldr	r5, [pc, #1032]	; 11268 <main+0x5a4>
   10e5c:	e1a03000 	mov	r3, r0
   10e60:	e3a01000 	mov	r1, #0
   10e64:	e3a00000 	mov	r0, #0
   10e68:	e3a04000 	mov	r4, #0
   10e6c:	e1c300f0 	strd	r0, [r3]
   10e70:	e1c300f8 	strd	r0, [r3, #8]
   10e74:	e1c301f8 	strd	r0, [r3, #24]
   10e78:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e7c:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e80:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e84:	e1c341f0 	strd	r4, [r3, #16]
   10e88:	e1c342f0 	strd	r4, [r3, #32]
   10e8c:	e28d0028 	add	r0, sp, #40	; 0x28
   10e90:	e58d3030 	str	r3, [sp, #48]	; 0x30
   10e94:	eb00015e 	bl	11414 <_ZN8Operator11malloc_gateEi.constprop.4>
   10e98:	e59f73e4 	ldr	r7, [pc, #996]	; 11284 <main+0x5c0>
   10e9c:	e1a03000 	mov	r3, r0
   10ea0:	e3a01000 	mov	r1, #0
   10ea4:	e3a00000 	mov	r0, #0
   10ea8:	e3a06000 	mov	r6, #0
   10eac:	e1c300f0 	strd	r0, [r3]
   10eb0:	e1c300f8 	strd	r0, [r3, #8]
   10eb4:	e1c301f0 	strd	r0, [r3, #16]
   10eb8:	e1c302f0 	strd	r0, [r3, #32]
   10ebc:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10ec0:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10ec4:	e1c361f8 	strd	r6, [r3, #24]
   10ec8:	e1c342f8 	strd	r4, [r3, #40]	; 0x28
   10ecc:	e28d0020 	add	r0, sp, #32
   10ed0:	e58d3028 	str	r3, [sp, #40]	; 0x28
   10ed4:	eb00014e 	bl	11414 <_ZN8Operator11malloc_gateEi.constprop.4>
   10ed8:	e3a03000 	mov	r3, #0
   10edc:	e3a02000 	mov	r2, #0
   10ee0:	e59f837c 	ldr	r8, [pc, #892]	; 11264 <main+0x5a0>
   10ee4:	e1c020f8 	strd	r2, [r0, #8]
   10ee8:	e1c021f0 	strd	r2, [r0, #16]
   10eec:	e1c021f8 	strd	r2, [r0, #24]
   10ef0:	e1c022f0 	strd	r2, [r0, #32]
   10ef4:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10ef8:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10efc:	e3a03014 	mov	r3, #20
   10f00:	e1c040f0 	strd	r4, [r0]
   10f04:	e1c063f0 	strd	r6, [r0, #48]	; 0x30
   10f08:	e58d301c 	str	r3, [sp, #28]
   10f0c:	e58d0020 	str	r0, [sp, #32]
   10f10:	e3a03000 	mov	r3, #0
   10f14:	e58d3014 	str	r3, [sp, #20]
   10f18:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   10f1c:	e59d4030 	ldr	r4, [sp, #48]	; 0x30
   10f20:	e3530000 	cmp	r3, #0
   10f24:	da000068 	ble	110cc <main+0x408>
   10f28:	e59d3014 	ldr	r3, [sp, #20]
   10f2c:	e3a02002 	mov	r2, #2
   10f30:	e1a0b312 	lsl	fp, r2, r3
   10f34:	e3a02010 	mov	r2, #16
   10f38:	e1a03312 	lsl	r3, r2, r3
   10f3c:	e1a0220b 	lsl	r2, fp, #4
   10f40:	e58d3008 	str	r3, [sp, #8]
   10f44:	e1a0a003 	mov	sl, r3
   10f48:	e3a03000 	mov	r3, #0
   10f4c:	e58d2010 	str	r2, [sp, #16]
   10f50:	e58d300c 	str	r3, [sp, #12]
   10f54:	e59d300c 	ldr	r3, [sp, #12]
   10f58:	e1a05203 	lsl	r5, r3, #4
   10f5c:	e1a07083 	lsl	r7, r3, #1
   10f60:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
   10f64:	ed94ab02 	vldr	d10, [r4, #8]
   10f68:	e0821005 	add	r1, r2, r5
   10f6c:	ed94bb00 	vldr	d11, [r4]
   10f70:	ed917b02 	vldr	d7, [r1, #8]
   10f74:	ed94eb0a 	vldr	d14, [r4, #40]	; 0x28
   10f78:	ed94fb08 	vldr	d15, [r4, #32]
   10f7c:	e59d3008 	ldr	r3, [sp, #8]
   10f80:	ee2a9b07 	vmul.f64	d9, d10, d7
   10f84:	e0833005 	add	r3, r3, r5
   10f88:	ee2b8b07 	vmul.f64	d8, d11, d7
   10f8c:	e0823003 	add	r3, r2, r3
   10f90:	ee270b0e 	vmul.f64	d0, d7, d14
   10f94:	ed936b02 	vldr	d6, [r3, #8]
   10f98:	ee277b0f 	vmul.f64	d7, d7, d15
   10f9c:	ed945b0e 	vldr	d5, [r4, #56]	; 0x38
   10fa0:	ed94db06 	vldr	d13, [r4, #24]
   10fa4:	ed94cb04 	vldr	d12, [r4, #16]
   10fa8:	ed911b00 	vldr	d1, [r1]
   10fac:	ee265b05 	vmul.f64	d5, d6, d5
   10fb0:	ed932b00 	vldr	d2, [r3]
   10fb4:	ee2d3b06 	vmul.f64	d3, d13, d6
   10fb8:	e3a02004 	mov	r2, #4
   10fbc:	ed8d7b00 	vstr	d7, [sp]
   10fc0:	ed947b0c 	vldr	d7, [r4, #48]	; 0x30
   10fc4:	ee2c4b06 	vmul.f64	d4, d12, d6
   10fc8:	e59f12b8 	ldr	r1, [pc, #696]	; 11288 <main+0x5c4>
   10fcc:	ee018b0a 	vmla.f64	d8, d1, d10
   10fd0:	e1a00008 	mov	r0, r8
   10fd4:	ee266b07 	vmul.f64	d6, d6, d7
   10fd8:	ed9d7b00 	vldr	d7, [sp]
   10fdc:	ee1b9b01 	vnmls.f64	d9, d11, d1
   10fe0:	e08b9007 	add	r9, fp, r7
   10fe4:	ee110b0f 	vnmls.f64	d0, d1, d15
   10fe8:	ee017b0e 	vmla.f64	d7, d1, d14
   10fec:	ed941b0c 	vldr	d1, [r4, #48]	; 0x30
   10ff0:	ee1c3b02 	vnmls.f64	d3, d12, d2
   10ff4:	ee024b0d 	vmla.f64	d4, d2, d13
   10ff8:	ee125b01 	vnmls.f64	d5, d2, d1
   10ffc:	ed941b0e 	vldr	d1, [r4, #56]	; 0x38
   11000:	ee026b01 	vmla.f64	d6, d2, d1
   11004:	ee399b03 	vadd.f64	d9, d9, d3
   11008:	ee388b04 	vadd.f64	d8, d8, d4
   1100c:	ee30bb05 	vadd.f64	d11, d0, d5
   11010:	ee37ab06 	vadd.f64	d10, d7, d6
   11014:	ebfffef7 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11018:	e5983000 	ldr	r3, [r8]
   1101c:	e513300c 	ldr	r3, [r3, #-12]
   11020:	e0833008 	add	r3, r3, r8
   11024:	e593607c 	ldr	r6, [r3, #124]	; 0x7c
   11028:	e3560000 	cmp	r6, #0
   1102c:	0a000072 	beq	111fc <main+0x538>
   11030:	e5d6301c 	ldrb	r3, [r6, #28]
   11034:	e3530000 	cmp	r3, #0
   11038:	0a000051 	beq	11184 <main+0x4c0>
   1103c:	e5d61027 	ldrb	r1, [r6, #39]	; 0x27
   11040:	e1a00008 	mov	r0, r8
   11044:	ebfffeb8 	bl	10b2c <_ZNSo3putEc@plt>
   11048:	ebfffed2 	bl	10b98 <_ZNSo5flushEv@plt>
   1104c:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
   11050:	e3530001 	cmp	r3, #1
   11054:	1a000008 	bne	1107c <main+0x3b8>
   11058:	eafffffe 	b	11058 <main+0x394>
   1105c:	e3a02022 	mov	r2, #34	; 0x22
   11060:	e59f1224 	ldr	r1, [pc, #548]	; 1128c <main+0x5c8>
   11064:	e59f0224 	ldr	r0, [pc, #548]	; 11290 <main+0x5cc>
   11068:	ebfffee2 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1106c:	e59f021c 	ldr	r0, [pc, #540]	; 11290 <main+0x5cc>
   11070:	ebfffec2 	bl	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   11074:	e3a00001 	mov	r0, #1
   11078:	ebfffec3 	bl	10b8c <exit@plt>
   1107c:	e2855010 	add	r5, r5, #16
   11080:	e3a03001 	mov	r3, #1
   11084:	e15a0005 	cmp	sl, r5
   11088:	e58d705c 	str	r7, [sp, #92]	; 0x5c
   1108c:	e58d9060 	str	r9, [sp, #96]	; 0x60
   11090:	ed8d9b1a 	vstr	d9, [sp, #104]	; 0x68
   11094:	ed8d8b1c 	vstr	d8, [sp, #112]	; 0x70
   11098:	ed8dbb1e 	vstr	d11, [sp, #120]	; 0x78
   1109c:	ed8dab20 	vstr	d10, [sp, #128]	; 0x80
   110a0:	e58d3058 	str	r3, [sp, #88]	; 0x58
   110a4:	e2877002 	add	r7, r7, #2
   110a8:	1affffac 	bne	10f60 <main+0x29c>
   110ac:	e59d200c 	ldr	r2, [sp, #12]
   110b0:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   110b4:	e082200b 	add	r2, r2, fp
   110b8:	e1530002 	cmp	r3, r2
   110bc:	e59d3010 	ldr	r3, [sp, #16]
   110c0:	e58d200c 	str	r2, [sp, #12]
   110c4:	e08aa003 	add	sl, sl, r3
   110c8:	caffffa1 	bgt	10f54 <main+0x290>
   110cc:	e3a0200a 	mov	r2, #10
   110d0:	e59f11bc 	ldr	r1, [pc, #444]	; 11294 <main+0x5d0>
   110d4:	e1a00008 	mov	r0, r8
   110d8:	ebfffec6 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   110dc:	e59d1014 	ldr	r1, [sp, #20]
   110e0:	e1a00008 	mov	r0, r8
   110e4:	ebfffed2 	bl	10c34 <_ZNSolsEi@plt>
   110e8:	e5903000 	ldr	r3, [r0]
   110ec:	e1a05000 	mov	r5, r0
   110f0:	e513300c 	ldr	r3, [r3, #-12]
   110f4:	e0803003 	add	r3, r0, r3
   110f8:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110fc:	e3540000 	cmp	r4, #0
   11100:	0a000031 	beq	111cc <main+0x508>
   11104:	e5d4301c 	ldrb	r3, [r4, #28]
   11108:	e3530000 	cmp	r3, #0
   1110c:	0a000025 	beq	111a8 <main+0x4e4>
   11110:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   11114:	e1a00005 	mov	r0, r5
   11118:	ebfffe83 	bl	10b2c <_ZNSo3putEc@plt>
   1111c:	ebfffe9d 	bl	10b98 <_ZNSo5flushEv@plt>
   11120:	e59d3014 	ldr	r3, [sp, #20]
   11124:	e2833001 	add	r3, r3, #1
   11128:	e3530014 	cmp	r3, #20
   1112c:	e58d3014 	str	r3, [sp, #20]
   11130:	1affff78 	bne	10f18 <main+0x254>
   11134:	e59d301c 	ldr	r3, [sp, #28]
   11138:	e2533001 	subs	r3, r3, #1
   1113c:	e58d301c 	str	r3, [sp, #28]
   11140:	1affff72 	bne	10f10 <main+0x24c>
   11144:	e28d0040 	add	r0, sp, #64	; 0x40
   11148:	eb00010c 	bl	11580 <_ZN5State5printEv>
   1114c:	e28d0020 	add	r0, sp, #32
   11150:	eb000153 	bl	116a4 <_ZN8OperatorD2Ev>
   11154:	e28d0028 	add	r0, sp, #40	; 0x28
   11158:	eb000151 	bl	116a4 <_ZN8OperatorD2Ev>
   1115c:	e28d0030 	add	r0, sp, #48	; 0x30
   11160:	eb00014f 	bl	116a4 <_ZN8OperatorD2Ev>
   11164:	e59d0018 	ldr	r0, [sp, #24]
   11168:	eb00014d 	bl	116a4 <_ZN8OperatorD2Ev>
   1116c:	e28d0040 	add	r0, sp, #64	; 0x40
   11170:	eb00013d 	bl	1166c <_ZN5StateD1Ev>
   11174:	e3a00000 	mov	r0, #0
   11178:	e28dd094 	add	sp, sp, #148	; 0x94
   1117c:	ecbd8b10 	vpop	{d8-d15}
   11180:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11184:	e1a00006 	mov	r0, r6
   11188:	ebfffe94 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   1118c:	e5963000 	ldr	r3, [r6]
   11190:	e1a00006 	mov	r0, r6
   11194:	e3a0100a 	mov	r1, #10
   11198:	e5933018 	ldr	r3, [r3, #24]
   1119c:	e12fff33 	blx	r3
   111a0:	e1a01000 	mov	r1, r0
   111a4:	eaffffa5 	b	11040 <main+0x37c>
   111a8:	e1a00004 	mov	r0, r4
   111ac:	ebfffe8b 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   111b0:	e5943000 	ldr	r3, [r4]
   111b4:	e1a00004 	mov	r0, r4
   111b8:	e3a0100a 	mov	r1, #10
   111bc:	e5933018 	ldr	r3, [r3, #24]
   111c0:	e12fff33 	blx	r3
   111c4:	e1a01000 	mov	r1, r0
   111c8:	eaffffd1 	b	11114 <main+0x450>
   111cc:	ebfffe86 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   111d0:	e1a04000 	mov	r4, r0
   111d4:	e28d0028 	add	r0, sp, #40	; 0x28
   111d8:	eb000131 	bl	116a4 <_ZN8OperatorD2Ev>
   111dc:	e28d0030 	add	r0, sp, #48	; 0x30
   111e0:	eb00012f 	bl	116a4 <_ZN8OperatorD2Ev>
   111e4:	e59d0018 	ldr	r0, [sp, #24]
   111e8:	eb00012d 	bl	116a4 <_ZN8OperatorD2Ev>
   111ec:	e28d0040 	add	r0, sp, #64	; 0x40
   111f0:	eb00011d 	bl	1166c <_ZN5StateD1Ev>
   111f4:	e1a00004 	mov	r0, r4
   111f8:	ebfffe90 	bl	10c40 <_Unwind_Resume@plt>
   111fc:	ebfffe7a 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   11200:	e1a04000 	mov	r4, r0
   11204:	e28d0020 	add	r0, sp, #32
   11208:	eb000125 	bl	116a4 <_ZN8OperatorD2Ev>
   1120c:	eafffff0 	b	111d4 <main+0x510>
   11210:	e1a04000 	mov	r4, r0
   11214:	eafffff0 	b	111dc <main+0x518>
   11218:	e1a04000 	mov	r4, r0
   1121c:	eafffff0 	b	111e4 <main+0x520>
   11220:	e1a04000 	mov	r4, r0
   11224:	eafffff0 	b	111ec <main+0x528>
   11228:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
   1122c:	e1a04000 	mov	r4, r0
   11230:	e3530000 	cmp	r3, #0
   11234:	0a000003 	beq	11248 <main+0x584>
   11238:	e5932000 	ldr	r2, [r3]
   1123c:	e1a00003 	mov	r0, r3
   11240:	e5923004 	ldr	r3, [r2, #4]
   11244:	e12fff33 	blx	r3
   11248:	e1a00004 	mov	r0, r4
   1124c:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
   11250:	e3530000 	cmp	r3, #0
   11254:	0affffe7 	beq	111f8 <main+0x534>
   11258:	ebfffe3c 	bl	10b50 <_ZSt9terminatev@plt>
   1125c:	eafffffa 	b	1124c <main+0x588>
   11260:	000117d4 	.word	0x000117d4
   11264:	00022088 	.word	0x00022088
   11268:	3ff00000 	.word	0x3ff00000
   1126c:	00011738 	.word	0x00011738
   11270:	000114a0 	.word	0x000114a0
   11274:	00010c28 	.word	0x00010c28
   11278:	667f3bcc 	.word	0x667f3bcc
   1127c:	3fe6a09e 	.word	0x3fe6a09e
   11280:	bfe6a09e 	.word	0xbfe6a09e
   11284:	bff00000 	.word	0xbff00000
   11288:	000117fc 	.word	0x000117fc
   1128c:	0001179c 	.word	0x0001179c
   11290:	00022118 	.word	0x00022118
   11294:	000117f0 	.word	0x000117f0

00011298 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   11298:	e92d4010 	push	{r4, lr}
   1129c:	e59f4018 	ldr	r4, [pc, #24]	; 112bc <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   112a0:	e1a00004 	mov	r0, r4
   112a4:	ebfffe59 	bl	10c10 <_ZNSt8ios_base4InitC1Ev@plt>
   112a8:	e1a00004 	mov	r0, r4
   112ac:	e59f200c 	ldr	r2, [pc, #12]	; 112c0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   112b0:	e59f100c 	ldr	r1, [pc, #12]	; 112c4 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   112b4:	e8bd4010 	pop	{r4, lr}
   112b8:	eafffe21 	b	10b44 <__aeabi_atexit@plt>
   112bc:	000221b0 	.word	0x000221b0
   112c0:	00022080 	.word	0x00022080
   112c4:	00010c64 	.word	0x00010c64

000112c8 <_start>:
   112c8:	e3a0b000 	mov	fp, #0
   112cc:	e3a0e000 	mov	lr, #0
   112d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   112d4:	e1a0200d 	mov	r2, sp
   112d8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   112dc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   112e0:	e59fc010 	ldr	ip, [pc, #16]	; 112f8 <_start+0x30>
   112e4:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   112e8:	e59f000c 	ldr	r0, [pc, #12]	; 112fc <_start+0x34>
   112ec:	e59f300c 	ldr	r3, [pc, #12]	; 11300 <_start+0x38>
   112f0:	ebfffe55 	bl	10c4c <__libc_start_main@plt>
   112f4:	ebfffe2d 	bl	10bb0 <abort@plt>
   112f8:	00011720 	.word	0x00011720
   112fc:	00010cc4 	.word	0x00010cc4
   11300:	000116c0 	.word	0x000116c0

00011304 <call_weak_fn>:
   11304:	e59f3014 	ldr	r3, [pc, #20]	; 11320 <call_weak_fn+0x1c>
   11308:	e59f2014 	ldr	r2, [pc, #20]	; 11324 <call_weak_fn+0x20>
   1130c:	e08f3003 	add	r3, pc, r3
   11310:	e7932002 	ldr	r2, [r3, r2]
   11314:	e3520000 	cmp	r2, #0
   11318:	012fff1e 	bxeq	lr
   1131c:	eafffe4d 	b	10c58 <__gmon_start__@plt>
   11320:	00010cec 	.word	0x00010cec
   11324:	00000078 	.word	0x00000078

00011328 <deregister_tm_clones>:
   11328:	e59f301c 	ldr	r3, [pc, #28]	; 1134c <deregister_tm_clones+0x24>
   1132c:	e59f001c 	ldr	r0, [pc, #28]	; 11350 <deregister_tm_clones+0x28>
   11330:	e0433000 	sub	r3, r3, r0
   11334:	e3530006 	cmp	r3, #6
   11338:	912fff1e 	bxls	lr
   1133c:	e59f3010 	ldr	r3, [pc, #16]	; 11354 <deregister_tm_clones+0x2c>
   11340:	e3530000 	cmp	r3, #0
   11344:	012fff1e 	bxeq	lr
   11348:	e12fff13 	bx	r3
   1134c:	00022087 	.word	0x00022087
   11350:	00022084 	.word	0x00022084
   11354:	00000000 	.word	0x00000000

00011358 <register_tm_clones>:
   11358:	e59f1024 	ldr	r1, [pc, #36]	; 11384 <register_tm_clones+0x2c>
   1135c:	e59f0024 	ldr	r0, [pc, #36]	; 11388 <register_tm_clones+0x30>
   11360:	e0411000 	sub	r1, r1, r0
   11364:	e1a01141 	asr	r1, r1, #2
   11368:	e0811fa1 	add	r1, r1, r1, lsr #31
   1136c:	e1b010c1 	asrs	r1, r1, #1
   11370:	012fff1e 	bxeq	lr
   11374:	e59f3010 	ldr	r3, [pc, #16]	; 1138c <register_tm_clones+0x34>
   11378:	e3530000 	cmp	r3, #0
   1137c:	012fff1e 	bxeq	lr
   11380:	e12fff13 	bx	r3
   11384:	00022084 	.word	0x00022084
   11388:	00022084 	.word	0x00022084
   1138c:	00000000 	.word	0x00000000

00011390 <__do_global_dtors_aux>:
   11390:	e92d4010 	push	{r4, lr}
   11394:	e59f4018 	ldr	r4, [pc, #24]	; 113b4 <__do_global_dtors_aux+0x24>
   11398:	e5d43000 	ldrb	r3, [r4]
   1139c:	e3530000 	cmp	r3, #0
   113a0:	18bd8010 	popne	{r4, pc}
   113a4:	ebffffdf 	bl	11328 <deregister_tm_clones>
   113a8:	e3a03001 	mov	r3, #1
   113ac:	e5c43000 	strb	r3, [r4]
   113b0:	e8bd8010 	pop	{r4, pc}
   113b4:	000221a4 	.word	0x000221a4

000113b8 <frame_dummy>:
   113b8:	e59f0028 	ldr	r0, [pc, #40]	; 113e8 <frame_dummy+0x30>
   113bc:	e5903000 	ldr	r3, [r0]
   113c0:	e3530000 	cmp	r3, #0
   113c4:	1a000000 	bne	113cc <frame_dummy+0x14>
   113c8:	eaffffe2 	b	11358 <register_tm_clones>
   113cc:	e59f3018 	ldr	r3, [pc, #24]	; 113ec <frame_dummy+0x34>
   113d0:	e3530000 	cmp	r3, #0
   113d4:	0afffffb 	beq	113c8 <frame_dummy+0x10>
   113d8:	e92d4010 	push	{r4, lr}
   113dc:	e12fff33 	blx	r3
   113e0:	e8bd4010 	pop	{r4, lr}
   113e4:	eaffffdb 	b	11358 <register_tm_clones>
   113e8:	00021ec0 	.word	0x00021ec0
   113ec:	00000000 	.word	0x00000000

000113f0 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFvvEEPS3_EEE6_M_runEv>:
   113f0:	e590200c 	ldr	r2, [r0, #12]
   113f4:	e5903004 	ldr	r3, [r0, #4]
   113f8:	e3120001 	tst	r2, #1
   113fc:	e5901008 	ldr	r1, [r0, #8]
   11400:	1793c0c2 	ldrne	ip, [r3, r2, asr #1]
   11404:	008300c2 	addeq	r0, r3, r2, asr #1
   11408:	108300c2 	addne	r0, r3, r2, asr #1
   1140c:	179c1001 	ldrne	r1, [ip, r1]
   11410:	e12fff11 	bx	r1

00011414 <_ZN8Operator11malloc_gateEi.constprop.4>:
   11414:	e92d4010 	push	{r4, lr}
   11418:	e1a04000 	mov	r4, r0
   1141c:	e3a0005f 	mov	r0, #95	; 0x5f
   11420:	ebfffdf7 	bl	10c04 <malloc@plt>
   11424:	e3500000 	cmp	r0, #0
   11428:	e5840004 	str	r0, [r4, #4]
   1142c:	0a000002 	beq	1143c <_ZN8Operator11malloc_gateEi.constprop.4+0x28>
   11430:	e280001f 	add	r0, r0, #31
   11434:	e3c0001f 	bic	r0, r0, #31
   11438:	e8bd8010 	pop	{r4, pc}
   1143c:	e59f100c 	ldr	r1, [pc, #12]	; 11450 <_ZN8Operator11malloc_gateEi.constprop.4+0x3c>
   11440:	e59f000c 	ldr	r0, [pc, #12]	; 11454 <_ZN8Operator11malloc_gateEi.constprop.4+0x40>
   11444:	ebfffde2 	bl	10bd4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11448:	e3a00001 	mov	r0, #1
   1144c:	ebfffdce 	bl	10b8c <exit@plt>
   11450:	0001179c 	.word	0x0001179c
   11454:	00022118 	.word	0x00022118

00011458 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFvvEEPS3_EEED0Ev>:
   11458:	e59f301c 	ldr	r3, [pc, #28]	; 1147c <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFvvEEPS3_EEED0Ev+0x24>
   1145c:	e92d4010 	push	{r4, lr}
   11460:	e1a04000 	mov	r4, r0
   11464:	e5803000 	str	r3, [r0]
   11468:	ebfffdc1 	bl	10b74 <_ZNSt6thread6_StateD2Ev@plt>
   1146c:	e1a00004 	mov	r0, r4
   11470:	ebfffdd4 	bl	10bc8 <_ZdlPv@plt>
   11474:	e1a00004 	mov	r0, r4
   11478:	e8bd8010 	pop	{r4, pc}
   1147c:	00011738 	.word	0x00011738

00011480 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFvvEEPS3_EEED1Ev>:
   11480:	e59f3014 	ldr	r3, [pc, #20]	; 1149c <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFvvEEPS3_EEED1Ev+0x1c>
   11484:	e92d4010 	push	{r4, lr}
   11488:	e1a04000 	mov	r4, r0
   1148c:	e5803000 	str	r3, [r0]
   11490:	ebfffdb7 	bl	10b74 <_ZNSt6thread6_StateD2Ev@plt>
   11494:	e1a00004 	mov	r0, r4
   11498:	e8bd8010 	pop	{r4, pc}
   1149c:	00011738 	.word	0x00011738

000114a0 <_ZN5State9writebackEv>:
   114a0:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   114a4:	e1a04000 	mov	r4, r0
   114a8:	e59f50c8 	ldr	r5, [pc, #200]	; 11578 <_ZN5State9writebackEv+0xd8>
   114ac:	e5903018 	ldr	r3, [r0, #24]
   114b0:	e59f90c4 	ldr	r9, [pc, #196]	; 1157c <_ZN5State9writebackEv+0xdc>
   114b4:	e1a06005 	mov	r6, r5
   114b8:	e3a08006 	mov	r8, #6
   114bc:	e3a0a00a 	mov	sl, #10
   114c0:	e3a07000 	mov	r7, #0
   114c4:	e3530001 	cmp	r3, #1
   114c8:	1afffffd 	bne	114c4 <_ZN5State9writebackEv+0x24>
   114cc:	e1a02008 	mov	r2, r8
   114d0:	e1a01009 	mov	r1, r9
   114d4:	e1a00006 	mov	r0, r6
   114d8:	ebfffdc6 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   114dc:	e5953000 	ldr	r3, [r5]
   114e0:	e513300c 	ldr	r3, [r3, #-12]
   114e4:	e0853003 	add	r3, r5, r3
   114e8:	e593b07c 	ldr	fp, [r3, #124]	; 0x7c
   114ec:	e35b0000 	cmp	fp, #0
   114f0:	0a00001f 	beq	11574 <_ZN5State9writebackEv+0xd4>
   114f4:	e5db301c 	ldrb	r3, [fp, #28]
   114f8:	e3530000 	cmp	r3, #0
   114fc:	0a000013 	beq	11550 <_ZN5State9writebackEv+0xb0>
   11500:	e5db1027 	ldrb	r1, [fp, #39]	; 0x27
   11504:	e1a00006 	mov	r0, r6
   11508:	ebfffd87 	bl	10b2c <_ZNSo3putEc@plt>
   1150c:	ebfffda1 	bl	10b98 <_ZNSo5flushEv@plt>
   11510:	e594101c 	ldr	r1, [r4, #28]
   11514:	e5942008 	ldr	r2, [r4, #8]
   11518:	ed947b0a 	vldr	d7, [r4, #40]	; 0x28
   1151c:	e0821181 	add	r1, r2, r1, lsl #3
   11520:	e5940020 	ldr	r0, [r4, #32]
   11524:	e3a03000 	mov	r3, #0
   11528:	ed817b00 	vstr	d7, [r1]
   1152c:	e0822180 	add	r2, r2, r0, lsl #3
   11530:	ed947b0c 	vldr	d7, [r4, #48]	; 0x30
   11534:	ed817b02 	vstr	d7, [r1, #8]
   11538:	e1c403d8 	ldrd	r0, [r4, #56]	; 0x38
   1153c:	e1c200f0 	strd	r0, [r2]
   11540:	e1c404d0 	ldrd	r0, [r4, #64]	; 0x40
   11544:	e1c200f8 	strd	r0, [r2, #8]
   11548:	e5847018 	str	r7, [r4, #24]
   1154c:	eaffffdc 	b	114c4 <_ZN5State9writebackEv+0x24>
   11550:	e1a0000b 	mov	r0, fp
   11554:	ebfffda1 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11558:	e59b3000 	ldr	r3, [fp]
   1155c:	e1a0100a 	mov	r1, sl
   11560:	e1a0000b 	mov	r0, fp
   11564:	e5933018 	ldr	r3, [r3, #24]
   11568:	e12fff33 	blx	r3
   1156c:	e1a01000 	mov	r1, r0
   11570:	eaffffe3 	b	11504 <_ZN5State9writebackEv+0x64>
   11574:	ebfffd9c 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   11578:	00022088 	.word	0x00022088
   1157c:	000117c0 	.word	0x000117c0

00011580 <_ZN5State5printEv>:
   11580:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11584:	e1a09000 	mov	r9, r0
   11588:	e59f70cc 	ldr	r7, [pc, #204]	; 1165c <_ZN5State5printEv+0xdc>
   1158c:	e59fb0cc 	ldr	fp, [pc, #204]	; 11660 <_ZN5State5printEv+0xe0>
   11590:	e1a06007 	mov	r6, r7
   11594:	e3a05000 	mov	r5, #0
   11598:	e3a08001 	mov	r8, #1
   1159c:	e5994008 	ldr	r4, [r9, #8]
   115a0:	e1a02008 	mov	r2, r8
   115a4:	e0844005 	add	r4, r4, r5
   115a8:	e1a0100b 	mov	r1, fp
   115ac:	e1a00006 	mov	r0, r6
   115b0:	ebfffd90 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   115b4:	ed940b00 	vldr	d0, [r4]
   115b8:	e1a00006 	mov	r0, r6
   115bc:	ebfffd96 	bl	10c1c <_ZNSo9_M_insertIdEERSoT_@plt>
   115c0:	e3a02002 	mov	r2, #2
   115c4:	e59f1098 	ldr	r1, [pc, #152]	; 11664 <_ZN5State5printEv+0xe4>
   115c8:	e1a0a000 	mov	sl, r0
   115cc:	ebfffd89 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   115d0:	ed940b02 	vldr	d0, [r4, #8]
   115d4:	e1a0000a 	mov	r0, sl
   115d8:	ebfffd8f 	bl	10c1c <_ZNSo9_M_insertIdEERSoT_@plt>
   115dc:	e1a02008 	mov	r2, r8
   115e0:	e59f1080 	ldr	r1, [pc, #128]	; 11668 <_ZN5State5printEv+0xe8>
   115e4:	ebfffd83 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   115e8:	e5973000 	ldr	r3, [r7]
   115ec:	e513300c 	ldr	r3, [r3, #-12]
   115f0:	e0873003 	add	r3, r7, r3
   115f4:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   115f8:	e3540000 	cmp	r4, #0
   115fc:	0a000015 	beq	11658 <_ZN5State5printEv+0xd8>
   11600:	e5d4301c 	ldrb	r3, [r4, #28]
   11604:	e3530000 	cmp	r3, #0
   11608:	0a000009 	beq	11634 <_ZN5State5printEv+0xb4>
   1160c:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   11610:	e1a00006 	mov	r0, r6
   11614:	ebfffd44 	bl	10b2c <_ZNSo3putEc@plt>
   11618:	e2855010 	add	r5, r5, #16
   1161c:	ebfffd5d 	bl	10b98 <_ZNSo5flushEv@plt>
   11620:	e3550040 	cmp	r5, #64	; 0x40
   11624:	1affffdc 	bne	1159c <_ZN5State5printEv+0x1c>
   11628:	e59f002c 	ldr	r0, [pc, #44]	; 1165c <_ZN5State5printEv+0xdc>
   1162c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11630:	eafffd52 	b	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   11634:	e1a00004 	mov	r0, r4
   11638:	ebfffd68 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   1163c:	e5943000 	ldr	r3, [r4]
   11640:	e3a0100a 	mov	r1, #10
   11644:	e1a00004 	mov	r0, r4
   11648:	e5933018 	ldr	r3, [r3, #24]
   1164c:	e12fff33 	blx	r3
   11650:	e1a01000 	mov	r1, r0
   11654:	eaffffed 	b	11610 <_ZN5State5printEv+0x90>
   11658:	ebfffd63 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   1165c:	00022088 	.word	0x00022088
   11660:	000117c8 	.word	0x000117c8
   11664:	000117cc 	.word	0x000117cc
   11668:	000117d0 	.word	0x000117d0

0001166c <_ZN5StateD1Ev>:
   1166c:	e92d4010 	push	{r4, lr}
   11670:	e1a04000 	mov	r4, r0
   11674:	e590000c 	ldr	r0, [r0, #12]
   11678:	ebfffd37 	bl	10b5c <free@plt>
   1167c:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   11680:	ebfffd35 	bl	10b5c <free@plt>
   11684:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   11688:	ebfffd33 	bl	10b5c <free@plt>
   1168c:	e5943014 	ldr	r3, [r4, #20]
   11690:	e3530000 	cmp	r3, #0
   11694:	1a000001 	bne	116a0 <_ZN5StateD1Ev+0x34>
   11698:	e1a00004 	mov	r0, r4
   1169c:	e8bd8010 	pop	{r4, pc}
   116a0:	ebfffd2a 	bl	10b50 <_ZSt9terminatev@plt>

000116a4 <_ZN8OperatorD2Ev>:
   116a4:	e92d4010 	push	{r4, lr}
   116a8:	e1a04000 	mov	r4, r0
   116ac:	e5900004 	ldr	r0, [r0, #4]
   116b0:	ebfffd29 	bl	10b5c <free@plt>
   116b4:	e1a00004 	mov	r0, r4
   116b8:	e8bd8010 	pop	{r4, pc}

000116bc <_Z13dummy_cmatvecPKdii>:
   116bc:	e12fff1e 	bx	lr

000116c0 <__libc_csu_init>:
   116c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   116c4:	e1a07000 	mov	r7, r0
   116c8:	e59f6048 	ldr	r6, [pc, #72]	; 11718 <__libc_csu_init+0x58>
   116cc:	e59f5048 	ldr	r5, [pc, #72]	; 1171c <__libc_csu_init+0x5c>
   116d0:	e08f6006 	add	r6, pc, r6
   116d4:	e08f5005 	add	r5, pc, r5
   116d8:	e0466005 	sub	r6, r6, r5
   116dc:	e1a08001 	mov	r8, r1
   116e0:	e1a09002 	mov	r9, r2
   116e4:	ebfffd08 	bl	10b0c <_init>
   116e8:	e1b06146 	asrs	r6, r6, #2
   116ec:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   116f0:	e3a04000 	mov	r4, #0
   116f4:	e2844001 	add	r4, r4, #1
   116f8:	e4953004 	ldr	r3, [r5], #4
   116fc:	e1a02009 	mov	r2, r9
   11700:	e1a01008 	mov	r1, r8
   11704:	e1a00007 	mov	r0, r7
   11708:	e12fff33 	blx	r3
   1170c:	e1560004 	cmp	r6, r4
   11710:	1afffff7 	bne	116f4 <__libc_csu_init+0x34>
   11714:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11718:	000107e4 	.word	0x000107e4
   1171c:	000107d4 	.word	0x000107d4

00011720 <__libc_csu_fini>:
   11720:	e12fff1e 	bx	lr

Disassembly of section .fini:

00011724 <_fini>:
   11724:	e92d4008 	push	{r3, lr}
   11728:	e8bd8008 	pop	{r3, pc}
