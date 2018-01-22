	.file	"erf1.f95"
	.intel_syntax noprefix
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	erf1_
	.type	erf1_, @function
erf1_:
.LFB0:
	.cfi_startproc
	movsd	xmm0, QWORD PTR [rdi]
	movsd	xmm1, QWORD PTR .LC2[rip]
	andpd	xmm0, XMMWORD PTR .LC1[rip]
	movsd	QWORD PTR [rdi], xmm1
	orpd	xmm0, XMMWORD PTR .LC0[rip]
	cvttsd2si	eax, xmm0
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	mulsd	xmm0, QWORD PTR .LC3[rip]
	ret
	.cfi_endproc
.LFE0:
	.size	erf1_, .-erf1_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC3:
	.long	2711620684
	.long	1071687663
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
