	.file	"erf1.cpp"
	.intel_syntax noprefix
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	_Z3sgnd
	.type	_Z3sgnd, @function
_Z3sgnd:
.LFB3:
	.cfi_startproc
	pxor	xmm1, xmm1
	ucomisd	xmm1, xmm0
	ja	.L3
	xor	eax, eax
	ucomisd	xmm0, xmm1
	seta	al
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	mov	eax, -1
	ret
	.cfi_endproc
.LFE3:
	.size	_Z3sgnd, .-_Z3sgnd
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Z4erf1d
	.type	_Z4erf1d, @function
_Z4erf1d:
.LFB4:
	.cfi_startproc
	pxor	xmm1, xmm1
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, -1
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	ucomisd	xmm1, xmm0
	ja	.L6
	xor	ebx, ebx
	ucomisd	xmm0, xmm1
	seta	bl
.L6:
	movsd	xmm2, QWORD PTR .LC2[rip]
	movsd	xmm4, QWORD PTR .LC4[rip]
	andpd	xmm2, xmm0
	movsd	xmm0, QWORD PTR .LC3[rip]
	movapd	xmm3, xmm4
	movsd	QWORD PTR [rsp+8], xmm4
	mulsd	xmm0, xmm2
	addsd	xmm0, xmm4
	divsd	xmm3, xmm0
	movsd	xmm0, QWORD PTR .LC5[rip]
	xorpd	xmm0, xmm2
	movsd	QWORD PTR [rsp], xmm3
	mulsd	xmm0, xmm2
	call	exp
	movsd	xmm3, QWORD PTR [rsp]
	movsd	xmm1, QWORD PTR .LC6[rip]
	movsd	xmm4, QWORD PTR [rsp+8]
	mulsd	xmm1, xmm3
	subsd	xmm1, QWORD PTR .LC7[rip]
	mulsd	xmm1, xmm3
	addsd	xmm1, QWORD PTR .LC8[rip]
	mulsd	xmm1, xmm3
	subsd	xmm1, QWORD PTR .LC9[rip]
	mulsd	xmm1, xmm3
	addsd	xmm1, QWORD PTR .LC10[rip]
	add	rsp, 16
	.cfi_def_cfa_offset 16
	mulsd	xmm1, xmm3
	mulsd	xmm1, xmm0
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, ebx
	subsd	xmm4, xmm1
	pop	rbx
	.cfi_def_cfa_offset 8
	mulsd	xmm0, xmm4
	ret
	.cfi_endproc
.LFE4:
	.size	_Z4erf1d, .-_Z4erf1d
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	2839378828
	.long	1070921536
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.section	.rodata.cst16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC6:
	.long	1112908077
	.long	1072757636
	.align 8
.LC7:
	.long	1459702841
	.long	1073168412
	.align 8
.LC8:
	.long	1438310743
	.long	1073135132
	.align 8
.LC9:
	.long	3426489449
	.long	1070740785
	.align 8
.LC10:
	.long	3337378430
	.long	1070616352
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
