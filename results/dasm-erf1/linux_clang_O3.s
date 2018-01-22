	.text
	.intel_syntax noprefix
	.file	"erf1.cpp"
	.globl	_Z3sgnd
	.align	16, 0x90
	.type	_Z3sgnd,@function
_Z3sgnd:                                # @_Z3sgnd
	.cfi_startproc
# BB#0:
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	seta	al
	ucomisd	xmm1, xmm0
	movzx	ecx, al
	mov	eax, -1
	cmovbe	eax, ecx
	ret
.Lfunc_end0:
	.size	_Z3sgnd, .Lfunc_end0-_Z3sgnd
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI1_8:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4599572976541465484     # double 0.32759110000000002
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_3:
	.quad	4607458964267180333     # double 1.0614054289999999
.LCPI1_4:
	.quad	-4614148802754819015    # double -1.453152027
.LCPI1_5:
	.quad	4609080297566953815     # double 1.4214137410000001
.LCPI1_6:
	.quad	-4624575379359918999    # double -0.28449673599999997
.LCPI1_7:
	.quad	4598262221740202622     # double 0.25482959199999999
.LCPI1_9:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	_Z4erf1d
	.align	16, 0x90
	.type	_Z4erf1d,@function
_Z4erf1d:                               # @_Z4erf1d
	.cfi_startproc
# BB#0:
	sub	rsp, 40
.Ltmp0:
	.cfi_def_cfa_offset 48
	movapd	xmm1, xmm0
	movapd	xmmword ptr [rsp + 16], xmm1 # 16-byte Spill
	movapd	xmm0, xmmword ptr [rip + .LCPI1_0] # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI1_1] # xmm1 = mem[0],zero
	mulsd	xmm1, xmm0
	movsd	xmm2, qword ptr [rip + .LCPI1_2] # xmm2 = mem[0],zero
	addsd	xmm1, xmm2
	divsd	xmm2, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI1_3] # xmm1 = mem[0],zero
	mulsd	xmm1, xmm2
	addsd	xmm1, qword ptr [rip + .LCPI1_4]
	mulsd	xmm1, xmm2
	addsd	xmm1, qword ptr [rip + .LCPI1_5]
	mulsd	xmm1, xmm2
	addsd	xmm1, qword ptr [rip + .LCPI1_6]
	mulsd	xmm1, xmm2
	addsd	xmm1, qword ptr [rip + .LCPI1_7]
	mulsd	xmm1, xmm2
	movsd	qword ptr [rsp + 8], xmm1 # 8-byte Spill
	mulsd	xmm0, xmm0
	xorpd	xmm0, xmmword ptr [rip + .LCPI1_8]
	call	exp
	mulsd	xmm0, qword ptr [rsp + 8] # 8-byte Folded Reload
	xorpd	xmm1, xmm1
	xorpd	xmm2, xmm2
	movaps	xmm3, xmmword ptr [rsp + 16] # 16-byte Reload
	cmpltsd	xmm2, xmm3
	movsd	xmm4, qword ptr [rip + .LCPI1_2] # xmm4 = mem[0],zero
	andpd	xmm2, xmm4
	subsd	xmm4, xmm0
	cmpltsd	xmm3, xmm1
	movapd	xmm0, xmm3
	andnpd	xmm0, xmm2
	movsd	xmm1, qword ptr [rip + .LCPI1_9] # xmm1 = mem[0],zero
	andpd	xmm1, xmm3
	orpd	xmm0, xmm1
	mulsd	xmm0, xmm4
	add	rsp, 40
	ret
.Lfunc_end1:
	.size	_Z4erf1d, .Lfunc_end1-_Z4erf1d
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
