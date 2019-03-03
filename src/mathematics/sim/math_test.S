
math_test:     file format elf32-littlearm


Disassembly of section .init:

00010b0c <_init>:
   10b0c:	e92d4008 	push	{r3, lr}
   10b10:	eb0001d3 	bl	11264 <call_weak_fn>
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

00010c70 <_GLOBAL__I_65535_0_test.o.5846>:
   10c70:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10c74:	e59f403c 	ldr	r4, [pc, #60]	; 10cb8 <_GLOBAL__I_65535_0_test.o.5846+0x48>
   10c78:	e59f703c 	ldr	r7, [pc, #60]	; 10cbc <_GLOBAL__I_65535_0_test.o.5846+0x4c>
   10c7c:	e59f603c 	ldr	r6, [pc, #60]	; 10cc0 <_GLOBAL__I_65535_0_test.o.5846+0x50>
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
   10cd8:	e24dd084 	sub	sp, sp, #132	; 0x84
   10cdc:	e58d2034 	str	r2, [sp, #52]	; 0x34
   10ce0:	e58d1030 	str	r1, [sp, #48]	; 0x30
   10ce4:	e58d3038 	str	r3, [sp, #56]	; 0x38
   10ce8:	e58d303c 	str	r3, [sp, #60]	; 0x3c
   10cec:	e58d3044 	str	r3, [sp, #68]	; 0x44
   10cf0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   10cf4:	e58d3070 	str	r3, [sp, #112]	; 0x70
   10cf8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   10cfc:	e59d0034 	ldr	r0, [sp, #52]	; 0x34
   10d00:	e1a00200 	lsl	r0, r0, #4
   10d04:	ebffffbe 	bl	10c04 <malloc@plt>
   10d08:	e3500000 	cmp	r0, #0
   10d0c:	e58d003c 	str	r0, [sp, #60]	; 0x3c
   10d10:	0a0000f7 	beq	110f4 <main+0x430>
   10d14:	e1a03000 	mov	r3, r0
   10d18:	e3a0201b 	mov	r2, #27
   10d1c:	e59f14a4 	ldr	r1, [pc, #1188]	; 111c8 <main+0x504>
   10d20:	e59f04a4 	ldr	r0, [pc, #1188]	; 111cc <main+0x508>
   10d24:	e58d3038 	str	r3, [sp, #56]	; 0x38
   10d28:	ebffffb2 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d2c:	e59d1038 	ldr	r1, [sp, #56]	; 0x38
   10d30:	e59f0494 	ldr	r0, [pc, #1172]	; 111cc <main+0x508>
   10d34:	ebffff9a 	bl	10ba4 <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10d38:	ebffff90 	bl	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10d3c:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
   10d40:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
   10d44:	e59f1484 	ldr	r1, [pc, #1156]	; 111d0 <main+0x50c>
   10d48:	e3a00000 	mov	r0, #0
   10d4c:	e1a0c083 	lsl	ip, r3, #1
   10d50:	e35c0001 	cmp	ip, #1
   10d54:	e1c200f0 	strd	r0, [r2]
   10d58:	c3a04000 	movgt	r4, #0
   10d5c:	c2821008 	addgt	r1, r2, #8
   10d60:	c3a05000 	movgt	r5, #0
   10d64:	c0822203 	addgt	r2, r2, r3, lsl #4
   10d68:	da000002 	ble	10d78 <main+0xb4>
   10d6c:	e0c140f8 	strd	r4, [r1], #8
   10d70:	e1520001 	cmp	r2, r1
   10d74:	1afffffc 	bne	10d6c <main+0xa8>
   10d78:	e1a04183 	lsl	r4, r3, #3
   10d7c:	e1a00004 	mov	r0, r4
   10d80:	ebffff9f 	bl	10c04 <malloc@plt>
   10d84:	e58d0074 	str	r0, [sp, #116]	; 0x74
   10d88:	e1a00004 	mov	r0, r4
   10d8c:	ebffff9c 	bl	10c04 <malloc@plt>
   10d90:	e3a03000 	mov	r3, #0
   10d94:	e58d3020 	str	r3, [sp, #32]
   10d98:	e58d0078 	str	r0, [sp, #120]	; 0x78
   10d9c:	e3a00008 	mov	r0, #8
   10da0:	ebffff64 	bl	10b38 <_Znwj@plt>
   10da4:	e1a03000 	mov	r3, r0
   10da8:	e59fc424 	ldr	ip, [pc, #1060]	; 111d4 <main+0x510>
   10dac:	e28d5080 	add	r5, sp, #128	; 0x80
   10db0:	e583c000 	str	ip, [r3]
   10db4:	e28dc030 	add	ip, sp, #48	; 0x30
   10db8:	e5250058 	str	r0, [r5, #-88]!	; 0xffffffa8
   10dbc:	e59f2414 	ldr	r2, [pc, #1044]	; 111d8 <main+0x514>
   10dc0:	e1a01005 	mov	r1, r5
   10dc4:	e28d0020 	add	r0, sp, #32
   10dc8:	e583c004 	str	ip, [r3, #4]
   10dcc:	ebffff7a 	bl	10bbc <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   10dd0:	e59d0028 	ldr	r0, [sp, #40]	; 0x28
   10dd4:	e3500000 	cmp	r0, #0
   10dd8:	0a000002 	beq	10de8 <main+0x124>
   10ddc:	e5903000 	ldr	r3, [r0]
   10de0:	e5933004 	ldr	r3, [r3, #4]
   10de4:	e12fff33 	blx	r3
   10de8:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   10dec:	e3530000 	cmp	r3, #0
   10df0:	1a0000ec 	bne	111a8 <main+0x4e4>
   10df4:	e59d3020 	ldr	r3, [sp, #32]
   10df8:	e28d0030 	add	r0, sp, #48	; 0x30
   10dfc:	e58d3044 	str	r3, [sp, #68]	; 0x44
   10e00:	eb00018f 	bl	11444 <_ZN5State5printEv>
   10e04:	e1a00005 	mov	r0, r5
   10e08:	eb000150 	bl	11350 <_ZN8Operator11malloc_gateEi.constprop.3>
   10e0c:	e59f83c8 	ldr	r8, [pc, #968]	; 111dc <main+0x518>
   10e10:	e59f93c8 	ldr	r9, [pc, #968]	; 111e0 <main+0x51c>
   10e14:	e59fa3c0 	ldr	sl, [pc, #960]	; 111dc <main+0x518>
   10e18:	e59fb3c4 	ldr	fp, [pc, #964]	; 111e4 <main+0x520>
   10e1c:	e1a03000 	mov	r3, r0
   10e20:	e3a01000 	mov	r1, #0
   10e24:	e3a00000 	mov	r0, #0
   10e28:	e1c3a3f0 	strd	sl, [r3, #48]	; 0x30
   10e2c:	e1c300f8 	strd	r0, [r3, #8]
   10e30:	e1c301f8 	strd	r0, [r3, #24]
   10e34:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e38:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e3c:	e1c380f0 	strd	r8, [r3]
   10e40:	e1c381f0 	strd	r8, [r3, #16]
   10e44:	e1c382f0 	strd	r8, [r3, #32]
   10e48:	e28d0020 	add	r0, sp, #32
   10e4c:	e58d3028 	str	r3, [sp, #40]	; 0x28
   10e50:	eb00013e 	bl	11350 <_ZN8Operator11malloc_gateEi.constprop.3>
   10e54:	e59f9374 	ldr	r9, [pc, #884]	; 111d0 <main+0x50c>
   10e58:	e1a03000 	mov	r3, r0
   10e5c:	e3a01000 	mov	r1, #0
   10e60:	e3a00000 	mov	r0, #0
   10e64:	e3a08000 	mov	r8, #0
   10e68:	e1c300f0 	strd	r0, [r3]
   10e6c:	e1c300f8 	strd	r0, [r3, #8]
   10e70:	e1c301f8 	strd	r0, [r3, #24]
   10e74:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e78:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e7c:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e80:	e1c381f0 	strd	r8, [r3, #16]
   10e84:	e1c382f0 	strd	r8, [r3, #32]
   10e88:	e28d0018 	add	r0, sp, #24
   10e8c:	e58d3020 	str	r3, [sp, #32]
   10e90:	eb00012e 	bl	11350 <_ZN8Operator11malloc_gateEi.constprop.3>
   10e94:	e59fb34c 	ldr	fp, [pc, #844]	; 111e8 <main+0x524>
   10e98:	e1a03000 	mov	r3, r0
   10e9c:	e3a01000 	mov	r1, #0
   10ea0:	e3a00000 	mov	r0, #0
   10ea4:	e3a0a000 	mov	sl, #0
   10ea8:	e1c300f0 	strd	r0, [r3]
   10eac:	e1c300f8 	strd	r0, [r3, #8]
   10eb0:	e1c301f0 	strd	r0, [r3, #16]
   10eb4:	e1c302f0 	strd	r0, [r3, #32]
   10eb8:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10ebc:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10ec0:	e1c3a1f8 	strd	sl, [r3, #24]
   10ec4:	e1c382f8 	strd	r8, [r3, #40]	; 0x28
   10ec8:	e28d0010 	add	r0, sp, #16
   10ecc:	e58d3018 	str	r3, [sp, #24]
   10ed0:	eb00011e 	bl	11350 <_ZN8Operator11malloc_gateEi.constprop.3>
   10ed4:	e3a03000 	mov	r3, #0
   10ed8:	e3a02000 	mov	r2, #0
   10edc:	e3a04001 	mov	r4, #1
   10ee0:	e1c020f8 	strd	r2, [r0, #8]
   10ee4:	e1c021f0 	strd	r2, [r0, #16]
   10ee8:	e1c021f8 	strd	r2, [r0, #24]
   10eec:	e1c022f0 	strd	r2, [r0, #32]
   10ef0:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10ef4:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10ef8:	e3a03014 	mov	r3, #20
   10efc:	e1c080f0 	strd	r8, [r0]
   10f00:	e1c0a3f0 	strd	sl, [r0, #48]	; 0x30
   10f04:	e58d300c 	str	r3, [sp, #12]
   10f08:	e58d0010 	str	r0, [sp, #16]
   10f0c:	e3a06000 	mov	r6, #0
   10f10:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
   10f14:	e59d1020 	ldr	r1, [sp, #32]
   10f18:	e3530000 	cmp	r3, #0
   10f1c:	da000048 	ble	11044 <main+0x380>
   10f20:	e3a03002 	mov	r3, #2
   10f24:	e3a0a000 	mov	sl, #0
   10f28:	e1a08613 	lsl	r8, r3, r6
   10f2c:	e3a03010 	mov	r3, #16
   10f30:	e1a0b208 	lsl	fp, r8, #4
   10f34:	e1a09613 	lsl	r9, r3, r6
   10f38:	e1a07009 	mov	r7, r9
   10f3c:	e1a0020a 	lsl	r0, sl, #4
   10f40:	e1a0c08a 	lsl	ip, sl, #1
   10f44:	e59d2038 	ldr	r2, [sp, #56]	; 0x38
   10f48:	ed91ab02 	vldr	d10, [r1, #8]
   10f4c:	e082e000 	add	lr, r2, r0
   10f50:	ed91bb00 	vldr	d11, [r1]
   10f54:	ed9e7b02 	vldr	d7, [lr, #8]
   10f58:	ed91eb0a 	vldr	d14, [r1, #40]	; 0x28
   10f5c:	ed91fb08 	vldr	d15, [r1, #32]
   10f60:	e0893000 	add	r3, r9, r0
   10f64:	ee2a3b07 	vmul.f64	d3, d10, d7
   10f68:	e0823003 	add	r3, r2, r3
   10f6c:	ee2b4b07 	vmul.f64	d4, d11, d7
   10f70:	ed936b02 	vldr	d6, [r3, #8]
   10f74:	ee275b0e 	vmul.f64	d5, d7, d14
   10f78:	ed910b0e 	vldr	d0, [r1, #56]	; 0x38
   10f7c:	ee277b0f 	vmul.f64	d7, d7, d15
   10f80:	ed91db06 	vldr	d13, [r1, #24]
   10f84:	ed91cb04 	vldr	d12, [r1, #16]
   10f88:	ee260b00 	vmul.f64	d0, d6, d0
   10f8c:	ed9e1b00 	vldr	d1, [lr]
   10f90:	ee2d9b06 	vmul.f64	d9, d13, d6
   10f94:	ed932b00 	vldr	d2, [r3]
   10f98:	ee2c8b06 	vmul.f64	d8, d12, d6
   10f9c:	e088200c 	add	r2, r8, ip
   10fa0:	ed8d7b00 	vstr	d7, [sp]
   10fa4:	ed917b0c 	vldr	d7, [r1, #48]	; 0x30
   10fa8:	ee014b0a 	vmla.f64	d4, d1, d10
   10fac:	ee1b3b01 	vnmls.f64	d3, d11, d1
   10fb0:	ee266b07 	vmul.f64	d6, d6, d7
   10fb4:	ed9d7b00 	vldr	d7, [sp]
   10fb8:	ee115b0f 	vnmls.f64	d5, d1, d15
   10fbc:	ee1c9b02 	vnmls.f64	d9, d12, d2
   10fc0:	ee017b0e 	vmla.f64	d7, d1, d14
   10fc4:	ed911b0c 	vldr	d1, [r1, #48]	; 0x30
   10fc8:	ee028b0d 	vmla.f64	d8, d2, d13
   10fcc:	ee120b01 	vnmls.f64	d0, d2, d1
   10fd0:	ed911b0e 	vldr	d1, [r1, #56]	; 0x38
   10fd4:	ee333b09 	vadd.f64	d3, d3, d9
   10fd8:	ee026b01 	vmla.f64	d6, d2, d1
   10fdc:	ee344b08 	vadd.f64	d4, d4, d8
   10fe0:	ee355b00 	vadd.f64	d5, d5, d0
   10fe4:	ee377b06 	vadd.f64	d7, d7, d6
   10fe8:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   10fec:	e59d3070 	ldr	r3, [sp, #112]	; 0x70
   10ff0:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   10ff4:	e3530001 	cmp	r3, #1
   10ff8:	0afffffa 	beq	10fe8 <main+0x324>
   10ffc:	ed8d3b14 	vstr	d3, [sp, #80]	; 0x50
   11000:	ed8d4b16 	vstr	d4, [sp, #88]	; 0x58
   11004:	ed8d5b18 	vstr	d5, [sp, #96]	; 0x60
   11008:	ed8d7b1a 	vstr	d7, [sp, #104]	; 0x68
   1100c:	e2800010 	add	r0, r0, #16
   11010:	e1570000 	cmp	r7, r0
   11014:	e58dc048 	str	ip, [sp, #72]	; 0x48
   11018:	e58d204c 	str	r2, [sp, #76]	; 0x4c
   1101c:	e28cc002 	add	ip, ip, #2
   11020:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   11024:	e58d4070 	str	r4, [sp, #112]	; 0x70
   11028:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   1102c:	1affffc4 	bne	10f44 <main+0x280>
   11030:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
   11034:	e08aa008 	add	sl, sl, r8
   11038:	e153000a 	cmp	r3, sl
   1103c:	e087700b 	add	r7, r7, fp
   11040:	caffffbd 	bgt	10f3c <main+0x278>
   11044:	e3a0200a 	mov	r2, #10
   11048:	e59f119c 	ldr	r1, [pc, #412]	; 111ec <main+0x528>
   1104c:	e59f0178 	ldr	r0, [pc, #376]	; 111cc <main+0x508>
   11050:	ebfffee8 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11054:	e1a01006 	mov	r1, r6
   11058:	e59f016c 	ldr	r0, [pc, #364]	; 111cc <main+0x508>
   1105c:	ebfffef4 	bl	10c34 <_ZNSolsEi@plt>
   11060:	e5903000 	ldr	r3, [r0]
   11064:	e1a08000 	mov	r8, r0
   11068:	e513300c 	ldr	r3, [r3, #-12]
   1106c:	e0803003 	add	r3, r0, r3
   11070:	e593707c 	ldr	r7, [r3, #124]	; 0x7c
   11074:	e3570000 	cmp	r7, #0
   11078:	0a00002e 	beq	11138 <main+0x474>
   1107c:	e5d7301c 	ldrb	r3, [r7, #28]
   11080:	e3530000 	cmp	r3, #0
   11084:	0a000022 	beq	11114 <main+0x450>
   11088:	e5d71027 	ldrb	r1, [r7, #39]	; 0x27
   1108c:	e1a00008 	mov	r0, r8
   11090:	ebfffea5 	bl	10b2c <_ZNSo3putEc@plt>
   11094:	ebfffebf 	bl	10b98 <_ZNSo5flushEv@plt>
   11098:	e2866001 	add	r6, r6, #1
   1109c:	e3560014 	cmp	r6, #20
   110a0:	1affff9a 	bne	10f10 <main+0x24c>
   110a4:	e59d300c 	ldr	r3, [sp, #12]
   110a8:	e2533001 	subs	r3, r3, #1
   110ac:	e58d300c 	str	r3, [sp, #12]
   110b0:	1affff95 	bne	10f0c <main+0x248>
   110b4:	e28d0030 	add	r0, sp, #48	; 0x30
   110b8:	eb0000e1 	bl	11444 <_ZN5State5printEv>
   110bc:	e28d0010 	add	r0, sp, #16
   110c0:	eb000128 	bl	11568 <_ZN8OperatorD2Ev>
   110c4:	e28d0018 	add	r0, sp, #24
   110c8:	eb000126 	bl	11568 <_ZN8OperatorD2Ev>
   110cc:	e28d0020 	add	r0, sp, #32
   110d0:	eb000124 	bl	11568 <_ZN8OperatorD2Ev>
   110d4:	e1a00005 	mov	r0, r5
   110d8:	eb000122 	bl	11568 <_ZN8OperatorD2Ev>
   110dc:	e28d0030 	add	r0, sp, #48	; 0x30
   110e0:	eb000112 	bl	11530 <_ZN5StateD1Ev>
   110e4:	e3a00000 	mov	r0, #0
   110e8:	e28dd084 	add	sp, sp, #132	; 0x84
   110ec:	ecbd8b10 	vpop	{d8-d15}
   110f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   110f4:	e3a02022 	mov	r2, #34	; 0x22
   110f8:	e59f10f0 	ldr	r1, [pc, #240]	; 111f0 <main+0x52c>
   110fc:	e59f00f0 	ldr	r0, [pc, #240]	; 111f4 <main+0x530>
   11100:	ebfffebc 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11104:	e59f00e8 	ldr	r0, [pc, #232]	; 111f4 <main+0x530>
   11108:	ebfffe9c 	bl	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   1110c:	e3a00001 	mov	r0, #1
   11110:	ebfffe9d 	bl	10b8c <exit@plt>
   11114:	e1a00007 	mov	r0, r7
   11118:	ebfffeb0 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   1111c:	e5973000 	ldr	r3, [r7]
   11120:	e1a00007 	mov	r0, r7
   11124:	e3a0100a 	mov	r1, #10
   11128:	e5933018 	ldr	r3, [r3, #24]
   1112c:	e12fff33 	blx	r3
   11130:	e1a01000 	mov	r1, r0
   11134:	eaffffd4 	b	1108c <main+0x3c8>
   11138:	ebfffeab 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   1113c:	e1a04000 	mov	r4, r0
   11140:	e28d0010 	add	r0, sp, #16
   11144:	eb000107 	bl	11568 <_ZN8OperatorD2Ev>
   11148:	e28d0018 	add	r0, sp, #24
   1114c:	eb000105 	bl	11568 <_ZN8OperatorD2Ev>
   11150:	e28d0020 	add	r0, sp, #32
   11154:	eb000103 	bl	11568 <_ZN8OperatorD2Ev>
   11158:	e1a00005 	mov	r0, r5
   1115c:	eb000101 	bl	11568 <_ZN8OperatorD2Ev>
   11160:	e28d0030 	add	r0, sp, #48	; 0x30
   11164:	eb0000f1 	bl	11530 <_ZN5StateD1Ev>
   11168:	e1a00004 	mov	r0, r4
   1116c:	ebfffeb3 	bl	10c40 <_Unwind_Resume@plt>
   11170:	e1a04000 	mov	r4, r0
   11174:	eafffff9 	b	11160 <main+0x49c>
   11178:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
   1117c:	e1a04000 	mov	r4, r0
   11180:	e3530000 	cmp	r3, #0
   11184:	0a000003 	beq	11198 <main+0x4d4>
   11188:	e5932000 	ldr	r2, [r3]
   1118c:	e1a00003 	mov	r0, r3
   11190:	e5923004 	ldr	r3, [r2, #4]
   11194:	e12fff33 	blx	r3
   11198:	e1a00004 	mov	r0, r4
   1119c:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   111a0:	e3530000 	cmp	r3, #0
   111a4:	0afffff0 	beq	1116c <main+0x4a8>
   111a8:	ebfffe68 	bl	10b50 <_ZSt9terminatev@plt>
   111ac:	eafffffa 	b	1119c <main+0x4d8>
   111b0:	e1a04000 	mov	r4, r0
   111b4:	eaffffe5 	b	11150 <main+0x48c>
   111b8:	e1a04000 	mov	r4, r0
   111bc:	eaffffe5 	b	11158 <main+0x494>
   111c0:	e1a04000 	mov	r4, r0
   111c4:	eaffffdf 	b	11148 <main+0x484>
   111c8:	00011688 	.word	0x00011688
   111cc:	00022088 	.word	0x00022088
   111d0:	3ff00000 	.word	0x3ff00000
   111d4:	000115fc 	.word	0x000115fc
   111d8:	00010c28 	.word	0x00010c28
   111dc:	667f3bcc 	.word	0x667f3bcc
   111e0:	3fe6a09e 	.word	0x3fe6a09e
   111e4:	bfe6a09e 	.word	0xbfe6a09e
   111e8:	bff00000 	.word	0xbff00000
   111ec:	000116a4 	.word	0x000116a4
   111f0:	00011658 	.word	0x00011658
   111f4:	00022118 	.word	0x00022118

000111f8 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   111f8:	e92d4010 	push	{r4, lr}
   111fc:	e59f4018 	ldr	r4, [pc, #24]	; 1121c <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   11200:	e1a00004 	mov	r0, r4
   11204:	ebfffe81 	bl	10c10 <_ZNSt8ios_base4InitC1Ev@plt>
   11208:	e1a00004 	mov	r0, r4
   1120c:	e59f200c 	ldr	r2, [pc, #12]	; 11220 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   11210:	e59f100c 	ldr	r1, [pc, #12]	; 11224 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   11214:	e8bd4010 	pop	{r4, lr}
   11218:	eafffe49 	b	10b44 <__aeabi_atexit@plt>
   1121c:	000221b0 	.word	0x000221b0
   11220:	00022080 	.word	0x00022080
   11224:	00010c64 	.word	0x00010c64

00011228 <_start>:
   11228:	e3a0b000 	mov	fp, #0
   1122c:	e3a0e000 	mov	lr, #0
   11230:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   11234:	e1a0200d 	mov	r2, sp
   11238:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1123c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   11240:	e59fc010 	ldr	ip, [pc, #16]	; 11258 <_start+0x30>
   11244:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   11248:	e59f000c 	ldr	r0, [pc, #12]	; 1125c <_start+0x34>
   1124c:	e59f300c 	ldr	r3, [pc, #12]	; 11260 <_start+0x38>
   11250:	ebfffe7d 	bl	10c4c <__libc_start_main@plt>
   11254:	ebfffe55 	bl	10bb0 <abort@plt>
   11258:	000115e4 	.word	0x000115e4
   1125c:	00010cc4 	.word	0x00010cc4
   11260:	00011584 	.word	0x00011584

00011264 <call_weak_fn>:
   11264:	e59f3014 	ldr	r3, [pc, #20]	; 11280 <call_weak_fn+0x1c>
   11268:	e59f2014 	ldr	r2, [pc, #20]	; 11284 <call_weak_fn+0x20>
   1126c:	e08f3003 	add	r3, pc, r3
   11270:	e7932002 	ldr	r2, [r3, r2]
   11274:	e3520000 	cmp	r2, #0
   11278:	012fff1e 	bxeq	lr
   1127c:	eafffe75 	b	10c58 <__gmon_start__@plt>
   11280:	00010d8c 	.word	0x00010d8c
   11284:	00000078 	.word	0x00000078

00011288 <deregister_tm_clones>:
   11288:	e59f301c 	ldr	r3, [pc, #28]	; 112ac <deregister_tm_clones+0x24>
   1128c:	e59f001c 	ldr	r0, [pc, #28]	; 112b0 <deregister_tm_clones+0x28>
   11290:	e0433000 	sub	r3, r3, r0
   11294:	e3530006 	cmp	r3, #6
   11298:	912fff1e 	bxls	lr
   1129c:	e59f3010 	ldr	r3, [pc, #16]	; 112b4 <deregister_tm_clones+0x2c>
   112a0:	e3530000 	cmp	r3, #0
   112a4:	012fff1e 	bxeq	lr
   112a8:	e12fff13 	bx	r3
   112ac:	00022087 	.word	0x00022087
   112b0:	00022084 	.word	0x00022084
   112b4:	00000000 	.word	0x00000000

000112b8 <register_tm_clones>:
   112b8:	e59f1024 	ldr	r1, [pc, #36]	; 112e4 <register_tm_clones+0x2c>
   112bc:	e59f0024 	ldr	r0, [pc, #36]	; 112e8 <register_tm_clones+0x30>
   112c0:	e0411000 	sub	r1, r1, r0
   112c4:	e1a01141 	asr	r1, r1, #2
   112c8:	e0811fa1 	add	r1, r1, r1, lsr #31
   112cc:	e1b010c1 	asrs	r1, r1, #1
   112d0:	012fff1e 	bxeq	lr
   112d4:	e59f3010 	ldr	r3, [pc, #16]	; 112ec <register_tm_clones+0x34>
   112d8:	e3530000 	cmp	r3, #0
   112dc:	012fff1e 	bxeq	lr
   112e0:	e12fff13 	bx	r3
   112e4:	00022084 	.word	0x00022084
   112e8:	00022084 	.word	0x00022084
   112ec:	00000000 	.word	0x00000000

000112f0 <__do_global_dtors_aux>:
   112f0:	e92d4010 	push	{r4, lr}
   112f4:	e59f4018 	ldr	r4, [pc, #24]	; 11314 <__do_global_dtors_aux+0x24>
   112f8:	e5d43000 	ldrb	r3, [r4]
   112fc:	e3530000 	cmp	r3, #0
   11300:	18bd8010 	popne	{r4, pc}
   11304:	ebffffdf 	bl	11288 <deregister_tm_clones>
   11308:	e3a03001 	mov	r3, #1
   1130c:	e5c43000 	strb	r3, [r4]
   11310:	e8bd8010 	pop	{r4, pc}
   11314:	000221a4 	.word	0x000221a4

00011318 <frame_dummy>:
   11318:	e59f0028 	ldr	r0, [pc, #40]	; 11348 <frame_dummy+0x30>
   1131c:	e5903000 	ldr	r3, [r0]
   11320:	e3530000 	cmp	r3, #0
   11324:	1a000000 	bne	1132c <frame_dummy+0x14>
   11328:	eaffffe2 	b	112b8 <register_tm_clones>
   1132c:	e59f3018 	ldr	r3, [pc, #24]	; 1134c <frame_dummy+0x34>
   11330:	e3530000 	cmp	r3, #0
   11334:	0afffffb 	beq	11328 <frame_dummy+0x10>
   11338:	e92d4010 	push	{r4, lr}
   1133c:	e12fff33 	blx	r3
   11340:	e8bd4010 	pop	{r4, lr}
   11344:	eaffffdb 	b	112b8 <register_tm_clones>
   11348:	00021ec0 	.word	0x00021ec0
   1134c:	00000000 	.word	0x00000000

00011350 <_ZN8Operator11malloc_gateEi.constprop.3>:
   11350:	e92d4010 	push	{r4, lr}
   11354:	e1a04000 	mov	r4, r0
   11358:	e3a0005f 	mov	r0, #95	; 0x5f
   1135c:	ebfffe28 	bl	10c04 <malloc@plt>
   11360:	e3500000 	cmp	r0, #0
   11364:	e5840004 	str	r0, [r4, #4]
   11368:	0a000002 	beq	11378 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   1136c:	e280001f 	add	r0, r0, #31
   11370:	e3c0001f 	bic	r0, r0, #31
   11374:	e8bd8010 	pop	{r4, pc}
   11378:	e59f100c 	ldr	r1, [pc, #12]	; 1138c <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   1137c:	e59f000c 	ldr	r0, [pc, #12]	; 11390 <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   11380:	ebfffe13 	bl	10bd4 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11384:	e3a00001 	mov	r0, #1
   11388:	ebfffdff 	bl	10b8c <exit@plt>
   1138c:	00011658 	.word	0x00011658
   11390:	00022118 	.word	0x00022118

00011394 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEE6_M_runEv>:
   11394:	e5901004 	ldr	r1, [r0, #4]
   11398:	e3a0c000 	mov	ip, #0
   1139c:	e2812040 	add	r2, r1, #64	; 0x40
   113a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   113a4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   113a8:	e5923000 	ldr	r3, [r2]
   113ac:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   113b0:	e3530001 	cmp	r3, #1
   113b4:	1afffffa 	bne	113a4 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEE6_M_runEv+0x10>
   113b8:	e5910018 	ldr	r0, [r1, #24]
   113bc:	e5913008 	ldr	r3, [r1, #8]
   113c0:	e1c142d0 	ldrd	r4, [r1, #32]
   113c4:	e0830180 	add	r0, r3, r0, lsl #3
   113c8:	e591e01c 	ldr	lr, [r1, #28]
   113cc:	e1c040f0 	strd	r4, [r0]
   113d0:	e1c142d8 	ldrd	r4, [r1, #40]	; 0x28
   113d4:	e083318e 	add	r3, r3, lr, lsl #3
   113d8:	e1c040f8 	strd	r4, [r0, #8]
   113dc:	e1c143d0 	ldrd	r4, [r1, #48]	; 0x30
   113e0:	e1c340f0 	strd	r4, [r3]
   113e4:	e1c143d8 	ldrd	r4, [r1, #56]	; 0x38
   113e8:	e1c340f8 	strd	r4, [r3, #8]
   113ec:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   113f0:	e582c000 	str	ip, [r2]
   113f4:	ee070fba 	mcr	15, 0, r0, cr7, cr10, {5}
   113f8:	eaffffe9 	b	113a4 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEE6_M_runEv+0x10>

000113fc <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEED0Ev>:
   113fc:	e59f301c 	ldr	r3, [pc, #28]	; 11420 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEED0Ev+0x24>
   11400:	e92d4010 	push	{r4, lr}
   11404:	e1a04000 	mov	r4, r0
   11408:	e5803000 	str	r3, [r0]
   1140c:	ebfffdd8 	bl	10b74 <_ZNSt6thread6_StateD2Ev@plt>
   11410:	e1a00004 	mov	r0, r4
   11414:	ebfffdeb 	bl	10bc8 <_ZdlPv@plt>
   11418:	e1a00004 	mov	r0, r4
   1141c:	e8bd8010 	pop	{r4, pc}
   11420:	000115fc 	.word	0x000115fc

00011424 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEED1Ev>:
   11424:	e59f3014 	ldr	r3, [pc, #20]	; 11440 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5StateC4EiEUlvE_vEEED1Ev+0x1c>
   11428:	e92d4010 	push	{r4, lr}
   1142c:	e1a04000 	mov	r4, r0
   11430:	e5803000 	str	r3, [r0]
   11434:	ebfffdce 	bl	10b74 <_ZNSt6thread6_StateD2Ev@plt>
   11438:	e1a00004 	mov	r0, r4
   1143c:	e8bd8010 	pop	{r4, pc}
   11440:	000115fc 	.word	0x000115fc

00011444 <_ZN5State5printEv>:
   11444:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   11448:	e1a09000 	mov	r9, r0
   1144c:	e59f70cc 	ldr	r7, [pc, #204]	; 11520 <_ZN5State5printEv+0xdc>
   11450:	e59fb0cc 	ldr	fp, [pc, #204]	; 11524 <_ZN5State5printEv+0xe0>
   11454:	e1a06007 	mov	r6, r7
   11458:	e3a05000 	mov	r5, #0
   1145c:	e3a08001 	mov	r8, #1
   11460:	e5994008 	ldr	r4, [r9, #8]
   11464:	e1a02008 	mov	r2, r8
   11468:	e0844005 	add	r4, r4, r5
   1146c:	e1a0100b 	mov	r1, fp
   11470:	e1a00006 	mov	r0, r6
   11474:	ebfffddf 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11478:	ed940b00 	vldr	d0, [r4]
   1147c:	e1a00006 	mov	r0, r6
   11480:	ebfffde5 	bl	10c1c <_ZNSo9_M_insertIdEERSoT_@plt>
   11484:	e3a02002 	mov	r2, #2
   11488:	e59f1098 	ldr	r1, [pc, #152]	; 11528 <_ZN5State5printEv+0xe4>
   1148c:	e1a0a000 	mov	sl, r0
   11490:	ebfffdd8 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11494:	ed940b02 	vldr	d0, [r4, #8]
   11498:	e1a0000a 	mov	r0, sl
   1149c:	ebfffdde 	bl	10c1c <_ZNSo9_M_insertIdEERSoT_@plt>
   114a0:	e1a02008 	mov	r2, r8
   114a4:	e59f1080 	ldr	r1, [pc, #128]	; 1152c <_ZN5State5printEv+0xe8>
   114a8:	ebfffdd2 	bl	10bf8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   114ac:	e5973000 	ldr	r3, [r7]
   114b0:	e513300c 	ldr	r3, [r3, #-12]
   114b4:	e0873003 	add	r3, r7, r3
   114b8:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   114bc:	e3540000 	cmp	r4, #0
   114c0:	0a000015 	beq	1151c <_ZN5State5printEv+0xd8>
   114c4:	e5d4301c 	ldrb	r3, [r4, #28]
   114c8:	e3530000 	cmp	r3, #0
   114cc:	0a000009 	beq	114f8 <_ZN5State5printEv+0xb4>
   114d0:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   114d4:	e1a00006 	mov	r0, r6
   114d8:	ebfffd93 	bl	10b2c <_ZNSo3putEc@plt>
   114dc:	e2855010 	add	r5, r5, #16
   114e0:	ebfffdac 	bl	10b98 <_ZNSo5flushEv@plt>
   114e4:	e3550040 	cmp	r5, #64	; 0x40
   114e8:	1affffdc 	bne	11460 <_ZN5State5printEv+0x1c>
   114ec:	e59f002c 	ldr	r0, [pc, #44]	; 11520 <_ZN5State5printEv+0xdc>
   114f0:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   114f4:	eafffda1 	b	10b80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   114f8:	e1a00004 	mov	r0, r4
   114fc:	ebfffdb7 	bl	10be0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11500:	e5943000 	ldr	r3, [r4]
   11504:	e3a0100a 	mov	r1, #10
   11508:	e1a00004 	mov	r0, r4
   1150c:	e5933018 	ldr	r3, [r3, #24]
   11510:	e12fff33 	blx	r3
   11514:	e1a01000 	mov	r1, r0
   11518:	eaffffed 	b	114d4 <_ZN5State5printEv+0x90>
   1151c:	ebfffdb2 	bl	10bec <_ZSt16__throw_bad_castv@plt>
   11520:	00022088 	.word	0x00022088
   11524:	0001167c 	.word	0x0001167c
   11528:	00011680 	.word	0x00011680
   1152c:	00011684 	.word	0x00011684

00011530 <_ZN5StateD1Ev>:
   11530:	e92d4010 	push	{r4, lr}
   11534:	e1a04000 	mov	r4, r0
   11538:	e590000c 	ldr	r0, [r0, #12]
   1153c:	ebfffd86 	bl	10b5c <free@plt>
   11540:	e5940044 	ldr	r0, [r4, #68]	; 0x44
   11544:	ebfffd84 	bl	10b5c <free@plt>
   11548:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   1154c:	ebfffd82 	bl	10b5c <free@plt>
   11550:	e5943014 	ldr	r3, [r4, #20]
   11554:	e3530000 	cmp	r3, #0
   11558:	1a000001 	bne	11564 <_ZN5StateD1Ev+0x34>
   1155c:	e1a00004 	mov	r0, r4
   11560:	e8bd8010 	pop	{r4, pc}
   11564:	ebfffd79 	bl	10b50 <_ZSt9terminatev@plt>

00011568 <_ZN8OperatorD2Ev>:
   11568:	e92d4010 	push	{r4, lr}
   1156c:	e1a04000 	mov	r4, r0
   11570:	e5900004 	ldr	r0, [r0, #4]
   11574:	ebfffd78 	bl	10b5c <free@plt>
   11578:	e1a00004 	mov	r0, r4
   1157c:	e8bd8010 	pop	{r4, pc}

00011580 <_Z13dummy_cmatvecPKdii>:
   11580:	e12fff1e 	bx	lr

00011584 <__libc_csu_init>:
   11584:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   11588:	e1a07000 	mov	r7, r0
   1158c:	e59f6048 	ldr	r6, [pc, #72]	; 115dc <__libc_csu_init+0x58>
   11590:	e59f5048 	ldr	r5, [pc, #72]	; 115e0 <__libc_csu_init+0x5c>
   11594:	e08f6006 	add	r6, pc, r6
   11598:	e08f5005 	add	r5, pc, r5
   1159c:	e0466005 	sub	r6, r6, r5
   115a0:	e1a08001 	mov	r8, r1
   115a4:	e1a09002 	mov	r9, r2
   115a8:	ebfffd57 	bl	10b0c <_init>
   115ac:	e1b06146 	asrs	r6, r6, #2
   115b0:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   115b4:	e3a04000 	mov	r4, #0
   115b8:	e2844001 	add	r4, r4, #1
   115bc:	e4953004 	ldr	r3, [r5], #4
   115c0:	e1a02009 	mov	r2, r9
   115c4:	e1a01008 	mov	r1, r8
   115c8:	e1a00007 	mov	r0, r7
   115cc:	e12fff33 	blx	r3
   115d0:	e1560004 	cmp	r6, r4
   115d4:	1afffff7 	bne	115b8 <__libc_csu_init+0x34>
   115d8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   115dc:	00010920 	.word	0x00010920
   115e0:	00010910 	.word	0x00010910

000115e4 <__libc_csu_fini>:
   115e4:	e12fff1e 	bx	lr

Disassembly of section .fini:

000115e8 <_fini>:
   115e8:	e92d4008 	push	{r3, lr}
   115ec:	e8bd8008 	pop	{r3, pc}
