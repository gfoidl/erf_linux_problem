	.file	"erf1.f95"
	.intel_syntax noprefix
	.text
	.globl	erf1_
	.type	erf1_, @function
erf1_:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR [rbp-40], rdi
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm2, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	xmm1, QWORD PTR .LC1[rip]
	andpd	xmm2, xmm1
	orpd	xmm2, xmm0
	movapd	xmm0, xmm2
	cvttsd2si	eax, xmm0
	mov	DWORD PTR [rbp-4], eax
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm1, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR .LC2[rip]
	andpd	xmm0, xmm1
	mov	rax, QWORD PTR [rbp-40]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm0, QWORD PTR .LC3[rip]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm1, QWORD PTR [rax]
	movsd	xmm0, QWORD PTR .LC4[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC5[rip]
	addsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-16], xmm0
	movsd	xmm1, QWORD PTR [rbp-16]
	movsd	xmm0, QWORD PTR .LC6[rip]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC7[rip]
	subsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR [rbp-16]
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC8[rip]
	addsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR [rbp-16]
	movsd	xmm1, QWORD PTR .LC9[rip]
	subsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR [rbp-16]
	movsd	xmm1, QWORD PTR .LC10[rip]
	addsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR [rbp-16]
	movsd	QWORD PTR [rbp-48], xmm0
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm1, QWORD PTR [rax]
	mov	rax, QWORD PTR [rbp-40]
	movsd	xmm0, QWORD PTR [rax]
	mulsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC1[rip]
	xorpd	xmm0, xmm1
	call	exp
	mulsd	xmm0, QWORD PTR [rbp-48]
	movsd	xmm1, QWORD PTR .LC5[rip]
	subsd	xmm1, xmm0
	movapd	xmm0, xmm1
	movsd	QWORD PTR [rbp-24], xmm0
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, DWORD PTR [rbp-4]
	mulsd	xmm0, QWORD PTR [rbp-24]
	movsd	QWORD PTR [rbp-32], xmm0
	movsd	xmm0, QWORD PTR [rbp-32]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	erf1_, .-erf1_
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	0
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC2:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	2684354560
	.long	1070921536
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	1073741824
	.long	1072757636
	.align 8
.LC7:
	.long	1610612736
	.long	1073168412
	.align 8
.LC8:
	.long	1610612736
	.long	1073135132
	.align 8
.LC9:
	.long	3221225472
	.long	1070740785
	.align 8
.LC10:
	.long	3221225472
	.long	1070616352
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
