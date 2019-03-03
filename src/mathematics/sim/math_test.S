
math_test:     file format elf32-littlearm


Disassembly of section .init:

00010b3c <_init>:
   10b3c:	e92d4008 	push	{r3, lr}
   10b40:	eb0001db 	bl	112b4 <call_weak_fn>
   10b44:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010b48 <.plt>:
   10b48:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10b4c:	e59fe004 	ldr	lr, [pc, #4]	; 10b58 <.plt+0x10>
   10b50:	e08fe00e 	add	lr, pc, lr
   10b54:	e5bef008 	ldr	pc, [lr, #8]!
   10b58:	000114a8 	.word	0x000114a8

00010b5c <_ZNSo3putEc@plt>:
   10b5c:	e28fc600 	add	ip, pc, #0, 12
   10b60:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b64:	e5bcf4a8 	ldr	pc, [ip, #1192]!	; 0x4a8

00010b68 <_Znwj@plt>:
   10b68:	e28fc600 	add	ip, pc, #0, 12
   10b6c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b70:	e5bcf4a0 	ldr	pc, [ip, #1184]!	; 0x4a0

00010b74 <__aeabi_atexit@plt>:
   10b74:	e28fc600 	add	ip, pc, #0, 12
   10b78:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b7c:	e5bcf498 	ldr	pc, [ip, #1176]!	; 0x498

00010b80 <_ZSt9terminatev@plt>:
   10b80:	e28fc600 	add	ip, pc, #0, 12
   10b84:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b88:	e5bcf490 	ldr	pc, [ip, #1168]!	; 0x490

00010b8c <free@plt>:
   10b8c:	e28fc600 	add	ip, pc, #0, 12
   10b90:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10b94:	e5bcf488 	ldr	pc, [ip, #1160]!	; 0x488

00010b98 <__gcc_personality_v0@plt>:
   10b98:	e28fc600 	add	ip, pc, #0, 12
   10b9c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10ba0:	e5bcf480 	ldr	pc, [ip, #1152]!	; 0x480

00010ba4 <_ZNSt6thread6_StateD2Ev@plt>:
   10ba4:	e28fc600 	add	ip, pc, #0, 12
   10ba8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bac:	e5bcf478 	ldr	pc, [ip, #1144]!	; 0x478

00010bb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
   10bb0:	e28fc600 	add	ip, pc, #0, 12
   10bb4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bb8:	e5bcf470 	ldr	pc, [ip, #1136]!	; 0x470

00010bbc <exit@plt>:
   10bbc:	e28fc600 	add	ip, pc, #0, 12
   10bc0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bc4:	e5bcf468 	ldr	pc, [ip, #1128]!	; 0x468

00010bc8 <_ZNSo5flushEv@plt>:
   10bc8:	e28fc600 	add	ip, pc, #0, 12
   10bcc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bd0:	e5bcf460 	ldr	pc, [ip, #1120]!	; 0x460

00010bd4 <_ZNSo9_M_insertIPKvEERSoT_@plt>:
   10bd4:	e28fc600 	add	ip, pc, #0, 12
   10bd8:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bdc:	e5bcf458 	ldr	pc, [ip, #1112]!	; 0x458

00010be0 <abort@plt>:
   10be0:	e28fc600 	add	ip, pc, #0, 12
   10be4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10be8:	e5bcf450 	ldr	pc, [ip, #1104]!	; 0x450

00010bec <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>:
   10bec:	e28fc600 	add	ip, pc, #0, 12
   10bf0:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10bf4:	e5bcf448 	ldr	pc, [ip, #1096]!	; 0x448

00010bf8 <_ZdlPv@plt>:
   10bf8:	e28fc600 	add	ip, pc, #0, 12
   10bfc:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c00:	e5bcf440 	ldr	pc, [ip, #1088]!	; 0x440

00010c04 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
   10c04:	e28fc600 	add	ip, pc, #0, 12
   10c08:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c0c:	e5bcf438 	ldr	pc, [ip, #1080]!	; 0x438

00010c10 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
   10c10:	e28fc600 	add	ip, pc, #0, 12
   10c14:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c18:	e5bcf430 	ldr	pc, [ip, #1072]!	; 0x430

00010c1c <_ZSt16__throw_bad_castv@plt>:
   10c1c:	e28fc600 	add	ip, pc, #0, 12
   10c20:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c24:	e5bcf428 	ldr	pc, [ip, #1064]!	; 0x428

00010c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>:
   10c28:	e28fc600 	add	ip, pc, #0, 12
   10c2c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c30:	e5bcf420 	ldr	pc, [ip, #1056]!	; 0x420

00010c34 <malloc@plt>:
   10c34:	e28fc600 	add	ip, pc, #0, 12
   10c38:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c3c:	e5bcf418 	ldr	pc, [ip, #1048]!	; 0x418

00010c40 <_ZNSt8ios_base4InitC1Ev@plt>:
   10c40:	e28fc600 	add	ip, pc, #0, 12
   10c44:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c48:	e5bcf410 	ldr	pc, [ip, #1040]!	; 0x410

00010c4c <_ZNSo9_M_insertIdEERSoT_@plt>:
   10c4c:	e28fc600 	add	ip, pc, #0, 12
   10c50:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c54:	e5bcf408 	ldr	pc, [ip, #1032]!	; 0x408

00010c58 <pthread_create@plt>:
   10c58:	e28fc600 	add	ip, pc, #0, 12
   10c5c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c60:	e5bcf400 	ldr	pc, [ip, #1024]!	; 0x400

00010c64 <_ZNSt6thread4joinEv@plt>:
   10c64:	e28fc600 	add	ip, pc, #0, 12
   10c68:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c6c:	e5bcf3f8 	ldr	pc, [ip, #1016]!	; 0x3f8

00010c70 <_ZNSolsEi@plt>:
   10c70:	e28fc600 	add	ip, pc, #0, 12
   10c74:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c78:	e5bcf3f0 	ldr	pc, [ip, #1008]!	; 0x3f0

00010c7c <_Unwind_Resume@plt>:
   10c7c:	e28fc600 	add	ip, pc, #0, 12
   10c80:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c84:	e5bcf3e8 	ldr	pc, [ip, #1000]!	; 0x3e8

00010c88 <__libc_start_main@plt>:
   10c88:	e28fc600 	add	ip, pc, #0, 12
   10c8c:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c90:	e5bcf3e0 	ldr	pc, [ip, #992]!	; 0x3e0

00010c94 <__gmon_start__@plt>:
   10c94:	e28fc600 	add	ip, pc, #0, 12
   10c98:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10c9c:	e5bcf3d8 	ldr	pc, [ip, #984]!	; 0x3d8

00010ca0 <_ZNSt8ios_base4InitD1Ev@plt>:
   10ca0:	e28fc600 	add	ip, pc, #0, 12
   10ca4:	e28cca11 	add	ip, ip, #69632	; 0x11000
   10ca8:	e5bcf3d0 	ldr	pc, [ip, #976]!	; 0x3d0

Disassembly of section .text:

00010cac <_GLOBAL__I_65535_0_test.o.5914>:
   10cac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10cb0:	e59f403c 	ldr	r4, [pc, #60]	; 10cf4 <_GLOBAL__I_65535_0_test.o.5914+0x48>
   10cb4:	e59f703c 	ldr	r7, [pc, #60]	; 10cf8 <_GLOBAL__I_65535_0_test.o.5914+0x4c>
   10cb8:	e59f603c 	ldr	r6, [pc, #60]	; 10cfc <_GLOBAL__I_65535_0_test.o.5914+0x50>
   10cbc:	e1a00004 	mov	r0, r4
   10cc0:	ebffffde 	bl	10c40 <_ZNSt8ios_base4InitC1Ev@plt>
   10cc4:	e2845004 	add	r5, r4, #4
   10cc8:	e1a02007 	mov	r2, r7
   10ccc:	e1a01006 	mov	r1, r6
   10cd0:	e1a00004 	mov	r0, r4
   10cd4:	ebffffa6 	bl	10b74 <__aeabi_atexit@plt>
   10cd8:	e1a00005 	mov	r0, r5
   10cdc:	ebffffd7 	bl	10c40 <_ZNSt8ios_base4InitC1Ev@plt>
   10ce0:	e1a02007 	mov	r2, r7
   10ce4:	e1a01006 	mov	r1, r6
   10ce8:	e1a00005 	mov	r0, r5
   10cec:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10cf0:	eaffff9f 	b	10b74 <__aeabi_atexit@plt>
   10cf4:	000221a8 	.word	0x000221a8
   10cf8:	00022084 	.word	0x00022084
   10cfc:	00010ca0 	.word	0x00010ca0

00010d00 <main>:
   10d00:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10d04:	ed2d8b10 	vpush	{d8-d15}
   10d08:	e3a03000 	mov	r3, #0
   10d0c:	e3a01014 	mov	r1, #20
   10d10:	e3a02601 	mov	r2, #1048576	; 0x100000
   10d14:	e24dd064 	sub	sp, sp, #100	; 0x64
   10d18:	e3a00401 	mov	r0, #16777216	; 0x1000000
   10d1c:	e58d1040 	str	r1, [sp, #64]	; 0x40
   10d20:	e58d2044 	str	r2, [sp, #68]	; 0x44
   10d24:	e58d3048 	str	r3, [sp, #72]	; 0x48
   10d28:	e58d3054 	str	r3, [sp, #84]	; 0x54
   10d2c:	ebffffc0 	bl	10c34 <malloc@plt>
   10d30:	e3500000 	cmp	r0, #0
   10d34:	e58d004c 	str	r0, [sp, #76]	; 0x4c
   10d38:	0a00010e 	beq	11178 <main+0x478>
   10d3c:	e1a03000 	mov	r3, r0
   10d40:	e3a0201b 	mov	r2, #27
   10d44:	e59f14c8 	ldr	r1, [pc, #1224]	; 11214 <main+0x514>
   10d48:	e59f04c8 	ldr	r0, [pc, #1224]	; 11218 <main+0x518>
   10d4c:	e58d3048 	str	r3, [sp, #72]	; 0x48
   10d50:	ebffffb4 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   10d54:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
   10d58:	e59f04b8 	ldr	r0, [pc, #1208]	; 11218 <main+0x518>
   10d5c:	ebffff9c 	bl	10bd4 <_ZNSo9_M_insertIPKvEERSoT_@plt>
   10d60:	ebffff92 	bl	10bb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   10d64:	e59d1044 	ldr	r1, [sp, #68]	; 0x44
   10d68:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
   10d6c:	e59f54a8 	ldr	r5, [pc, #1192]	; 1121c <main+0x51c>
   10d70:	e3a04000 	mov	r4, #0
   10d74:	e1a03081 	lsl	r3, r1, #1
   10d78:	e3530001 	cmp	r3, #1
   10d7c:	e1c240f0 	strd	r4, [r2]
   10d80:	c2823008 	addgt	r3, r2, #8
   10d84:	c3a04000 	movgt	r4, #0
   10d88:	c3a05000 	movgt	r5, #0
   10d8c:	c0822201 	addgt	r2, r2, r1, lsl #4
   10d90:	da000002 	ble	10da0 <main+0xa0>
   10d94:	e0c340f8 	strd	r4, [r3], #8
   10d98:	e1520003 	cmp	r2, r3
   10d9c:	1afffffc 	bne	10d94 <main+0x94>
   10da0:	e1a04181 	lsl	r4, r1, #3
   10da4:	e1a00004 	mov	r0, r4
   10da8:	ebffffa1 	bl	10c34 <malloc@plt>
   10dac:	e58d0058 	str	r0, [sp, #88]	; 0x58
   10db0:	e1a00004 	mov	r0, r4
   10db4:	ebffff9e 	bl	10c34 <malloc@plt>
   10db8:	e58d005c 	str	r0, [sp, #92]	; 0x5c
   10dbc:	e28d0040 	add	r0, sp, #64	; 0x40
   10dc0:	eb0001b5 	bl	1149c <_ZN5State5printEv>
   10dc4:	e28d0038 	add	r0, sp, #56	; 0x38
   10dc8:	eb000190 	bl	11410 <_ZN8Operator11malloc_gateEi.constprop.5>
   10dcc:	e59f444c 	ldr	r4, [pc, #1100]	; 11220 <main+0x520>
   10dd0:	e59f544c 	ldr	r5, [pc, #1100]	; 11224 <main+0x524>
   10dd4:	e59f6444 	ldr	r6, [pc, #1092]	; 11220 <main+0x520>
   10dd8:	e59f7448 	ldr	r7, [pc, #1096]	; 11228 <main+0x528>
   10ddc:	e1a03000 	mov	r3, r0
   10de0:	e3a01000 	mov	r1, #0
   10de4:	e3a00000 	mov	r0, #0
   10de8:	e1c340f0 	strd	r4, [r3]
   10dec:	e1c300f8 	strd	r0, [r3, #8]
   10df0:	e1c301f8 	strd	r0, [r3, #24]
   10df4:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10df8:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10dfc:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
   10e00:	e1c341f0 	strd	r4, [r3, #16]
   10e04:	e1c342f0 	strd	r4, [r3, #32]
   10e08:	e28d0030 	add	r0, sp, #48	; 0x30
   10e0c:	e58d3038 	str	r3, [sp, #56]	; 0x38
   10e10:	eb00017e 	bl	11410 <_ZN8Operator11malloc_gateEi.constprop.5>
   10e14:	e59f5400 	ldr	r5, [pc, #1024]	; 1121c <main+0x51c>
   10e18:	e1a03000 	mov	r3, r0
   10e1c:	e3a01000 	mov	r1, #0
   10e20:	e3a00000 	mov	r0, #0
   10e24:	e3a04000 	mov	r4, #0
   10e28:	e1c300f0 	strd	r0, [r3]
   10e2c:	e1c300f8 	strd	r0, [r3, #8]
   10e30:	e1c301f8 	strd	r0, [r3, #24]
   10e34:	e1c302f8 	strd	r0, [r3, #40]	; 0x28
   10e38:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e3c:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e40:	e1c341f0 	strd	r4, [r3, #16]
   10e44:	e1c342f0 	strd	r4, [r3, #32]
   10e48:	e28d0028 	add	r0, sp, #40	; 0x28
   10e4c:	e58d3030 	str	r3, [sp, #48]	; 0x30
   10e50:	eb00016e 	bl	11410 <_ZN8Operator11malloc_gateEi.constprop.5>
   10e54:	e59f73d0 	ldr	r7, [pc, #976]	; 1122c <main+0x52c>
   10e58:	e1a03000 	mov	r3, r0
   10e5c:	e3a01000 	mov	r1, #0
   10e60:	e3a00000 	mov	r0, #0
   10e64:	e3a06000 	mov	r6, #0
   10e68:	e1c300f0 	strd	r0, [r3]
   10e6c:	e1c300f8 	strd	r0, [r3, #8]
   10e70:	e1c301f0 	strd	r0, [r3, #16]
   10e74:	e1c302f0 	strd	r0, [r3, #32]
   10e78:	e1c303f0 	strd	r0, [r3, #48]	; 0x30
   10e7c:	e1c303f8 	strd	r0, [r3, #56]	; 0x38
   10e80:	e1c361f8 	strd	r6, [r3, #24]
   10e84:	e1c342f8 	strd	r4, [r3, #40]	; 0x28
   10e88:	e28d0020 	add	r0, sp, #32
   10e8c:	e58d3028 	str	r3, [sp, #40]	; 0x28
   10e90:	eb00015e 	bl	11410 <_ZN8Operator11malloc_gateEi.constprop.5>
   10e94:	e3a03000 	mov	r3, #0
   10e98:	e3a02000 	mov	r2, #0
   10e9c:	e1c040f0 	strd	r4, [r0]
   10ea0:	e1c020f8 	strd	r2, [r0, #8]
   10ea4:	e1c021f0 	strd	r2, [r0, #16]
   10ea8:	e1c021f8 	strd	r2, [r0, #24]
   10eac:	e1c022f0 	strd	r2, [r0, #32]
   10eb0:	e1c022f8 	strd	r2, [r0, #40]	; 0x28
   10eb4:	e1c023f8 	strd	r2, [r0, #56]	; 0x38
   10eb8:	e3a03014 	mov	r3, #20
   10ebc:	e1c063f0 	strd	r6, [r0, #48]	; 0x30
   10ec0:	e58d3014 	str	r3, [sp, #20]
   10ec4:	e58d0020 	str	r0, [sp, #32]
   10ec8:	e3a03000 	mov	r3, #0
   10ecc:	e58d3010 	str	r3, [sp, #16]
   10ed0:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   10ed4:	e59d4030 	ldr	r4, [sp, #48]	; 0x30
   10ed8:	e3530000 	cmp	r3, #0
   10edc:	da00006a 	ble	1108c <main+0x38c>
   10ee0:	e59d3010 	ldr	r3, [sp, #16]
   10ee4:	e3a02002 	mov	r2, #2
   10ee8:	e3a0b010 	mov	fp, #16
   10eec:	e1a0a312 	lsl	sl, r2, r3
   10ef0:	e1a0b31b 	lsl	fp, fp, r3
   10ef4:	e3a03000 	mov	r3, #0
   10ef8:	e1a0900b 	mov	r9, fp
   10efc:	e1a07003 	mov	r7, r3
   10f00:	e1a0220a 	lsl	r2, sl, #4
   10f04:	e58d3008 	str	r3, [sp, #8]
   10f08:	e58d200c 	str	r2, [sp, #12]
   10f0c:	e59d3008 	ldr	r3, [sp, #8]
   10f10:	e1a05203 	lsl	r5, r3, #4
   10f14:	e1a06083 	lsl	r6, r3, #1
   10f18:	ea000024 	b	10fb0 <main+0x2b0>
   10f1c:	e3a00040 	mov	r0, #64	; 0x40
   10f20:	e58d7018 	str	r7, [sp, #24]
   10f24:	ebffff0f 	bl	10b68 <_Znwj@plt>
   10f28:	e1a03000 	mov	r3, r0
   10f2c:	e28d1060 	add	r1, sp, #96	; 0x60
   10f30:	e28dc040 	add	ip, sp, #64	; 0x40
   10f34:	e5210044 	str	r0, [r1, #-68]!	; 0xffffffbc
   10f38:	e583c030 	str	ip, [r3, #48]	; 0x30
   10f3c:	e59f02ec 	ldr	r0, [pc, #748]	; 11230 <main+0x530>
   10f40:	e59fc2ec 	ldr	ip, [pc, #748]	; 11234 <main+0x534>
   10f44:	e5830000 	str	r0, [r3]
   10f48:	e59f22e8 	ldr	r2, [pc, #744]	; 11238 <main+0x538>
   10f4c:	ed83ab02 	vstr	d10, [r3, #8]
   10f50:	ed83bb04 	vstr	d11, [r3, #16]
   10f54:	ed838b06 	vstr	d8, [r3, #24]
   10f58:	ed839b08 	vstr	d9, [r3, #32]
   10f5c:	e5838028 	str	r8, [r3, #40]	; 0x28
   10f60:	e28d0018 	add	r0, sp, #24
   10f64:	e583602c 	str	r6, [r3, #44]	; 0x2c
   10f68:	e583c034 	str	ip, [r3, #52]	; 0x34
   10f6c:	e5837038 	str	r7, [r3, #56]	; 0x38
   10f70:	ebffff1d 	bl	10bec <_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@plt>
   10f74:	e59d001c 	ldr	r0, [sp, #28]
   10f78:	e3500000 	cmp	r0, #0
   10f7c:	0a000002 	beq	10f8c <main+0x28c>
   10f80:	e5903000 	ldr	r3, [r0]
   10f84:	e5933004 	ldr	r3, [r3, #4]
   10f88:	e12fff33 	blx	r3
   10f8c:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
   10f90:	e3530000 	cmp	r3, #0
   10f94:	1a000076 	bne	11174 <main+0x474>
   10f98:	e2855010 	add	r5, r5, #16
   10f9c:	e59d3018 	ldr	r3, [sp, #24]
   10fa0:	e1590005 	cmp	r9, r5
   10fa4:	e2866002 	add	r6, r6, #2
   10fa8:	e58d3054 	str	r3, [sp, #84]	; 0x54
   10fac:	0a00002e 	beq	1106c <main+0x36c>
   10fb0:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
   10fb4:	ed94ab02 	vldr	d10, [r4, #8]
   10fb8:	e0821005 	add	r1, r2, r5
   10fbc:	ed94bb00 	vldr	d11, [r4]
   10fc0:	ed917b02 	vldr	d7, [r1, #8]
   10fc4:	ed94eb0a 	vldr	d14, [r4, #40]	; 0x28
   10fc8:	ed94fb08 	vldr	d15, [r4, #32]
   10fcc:	e08b3005 	add	r3, fp, r5
   10fd0:	ee2a9b07 	vmul.f64	d9, d10, d7
   10fd4:	e0823003 	add	r3, r2, r3
   10fd8:	ee2b8b07 	vmul.f64	d8, d11, d7
   10fdc:	ed936b02 	vldr	d6, [r3, #8]
   10fe0:	ee270b0e 	vmul.f64	d0, d7, d14
   10fe4:	ed943b0e 	vldr	d3, [r4, #56]	; 0x38
   10fe8:	ee277b0f 	vmul.f64	d7, d7, d15
   10fec:	ed94db06 	vldr	d13, [r4, #24]
   10ff0:	ed94cb04 	vldr	d12, [r4, #16]
   10ff4:	ee263b03 	vmul.f64	d3, d6, d3
   10ff8:	ed911b00 	vldr	d1, [r1]
   10ffc:	ee2d5b06 	vmul.f64	d5, d13, d6
   11000:	ed932b00 	vldr	d2, [r3]
   11004:	ee2c4b06 	vmul.f64	d4, d12, d6
   11008:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
   1100c:	ed8d7b00 	vstr	d7, [sp]
   11010:	ed947b0c 	vldr	d7, [r4, #48]	; 0x30
   11014:	ee018b0a 	vmla.f64	d8, d1, d10
   11018:	e3530000 	cmp	r3, #0
   1101c:	ee1b9b01 	vnmls.f64	d9, d11, d1
   11020:	e08a8006 	add	r8, sl, r6
   11024:	ee266b07 	vmul.f64	d6, d6, d7
   11028:	ed9d7b00 	vldr	d7, [sp]
   1102c:	ee110b0f 	vnmls.f64	d0, d1, d15
   11030:	ee1c5b02 	vnmls.f64	d5, d12, d2
   11034:	ee017b0e 	vmla.f64	d7, d1, d14
   11038:	ed941b0c 	vldr	d1, [r4, #48]	; 0x30
   1103c:	ee024b0d 	vmla.f64	d4, d2, d13
   11040:	ee123b01 	vnmls.f64	d3, d2, d1
   11044:	ed941b0e 	vldr	d1, [r4, #56]	; 0x38
   11048:	ee399b05 	vadd.f64	d9, d9, d5
   1104c:	ee026b01 	vmla.f64	d6, d2, d1
   11050:	ee388b04 	vadd.f64	d8, d8, d4
   11054:	ee30bb03 	vadd.f64	d11, d0, d3
   11058:	ee37ab06 	vadd.f64	d10, d7, d6
   1105c:	0affffae 	beq	10f1c <main+0x21c>
   11060:	e28d0054 	add	r0, sp, #84	; 0x54
   11064:	ebfffefe 	bl	10c64 <_ZNSt6thread4joinEv@plt>
   11068:	eaffffab 	b	10f1c <main+0x21c>
   1106c:	e59d2008 	ldr	r2, [sp, #8]
   11070:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
   11074:	e082200a 	add	r2, r2, sl
   11078:	e1530002 	cmp	r3, r2
   1107c:	e59d300c 	ldr	r3, [sp, #12]
   11080:	e58d2008 	str	r2, [sp, #8]
   11084:	e0899003 	add	r9, r9, r3
   11088:	caffff9f 	bgt	10f0c <main+0x20c>
   1108c:	e3a0200a 	mov	r2, #10
   11090:	e59f11a4 	ldr	r1, [pc, #420]	; 1123c <main+0x53c>
   11094:	e59f017c 	ldr	r0, [pc, #380]	; 11218 <main+0x518>
   11098:	ebfffee2 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   1109c:	e59d1010 	ldr	r1, [sp, #16]
   110a0:	e59f0170 	ldr	r0, [pc, #368]	; 11218 <main+0x518>
   110a4:	ebfffef1 	bl	10c70 <_ZNSolsEi@plt>
   110a8:	e5903000 	ldr	r3, [r0]
   110ac:	e1a05000 	mov	r5, r0
   110b0:	e513300c 	ldr	r3, [r3, #-12]
   110b4:	e0803003 	add	r3, r0, r3
   110b8:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   110bc:	e3540000 	cmp	r4, #0
   110c0:	0a000034 	beq	11198 <main+0x498>
   110c4:	e5d4301c 	ldrb	r3, [r4, #28]
   110c8:	e3530000 	cmp	r3, #0
   110cc:	0a00001c 	beq	11144 <main+0x444>
   110d0:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   110d4:	e1a00005 	mov	r0, r5
   110d8:	ebfffe9f 	bl	10b5c <_ZNSo3putEc@plt>
   110dc:	ebfffeb9 	bl	10bc8 <_ZNSo5flushEv@plt>
   110e0:	e59d3010 	ldr	r3, [sp, #16]
   110e4:	e2833001 	add	r3, r3, #1
   110e8:	e3530014 	cmp	r3, #20
   110ec:	e58d3010 	str	r3, [sp, #16]
   110f0:	1affff76 	bne	10ed0 <main+0x1d0>
   110f4:	e59d3014 	ldr	r3, [sp, #20]
   110f8:	e2533001 	subs	r3, r3, #1
   110fc:	e58d3014 	str	r3, [sp, #20]
   11100:	1affff70 	bne	10ec8 <main+0x1c8>
   11104:	e28d0040 	add	r0, sp, #64	; 0x40
   11108:	eb0000e3 	bl	1149c <_ZN5State5printEv>
   1110c:	e28d0020 	add	r0, sp, #32
   11110:	eb00012a 	bl	115c0 <_ZN8OperatorD2Ev>
   11114:	e28d0028 	add	r0, sp, #40	; 0x28
   11118:	eb000128 	bl	115c0 <_ZN8OperatorD2Ev>
   1111c:	e28d0030 	add	r0, sp, #48	; 0x30
   11120:	eb000126 	bl	115c0 <_ZN8OperatorD2Ev>
   11124:	e28d0038 	add	r0, sp, #56	; 0x38
   11128:	eb000124 	bl	115c0 <_ZN8OperatorD2Ev>
   1112c:	e28d0040 	add	r0, sp, #64	; 0x40
   11130:	eb000114 	bl	11588 <_ZN5StateD1Ev>
   11134:	e3a00000 	mov	r0, #0
   11138:	e28dd064 	add	sp, sp, #100	; 0x64
   1113c:	ecbd8b10 	vpop	{d8-d15}
   11140:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11144:	e1a00004 	mov	r0, r4
   11148:	ebfffeb0 	bl	10c10 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   1114c:	e5943000 	ldr	r3, [r4]
   11150:	e1a00004 	mov	r0, r4
   11154:	e3a0100a 	mov	r1, #10
   11158:	e5933018 	ldr	r3, [r3, #24]
   1115c:	e12fff33 	blx	r3
   11160:	e1a01000 	mov	r1, r0
   11164:	eaffffda 	b	110d4 <main+0x3d4>
   11168:	e59d3054 	ldr	r3, [sp, #84]	; 0x54
   1116c:	e3530000 	cmp	r3, #0
   11170:	0a00001c 	beq	111e8 <main+0x4e8>
   11174:	ebfffe81 	bl	10b80 <_ZSt9terminatev@plt>
   11178:	e3a02022 	mov	r2, #34	; 0x22
   1117c:	e59f10bc 	ldr	r1, [pc, #188]	; 11240 <main+0x540>
   11180:	e59f00bc 	ldr	r0, [pc, #188]	; 11244 <main+0x544>
   11184:	ebfffea7 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11188:	e59f00b4 	ldr	r0, [pc, #180]	; 11244 <main+0x544>
   1118c:	ebfffe87 	bl	10bb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   11190:	e3a00001 	mov	r0, #1
   11194:	ebfffe88 	bl	10bbc <exit@plt>
   11198:	ebfffe9f 	bl	10c1c <_ZSt16__throw_bad_castv@plt>
   1119c:	e59d301c 	ldr	r3, [sp, #28]
   111a0:	e1a04000 	mov	r4, r0
   111a4:	e3530000 	cmp	r3, #0
   111a8:	0a000003 	beq	111bc <main+0x4bc>
   111ac:	e5932000 	ldr	r2, [r3]
   111b0:	e1a00003 	mov	r0, r3
   111b4:	e5923004 	ldr	r3, [r2, #4]
   111b8:	e12fff33 	blx	r3
   111bc:	e28d0020 	add	r0, sp, #32
   111c0:	eb0000fe 	bl	115c0 <_ZN8OperatorD2Ev>
   111c4:	e28d0028 	add	r0, sp, #40	; 0x28
   111c8:	eb0000fc 	bl	115c0 <_ZN8OperatorD2Ev>
   111cc:	e28d0030 	add	r0, sp, #48	; 0x30
   111d0:	eb0000fa 	bl	115c0 <_ZN8OperatorD2Ev>
   111d4:	e28d0038 	add	r0, sp, #56	; 0x38
   111d8:	eb0000f8 	bl	115c0 <_ZN8OperatorD2Ev>
   111dc:	e28d0040 	add	r0, sp, #64	; 0x40
   111e0:	eb0000e8 	bl	11588 <_ZN5StateD1Ev>
   111e4:	e1a00004 	mov	r0, r4
   111e8:	ebfffea3 	bl	10c7c <_Unwind_Resume@plt>
   111ec:	e1a04000 	mov	r4, r0
   111f0:	eafffff1 	b	111bc <main+0x4bc>
   111f4:	e1a04000 	mov	r4, r0
   111f8:	eafffff1 	b	111c4 <main+0x4c4>
   111fc:	e1a04000 	mov	r4, r0
   11200:	eafffff1 	b	111cc <main+0x4cc>
   11204:	e1a04000 	mov	r4, r0
   11208:	eafffff1 	b	111d4 <main+0x4d4>
   1120c:	e1a04000 	mov	r4, r0
   11210:	eafffff1 	b	111dc <main+0x4dc>
   11214:	000116f4 	.word	0x000116f4
   11218:	00022088 	.word	0x00022088
   1121c:	3ff00000 	.word	0x3ff00000
   11220:	667f3bcc 	.word	0x667f3bcc
   11224:	3fe6a09e 	.word	0x3fe6a09e
   11228:	bfe6a09e 	.word	0xbfe6a09e
   1122c:	bff00000 	.word	0xbff00000
   11230:	00011654 	.word	0x00011654
   11234:	000113f0 	.word	0x000113f0
   11238:	00010c58 	.word	0x00010c58
   1123c:	00011710 	.word	0x00011710
   11240:	000116c4 	.word	0x000116c4
   11244:	00022118 	.word	0x00022118

00011248 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii>:
   11248:	e92d4010 	push	{r4, lr}
   1124c:	e59f4018 	ldr	r4, [pc, #24]	; 1126c <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x24>
   11250:	e1a00004 	mov	r0, r4
   11254:	ebfffe79 	bl	10c40 <_ZNSt8ios_base4InitC1Ev@plt>
   11258:	e1a00004 	mov	r0, r4
   1125c:	e59f200c 	ldr	r2, [pc, #12]	; 11270 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x28>
   11260:	e59f100c 	ldr	r1, [pc, #12]	; 11274 <_GLOBAL__sub_I__Z13dummy_cmatvecPKdii+0x2c>
   11264:	e8bd4010 	pop	{r4, lr}
   11268:	eafffe41 	b	10b74 <__aeabi_atexit@plt>
   1126c:	000221b0 	.word	0x000221b0
   11270:	00022084 	.word	0x00022084
   11274:	00010ca0 	.word	0x00010ca0

00011278 <_start>:
   11278:	e3a0b000 	mov	fp, #0
   1127c:	e3a0e000 	mov	lr, #0
   11280:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   11284:	e1a0200d 	mov	r2, sp
   11288:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1128c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   11290:	e59fc010 	ldr	ip, [pc, #16]	; 112a8 <_start+0x30>
   11294:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   11298:	e59f000c 	ldr	r0, [pc, #12]	; 112ac <_start+0x34>
   1129c:	e59f300c 	ldr	r3, [pc, #12]	; 112b0 <_start+0x38>
   112a0:	ebfffe78 	bl	10c88 <__libc_start_main@plt>
   112a4:	ebfffe4d 	bl	10be0 <abort@plt>
   112a8:	0001163c 	.word	0x0001163c
   112ac:	00010d00 	.word	0x00010d00
   112b0:	000115dc 	.word	0x000115dc

000112b4 <call_weak_fn>:
   112b4:	e59f3014 	ldr	r3, [pc, #20]	; 112d0 <call_weak_fn+0x1c>
   112b8:	e59f2014 	ldr	r2, [pc, #20]	; 112d4 <call_weak_fn+0x20>
   112bc:	e08f3003 	add	r3, pc, r3
   112c0:	e7932002 	ldr	r2, [r3, r2]
   112c4:	e3520000 	cmp	r2, #0
   112c8:	012fff1e 	bxeq	lr
   112cc:	eafffe70 	b	10c94 <__gmon_start__@plt>
   112d0:	00010d3c 	.word	0x00010d3c
   112d4:	0000007c 	.word	0x0000007c

000112d8 <deregister_tm_clones>:
   112d8:	e59f301c 	ldr	r3, [pc, #28]	; 112fc <deregister_tm_clones+0x24>
   112dc:	e59f001c 	ldr	r0, [pc, #28]	; 11300 <deregister_tm_clones+0x28>
   112e0:	e0433000 	sub	r3, r3, r0
   112e4:	e3530006 	cmp	r3, #6
   112e8:	912fff1e 	bxls	lr
   112ec:	e59f3010 	ldr	r3, [pc, #16]	; 11304 <deregister_tm_clones+0x2c>
   112f0:	e3530000 	cmp	r3, #0
   112f4:	012fff1e 	bxeq	lr
   112f8:	e12fff13 	bx	r3
   112fc:	0002208b 	.word	0x0002208b
   11300:	00022088 	.word	0x00022088
   11304:	00000000 	.word	0x00000000

00011308 <register_tm_clones>:
   11308:	e59f1024 	ldr	r1, [pc, #36]	; 11334 <register_tm_clones+0x2c>
   1130c:	e59f0024 	ldr	r0, [pc, #36]	; 11338 <register_tm_clones+0x30>
   11310:	e0411000 	sub	r1, r1, r0
   11314:	e1a01141 	asr	r1, r1, #2
   11318:	e0811fa1 	add	r1, r1, r1, lsr #31
   1131c:	e1b010c1 	asrs	r1, r1, #1
   11320:	012fff1e 	bxeq	lr
   11324:	e59f3010 	ldr	r3, [pc, #16]	; 1133c <register_tm_clones+0x34>
   11328:	e3530000 	cmp	r3, #0
   1132c:	012fff1e 	bxeq	lr
   11330:	e12fff13 	bx	r3
   11334:	00022088 	.word	0x00022088
   11338:	00022088 	.word	0x00022088
   1133c:	00000000 	.word	0x00000000

00011340 <__do_global_dtors_aux>:
   11340:	e92d4010 	push	{r4, lr}
   11344:	e59f4018 	ldr	r4, [pc, #24]	; 11364 <__do_global_dtors_aux+0x24>
   11348:	e5d43000 	ldrb	r3, [r4]
   1134c:	e3530000 	cmp	r3, #0
   11350:	18bd8010 	popne	{r4, pc}
   11354:	ebffffdf 	bl	112d8 <deregister_tm_clones>
   11358:	e3a03001 	mov	r3, #1
   1135c:	e5c43000 	strb	r3, [r4]
   11360:	e8bd8010 	pop	{r4, pc}
   11364:	000221a4 	.word	0x000221a4

00011368 <frame_dummy>:
   11368:	e59f0028 	ldr	r0, [pc, #40]	; 11398 <frame_dummy+0x30>
   1136c:	e5903000 	ldr	r3, [r0]
   11370:	e3530000 	cmp	r3, #0
   11374:	1a000000 	bne	1137c <frame_dummy+0x14>
   11378:	eaffffe2 	b	11308 <register_tm_clones>
   1137c:	e59f3018 	ldr	r3, [pc, #24]	; 1139c <frame_dummy+0x34>
   11380:	e3530000 	cmp	r3, #0
   11384:	0afffffb 	beq	11378 <frame_dummy+0x10>
   11388:	e92d4010 	push	{r4, lr}
   1138c:	e12fff33 	blx	r3
   11390:	e8bd4010 	pop	{r4, lr}
   11394:	eaffffdb 	b	11308 <register_tm_clones>
   11398:	00021ec0 	.word	0x00021ec0
   1139c:	00000000 	.word	0x00000000

000113a0 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFviiddddEEPS3_iiddddEEE6_M_runEv>:
   113a0:	e5902038 	ldr	r2, [r0, #56]	; 0x38
   113a4:	e1a03000 	mov	r3, r0
   113a8:	e5900030 	ldr	r0, [r0, #48]	; 0x30
   113ac:	e3120001 	tst	r2, #1
   113b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   113b4:	008000c2 	addeq	r0, r0, r2, asr #1
   113b8:	1790c0c2 	ldrne	ip, [r0, r2, asr #1]
   113bc:	15931034 	ldrne	r1, [r3, #52]	; 0x34
   113c0:	0593e034 	ldreq	lr, [r3, #52]	; 0x34
   113c4:	108000c2 	addne	r0, r0, r2, asr #1
   113c8:	179ce001 	ldrne	lr, [ip, r1]
   113cc:	ed933b02 	vldr	d3, [r3, #8]
   113d0:	ed932b04 	vldr	d2, [r3, #16]
   113d4:	ed931b06 	vldr	d1, [r3, #24]
   113d8:	ed930b08 	vldr	d0, [r3, #32]
   113dc:	e5932028 	ldr	r2, [r3, #40]	; 0x28
   113e0:	e593102c 	ldr	r1, [r3, #44]	; 0x2c
   113e4:	e1a0300e 	mov	r3, lr
   113e8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   113ec:	e12fff13 	bx	r3

000113f0 <_ZN5State9writebackEiidddd>:
   113f0:	e5903008 	ldr	r3, [r0, #8]
   113f4:	e0831181 	add	r1, r3, r1, lsl #3
   113f8:	e0832182 	add	r2, r3, r2, lsl #3
   113fc:	ed810b00 	vstr	d0, [r1]
   11400:	ed811b02 	vstr	d1, [r1, #8]
   11404:	ed822b00 	vstr	d2, [r2]
   11408:	ed823b02 	vstr	d3, [r2, #8]
   1140c:	e12fff1e 	bx	lr

00011410 <_ZN8Operator11malloc_gateEi.constprop.5>:
   11410:	e92d4010 	push	{r4, lr}
   11414:	e1a04000 	mov	r4, r0
   11418:	e3a0005f 	mov	r0, #95	; 0x5f
   1141c:	ebfffe04 	bl	10c34 <malloc@plt>
   11420:	e3500000 	cmp	r0, #0
   11424:	e5840004 	str	r0, [r4, #4]
   11428:	0a000002 	beq	11438 <_ZN8Operator11malloc_gateEi.constprop.5+0x28>
   1142c:	e280001f 	add	r0, r0, #31
   11430:	e3c0001f 	bic	r0, r0, #31
   11434:	e8bd8010 	pop	{r4, pc}
   11438:	e59f100c 	ldr	r1, [pc, #12]	; 1144c <_ZN8Operator11malloc_gateEi.constprop.5+0x3c>
   1143c:	e59f000c 	ldr	r0, [pc, #12]	; 11450 <_ZN8Operator11malloc_gateEi.constprop.5+0x40>
   11440:	ebfffdef 	bl	10c04 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
   11444:	e3a00001 	mov	r0, #1
   11448:	ebfffddb 	bl	10bbc <exit@plt>
   1144c:	000116c4 	.word	0x000116c4
   11450:	00022118 	.word	0x00022118

00011454 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFviiddddEEPS3_iiddddEEED0Ev>:
   11454:	e59f301c 	ldr	r3, [pc, #28]	; 11478 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFviiddddEEPS3_iiddddEEED0Ev+0x24>
   11458:	e92d4010 	push	{r4, lr}
   1145c:	e1a04000 	mov	r4, r0
   11460:	e5803000 	str	r3, [r0]
   11464:	ebfffdce 	bl	10ba4 <_ZNSt6thread6_StateD2Ev@plt>
   11468:	e1a00004 	mov	r0, r4
   1146c:	ebfffde1 	bl	10bf8 <_ZdlPv@plt>
   11470:	e1a00004 	mov	r0, r4
   11474:	e8bd8010 	pop	{r4, pc}
   11478:	00011654 	.word	0x00011654

0001147c <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFviiddddEEPS3_iiddddEEED1Ev>:
   1147c:	e59f3014 	ldr	r3, [pc, #20]	; 11498 <_ZNSt6thread11_State_implISt12_Bind_simpleIFSt7_Mem_fnIM5StateFviiddddEEPS3_iiddddEEED1Ev+0x1c>
   11480:	e92d4010 	push	{r4, lr}
   11484:	e1a04000 	mov	r4, r0
   11488:	e5803000 	str	r3, [r0]
   1148c:	ebfffdc4 	bl	10ba4 <_ZNSt6thread6_StateD2Ev@plt>
   11490:	e1a00004 	mov	r0, r4
   11494:	e8bd8010 	pop	{r4, pc}
   11498:	00011654 	.word	0x00011654

0001149c <_ZN5State5printEv>:
   1149c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   114a0:	e1a09000 	mov	r9, r0
   114a4:	e59f70cc 	ldr	r7, [pc, #204]	; 11578 <_ZN5State5printEv+0xdc>
   114a8:	e59fb0cc 	ldr	fp, [pc, #204]	; 1157c <_ZN5State5printEv+0xe0>
   114ac:	e1a06007 	mov	r6, r7
   114b0:	e3a05000 	mov	r5, #0
   114b4:	e3a08001 	mov	r8, #1
   114b8:	e5994008 	ldr	r4, [r9, #8]
   114bc:	e1a02008 	mov	r2, r8
   114c0:	e0844005 	add	r4, r4, r5
   114c4:	e1a0100b 	mov	r1, fp
   114c8:	e1a00006 	mov	r0, r6
   114cc:	ebfffdd5 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   114d0:	ed940b00 	vldr	d0, [r4]
   114d4:	e1a00006 	mov	r0, r6
   114d8:	ebfffddb 	bl	10c4c <_ZNSo9_M_insertIdEERSoT_@plt>
   114dc:	e3a02002 	mov	r2, #2
   114e0:	e59f1098 	ldr	r1, [pc, #152]	; 11580 <_ZN5State5printEv+0xe4>
   114e4:	e1a0a000 	mov	sl, r0
   114e8:	ebfffdce 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   114ec:	ed940b02 	vldr	d0, [r4, #8]
   114f0:	e1a0000a 	mov	r0, sl
   114f4:	ebfffdd4 	bl	10c4c <_ZNSo9_M_insertIdEERSoT_@plt>
   114f8:	e1a02008 	mov	r2, r8
   114fc:	e59f1080 	ldr	r1, [pc, #128]	; 11584 <_ZN5State5printEv+0xe8>
   11500:	ebfffdc8 	bl	10c28 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@plt>
   11504:	e5973000 	ldr	r3, [r7]
   11508:	e513300c 	ldr	r3, [r3, #-12]
   1150c:	e0873003 	add	r3, r7, r3
   11510:	e593407c 	ldr	r4, [r3, #124]	; 0x7c
   11514:	e3540000 	cmp	r4, #0
   11518:	0a000015 	beq	11574 <_ZN5State5printEv+0xd8>
   1151c:	e5d4301c 	ldrb	r3, [r4, #28]
   11520:	e3530000 	cmp	r3, #0
   11524:	0a000009 	beq	11550 <_ZN5State5printEv+0xb4>
   11528:	e5d41027 	ldrb	r1, [r4, #39]	; 0x27
   1152c:	e1a00006 	mov	r0, r6
   11530:	ebfffd89 	bl	10b5c <_ZNSo3putEc@plt>
   11534:	e2855010 	add	r5, r5, #16
   11538:	ebfffda2 	bl	10bc8 <_ZNSo5flushEv@plt>
   1153c:	e3550040 	cmp	r5, #64	; 0x40
   11540:	1affffdc 	bne	114b8 <_ZN5State5printEv+0x1c>
   11544:	e59f002c 	ldr	r0, [pc, #44]	; 11578 <_ZN5State5printEv+0xdc>
   11548:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1154c:	eafffd97 	b	10bb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
   11550:	e1a00004 	mov	r0, r4
   11554:	ebfffdad 	bl	10c10 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
   11558:	e5943000 	ldr	r3, [r4]
   1155c:	e3a0100a 	mov	r1, #10
   11560:	e1a00004 	mov	r0, r4
   11564:	e5933018 	ldr	r3, [r3, #24]
   11568:	e12fff33 	blx	r3
   1156c:	e1a01000 	mov	r1, r0
   11570:	eaffffed 	b	1152c <_ZN5State5printEv+0x90>
   11574:	ebfffda8 	bl	10c1c <_ZSt16__throw_bad_castv@plt>
   11578:	00022088 	.word	0x00022088
   1157c:	000116e8 	.word	0x000116e8
   11580:	000116ec 	.word	0x000116ec
   11584:	000116f0 	.word	0x000116f0

00011588 <_ZN5StateD1Ev>:
   11588:	e92d4010 	push	{r4, lr}
   1158c:	e1a04000 	mov	r4, r0
   11590:	e590000c 	ldr	r0, [r0, #12]
   11594:	ebfffd7c 	bl	10b8c <free@plt>
   11598:	e5940018 	ldr	r0, [r4, #24]
   1159c:	ebfffd7a 	bl	10b8c <free@plt>
   115a0:	e594001c 	ldr	r0, [r4, #28]
   115a4:	ebfffd78 	bl	10b8c <free@plt>
   115a8:	e5943014 	ldr	r3, [r4, #20]
   115ac:	e3530000 	cmp	r3, #0
   115b0:	1a000001 	bne	115bc <_ZN5StateD1Ev+0x34>
   115b4:	e1a00004 	mov	r0, r4
   115b8:	e8bd8010 	pop	{r4, pc}
   115bc:	ebfffd6f 	bl	10b80 <_ZSt9terminatev@plt>

000115c0 <_ZN8OperatorD2Ev>:
   115c0:	e92d4010 	push	{r4, lr}
   115c4:	e1a04000 	mov	r4, r0
   115c8:	e5900004 	ldr	r0, [r0, #4]
   115cc:	ebfffd6e 	bl	10b8c <free@plt>
   115d0:	e1a00004 	mov	r0, r4
   115d4:	e8bd8010 	pop	{r4, pc}

000115d8 <_Z13dummy_cmatvecPKdii>:
   115d8:	e12fff1e 	bx	lr

000115dc <__libc_csu_init>:
   115dc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   115e0:	e1a07000 	mov	r7, r0
   115e4:	e59f6048 	ldr	r6, [pc, #72]	; 11634 <__libc_csu_init+0x58>
   115e8:	e59f5048 	ldr	r5, [pc, #72]	; 11638 <__libc_csu_init+0x5c>
   115ec:	e08f6006 	add	r6, pc, r6
   115f0:	e08f5005 	add	r5, pc, r5
   115f4:	e0466005 	sub	r6, r6, r5
   115f8:	e1a08001 	mov	r8, r1
   115fc:	e1a09002 	mov	r9, r2
   11600:	ebfffd4d 	bl	10b3c <_init>
   11604:	e1b06146 	asrs	r6, r6, #2
   11608:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   1160c:	e3a04000 	mov	r4, #0
   11610:	e2844001 	add	r4, r4, #1
   11614:	e4953004 	ldr	r3, [r5], #4
   11618:	e1a02009 	mov	r2, r9
   1161c:	e1a01008 	mov	r1, r8
   11620:	e1a00007 	mov	r0, r7
   11624:	e12fff33 	blx	r3
   11628:	e1560004 	cmp	r6, r4
   1162c:	1afffff7 	bne	11610 <__libc_csu_init+0x34>
   11630:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   11634:	000108c8 	.word	0x000108c8
   11638:	000108b8 	.word	0x000108b8

0001163c <__libc_csu_fini>:
   1163c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00011640 <_fini>:
   11640:	e92d4008 	push	{r3, lr}
   11644:	e8bd8008 	pop	{r3, pc}
