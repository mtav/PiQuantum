
math_test:     file format elf32-littlearm


Disassembly of section .init:

00010b5c <_init>:
   10b5c:	e92d4008 	push	{r3, lr}
   10b60:	eb0001fd 	bl	1135c <call_weak_fn>
   10b64:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010b68 <.plt>:
   10b68:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10b6c:	e59fe004 	ldr	lr, [pc, #4]	; 10b78 <.plt+0x10>
   10b70:	e08fe00e 	add	lr, pc, lr
   10b74:	e5bef008 	ldr	pc, [lr, #8]!
   10b78:	00011488 	.word	0x00011488

00010b7c <_ZNSo3putEc@plt>:
   10b7c:	e28fc600 	add	ip, pc, #0, 12
   10b80:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b84:	e5bcf488 	ldr	pc, [ip, #1160]!	; 0x488

00010b88 <_Znwj@plt>:
   10b88:	e28fc600 	add	ip, pc, #0, 12
   10b8c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b90:	e5bcf480 	ldr	pc, [ip, #1152]!	; 0x480

00010b94 <__aeabi_atexit@plt>:
   10b94:	e28fc600 	add	ip, pc, #0, 12
   10b98:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b9c:	e5bcf478 	ldr	pc, [ip, #1144]!	; 0x478

00010ba0 <_ZSt9terminatev@plt>:
   10ba0:	e28fc600 	add	ip, pc, #0, 12
   10ba4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10ba8:	e5bcf470 	ldr	pc, [ip, #1136]!	; 0x470

00010bac <free@plt>:
   10bac:	e28fc600 	add	ip, pc, #0, 12
   10bb0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bb4:	e5bcf468 	ldr	pc, [ip, #1128]!	; 0x468

00010bb8 <__gcc_personality_v0@plt>:
   10bb8:	e28fc600 	add	ip, pc, #0, 12
   10bbc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bc0:	e5bcf460 	ldr	pc, [ip, #1120]!	; 0x460

00010bc4 <_ZNSt6thread6_StateD2Ev@plt>:
   10bc4:	e28fc600 	add	ip, pc, #0, 12
   10bc8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bcc:	e5bcf458 	ldr	pc, [ip, #1112]!	; 0x458

00010bd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   10bd0:	e28fc600 	add	ip, pc, #0, 12
   10bd4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bd8:	e5bcf450 	ldr	pc, [ip, #1104]!	; 0x450

00010bdc <exit@plt>:
   10bdc:	e28fc600 	add	ip, pc, #0, 12
   10be0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10be4:	e5bcf448 	ldr	pc, [ip, #1096]!	; 0x448

00010be8 <_ZNSo5flushEv@plt>:
   10be8:	e28fc600 	add	ip, pc, #0, 12
   10bec:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bf0:	e5bcf440 	ldr	pc, [ip, #1088]!	; 0x440

00010bf4 <_ZdlPvj@plt>:
   10bf4:	e28fc600 	add	ip, pc, #0, 12
   10bf8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bfc:	e5bcf438 	ldr	pc, [ip, #1080]!	; 0x438

00010c00 <_ZNSo9_M_insertIPKvEERSoT_@plt>:
   10c00:	e28fc600 	add	ip, pc, #0, 12
   10c04:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c08:	e5bcf430 	ldr	pc, [ip, #1072]!	; 0x430

00010c0c <abort@plt>:
   10c0c:	e28fc600 	add	ip, pc, #0, 12
   10c10:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c14:	e5bcf428 	ldr	pc, [ip, #1064]!	; 0x428

00010c18 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>:
   10c18:	e28fc600 	add	ip, pc, #0, 12
   10c1c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c20:	e5bcf420 	ldr	pc, [ip, #1056]!	; 0x420

00010c24 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   10c24:	e28fc600 	add	ip, pc, #0, 12
   10c28:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c2c:	e5bcf418 	ldr	pc, [ip, #1048]!	; 0x418

00010c30 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
   10c30:	e28fc600 	add	ip, pc, #0, 12
   10c34:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c38:	e5bcf410 	ldr	pc, [ip, #1040]!	; 0x410

00010c3c <_ZSt16__throw_bad_castv@plt>:
   10c3c:	e28fc600 	add	ip, pc, #0, 12
   10c40:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c44:	e5bcf408 	ldr	pc, [ip, #1032]!	; 0x408

00010c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>:
   10c48:	e28fc600 	add	ip, pc, #0, 12
   10c4c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c50:	e5bcf400 	ldr	pc, [ip, #1024]!	; 0x400

00010c54 <malloc@plt>:
   10c54:	e28fc600 	add	ip, pc, #0, 12
   10c58:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c5c:	e5bcf3f8 	ldr	pc, [ip, #1016]!	; 0x3f8

00010c60 <_ZNSt8ios_base4InitC1Ev@plt>:
   10c60:	e28fc600 	add	ip, pc, #0, 12
   10c64:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c68:	e5bcf3f0 	ldr	pc, [ip, #1008]!	; 0x3f0

00010c6c <_ZNSo9_M_insertIdEERSoT_@plt>:
   10c6c:	e28fc600 	add	ip, pc, #0, 12
   10c70:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c74:	e5bcf3e8 	ldr	pc, [ip, #1000]!	; 0x3e8

00010c78 <pthread_create@plt>:
   10c78:	e28fc600 	add	ip, pc, #0, 12
   10c7c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c80:	e5bcf3e0 	ldr	pc, [ip, #992]!	; 0x3e0

00010c84 <_ZNSt6thread4joinEv@plt>:
   10c84:	e28fc600 	add	ip, pc, #0, 12
   10c88:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c8c:	e5bcf3d8 	ldr	pc, [ip, #984]!	; 0x3d8

00010c90 <_ZNSolsEi@plt>:
   10c90:	e28fc600 	add	ip, pc, #0, 12
   10c94:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c98:	e5bcf3d0 	ldr	pc, [ip, #976]!	; 0x3d0

00010c9c <_Unwind_Resume@plt>:
   10c9c:	e28fc600 	add	ip, pc, #0, 12
   10ca0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10ca4:	e5bcf3c8 	ldr	pc, [ip, #968]!	; 0x3c8

00010ca8 <__libc_start_main@plt>:
   10ca8:	e28fc600 	add	ip, pc, #0, 12
   10cac:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10cb0:	e5bcf3c0 	ldr	pc, [ip, #960]!	; 0x3c0

00010cb4 <__gmon_start__@plt>:
   10cb4:	e28fc600 	add	ip, pc, #0, 12
   10cb8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10cbc:	e5bcf3b8 	ldr	pc, [ip, #952]!	; 0x3b8

00010cc0 <_ZNSt8ios_base4InitD1Ev@plt>:
   10cc0:	e28fc600 	add	ip, pc, #0, 12
   10cc4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10cc8:	e5bcf3b0 	ldr	pc, [ip, #944]!	; 0x3b0

Disassembly of section .text:

00010ccc <_GLOBAL__I_65535_0_test.o.5802>:
   10ccc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10cd0:	e59f403c 	ldr	r4, [pc, #60]	; 10d14 <_GLOBAL__I_65535_0_test.o.5802+0x48>
   10cd4:	e59f703c 	ldr	r7, [pc, #60]	; 10d18 <_GLOBAL__I_65535_0_test.o.5802+0x4c>
   10cd8:	e59f603c 	ldr	r6, [pc, #60]	; 10d1c <_GLOBAL__I_65535_0_test.o.5802+0x50>
   10cdc:	e1a00004 	mov	r0, r4
   10ce0:	ebffffde 	bl	10c60 <_ZNSt8ios_base4InitC1Ev@plt>
   10ce4:	e2845004 	add	r5, r4, #4
   10ce8:	e1a02007 	mov	r2, r7
   10cec:	e1a01006 	mov	r1, r6
   10cf0:	e1a00004 	mov	r0, r4
   10cf4:	ebffffa6 	bl	10b94 <__aeabi_atexit@plt>
   10cf8:	e1a00005 	mov	r0, r5
   10cfc:	ebffffd7 	bl	10c60 <_ZNSt8ios_base4InitC1Ev@plt>
   10d00:	e1a02007 	mov	r2, r7
   10d04:	e1a01006 	mov	r1, r6
   10d08:	e1a00005 	mov	r0, r5
   10d0c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10d10:	eaffff9f 	b	10b94 <__aeabi_atexit@plt>
   10d14:	000221a8 	.word	0x000221a8
   10d18:	00022084 	.word	0x00022084
   10d1c:	00010cc0 	.word	0x00010cc0

00010d20 <main>:
   10d20:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10d24:	e24dd064 	sub	sp, sp, #100	; 0x64
   10d28:	e3a01014 	mov	r1, #20
   10d2c:	e3a02601 	mov	r2, #1048576	; 0x100000
   10d30:	e3a03000 	mov	r3, #0
   10d34:	e3a00401 	mov	r0, #16777216	; 0x1000000
   10d38:	e58d1044 	str	r1, [sp, #68]	; 0x44
   10d3c:	e58d2048 	str	r2, [sp, #72]	; 0x48
   10d40:	e58d304c 	str	r3, [sp, #76]	; 0x4c
   10d44:	ebffffc2 	bl	10c54 <malloc@plt>
   10d48:	e3500000 	cmp	r0, #0
   10d4c:	e58d0050 	str	r0, [sp, #80]	; 0x50
   10d50:	0a000152 	beq	112a0 <main+0x580>
   10d54:	e1a03000 	mov	r3, r0
   10d58:	e3a0201b 	mov	r2, #27
   10d5c:	e59f155c 	ldr	r1, [pc, #1372]	; 112c0 <main+0x5a0>
   10d60:	e59f055c 	ldr	r0, [pc, #1372]	; 112c4 <main+0x5a4>
   10d64:	e58d304c 	str	r3, [sp, #76]	; 0x4c
   10d68:	ebffffb6 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d6c:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
   10d70:	e59f054c 	ldr	r0, [pc, #1356]	; 112c4 <main+0x5a4>
   10d74:	ebffffa1 	bl	10c00 <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10d78:	ebffff94 	bl	10bd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10d7c:	e59dc048 	ldr	ip, [sp, #72]	; 0x48
   10d80:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
   10d84:	e59f153c 	ldr	r1, [pc, #1340]	; 112c8 <main+0x5a8>
   10d88:	e3a00000 	mov	r0, #0
   10d8c:	e1a0308c 	lsl	r3, ip, #1
   10d90:	e3530001 	cmp	r3, #1
   10d94:	e1c200f0 	strd	r0, [r2]
   10d98:	c2823008 	addgt	r3, r2, #8
   10d9c:	c3a00000 	movgt	r0, #0
   10da0:	c3a01000 	movgt	r1, #0
   10da4:	c082220c 	addgt	r2, r2, ip, lsl #4
   10da8:	da000002 	ble	10db8 <main+0x98>
   10dac:	e0c300f8 	strd	r0, [r3], #8
   10db0:	e1530002 	cmp	r3, r2
   10db4:	1afffffc 	bne	10dac <main+0x8c>
   10db8:	e1a0418c 	lsl	r4, ip, #3
   10dbc:	e1a00004 	mov	r0, r4
   10dc0:	ebffffa3 	bl	10c54 <malloc@plt>
   10dc4:	e28db044 	add	fp, sp, #68	; 0x44
   10dc8:	e58d0058 	str	r0, [sp, #88]	; 0x58
   10dcc:	e1a00004 	mov	r0, r4
   10dd0:	ebffff9f 	bl	10c54 <malloc@plt>
   10dd4:	e58d005c 	str	r0, [sp, #92]	; 0x5c
   10dd8:	e1a0000b 	mov	r0, fp
   10ddc:	eb000203 	bl	115f0 <_ZN5State5printEv>
   10de0:	e28d003c 	add	r0, sp, #60	; 0x3c
   10de4:	eb0001dd 	bl	11560 <_ZN8Operator11malloc_gateEi.constprop.3>
   10de8:	e59f44dc 	ldr	r4, [pc, #1244]	; 112cc <main+0x5ac>
   10dec:	e59f54dc 	ldr	r5, [pc, #1244]	; 112d0 <main+0x5b0>
   10df0:	e59f64d4 	ldr	r6, [pc, #1236]	; 112cc <main+0x5ac>
   10df4:	e59f74d8 	ldr	r7, [pc, #1240]	; 112d4 <main+0x5b4>
   10df8:	e1a03000 	mov	r3, r0
   10dfc:	e3a01000 	mov	r1, #0
   10e00:	e3a00000 	mov	r0, #0
   10e04:	e1c340f0 	strd	r4, [r3]
   10e08:	e1c300f8 	strd	r0, [r3, #8]
   10e0c:	e1c301f8 	strd	r0, [r3, #24]
   10e10:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e14:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e18:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
   10e1c:	e1c341f0 	strd	r4, [r3, #16]
   10e20:	e1c342f0 	strd	r4, [r3, #32]
   10e24:	e28d0034 	add	r0, sp, #52	; 0x34
   10e28:	e58d303c 	str	r3, [sp, #60]	; 0x3c
   10e2c:	eb0001cb 	bl	11560 <_ZN8Operator11malloc_gateEi.constprop.3>
   10e30:	e59f5490 	ldr	r5, [pc, #1168]	; 112c8 <main+0x5a8>
   10e34:	e1a03000 	mov	r3, r0
   10e38:	e3a01000 	mov	r1, #0
   10e3c:	e3a00000 	mov	r0, #0
   10e40:	e3a04000 	mov	r4, #0
   10e44:	e1c300f0 	strd	r0, [r3]
   10e48:	e1c300f8 	strd	r0, [r3, #8]
   10e4c:	e1c301f8 	strd	r0, [r3, #24]
   10e50:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e54:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e58:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e5c:	e1c341f0 	strd	r4, [r3, #16]
   10e60:	e1c342f0 	strd	r4, [r3, #32]
   10e64:	e28d002c 	add	r0, sp, #44	; 0x2c
   10e68:	e58d3034 	str	r3, [sp, #52]	; 0x34
   10e6c:	eb0001bb 	bl	11560 <_ZN8Operator11malloc_gateEi.constprop.3>
   10e70:	e59f7460 	ldr	r7, [pc, #1120]	; 112d8 <main+0x5b8>
   10e74:	e1a03000 	mov	r3, r0
   10e78:	e3a01000 	mov	r1, #0
   10e7c:	e3a00000 	mov	r0, #0
   10e80:	e3a06000 	mov	r6, #0
   10e84:	e1c300f0 	strd	r0, [r3]
   10e88:	e1c300f8 	strd	r0, [r3, #8]
   10e8c:	e1c301f0 	strd	r0, [r3, #16]
   10e90:	e1c302f0 	strd	r0, [r3, #32]
   10e94:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e98:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e9c:	e1c361f8 	strd	r6, [r3, #24]
   10ea0:	e1c342f8 	strd	r4, [r3, #40]	; 0x28
   10ea4:	e28d0024 	add	r0, sp, #36	; 0x24
   10ea8:	e58d302c 	str	r3, [sp, #44]	; 0x2c
   10eac:	eb0001ab 	bl	11560 <_ZN8Operator11malloc_gateEi.constprop.3>
   10eb0:	e3a03000 	mov	r3, #0
   10eb4:	e3a02000 	mov	r2, #0
   10eb8:	e1c040f0 	strd	r4, [r0]
   10ebc:	e3a04000 	mov	r4, #0
   10ec0:	e1c020f8 	strd	r2, [r0, #8]
   10ec4:	e1c021f0 	strd	r2, [r0, #16]
   10ec8:	e1c021f8 	strd	r2, [r0, #24]
   10ecc:	e1c022f0 	strd	r2, [r0, #32]
   10ed0:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10ed4:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10ed8:	e3a03014 	mov	r3, #20
   10edc:	e1c063f0 	strd	r6, [r0, #48]	; 0x30
   10ee0:	e58d3004 	str	r3, [sp, #4]
   10ee4:	e58d0024 	str	r0, [sp, #36]	; 0x24
   10ee8:	e3a06000 	mov	r6, #0
   10eec:	ea00005a 	b	1105c <main+0x33c>
   10ef0:	e58d401c 	str	r4, [sp, #28]
   10ef4:	ebffff23 	bl	10b88 <_Znwj@plt>
   10ef8:	e59f13dc 	ldr	r1, [pc, #988]	; 112dc <main+0x5bc>
   10efc:	e1a03000 	mov	r3, r0
   10f00:	e28d7060 	add	r7, sp, #96	; 0x60
   10f04:	e8830412 	stm	r3, {r1, r4, sl}
   10f08:	e5270040 	str	r0, [r7, #-64]!	; 0xffffffc0
   10f0c:	e59f23cc 	ldr	r2, [pc, #972]	; 112e0 <main+0x5c0>
   10f10:	e28d001c 	add	r0, sp, #28
   10f14:	e1a01007 	mov	r1, r7
   10f18:	e583500c 	str	r5, [r3, #12]
   10f1c:	e5834010 	str	r4, [r3, #16]
   10f20:	e5835014 	str	r5, [r3, #20]
   10f24:	e5838018 	str	r8, [r3, #24]
   10f28:	e583b01c 	str	fp, [r3, #28]
   10f2c:	ebffff39 	bl	10c18 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   10f30:	e59d0020 	ldr	r0, [sp, #32]
   10f34:	e3500000 	cmp	r0, #0
   10f38:	0a000002 	beq	10f48 <main+0x228>
   10f3c:	e5903000 	ldr	r3, [r0]
   10f40:	e5933004 	ldr	r3, [r3, #4]
   10f44:	e12fff33 	blx	r3
   10f48:	e59d3008 	ldr	r3, [sp, #8]
   10f4c:	e3530000 	cmp	r3, #0
   10f50:	1a0000ab 	bne	11204 <main+0x4e4>
   10f54:	e59d9048 	ldr	r9, [sp, #72]	; 0x48
   10f58:	e59d201c 	ldr	r2, [sp, #28]
   10f5c:	e3a00020 	mov	r0, #32
   10f60:	e58d3018 	str	r3, [sp, #24]
   10f64:	e1a0a0c9 	asr	sl, r9, #1
   10f68:	e58d2008 	str	r2, [sp, #8]
   10f6c:	ebffff05 	bl	10b88 <_Znwj@plt>
   10f70:	e1a03000 	mov	r3, r0
   10f74:	e59f0360 	ldr	r0, [pc, #864]	; 112dc <main+0x5bc>
   10f78:	e1a01007 	mov	r1, r7
   10f7c:	e59f235c 	ldr	r2, [pc, #860]	; 112e0 <main+0x5c0>
   10f80:	e8830401 	stm	r3, {r0, sl}
   10f84:	e5839008 	str	r9, [r3, #8]
   10f88:	e28d0018 	add	r0, sp, #24
   10f8c:	e583500c 	str	r5, [r3, #12]
   10f90:	e5834010 	str	r4, [r3, #16]
   10f94:	e5835014 	str	r5, [r3, #20]
   10f98:	e5838018 	str	r8, [r3, #24]
   10f9c:	e583b01c 	str	fp, [r3, #28]
   10fa0:	e58d3020 	str	r3, [sp, #32]
   10fa4:	ebffff1b 	bl	10c18 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   10fa8:	e59d0020 	ldr	r0, [sp, #32]
   10fac:	e3500000 	cmp	r0, #0
   10fb0:	0a000002 	beq	10fc0 <main+0x2a0>
   10fb4:	e5903000 	ldr	r3, [r0]
   10fb8:	e5933004 	ldr	r3, [r3, #4]
   10fbc:	e12fff33 	blx	r3
   10fc0:	e59d300c 	ldr	r3, [sp, #12]
   10fc4:	e3530000 	cmp	r3, #0
   10fc8:	1a00008d 	bne	11204 <main+0x4e4>
   10fcc:	e59d3018 	ldr	r3, [sp, #24]
   10fd0:	e58d300c 	str	r3, [sp, #12]
   10fd4:	e28d0008 	add	r0, sp, #8
   10fd8:	ebffff29 	bl	10c84 <_ZNSt6thread4joinEv@plt>
   10fdc:	e28d000c 	add	r0, sp, #12
   10fe0:	ebffff27 	bl	10c84 <_ZNSt6thread4joinEv@plt>
   10fe4:	e59d300c 	ldr	r3, [sp, #12]
   10fe8:	e3530000 	cmp	r3, #0
   10fec:	1a000084 	bne	11204 <main+0x4e4>
   10ff0:	e59d3008 	ldr	r3, [sp, #8]
   10ff4:	e3530000 	cmp	r3, #0
   10ff8:	1a000081 	bne	11204 <main+0x4e4>
   10ffc:	e3a0200a 	mov	r2, #10
   11000:	e59f12dc 	ldr	r1, [pc, #732]	; 112e4 <main+0x5c4>
   11004:	e59f02b8 	ldr	r0, [pc, #696]	; 112c4 <main+0x5a4>
   11008:	ebffff0e 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1100c:	e1a01006 	mov	r1, r6
   11010:	e59f02ac 	ldr	r0, [pc, #684]	; 112c4 <main+0x5a4>
   11014:	ebffff1d 	bl	10c90 <_ZNSolsEi@plt>
   11018:	e5903000 	ldr	r3, [r0]
   1101c:	e1a07000 	mov	r7, r0
   11020:	e513300c 	ldr	r3, [r3, #-12]
   11024:	e0803003 	add	r3, r0, r3
   11028:	e593507c 	ldr	r5, [r3, #124]	; 0x7c
   1102c:	e3550000 	cmp	r5, #0
   11030:	0a000074 	beq	11208 <main+0x4e8>
   11034:	e5d5301c 	ldrb	r3, [r5, #28]
   11038:	e3530000 	cmp	r3, #0
   1103c:	0a000049 	beq	11168 <main+0x448>
   11040:	e5d51027 	ldrb	r1, [r5, #39]	; 0x27
   11044:	e1a00007 	mov	r0, r7
   11048:	ebfffecb 	bl	10b7c <_ZNSo3putEc@plt>
   1104c:	ebfffee5 	bl	10be8 <_ZNSo5flushEv@plt>
   11050:	e2866001 	add	r6, r6, #1
   11054:	e3560014 	cmp	r6, #20
   11058:	0a00004b 	beq	1118c <main+0x46c>
   1105c:	e59d9048 	ldr	r9, [sp, #72]	; 0x48
   11060:	e3a03001 	mov	r3, #1
   11064:	e3a00020 	mov	r0, #32
   11068:	e1a05613 	lsl	r5, r3, r6
   1106c:	e1a0a359 	asr	sl, r9, r3
   11070:	e155000a 	cmp	r5, sl
   11074:	e58d4008 	str	r4, [sp, #8]
   11078:	e58d400c 	str	r4, [sp, #12]
   1107c:	e59d8034 	ldr	r8, [sp, #52]	; 0x34
   11080:	baffff9a 	blt	10ef0 <main+0x1d0>
   11084:	e58d4014 	str	r4, [sp, #20]
   11088:	e1a0a0c5 	asr	sl, r5, #1
   1108c:	ebfffebd 	bl	10b88 <_Znwj@plt>
   11090:	e59f1244 	ldr	r1, [pc, #580]	; 112dc <main+0x5bc>
   11094:	e1a03000 	mov	r3, r0
   11098:	e28d7060 	add	r7, sp, #96	; 0x60
   1109c:	e8830212 	stm	r3, {r1, r4, r9}
   110a0:	e5270040 	str	r0, [r7, #-64]!	; 0xffffffc0
   110a4:	e59f2234 	ldr	r2, [pc, #564]	; 112e0 <main+0x5c0>
   110a8:	e28d0014 	add	r0, sp, #20
   110ac:	e1a01007 	mov	r1, r7
   110b0:	e583500c 	str	r5, [r3, #12]
   110b4:	e5834010 	str	r4, [r3, #16]
   110b8:	e583a014 	str	sl, [r3, #20]
   110bc:	e5838018 	str	r8, [r3, #24]
   110c0:	e583b01c 	str	fp, [r3, #28]
   110c4:	ebfffed3 	bl	10c18 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   110c8:	e59d0020 	ldr	r0, [sp, #32]
   110cc:	e3500000 	cmp	r0, #0
   110d0:	0a000002 	beq	110e0 <main+0x3c0>
   110d4:	e5903000 	ldr	r3, [r0]
   110d8:	e5933004 	ldr	r3, [r3, #4]
   110dc:	e12fff33 	blx	r3
   110e0:	e59d3008 	ldr	r3, [sp, #8]
   110e4:	e3530000 	cmp	r3, #0
   110e8:	1a000045 	bne	11204 <main+0x4e4>
   110ec:	e59d2014 	ldr	r2, [sp, #20]
   110f0:	e3a00020 	mov	r0, #32
   110f4:	e58d3010 	str	r3, [sp, #16]
   110f8:	e58d2008 	str	r2, [sp, #8]
   110fc:	e59d9048 	ldr	r9, [sp, #72]	; 0x48
   11100:	ebfffea0 	bl	10b88 <_Znwj@plt>
   11104:	e1a03000 	mov	r3, r0
   11108:	e59f01cc 	ldr	r0, [pc, #460]	; 112dc <main+0x5bc>
   1110c:	e1a01007 	mov	r1, r7
   11110:	e59f21c8 	ldr	r2, [pc, #456]	; 112e0 <main+0x5c0>
   11114:	e8830211 	stm	r3, {r0, r4, r9}
   11118:	e28d0010 	add	r0, sp, #16
   1111c:	e583500c 	str	r5, [r3, #12]
   11120:	e583a010 	str	sl, [r3, #16]
   11124:	e5835014 	str	r5, [r3, #20]
   11128:	e5838018 	str	r8, [r3, #24]
   1112c:	e583b01c 	str	fp, [r3, #28]
   11130:	e58d3020 	str	r3, [sp, #32]
   11134:	ebfffeb7 	bl	10c18 <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   11138:	e59d0020 	ldr	r0, [sp, #32]
   1113c:	e3500000 	cmp	r0, #0
   11140:	0a000002 	beq	11150 <main+0x430>
   11144:	e5903000 	ldr	r3, [r0]
   11148:	e5933004 	ldr	r3, [r3, #4]
   1114c:	e12fff33 	blx	r3
   11150:	e59d300c 	ldr	r3, [sp, #12]
   11154:	e3530000 	cmp	r3, #0
   11158:	1a000029 	bne	11204 <main+0x4e4>
   1115c:	e59d3010 	ldr	r3, [sp, #16]
   11160:	e58d300c 	str	r3, [sp, #12]
   11164:	eaffff9a 	b	10fd4 <main+0x2b4>
   11168:	e1a00005 	mov	r0, r5
   1116c:	ebfffeaf 	bl	10c30 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11170:	e5953000 	ldr	r3, [r5]
   11174:	e1a00005 	mov	r0, r5
   11178:	e3a0100a 	mov	r1, #10
   1117c:	e5933018 	ldr	r3, [r3, #24]
   11180:	e12fff33 	blx	r3
   11184:	e1a01000 	mov	r1, r0
   11188:	eaffffad 	b	11044 <main+0x324>
   1118c:	e59d3004 	ldr	r3, [sp, #4]
   11190:	e2533001 	subs	r3, r3, #1
   11194:	e58d3004 	str	r3, [sp, #4]
   11198:	1affff52 	bne	10ee8 <main+0x1c8>
   1119c:	e1a0000b 	mov	r0, fp
   111a0:	eb000112 	bl	115f0 <_ZN5State5printEv>
   111a4:	e28d0024 	add	r0, sp, #36	; 0x24
   111a8:	eb00014b 	bl	116dc <_ZN8OperatorD2Ev>
   111ac:	e28d002c 	add	r0, sp, #44	; 0x2c
   111b0:	eb000149 	bl	116dc <_ZN8OperatorD2Ev>
   111b4:	e28d0034 	add	r0, sp, #52	; 0x34
   111b8:	eb000147 	bl	116dc <_ZN8OperatorD2Ev>
   111bc:	e28d003c 	add	r0, sp, #60	; 0x3c
   111c0:	eb000145 	bl	116dc <_ZN8OperatorD2Ev>
   111c4:	e59d0050 	ldr	r0, [sp, #80]	; 0x50
   111c8:	ebfffe77 	bl	10bac <free@plt>
   111cc:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
   111d0:	ebfffe75 	bl	10bac <free@plt>
   111d4:	e59d005c 	ldr	r0, [sp, #92]	; 0x5c
   111d8:	ebfffe73 	bl	10bac <free@plt>
   111dc:	e3a00000 	mov	r0, #0
   111e0:	e28dd064 	add	sp, sp, #100	; 0x64
   111e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   111e8:	e1a04000 	mov	r4, r0
   111ec:	e59d300c 	ldr	r3, [sp, #12]
   111f0:	e3530000 	cmp	r3, #0
   111f4:	1a000002 	bne	11204 <main+0x4e4>
   111f8:	e59d3008 	ldr	r3, [sp, #8]
   111fc:	e3530000 	cmp	r3, #0
   11200:	0a000002 	beq	11210 <main+0x4f0>
   11204:	ebfffe65 	bl	10ba0 <_ZSt9terminatev@plt>
   11208:	ebfffe8b 	bl	10c3c <_ZSt16__throw_bad_castv@plt>
   1120c:	e1a04000 	mov	r4, r0
   11210:	e28d0024 	add	r0, sp, #36	; 0x24
   11214:	eb000130 	bl	116dc <_ZN8OperatorD2Ev>
   11218:	e28d002c 	add	r0, sp, #44	; 0x2c
   1121c:	eb00012e 	bl	116dc <_ZN8OperatorD2Ev>
   11220:	e28d0034 	add	r0, sp, #52	; 0x34
   11224:	eb00012c 	bl	116dc <_ZN8OperatorD2Ev>
   11228:	e28d003c 	add	r0, sp, #60	; 0x3c
   1122c:	eb00012a 	bl	116dc <_ZN8OperatorD2Ev>
   11230:	e59d0050 	ldr	r0, [sp, #80]	; 0x50
   11234:	ebfffe5c 	bl	10bac <free@plt>
   11238:	e59d0058 	ldr	r0, [sp, #88]	; 0x58
   1123c:	ebfffe5a 	bl	10bac <free@plt>
   11240:	e59d005c 	ldr	r0, [sp, #92]	; 0x5c
   11244:	ebfffe58 	bl	10bac <free@plt>
   11248:	e1a00004 	mov	r0, r4
   1124c:	ebfffe92 	bl	10c9c <_Unwind_Resume@plt>
   11250:	e1a04000 	mov	r4, r0
   11254:	eaffffef 	b	11218 <main+0x4f8>
   11258:	e59d3020 	ldr	r3, [sp, #32]
   1125c:	e1a04000 	mov	r4, r0
   11260:	e3530000 	cmp	r3, #0
   11264:	0affffe0 	beq	111ec <main+0x4cc>
   11268:	e5932000 	ldr	r2, [r3]
   1126c:	e1a00003 	mov	r0, r3
   11270:	e5923004 	ldr	r3, [r2, #4]
   11274:	e12fff33 	blx	r3
   11278:	eaffffdb 	b	111ec <main+0x4cc>
   1127c:	eafffff5 	b	11258 <main+0x538>
   11280:	e1a04000 	mov	r4, r0
   11284:	eaffffe5 	b	11220 <main+0x500>
   11288:	e1a04000 	mov	r4, r0
   1128c:	eaffffe5 	b	11228 <main+0x508>
   11290:	eafffff0 	b	11258 <main+0x538>
   11294:	eaffffef 	b	11258 <main+0x538>
   11298:	e1a04000 	mov	r4, r0
   1129c:	eaffffe3 	b	11230 <main+0x510>
   112a0:	e3a02022 	mov	r2, #34	; 0x22
   112a4:	e59f103c 	ldr	r1, [pc, #60]	; 112e8 <main+0x5c8>
   112a8:	e59f003c 	ldr	r0, [pc, #60]	; 112ec <main+0x5cc>
   112ac:	ebfffe65 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   112b0:	e59f0034 	ldr	r0, [pc, #52]	; 112ec <main+0x5cc>
   112b4:	ebfffe45 	bl	10bd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   112b8:	e3a00001 	mov	r0, #1
   112bc:	ebfffe46 	bl	10bdc <exit@plt>
   112c0:	00011814 	.word	0x00011814
   112c4:	00022088 	.word	0x00022088
   112c8:	3ff00000 	.word	0x3ff00000
   112cc:	667f3bcc 	.word	0x667f3bcc
   112d0:	3fe6a09e 	.word	0x3fe6a09e
   112d4:	bfe6a09e 	.word	0xbfe6a09e
   112d8:	bff00000 	.word	0xbff00000
   112dc:	00011770 	.word	0x00011770
   112e0:	00010c78 	.word	0x00010c78
   112e4:	00011830 	.word	0x00011830
   112e8:	000117e4 	.word	0x000117e4
   112ec:	00022118 	.word	0x00022118

000112f0 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   112f0:	e92d4010 	push	{r4, lr}
   112f4:	e59f4018 	ldr	r4, [pc, #24]	; 11314 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   112f8:	e1a00004 	mov	r0, r4
   112fc:	ebfffe57 	bl	10c60 <_ZNSt8ios_base4InitC1Ev@plt>
   11300:	e1a00004 	mov	r0, r4
   11304:	e59f200c 	ldr	r2, [pc, #12]	; 11318 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   11308:	e59f100c 	ldr	r1, [pc, #12]	; 1131c <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   1130c:	e8bd4010 	pop	{r4, lr}
   11310:	eafffe1f 	b	10b94 <__aeabi_atexit@plt>
   11314:	000221b0 	.word	0x000221b0
   11318:	00022084 	.word	0x00022084
   1131c:	00010cc0 	.word	0x00010cc0

00011320 <_start>:
   11320:	e3a0b000 	mov	fp, #0
   11324:	e3a0e000 	mov	lr, #0
   11328:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1132c:	e1a0200d 	mov	r2, sp
   11330:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   11334:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   11338:	e59fc010 	ldr	ip, [pc, #16]	; 11350 <_start+0x30>
   1133c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   11340:	e59f000c 	ldr	r0, [pc, #12]	; 11354 <_start+0x34>
   11344:	e59f300c 	ldr	r3, [pc, #12]	; 11358 <_start+0x38>
   11348:	ebfffe56 	bl	10ca8 <__libc_start_main@plt>
   1134c:	ebfffe2e 	bl	10c0c <abort@plt>
   11350:	00011758 	.word	0x00011758
   11354:	00010d20 	.word	0x00010d20
   11358:	000116f8 	.word	0x000116f8

0001135c <call_weak_fn>:
   1135c:	e59f3014 	ldr	r3, [pc, #20]	; 11378 <call_weak_fn+0x1c>
   11360:	e59f2014 	ldr	r2, [pc, #20]	; 1137c <call_weak_fn+0x20>
   11364:	e08f3003 	add	r3, pc, r3
   11368:	e7932002 	ldr	r2, [r3, r2]
   1136c:	e3520000 	cmp	r2, #0
   11370:	012fff1e 	bxeq	lr
   11374:	eafffe4e 	b	10cb4 <__gmon_start__@plt>
   11378:	00010c94 	.word	0x00010c94
   1137c:	0000007c 	.word	0x0000007c

00011380 <deregister_tm_clones>:
   11380:	e59f301c 	ldr	r3, [pc, #28]	; 113a4 <deregister_tm_clones+0x24>
   11384:	e59f001c 	ldr	r0, [pc, #28]	; 113a8 <deregister_tm_clones+0x28>
   11388:	e0433000 	sub	r3, r3, r0
   1138c:	e3530006 	cmp	r3, #6
   11390:	912fff1e 	bxls	lr
   11394:	e59f3010 	ldr	r3, [pc, #16]	; 113ac <deregister_tm_clones+0x2c>
   11398:	e3530000 	cmp	r3, #0
   1139c:	012fff1e 	bxeq	lr
   113a0:	e12fff13 	bx	r3
   113a4:	0002208b 	.word	0x0002208b
   113a8:	00022088 	.word	0x00022088
   113ac:	00000000 	.word	0x00000000

000113b0 <register_tm_clones>:
   113b0:	e59f1024 	ldr	r1, [pc, #36]	; 113dc <register_tm_clones+0x2c>
   113b4:	e59f0024 	ldr	r0, [pc, #36]	; 113e0 <register_tm_clones+0x30>
   113b8:	e0411000 	sub	r1, r1, r0
   113bc:	e1a01141 	asr	r1, r1, #2
   113c0:	e0811fa1 	add	r1, r1, r1, lsr #31
   113c4:	e1b010c1 	asrs	r1, r1, #1
   113c8:	012fff1e 	bxeq	lr
   113cc:	e59f3010 	ldr	r3, [pc, #16]	; 113e4 <register_tm_clones+0x34>
   113d0:	e3530000 	cmp	r3, #0
   113d4:	012fff1e 	bxeq	lr
   113d8:	e12fff13 	bx	r3
   113dc:	00022088 	.word	0x00022088
   113e0:	00022088 	.word	0x00022088
   113e4:	00000000 	.word	0x00000000

000113e8 <__do_global_dtors_aux>:
   113e8:	e92d4010 	push	{r4, lr}
   113ec:	e59f4018 	ldr	r4, [pc, #24]	; 1140c <__do_global_dtors_aux+0x24>
   113f0:	e5d43000 	ldrb	r3, [r4]
   113f4:	e3530000 	cmp	r3, #0
   113f8:	18bd8010 	popne	{r4, pc}
   113fc:	ebffffdf 	bl	11380 <deregister_tm_clones>
   11400:	e3a03001 	mov	r3, #1
   11404:	e5c43000 	strb	r3, [r4]
   11408:	e8bd8010 	pop	{r4, pc}
   1140c:	000221a4 	.word	0x000221a4

00011410 <frame_dummy>:
   11410:	e59f0028 	ldr	r0, [pc, #40]	; 11440 <frame_dummy+0x30>
   11414:	e5903000 	ldr	r3, [r0]
   11418:	e3530000 	cmp	r3, #0
   1141c:	1a000000 	bne	11424 <frame_dummy+0x14>
   11420:	eaffffe2 	b	113b0 <register_tm_clones>
   11424:	e59f3018 	ldr	r3, [pc, #24]	; 11444 <frame_dummy+0x34>
   11428:	e3530000 	cmp	r3, #0
   1142c:	0afffffb 	beq	11420 <frame_dummy+0x10>
   11430:	e92d4010 	push	{r4, lr}
   11434:	e12fff33 	blx	r3
   11438:	e8bd4010 	pop	{r4, lr}
   1143c:	eaffffdb 	b	113b0 <register_tm_clones>
   11440:	00021ec0 	.word	0x00021ec0
   11444:	00000000 	.word	0x00000000

00011448 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEE6_M_runEv>:
   11448:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1144c:	ed2d8b0a 	vpush	{d8-d12}
   11450:	e9900120 	ldmib	r0, {r5, r8}
   11454:	e1550008 	cmp	r5, r8
   11458:	e24dd00c 	sub	sp, sp, #12
   1145c:	aa00003c 	bge	11554 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEE6_M_runEv+0x10c>
   11460:	e280300c 	add	r3, r0, #12
   11464:	e89300c8 	ldm	r3, {r3, r6, r7}
   11468:	e0854006 	add	r4, r5, r6
   1146c:	e0479006 	sub	r9, r7, r6
   11470:	e1a04204 	lsl	r4, r4, #4
   11474:	e1a09209 	lsl	r9, r9, #4
   11478:	e1a0b083 	lsl	fp, r3, #1
   1147c:	e1a0a283 	lsl	sl, r3, #5
   11480:	e1a03203 	lsl	r3, r3, #4
   11484:	e58d3004 	str	r3, [sp, #4]
   11488:	e1560007 	cmp	r6, r7
   1148c:	aa00002c 	bge	11544 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEE6_M_runEv+0xfc>
   11490:	e590301c 	ldr	r3, [r0, #28]
   11494:	e59d2004 	ldr	r2, [sp, #4]
   11498:	e089e004 	add	lr, r9, r4
   1149c:	e593c008 	ldr	ip, [r3, #8]
   114a0:	e0821004 	add	r1, r2, r4
   114a4:	e5903018 	ldr	r3, [r0, #24]
   114a8:	e08c2004 	add	r2, ip, r4
   114ac:	e08c1001 	add	r1, ip, r1
   114b0:	e08cc00e 	add	ip, ip, lr
   114b4:	ed927b02 	vldr	d7, [r2, #8]
   114b8:	ed939b02 	vldr	d9, [r3, #8]
   114bc:	ed93ab00 	vldr	d10, [r3]
   114c0:	ed938b08 	vldr	d8, [r3, #32]
   114c4:	ed930b0a 	vldr	d0, [r3, #40]	; 0x28
   114c8:	ee274b09 	vmul.f64	d4, d7, d9
   114cc:	ed922b00 	vldr	d2, [r2]
   114d0:	ee275b0a 	vmul.f64	d5, d7, d10
   114d4:	ed913b00 	vldr	d3, [r1]
   114d8:	ee276b00 	vmul.f64	d6, d7, d0
   114dc:	ed93bb04 	vldr	d11, [r3, #16]
   114e0:	ee277b08 	vmul.f64	d7, d7, d8
   114e4:	ed931b06 	vldr	d1, [r3, #24]
   114e8:	ed93cb0c 	vldr	d12, [r3, #48]	; 0x30
   114ec:	ee124b0a 	vnmls.f64	d4, d2, d10
   114f0:	ed93ab0e 	vldr	d10, [r3, #56]	; 0x38
   114f4:	ee025b09 	vmla.f64	d5, d2, d9
   114f8:	ed919b02 	vldr	d9, [r1, #8]
   114fc:	ee126b08 	vnmls.f64	d6, d2, d8
   11500:	e2822010 	add	r2, r2, #16
   11504:	ee027b00 	vmla.f64	d7, d2, d0
   11508:	e2811010 	add	r1, r1, #16
   1150c:	ee034b0b 	vmla.f64	d4, d3, d11
   11510:	ee035b01 	vmla.f64	d5, d3, d1
   11514:	ee036b0c 	vmla.f64	d6, d3, d12
   11518:	ee037b0a 	vmla.f64	d7, d3, d10
   1151c:	ee094b41 	vmls.f64	d4, d9, d1
   11520:	ee095b0b 	vmla.f64	d5, d9, d11
   11524:	ee096b4a 	vmls.f64	d6, d9, d10
   11528:	ee097b0c 	vmla.f64	d7, d9, d12
   1152c:	ed024b04 	vstr	d4, [r2, #-16]
   11530:	ed025b02 	vstr	d5, [r2, #-8]
   11534:	e152000c 	cmp	r2, ip
   11538:	ed016b04 	vstr	d6, [r1, #-16]
   1153c:	ed017b02 	vstr	d7, [r1, #-8]
   11540:	1affffdb 	bne	114b4 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEE6_M_runEv+0x6c>
   11544:	e085500b 	add	r5, r5, fp
   11548:	e1550008 	cmp	r5, r8
   1154c:	e084400a 	add	r4, r4, sl
   11550:	baffffcc 	blt	11488 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEE6_M_runEv+0x40>
   11554:	e28dd00c 	add	sp, sp, #12
   11558:	ecbd8b0a 	vpop	{d8-d12}
   1155c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00011560 <_ZN8Operator11malloc_gateEi.constprop.3>:
   11560:	e92d4010 	push	{r4, lr}
   11564:	e1a04000 	mov	r4, r0
   11568:	e3a0005f 	mov	r0, #95	; 0x5f
   1156c:	ebfffdb8 	bl	10c54 <malloc@plt>
   11570:	e3500000 	cmp	r0, #0
   11574:	e5840004 	str	r0, [r4, #4]
   11578:	0a000002 	beq	11588 <_ZN8Operator11malloc_gateEi.constprop.3+0x28>
   1157c:	e280001f 	add	r0, r0, #31
   11580:	e3c0001f 	bic	r0, r0, #31
   11584:	e8bd8010 	pop	{r4, pc}
   11588:	e59f100c 	ldr	r1, [pc, #12]	; 1159c <_ZN8Operator11malloc_gateEi.constprop.3+0x3c>
   1158c:	e59f000c 	ldr	r0, [pc, #12]	; 115a0 <_ZN8Operator11malloc_gateEi.constprop.3+0x40>
   11590:	ebfffda3 	bl	10c24 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11594:	e3a00001 	mov	r0, #1
   11598:	ebfffd8f 	bl	10bdc <exit@plt>
   1159c:	000117e4 	.word	0x000117e4
   115a0:	00022118 	.word	0x00022118

000115a4 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEED0Ev>:
   115a4:	e59f3020 	ldr	r3, [pc, #32]	; 115cc <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEED0Ev+0x28>
   115a8:	e92d4010 	push	{r4, lr}
   115ac:	e1a04000 	mov	r4, r0
   115b0:	e5803000 	str	r3, [r0]
   115b4:	ebfffd82 	bl	10bc4 <_ZNSt6thread6_StateD2Ev@plt>
   115b8:	e1a00004 	mov	r0, r4
   115bc:	e3a01020 	mov	r1, #32
   115c0:	ebfffd8b 	bl	10bf4 <_ZdlPvj@plt>
   115c4:	e1a00004 	mov	r0, r4
   115c8:	e8bd8010 	pop	{r4, pc}
   115cc:	00011770 	.word	0x00011770

000115d0 <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEED1Ev>:
   115d0:	e59f3014 	ldr	r3, [pc, #20]	; 115ec <_ZNSt6thread11_State_implISt12_Bind_simpleIFZN5State18get_cmatvec_threadEPdiiiiiEUlvE_vEEED1Ev+0x1c>
   115d4:	e92d4010 	push	{r4, lr}
   115d8:	e1a04000 	mov	r4, r0
   115dc:	e5803000 	str	r3, [r0]
   115e0:	ebfffd77 	bl	10bc4 <_ZNSt6thread6_StateD2Ev@plt>
   115e4:	e1a00004 	mov	r0, r4
   115e8:	e8bd8010 	pop	{r4, pc}
   115ec:	00011770 	.word	0x00011770

000115f0 <_ZN5State5printEv>:
   115f0:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   115f4:	e1a09000 	mov	r9, r0
   115f8:	e59f70cc 	ldr	r7, [pc, #204]	; 116cc <_ZN5State5printEv+0xdc>
   115fc:	e59fb0cc 	ldr	fp, [pc, #204]	; 116d0 <_ZN5State5printEv+0xe0>
   11600:	e1a06007 	mov	r6, r7
   11604:	e3a05000 	mov	r5, #0
   11608:	e3a08001 	mov	r8, #1
   1160c:	e5994008 	ldr	r4, [r9, #8]
   11610:	e1a02008 	mov	r2, r8
   11614:	e0844005 	add	r4, r4, r5
   11618:	e1a0100b 	mov	r1, fp
   1161c:	e1a00006 	mov	r0, r6
   11620:	ebfffd88 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11624:	ed940b00 	vldr	d0, [r4]
   11628:	e1a00006 	mov	r0, r6
   1162c:	ebfffd8e 	bl	10c6c <_ZNSo9_M_insertIdEERSoT_@plt>
   11630:	e3a02002 	mov	r2, #2
   11634:	e59f1098 	ldr	r1, [pc, #152]	; 116d4 <_ZN5State5printEv+0xe4>
   11638:	e1a0a000 	mov	sl, r0
   1163c:	ebfffd81 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11640:	ed940b02 	vldr	d0, [r4, #8]
   11644:	e1a0000a 	mov	r0, sl
   11648:	ebfffd87 	bl	10c6c <_ZNSo9_M_insertIdEERSoT_@plt>
   1164c:	e1a02008 	mov	r2, r8
   11650:	e59f1080 	ldr	r1, [pc, #128]	; 116d8 <_ZN5State5printEv+0xe8>
   11654:	ebfffd7b 	bl	10c48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11658:	e5973000 	ldr	r3, [r7]
   1165c:	e513300c 	ldr	r3, [r3, #-12]
   11660:	e0873003 	add	r3, r7, r3
   11664:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   11668:	e3540000 	cmp	r4, #0
   1166c:	0a000015 	beq	116c8 <_ZN5State5printEv+0xd8>
   11670:	e5d4301c 	ldrb	r3, [r4, #28]
   11674:	e3530000 	cmp	r3, #0
   11678:	0a000009 	beq	116a4 <_ZN5State5printEv+0xb4>
   1167c:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   11680:	e1a00006 	mov	r0, r6
   11684:	ebfffd3c 	bl	10b7c <_ZNSo3putEc@plt>
   11688:	e2855010 	add	r5, r5, #16
   1168c:	ebfffd55 	bl	10be8 <_ZNSo5flushEv@plt>
   11690:	e3550040 	cmp	r5, #64	; 0x40
   11694:	1affffdc 	bne	1160c <_ZN5State5printEv+0x1c>
   11698:	e59f002c 	ldr	r0, [pc, #44]	; 116cc <_ZN5State5printEv+0xdc>
   1169c:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   116a0:	eafffd4a 	b	10bd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   116a4:	e1a00004 	mov	r0, r4
   116a8:	ebfffd60 	bl	10c30 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   116ac:	e5943000 	ldr	r3, [r4]
   116b0:	e3a0100a 	mov	r1, #10
   116b4:	e1a00004 	mov	r0, r4
   116b8:	e5933018 	ldr	r3, [r3, #24]
   116bc:	e12fff33 	blx	r3
   116c0:	e1a01000 	mov	r1, r0
   116c4:	eaffffed 	b	11680 <_ZN5State5printEv+0x90>
   116c8:	ebfffd5b 	bl	10c3c <_ZSt16__throw_bad_castv@plt>
   116cc:	00022088 	.word	0x00022088
   116d0:	00011808 	.word	0x00011808
   116d4:	0001180c 	.word	0x0001180c
   116d8:	00011810 	.word	0x00011810

000116dc <_ZN8OperatorD2Ev>:
   116dc:	e92d4010 	push	{r4, lr}
   116e0:	e1a04000 	mov	r4, r0
   116e4:	e5900004 	ldr	r0, [r0, #4]
   116e8:	ebfffd2f 	bl	10bac <free@plt>
   116ec:	e1a00004 	mov	r0, r4
   116f0:	e8bd8010 	pop	{r4, pc}

000116f4 <_Z13dummy_cmatvecPKdii>:
   116f4:	e12fff1e 	bx	lr

000116f8 <__libc_csu_init>:
   116f8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   116fc:	e1a07000 	mov	r7, r0
   11700:	e59f6048 	ldr	r6, [pc, #72]	; 11750 <__libc_csu_init+0x58>
   11704:	e59f5048 	ldr	r5, [pc, #72]	; 11754 <__libc_csu_init+0x5c>
   11708:	e08f6006 	add	r6, pc, r6
   1170c:	e08f5005 	add	r5, pc, r5
   11710:	e0466005 	sub	r6, r6, r5
   11714:	e1a08001 	mov	r8, r1
   11718:	e1a09002 	mov	r9, r2
   1171c:	ebfffd0e 	bl	10b5c <_init>
   11720:	e1b06146 	asrs	r6, r6, #2
   11724:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   11728:	e3a04000 	mov	r4, #0
   1172c:	e2844001 	add	r4, r4, #1
   11730:	e4953004 	ldr	r3, [r5], #4
   11734:	e1a02009 	mov	r2, r9
   11738:	e1a01008 	mov	r1, r8
   1173c:	e1a00007 	mov	r0, r7
   11740:	e12fff33 	blx	r3
   11744:	e1560004 	cmp	r6, r4
   11748:	1afffff7 	bne	1172c <__libc_csu_init+0x34>
   1174c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11750:	000107ac 	.word	0x000107ac
   11754:	0001079c 	.word	0x0001079c

00011758 <__libc_csu_fini>:
   11758:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001175c <_fini>:
   1175c:	e92d4008 	push	{r3, lr}
   11760:	e8bd8008 	pop	{r3, pc}
