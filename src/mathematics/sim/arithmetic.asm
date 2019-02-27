#
# Complex arithmetic assembly source
#

	.global cmatvec_asm
	.global cmatvec1_asm
	.global cmatvec2_asm
	.global cmatvec3_asm

	
cmatvec_asm:
	# Complex 2x2 matrix multiplication
	#
	# C prototype: void cmatvec(const COMPLEX * matrix,
	#                           COMPLEX * state,
	#                           const int i,
	#                           const int j) {
	#
	# Calling convention:
	#
	# - Pointer to matrix: rdi
	# - Pointer to state: rsi
	# - integer i: rdx
	# - integer j: rcx
	#
	#
	# The structure of the matrix in memory is as follows:
	#
	#          imag   real
	#          ^^^^   ^^^^
	# 0x00  |  a001   a000 <-- rdi
	# 0x10  |  a011   a010
	# 0x20  |  a101   a100
	# 0x30  |  a111   a110 
	#
	# The operation of this routine is given by the
	# following expressions:
	#
	# s0 = m000 i0 - m001 i1 + m010 j0 - m011 j1
	# s1 = m000 i1 + m001 i0 + m010 j1 + m011 j0
	#
	# t0 = m100 i0 - m101 i1 + m110 j0 - m111 j1
	# t1 = m100 i1 + m101 i0 + m110 j1 + m111 j0
	#
	# i = s1 s0
	# j = t1 t0
	#
	# The indices i and j must be multiplied by 16 in order to
	# obtain offsets to doubles in the state vector.
	#
	# Compute addresses 
	sal $1, %rdx # Multiply i by 2 (left shift)
	sal $1, %rcx # Multiply j by 2 (left shift)
	lea (%rsi, %rdx, 8), %r8
	lea (%rsi, %rcx, 8), %r9

	# Read matrix
	movsd 0x0(%rdi), %xmm0   # m000 row 0
	movsd 0x8(%rdi), %xmm1   # m001
	movsd 0x10(%rdi), %xmm2  # m010
	movsd 0x18(%rdi), %xmm3  # m011
	movsd 0x20(%rdi), %xmm4  # m100 row 1
	movsd 0x28(%rdi), %xmm5  # m101
	movsd 0x30(%rdi), %xmm6  # m110
	movsd 0x38(%rdi), %xmm7  # m111

	# Read vector
	movsd 0x0(%r8), %xmm8  # i0
	movsd 0x8(%r8), %xmm9  # i1
	movsd 0x0(%r9), %xmm10 # j0
	movsd 0x8(%r9), %xmm11 # j1
	
	# s0 = m000 i0 - m001 i1 + m010 j0 - m011 j1
	vmulsd %xmm0, %xmm8, %xmm12 # m000 i0 
	vmulsd %xmm1, %xmm9, %xmm13 # m001 i1
	vsubsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm2, %xmm10, %xmm13 # m010 j0
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm3, %xmm11, %xmm13 # m011 j1
	vsubsd %xmm13, %xmm12, %xmm12
	movsd %xmm12, 0x0(%r8)
	
	# s1 = m000 i1 + m001 i0 + m010 j1 + m011 j0
	vmulsd %xmm0, %xmm9, %xmm12 # m000 i1 
	vmulsd %xmm1, %xmm8, %xmm13 # m001 i0
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm2, %xmm11, %xmm13 # m010 j1
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm3, %xmm10, %xmm13 # m011 j0
	vaddsd %xmm13, %xmm12, %xmm12
	movsd %xmm12, 0x8(%r8)

	# t0 = m100 i0 - m101 i1 + m110 j0 - m111 j1
	vmulsd %xmm0, %xmm8, %xmm12 # m100 i0 
	vmulsd %xmm1, %xmm9, %xmm13 # m101 i1
	vsubsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm2, %xmm10, %xmm13 # m110 j0
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm3, %xmm11, %xmm13 # m111 j1
	vsubsd %xmm13, %xmm12, %xmm12
	movsd %xmm12, 0x0(%r9)

	# t1 = m100 i1 + m101 i0 + m110 j1 + m111 j0	
	vmulsd %xmm0, %xmm9, %xmm12 # m100 i1 
	vmulsd %xmm1, %xmm8, %xmm13 # m101 i0
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm2, %xmm11, %xmm13 # m110 j1
	vaddsd %xmm13, %xmm12, %xmm12
	vmulsd %xmm3, %xmm10, %xmm13 # m111 j0
	vaddsd %xmm13, %xmm12, %xmm12
	movsd %xmm12, 0x8(%r9)
	
	ret
	#
	# This version (no vectorisation) is
	# about twice as slow as the c++ version.
	# 

cmatvec2_asm:
	# Complex 2x2 matrix multiplication
	#
	# C prototype: void cmatvec(const COMPLEX * matrix,
	#                           COMPLEX * state,
	#                           const int i,
	#                           const int j) {
	#
	# Calling convention:
	#
	# - Pointer to matrix: rdi
	# - Pointer to state: rsi
	# - integer i: rdx
	# - integer j: rcx
	#
	#
	# The structure of the matrix in memory is as follows:
	#
	#          imag   real
	#          ^^^^   ^^^^
	# 0x00  |  a001   a000 <-- rdi
	# 0x10  |  a011   a010
	# 0x20  |  a101   a100
	# 0x30  |  a111   a110 
	#
	# The operation of this routine is given by the
	# following expressions:
	#
	# s0 = m000 i0 - m001 i1 + m010 j0 - m011 j1
	# s1 = m000 i1 + m001 i0 + m010 j1 + m011 j0
	#
	# t0 = m100 i0 - m101 i1 + m110 j0 - m111 j1
	# t1 = m100 i1 + m101 i0 + m110 j1 + m111 j0
	#
	# i = s1 s0
	# j = t1 t0
	#
	# This is vectorised as follows:
	#
	# xmm0: m000 m000
	# xmm1: m001 m001
	# xmm2: m010 m010
	# xmm3: m011 m011
	# xmm4: m100 m100
	# xmm5: m101 m101
	# xmm6: m110 m110
	# xmm7: m111 m111
	#
	# xmm8:  i1   i0
	# xmm9:  i0   i1
	# xmm10: j1   j0
	# xmm11: j0   j1
	#
	# The indices i and j must be multiplied by 16 in order to
	# obtain offsets to doubles in the state vector.
	#
	# Compute addresses 
	sal $1, %rdx # Multiply i by 2 (left shift)
	sal $1, %rcx # Multiply j by 2 (left shift)
	lea (%rsi, %rdx, 8), %r8
	lea (%rsi, %rcx, 8), %r9

	# Read matrix row 0
	movddup 0x0(%rdi), %xmm0   # m000 row 0
	movddup 0x8(%rdi), %xmm1   # m001
	movddup 0x10(%rdi), %xmm2  # m010
	movddup 0x18(%rdi), %xmm3  # m011

	# Read vector
	movapd 0x0(%r8), %xmm8       # i1 i0
	pshufd $0x4e, %xmm8, %xmm9   # i0 i1
	movapd 0x10(%r9), %xmm10     # j1 j0
	pshufd $0x4e, %xmm10, %xmm11 # j0 j1

	# s0, s1
	vmulpd %xmm0, %xmm8, %xmm12  # Term 1
	vmulpd %xmm1, %xmm9, %xmm13  # Term 1
	vaddsubpd %xmm13, %xmm12, %xmm12
	vmulpd %xmm2, %xmm10, %xmm13  # Term 1
	vaddpd %xmm13, %xmm12, %xmm12  # Term 1
	vmulpd %xmm3, %xmm11, %xmm13  # Term 1
	vaddsubpd %xmm13, %xmm12, %xmm12  # Term 1

	# write i
	movapd %xmm12, (%r8)
	
	# Read matrix row 1
	movddup 0x20(%rdi), %xmm4  # m100 row 1
	movddup 0x28(%rdi), %xmm5  # m101
	movddup 0x30(%rdi), %xmm6  # m110
	movddup 0x38(%rdi), %xmm7  # m111
	
	# s0, s1
	vmulpd %xmm4, %xmm8, %xmm14  # Term 1
	vmulpd %xmm5, %xmm9, %xmm13  # Term 1
	vaddsubpd %xmm13, %xmm14, %xmm14
	vmulpd %xmm6, %xmm10, %xmm13  # Term 1
	vaddpd %xmm13, %xmm14, %xmm14  # Term 1
	vmulpd %xmm7, %xmm11, %xmm13  # Term 1
	vaddsubpd %xmm13, %xmm14, %xmm14  # Term 1

	# Write j
	movapd %xmm14, (%r9)
	
	ret
	#

cmatvec3_asm:
	# Complex 2x2 matrix multiplication
	#
	# C prototype: void cmatvec(const COMPLEX * matrix,
	#                           COMPLEX * state,
	#                           const int i,
	#                           const int j) {
	#
	# Calling convention:
	#
	# - Pointer to matrix: rdi
	# - Pointer to state: rsi
	# - integer i: rdx
	# - integer j: rcx
	#
	#
	# The structure of the matrix in memory is as follows:
	#
	#          imag   real
	#          ^^^^   ^^^^
	# 0x00  |  a001   a000 <-- rdi
	# 0x10  |  a011   a010
	# 0x20  |  a101   a100
	# 0x30  |  a111   a110 
	#
	# The operation of this routine is given by the
	# following expressions:
	#
	# s0 = m000 i0 - m001 i1 + m010 j0 - m011 j1
	# s1 = m000 i1 + m001 i0 + m010 j1 + m011 j0
	#
	# t0 = m100 i0 - m101 i1 + m110 j0 - m111 j1
	# t1 = m100 i1 + m101 i0 + m110 j1 + m111 j0
	#
	# i = s1 s0
	# j = t1 t0
	#
	# This is vectorised as follows:
	#
	# xmm0: m000 m000
	# xmm1: m001 m001
	# xmm2: m010 m010
	# xmm3: m011 m011
	# xmm4: m100 m100
	# xmm5: m101 m101
	# xmm6: m110 m110
	# xmm7: m111 m111
	#
	# xmm8:  i1   i0
	# xmm9:  i0   i1
	# xmm10: j1   j0
	# xmm11: j0   j1
	#
	# The indices i and j must be multiplied by 16 in order to
	# obtain offsets to doubles in the state vector.
	#
	# Note: Ty to use VEX encodings as much as possible to
	# avoid 
	#
	# Compute addresses 
	sal $1, %rdx # Multiply i by 2 (left shift)
	sal $1, %rcx # Multiply j by 2 (left shift)
	lea (%rsi, %rdx, 8), %r8
	lea (%rsi, %rcx, 8), %r9

	# Read matrix row 0
	vmovddup 0x0(%rdi), %xmm0   # m000 row 0
	vmovddup 0x8(%rdi), %xmm1   # m001
	vmovddup 0x10(%rdi), %xmm2  # m010
	vmovddup 0x18(%rdi), %xmm3  # m011

	# Move data to upper ymm registers
	vinsertf128 $0x1, 0x20(%rdi), %ymm0, %ymm0
	vinsertf128 $0x1, 0x28(%rdi), %ymm1, %ymm1
	vinsertf128 $0x1, 0x30(%rdi), %ymm2, %ymm2
	vinsertf128 $0x1, 0x38(%rdi), %ymm3, %ymm3
	
	# Read vector
	vmovapd 0x0(%r8), %xmm8     # i1 i0
	vperm2f128 $0x01, %ymm8, %ymm8, %ymm8
	vpermilpd $0b0101, %ymm8, %ymm9
	vmovapd 0x0(%r9), %xmm10     # j1 j0
	vperm2f128 $0x01, %ymm10, %ymm10, %ymm10
	vpermilpd $0b0101, %ymm10, %ymm11

	# s0, s1, t0, t1
	vmulpd %ymm0, %ymm8, %ymm12  # Term 1
	vmulpd %ymm1, %ymm9, %ymm13  # Term 1
	vaddsubpd %ymm13, %ymm12, %ymm12
	vmulpd %ymm2, %ymm10, %ymm13  # Term 1
	vaddpd %ymm13, %ymm12, %ymm12  # Term 1
	vmulpd %ymm3, %ymm11, %ymm13  # Term 1
	vaddsubpd %ymm13, %ymm12, %ymm12  # Term 1

	# write i and j
	vmovapd %xmm12, (%r8)
	vperm2f128 $0x1, %ymm12, %ymm12, %ymm12

	vmovapd %xmm12, (%r9)
	
	ret
	#
	# Speeds of the test routine:
	#    - With no instructions: 1.537s
	#    - With only arithmetic: 1.796s
	#    - With only memory accesses: 2.212s
	#
cmatvec1_asm:
	# Complex 2x2 matrix multiplication
	#
	# C prototype: void cmatvec(const COMPLEX * matrix,
	#                           COMPLEX * state,
	#                           const int i,
	#                           const int j) {
	#
	# Calling convention:
	#
	# - Pointer to matrix: rdi
	# - Pointer to state: rsi
	# - integer i: rdx
	# - integer j: rcx
	#
	# The routine multiplies part of a large vector (the two
	# component vector given by the indices i and j) by a
	# matrix and stores the result back in place (at i and j).
	# The state vector is assumed to contain complex doubles,
	# so the result of the operation is a 32 byte wide value,
	# enough to fit in the ymm registers. Consequently this
	# implementation is fully vectorised.
	#
	# The structure of the matrix in memory is as follows:
	#
	#          imag   real
	#          ^^^^   ^^^^
	# 0x00  |  a001   a000 <-- rdi
	# 0x10  |  a011   a010
	# 0x20  |  a101   a100
	# 0x30  |  a111   a110 
	#
	# The operation of this routine is given by the
	# following expressions:
	#
	#
	# s0 = a000 i0 - a001 i1 + a010 j0 - a011 j1
	# s1 = a000 i1 + a001 i0 + a010 j1 + a011 j0
	#
	# t0 = a100 i0 - a101 i1 + a110 j0 - a111 j1
	# t1 = a100 i1 + a101 i0 + a110 j1 + a111 j0

	#
	# i = s1 s0
	# j = t1 t0
	#
 	#           t1     t0      s1     s0
	#           ^^     ^^      ^^     ^^ 
	# ymm0:    a100   a100    a000   a000  <--- 1 (term  number in sum above)
	# ymm1:     i1     i0      i1     i0
	#           +      -       +      -
	# ymm2:    a101   a101    a001   a001  <--- 2
	# ymm3:     i0     i1      i0     i1
	#	    +      +       +      +
	# ymm4:    a110   a110    a010   a010  <--- 3
	# ymm5:     j1     j0      j1     j0
	#           +      -       +      -
	# ymm6:    a111   a111    a011   a011  <--- 4
	# ymm7:     j0     j1      j0     j1
	#
	#
	# The indices i and j must be multiplied by 16 in order to
	# obtain offsets to doubles in the state vector.
	# Compute addresses 
	sal $1, %rdx # Multiply i by 2 (left shift)
	sal $1, %rcx # Multiply j by 2 (left shift)
	lea (%rsi, %rdx, 8), %r8
	lea (%rsi, %rcx, 8), %r9

	# Read matrix
	vmovapd 0x0(%rdi), %ymm0
	vmovapd 0x20(%rdi), %ymm1
	vmovapd 0x40(%rdi), %ymm2	
	vmovapd 0x60(%rdi), %ymm3
	
	# Make column vector 
	movapd (%r8), %xmm1         # xmm1:   i1   i0 <- Element i	
	pshufd $0x4e, %xmm1, %xmm3  # xmm3:   i0   i1
	movapd (%r9), %xmm5         # xmm5:   j1   j0 <- j
	pshufd $0x4e, %xmm5, %xmm7  # xmm7:   j0   j1

	ret
	#
	# Total instructions: 39

