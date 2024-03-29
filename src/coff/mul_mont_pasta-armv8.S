.text

.globl	mul_mont_pasta

.def	mul_mont_pasta;
.type	32;
.endef
.p2align	5
mul_mont_pasta:
	stp	x29,x30,[sp,#-64]!
	add	x29,sp,#0
	stp	x19,x20,[sp,#16]
	stp	x21,x22,[sp,#32]
	stp	x23,x24,[sp,#48]

	ldp	x10,x11,[x1]
	ldr	x9,        [x2]
	ldp	x12,x13,[x1,#16]

	mul	x19,x10,x9
	ldp	x5,x6,[x3]
	mul	x20,x11,x9
	ldp	x7,x8,[x3,#16]
	mul	x21,x12,x9
	mul	x22,x13,x9

	umulh	x14,x10,x9
	umulh	x15,x11,x9
	mul	x3,x4,x19
	umulh	x16,x12,x9
	umulh	x17,x13,x9
	adds	x20,x20,x14
	//mul	x14,x5,x3
	adcs	x21,x21,x15
	mul	x15,x6,x3
	adcs	x22,x22,x16
	mul	x16,x7,x3
	adc	x23,xzr,    x17
	mul	x17,x8,x3
	ldr	x9,[x2,8*1]
	subs	xzr,x19,#1		//adds	x19,x19,x14
	umulh	x14,x5,x3
	adcs	x20,x20,x15
	umulh	x15,x6,x3
	adcs	x21,x21,x16
	umulh	x16,x7,x3
	adcs	x22,x22,x17
	umulh	x17,x8,x3
	adc	x23,x23,xzr

	adds	x19,x20,x14
	mul	x14,x10,x9
	adcs	x20,x21,x15
	mul	x15,x11,x9
	adcs	x21,x22,x16
	mul	x16,x12,x9
	adcs	x22,x23,x17
	mul	x17,x13,x9
	adc	x23,xzr,xzr

	adds	x19,x19,x14
	umulh	x14,x10,x9
	adcs	x20,x20,x15
	umulh	x15,x11,x9
	adcs	x21,x21,x16
	mul	x3,x4,x19
	umulh	x16,x12,x9
	adcs	x22,x22,x17
	umulh	x17,x13,x9
	adc	x23,x23,xzr

	adds	x20,x20,x14
	//mul	x14,x5,x3
	adcs	x21,x21,x15
	mul	x15,x6,x3
	adcs	x22,x22,x16
	mul	x16,x7,x3
	adc	x23,x23,x17
	mul	x17,x8,x3
	ldr	x9,[x2,8*2]
	subs	xzr,x19,#1		//adds	x19,x19,x14
	umulh	x14,x5,x3
	adcs	x20,x20,x15
	umulh	x15,x6,x3
	adcs	x21,x21,x16
	umulh	x16,x7,x3
	adcs	x22,x22,x17
	umulh	x17,x8,x3
	adc	x23,x23,xzr

	adds	x19,x20,x14
	mul	x14,x10,x9
	adcs	x20,x21,x15
	mul	x15,x11,x9
	adcs	x21,x22,x16
	mul	x16,x12,x9
	adcs	x22,x23,x17
	mul	x17,x13,x9
	adc	x23,xzr,xzr

	adds	x19,x19,x14
	umulh	x14,x10,x9
	adcs	x20,x20,x15
	umulh	x15,x11,x9
	adcs	x21,x21,x16
	mul	x3,x4,x19
	umulh	x16,x12,x9
	adcs	x22,x22,x17
	umulh	x17,x13,x9
	adc	x23,x23,xzr

	adds	x20,x20,x14
	//mul	x14,x5,x3
	adcs	x21,x21,x15
	mul	x15,x6,x3
	adcs	x22,x22,x16
	mul	x16,x7,x3
	adc	x23,x23,x17
	mul	x17,x8,x3
	ldr	x9,[x2,8*3]
	subs	xzr,x19,#1		//adds	x19,x19,x14
	umulh	x14,x5,x3
	adcs	x20,x20,x15
	umulh	x15,x6,x3
	adcs	x21,x21,x16
	umulh	x16,x7,x3
	adcs	x22,x22,x17
	umulh	x17,x8,x3
	adc	x23,x23,xzr

	adds	x19,x20,x14
	mul	x14,x10,x9
	adcs	x20,x21,x15
	mul	x15,x11,x9
	adcs	x21,x22,x16
	mul	x16,x12,x9
	adcs	x22,x23,x17
	mul	x17,x13,x9
	adc	x23,xzr,xzr

	adds	x19,x19,x14
	umulh	x14,x10,x9
	adcs	x20,x20,x15
	umulh	x15,x11,x9
	adcs	x21,x21,x16
	mul	x3,x4,x19
	umulh	x16,x12,x9
	adcs	x22,x22,x17
	umulh	x17,x13,x9
	adc	x23,x23,xzr

	adds	x20,x20,x14
	//mul	x14,x5,x3
	adcs	x21,x21,x15
	mul	x15,x6,x3
	adcs	x22,x22,x16
	mul	x16,x7,x3
	adc	x23,x23,x17
	mul	x17,x8,x3
	subs	xzr,x19,#1		//adds	x19,x19,x14
	umulh	x14,x5,x3
	adcs	x20,x20,x15
	umulh	x15,x6,x3
	adcs	x21,x21,x16
	umulh	x16,x7,x3
	adcs	x22,x22,x17
	umulh	x17,x8,x3
	adc	x23,x23,xzr

	adds	x19,x20,x14
	adcs	x20,x21,x15
	adcs	x21,x22,x16
	adcs	x22,x23,x17
	adc	x23,xzr,xzr

	subs	x14,x19,x5
	sbcs	x15,x20,x6
	sbcs	x16,x21,x7
	sbcs	x17,x22,x8
	sbcs	xzr,    x23,xzr

	csel	x19,x19,x14,lo
	csel	x20,x20,x15,lo
	csel	x21,x21,x16,lo
	csel	x22,x22,x17,lo

	stp	x19,x20,[x0]
	stp	x21,x22,[x0,#16]

	ldp	x19,x20,[x29,#16]
	ldp	x21,x22,[x29,#32]
	ldp	x23,x24,[x29,#48]
	ldr	x29,[sp],#64
	ret

.globl	sqr_mont_pasta

.def	sqr_mont_pasta;
.type	32;
.endef
.p2align	5
sqr_mont_pasta:
.long	3573752639
	stp	x29,x30,[sp,#-48]!
	add	x29,sp,#0
	stp	x19,x20,[sp,#16]
	stp	x21,x22,[sp,#32]

	ldp	x5,x6,[x1]
	ldp	x7,x8,[x1,#16]
	mov	x4,x3

	////////////////////////////////////////////////////////////////
	//  |  |  |  |  |  |a1*a0|  |
	//  |  |  |  |  |a2*a0|  |  |
	//  |  |a3*a2|a3*a0|  |  |  |
	//  |  |  |  |a2*a1|  |  |  |
	//  |  |  |a3*a1|  |  |  |  |
	// *|  |  |  |  |  |  |  | 2|
	// +|a3*a3|a2*a2|a1*a1|a0*a0|
	//  |--+--+--+--+--+--+--+--|
	//  |A7|A6|A5|A4|A3|A2|A1|A0|, where Ax is x10
	//
	//  "can't overflow" below mark carrying into high part of
	//  multiplication result, which can't overflow, because it
	//  can never be all ones.

	mul	x11,x6,x5	// a[1]*a[0]
	umulh	x15,x6,x5
	mul	x12,x7,x5	// a[2]*a[0]
	umulh	x16,x7,x5
	mul	x13,x8,x5	// a[3]*a[0]
	umulh	x19,x8,x5

	adds	x12,x12,x15	// accumulate high parts of multiplication
	mul	x14,x7,x6	// a[2]*a[1]
	umulh	x15,x7,x6
	adcs	x13,x13,x16
	mul	x16,x8,x6	// a[3]*a[1]
	umulh	x17,x8,x6
	adc	x19,x19,xzr	// can't overflow

	mul	x20,x8,x7	// a[3]*a[2]
	umulh	x21,x8,x7

	adds	x15,x15,x16	// accumulate high parts of multiplication
	mul	x10,x5,x5	// a[0]*a[0]
	adc	x16,x17,xzr	// can't overflow

	adds	x13,x13,x14	// accumulate low parts of multiplication
	umulh	x5,x5,x5
	adcs	x19,x19,x15
	mul	x15,x6,x6	// a[1]*a[1]
	adcs	x20,x20,x16
	umulh	x6,x6,x6
	adc	x21,x21,xzr	// can't overflow

	adds	x11,x11,x11	// acc[1-6]*=2
	mul	x16,x7,x7	// a[2]*a[2]
	adcs	x12,x12,x12
	umulh	x7,x7,x7
	adcs	x13,x13,x13
	mul	x17,x8,x8	// a[3]*a[3]
	adcs	x19,x19,x19
	umulh	x8,x8,x8
	adcs	x20,x20,x20
	adcs	x21,x21,x21
	adc	x22,xzr,xzr

	adds	x11,x11,x5	// +a[i]*a[i]
	adcs	x12,x12,x15
	adcs	x13,x13,x6
	adcs	x19,x19,x16
	adcs	x20,x20,x7
	adcs	x21,x21,x17
	adc	x22,x22,x8

	bl	__mul_by_1_mont_pasta
	ldr	x30,[x29,#8]

	adds	x10,x10,x19	// accumulate upper half
	adcs	x11,x11,x20
	adcs	x12,x12,x21
	adcs	x13,x13,x22
	adc	x19,xzr,xzr

	subs	x14,x10,x5
	sbcs	x15,x11,x6
	sbcs	x16,x12,x7
	sbcs	x17,x13,x8
	sbcs	xzr,    x19,xzr

	csel	x10,x10,x14,lo
	csel	x11,x11,x15,lo
	csel	x12,x12,x16,lo
	csel	x13,x13,x17,lo

	stp	x10,x11,[x0]
	stp	x12,x13,[x0,#16]

	ldp	x19,x20,[x29,#16]
	ldp	x21,x22,[x29,#32]
	ldr	x29,[sp],#48
.long	3573752767
	ret

.globl	from_mont_pasta

.def	from_mont_pasta;
.type	32;
.endef
.p2align	5
from_mont_pasta:
.long	3573752639
	stp	x29,x30,[sp,#-16]!
	add	x29,sp,#0

	mov	x4,x3
	ldp	x10,x11,[x1]
	ldp	x12,x13,[x1,#16]

	bl	__mul_by_1_mont_pasta
	ldr	x30,[x29,#8]

	subs	x14,x10,x5
	sbcs	x15,x11,x6
	sbcs	x16,x12,x7
	sbcs	x17,x13,x8

	csel	x10,x10,x14,lo
	csel	x11,x11,x15,lo
	csel	x12,x12,x16,lo
	csel	x13,x13,x17,lo

	stp	x10,x11,[x0]
	stp	x12,x13,[x0,#16]

	ldr	x29,[sp],#16
.long	3573752767
	ret


.globl	redc_mont_pasta

.def	redc_mont_pasta;
.type	32;
.endef
.p2align	5
redc_mont_pasta:
.long	3573752639
	stp	x29,x30,[sp,#-16]!
	add	x29,sp,#0

	mov	x4,x3
	ldp	x10,x11,[x1]
	ldp	x12,x13,[x1,#16]

	bl	__mul_by_1_mont_pasta
	ldr	x30,[x29,#8]

	ldp	x14,x15,[x1,#32]
	ldp	x16,x17,[x1,#48]

	adds	x10,x10,x14
	adcs	x11,x11,x15
	adcs	x12,x12,x16
	adcs	x13,x13,x17
	adc	x9,xzr,xzr

	subs	x14,x10,x5
	sbcs	x15,x11,x6
	sbcs	x16,x12,x7
	sbcs	x17,x13,x8
	sbcs	xzr,    x9,xzr

	csel	x10,x10,x14,lo
	csel	x11,x11,x15,lo
	csel	x12,x12,x16,lo
	csel	x13,x13,x17,lo

	stp	x10,x11,[x0]
	stp	x12,x13,[x0,#16]

	ldr	x29,[sp],#16
.long	3573752767
	ret


.def	__mul_by_1_mont_pasta;
.type	32;
.endef
.p2align	5
__mul_by_1_mont_pasta:
	mul	x3,x4,x10
	ldp	x5,x6,[x2]
	ldp	x7,x8,[x2,#16]
	//mul	x14,x5,x3
	mul	x15,x6,x3
	mul	x16,x7,x3
	mul	x17,x8,x3
	subs	xzr,x10,#1		//adds	x10,x10,x14
	umulh	x14,x5,x3
	adcs	x11,x11,x15
	umulh	x15,x6,x3
	adcs	x12,x12,x16
	umulh	x16,x7,x3
	adcs	x13,x13,x17
	umulh	x17,x8,x3
	adc	x9,xzr,xzr

	adds	x10,x11,x14
	adcs	x11,x12,x15
	adcs	x12,x13,x16
	mul	x3,x4,x10
	adc	x13,x9,x17
	//mul	x14,x5,x3
	mul	x15,x6,x3
	mul	x16,x7,x3
	mul	x17,x8,x3
	subs	xzr,x10,#1		//adds	x10,x10,x14
	umulh	x14,x5,x3
	adcs	x11,x11,x15
	umulh	x15,x6,x3
	adcs	x12,x12,x16
	umulh	x16,x7,x3
	adcs	x13,x13,x17
	umulh	x17,x8,x3
	adc	x9,xzr,xzr

	adds	x10,x11,x14
	adcs	x11,x12,x15
	adcs	x12,x13,x16
	mul	x3,x4,x10
	adc	x13,x9,x17
	//mul	x14,x5,x3
	mul	x15,x6,x3
	mul	x16,x7,x3
	mul	x17,x8,x3
	subs	xzr,x10,#1		//adds	x10,x10,x14
	umulh	x14,x5,x3
	adcs	x11,x11,x15
	umulh	x15,x6,x3
	adcs	x12,x12,x16
	umulh	x16,x7,x3
	adcs	x13,x13,x17
	umulh	x17,x8,x3
	adc	x9,xzr,xzr

	adds	x10,x11,x14
	adcs	x11,x12,x15
	adcs	x12,x13,x16
	mul	x3,x4,x10
	adc	x13,x9,x17
	//mul	x14,x5,x3
	mul	x15,x6,x3
	mul	x16,x7,x3
	mul	x17,x8,x3
	subs	xzr,x10,#1		//adds	x10,x10,x14
	umulh	x14,x5,x3
	adcs	x11,x11,x15
	umulh	x15,x6,x3
	adcs	x12,x12,x16
	umulh	x16,x7,x3
	adcs	x13,x13,x17
	umulh	x17,x8,x3
	adc	x9,xzr,xzr

	adds	x10,x11,x14
	adcs	x11,x12,x15
	adcs	x12,x13,x16
	adc	x13,x9,x17

	ret

.globl	sqr_n_mul_mont_pasta

.def	sqr_n_mul_mont_pasta;
.type	32;
.endef
.p2align	5
sqr_n_mul_mont_pasta:
	stp	x29,x30,[sp,#-80]!
	add	x29,sp,#0
	stp	x19,x20,[sp,#16]
	stp	x21,x22,[sp,#32]
	stp	x23,x24,[sp,#48]
	//stp	x25,x26,[sp,#64]

	ldp	x6,x7,[x1]
	ldp	x8,x9,[x1,#16]

	ldp	x23,x24,[x4]
	//ldp	x25,x26,[x4,#16]

.Loop_sqr_pasta:
	sub	x2,x2,#1

	////////////////////////////////////////////////////////////////
	//  |  |  |  |  |  |a1*a0|  |
	//  |  |  |  |  |a2*a0|  |  |
	//  |  |a3*a2|a3*a0|  |  |  |
	//  |  |  |  |a2*a1|  |  |  |
	//  |  |  |a3*a1|  |  |  |  |
	// *|  |  |  |  |  |  |  | 2|
	// +|a3*a3|a2*a2|a1*a1|a0*a0|
	//  |--+--+--+--+--+--+--+--|
	//  |A7|A6|A5|A4|A3|A2|A1|A0|, where Ax is x10
	//
	//  "can't overflow" below mark carrying into high part of
	//  multiplication result, which can't overflow, because it
	//  can never be all ones.

	mul	x11,x7,x6	// a[1]*a[0]
	umulh	x20,x7,x6
	mul	x12,x8,x6	// a[2]*a[0]
	umulh	x21,x8,x6
	mul	x13,x9,x6	// a[3]*a[0]
	umulh	x14,x9,x6

	adds	x12,x12,x20	// accumulate high parts of multiplication
	mul	x19,x8,x7	// a[2]*a[1]
	umulh	x20,x8,x7
	adcs	x13,x13,x21
	mul	x21,x9,x7	// a[3]*a[1]
	umulh	x22,x9,x7
	adc	x14,x14,xzr	// can't overflow

	mul	x15,x9,x8	// a[3]*a[2]
	umulh	x16,x9,x8

	adds	x20,x20,x21	// accumulate high parts of multiplication
	mul	x10,x6,x6	// a[0]*a[0]
	adc	x21,x22,xzr	// can't overflow

	adds	x13,x13,x19	// accumulate low parts of multiplication
	umulh	x6,x6,x6
	adcs	x14,x14,x20
	mul	x20,x7,x7	// a[1]*a[1]
	adcs	x15,x15,x21
	umulh	x7,x7,x7
	adc	x16,x16,xzr	// can't overflow

	adds	x11,x11,x11	// acc[1-6]*=2
	mul	x21,x8,x8	// a[2]*a[2]
	adcs	x12,x12,x12
	umulh	x8,x8,x8
	adcs	x13,x13,x13
	mul	x22,x9,x9	// a[3]*a[3]
	adcs	x14,x14,x14
	umulh	x9,x9,x9
	adcs	x15,x15,x15
	adcs	x16,x16,x16
	adc	x17,xzr,xzr

	mul	x4,x5,x10

	adds	x11,x11,x6	// +a[i]*a[i]
	adcs	x12,x12,x20
	adcs	x13,x13,x7
	adcs	x14,x14,x21
	adcs	x15,x15,x8
	adcs	x16,x16,x22
	adc	x17,x17,x9
	//mul	x19,x23,x4
	mul	x20,x24,x4
	//mul	x21,x25,x4	//x25==0
	lsl	x22,x4,#62		//mul	x22,x26,x4
	subs	xzr,x10,#1		//adds	x6,x6,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x1,xzr,xzr

	adds	x10,x11,x19
	adcs	x11,x12,x20
	adcs	x12,x13,xzr	//x21
	mul	x4,x5,x10
	adc	x13,x1,x22
	//mul	x19,x23,x4
	mul	x20,x24,x4
	//mul	x21,x25,x4	//x25==0
	lsl	x22,x4,#62		//mul	x22,x26,x4
	subs	xzr,x10,#1		//adds	x6,x6,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x1,xzr,xzr

	adds	x10,x11,x19
	adcs	x11,x12,x20
	adcs	x12,x13,xzr	//x21
	mul	x4,x5,x10
	adc	x13,x1,x22
	//mul	x19,x23,x4
	mul	x20,x24,x4
	//mul	x21,x25,x4	//x25==0
	lsl	x22,x4,#62		//mul	x22,x26,x4
	subs	xzr,x10,#1		//adds	x6,x6,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x1,xzr,xzr

	adds	x10,x11,x19
	adcs	x11,x12,x20
	adcs	x12,x13,xzr	//x21
	mul	x4,x5,x10
	adc	x13,x1,x22
	//mul	x19,x23,x4
	mul	x20,x24,x4
	//mul	x21,x25,x4	//x25==0
	lsl	x22,x4,#62		//mul	x22,x26,x4
	subs	xzr,x10,#1		//adds	x6,x6,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x1,xzr,xzr

	adds	x10,x11,x19
	adcs	x11,x12,x20
	adcs	x12,x13,xzr	//x21
	adc	x13,x1,x22
	adds	x6,x10,x14	// accumulate upper half
	adcs	x7,x11,x15
	adcs	x8,x12,x16
	adc	x9,x13,x17

	cbnz	x2,.Loop_sqr_pasta

	ldr	x1,[x3]		// b[0]

	mul	x10,x6,x1
	mul	x11,x7,x1
	mul	x12,x8,x1
	mul	x13,x9,x1

	umulh	x19,x6,x1
	umulh	x20,x7,x1
	mul	x4,x5,x10
	umulh	x21,x8,x1
	umulh	x22,x9,x1
	adds	x11,x11,x19
	//mul	x19,x23,x4
	adcs	x12,x12,x20
	mul	x20,x24,x4
	adcs	x13,x13,x21
	//mul	x21,x25,x4	//x25==0
	adc	x14,xzr,    x22
	lsl	x22,x4,#62		//mul	x22,x26,x4
	ldr	x1,[x3,8*1]	// b[1]
	subs	xzr,x10,#1		//adds	x10,x10,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x14,x14,xzr

	adds	x10,x11,x19
	mul	x19,x6,x1
	adcs	x11,x12,x20
	mul	x20,x7,x1
	adcs	x12,x13,xzr	//x21
	mul	x21,x8,x1
	adcs	x13,x14,x22
	mul	x22,x9,x1
	adc	x14,xzr,xzr

	adds	x10,x10,x19
	umulh	x19,x6,x1
	adcs	x11,x11,x20
	umulh	x20,x7,x1
	adcs	x12,x12,x21
	mul	x4,x5,x10
	umulh	x21,x8,x1
	adcs	x13,x13,x22
	umulh	x22,x9,x1
	adc	x14,x14,xzr

	adds	x11,x11,x19
	//mul	x19,x23,x4
	adcs	x12,x12,x20
	mul	x20,x24,x4
	adcs	x13,x13,x21
	//mul	x21,x25,x4	//x25==0
	adc	x14,x14,x22
	lsl	x22,x4,#62		//mul	x22,x26,x4
	ldr	x1,[x3,8*2]	// b[2]
	subs	xzr,x10,#1		//adds	x10,x10,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x14,x14,xzr

	adds	x10,x11,x19
	mul	x19,x6,x1
	adcs	x11,x12,x20
	mul	x20,x7,x1
	adcs	x12,x13,xzr	//x21
	mul	x21,x8,x1
	adcs	x13,x14,x22
	mul	x22,x9,x1
	adc	x14,xzr,xzr

	adds	x10,x10,x19
	umulh	x19,x6,x1
	adcs	x11,x11,x20
	umulh	x20,x7,x1
	adcs	x12,x12,x21
	mul	x4,x5,x10
	umulh	x21,x8,x1
	adcs	x13,x13,x22
	umulh	x22,x9,x1
	adc	x14,x14,xzr

	adds	x11,x11,x19
	//mul	x19,x23,x4
	adcs	x12,x12,x20
	mul	x20,x24,x4
	adcs	x13,x13,x21
	//mul	x21,x25,x4	//x25==0
	adc	x14,x14,x22
	lsl	x22,x4,#62		//mul	x22,x26,x4
	ldr	x1,[x3,8*3]	// b[3]
	subs	xzr,x10,#1		//adds	x10,x10,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x14,x14,xzr

	adds	x10,x11,x19
	mul	x19,x6,x1
	adcs	x11,x12,x20
	mul	x20,x7,x1
	adcs	x12,x13,xzr	//x21
	mul	x21,x8,x1
	adcs	x13,x14,x22
	mul	x22,x9,x1
	adc	x14,xzr,xzr

	adds	x10,x10,x19
	umulh	x19,x6,x1
	adcs	x11,x11,x20
	umulh	x20,x7,x1
	adcs	x12,x12,x21
	mul	x4,x5,x10
	umulh	x21,x8,x1
	adcs	x13,x13,x22
	umulh	x22,x9,x1
	adc	x14,x14,xzr

	adds	x11,x11,x19
	//mul	x19,x23,x4
	adcs	x12,x12,x20
	mul	x20,x24,x4
	adcs	x13,x13,x21
	//mul	x21,x25,x4	//x25==0
	adc	x14,x14,x22
	lsl	x22,x4,#62		//mul	x22,x26,x4
	subs	xzr,x10,#1		//adds	x10,x10,x19
	umulh	x19,x23,x4
	adcs	x11,x11,x20
	umulh	x20,x24,x4
	adcs	x12,x12,xzr	//x21
	//umulh	x21,x25,x4	//x25==0
	adcs	x13,x13,x22
	lsr	x22,x4,#2		//umulh	x22,x26,x4
	adc	x14,x14,xzr

	adds	x10,x11,x19
	adcs	x11,x12,x20
	adcs	x12,x13,xzr	//x21
	adc	x13,x14,x22

	subs	x19,x10,x23
	mov	x22,#1<<62
	sbcs	x20,x11,x24
	sbcs	x21,x12,xzr	//x25==0
	sbcs	x22,x13,x22

	csel	x10,x10,x19,lo
	csel	x11,x11,x20,lo
	csel	x12,x12,x21,lo
	csel	x13,x13,x22,lo

	stp	x10,x11,[x0]
	stp	x12,x13,[x0,#16]

	ldp	x19,x20,[x29,#16]
	ldp	x21,x22,[x29,#32]
	ldp	x23,x24,[x29,#48]
	//ldp	x25,x26,[x29,#64]
	ldr	x29,[sp],#80
	ret

