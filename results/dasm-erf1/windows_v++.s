; Listing generated by Microsoft (R) Optimizing Compiler Version 19.12.25834.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	?sgn@@YAHN@Z					; sgn
PUBLIC	?erf1@@YANN@Z					; erf1
PUBLIC	__real@3fd04f20c6ec5a7e
PUBLIC	__real@3fd23531cc3c1469
PUBLIC	__real@3fd4f740a93d7b8c
PUBLIC	__real@3ff0000000000000
PUBLIC	__real@3ff0fb844255a12d
PUBLIC	__real@3ff6be1c55bae157
PUBLIC	__real@3ff7401c57014c39
PUBLIC	__xmm@7fffffffffffffff7fffffffffffffff
PUBLIC	__xmm@80000000000000008000000000000000
EXTRN	exp:PROC
EXTRN	_fltused:DWORD
;	COMDAT pdata
pdata	SEGMENT
$pdata$?erf1@@YANN@Z DD imagerel $LN8
	DD	imagerel $LN8+195
	DD	imagerel $unwind$?erf1@@YANN@Z
pdata	ENDS
;	COMDAT __xmm@80000000000000008000000000000000
CONST	SEGMENT
__xmm@80000000000000008000000000000000 DB 00H, 00H, 00H, 00H, 00H, 00H, 00H
	DB	080H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 080H
CONST	ENDS
;	COMDAT __xmm@7fffffffffffffff7fffffffffffffff
CONST	SEGMENT
__xmm@7fffffffffffffff7fffffffffffffff DB 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH
	DB	0ffH, 07fH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 0ffH, 07fH
CONST	ENDS
;	COMDAT __real@3ff7401c57014c39
CONST	SEGMENT
__real@3ff7401c57014c39 DQ 03ff7401c57014c39r	; 1.45315
CONST	ENDS
;	COMDAT __real@3ff6be1c55bae157
CONST	SEGMENT
__real@3ff6be1c55bae157 DQ 03ff6be1c55bae157r	; 1.42141
CONST	ENDS
;	COMDAT __real@3ff0fb844255a12d
CONST	SEGMENT
__real@3ff0fb844255a12d DQ 03ff0fb844255a12dr	; 1.06141
CONST	ENDS
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT __real@3fd4f740a93d7b8c
CONST	SEGMENT
__real@3fd4f740a93d7b8c DQ 03fd4f740a93d7b8cr	; 0.327591
CONST	ENDS
;	COMDAT __real@3fd23531cc3c1469
CONST	SEGMENT
__real@3fd23531cc3c1469 DQ 03fd23531cc3c1469r	; 0.284497
CONST	ENDS
;	COMDAT __real@3fd04f20c6ec5a7e
CONST	SEGMENT
__real@3fd04f20c6ec5a7e DQ 03fd04f20c6ec5a7er	; 0.25483
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?erf1@@YANN@Z DD 061701H
	DD	027817H
	DD	03680eH
	DD	030027206H
xdata	ENDS
; Function compile flags: /Ogtpy
; File d:\spielwiese\staticlib1\project1\erf1.cpp
;	COMDAT ?erf1@@YANN@Z
_TEXT	SEGMENT
x$ = 80
?erf1@@YANN@Z PROC					; erf1, COMDAT

; 8    : {

$LN8:
	push	rbx
	sub	rsp, 64					; 00000040H
	xorps	xmm2, xmm2
	movaps	XMMWORD PTR [rsp+48], xmm6

; 4    : 	return (v < 0) ? -1 : ((v > 0) ? 1 : 0);

	comisd	xmm2, xmm0
	movaps	XMMWORD PTR [rsp+32], xmm7

; 8    : {

	movaps	xmm1, xmm0

; 4    : 	return (v < 0) ? -1 : ((v > 0) ? 1 : 0);

	jbe	SHORT $LN5@erf1
	or	ebx, -1
	jmp	SHORT $LN6@erf1
$LN5@erf1:
	xor	ebx, ebx
	comisd	xmm1, xmm2
	seta	bl
$LN6@erf1:

; 9    : 	const double a1 = 0.254829592;
; 10   : 	const double a2 = -0.284496736;
; 11   : 	const double a3 = 1.421413741;
; 12   : 	const double a4 = -1.453152027;
; 13   : 	const double a5 = 1.061405429;
; 14   : 	const double p = 0.3275911;
; 15   : 	
; 16   : 	// Save the sign of x
; 17   : 	int sign = sgn(x);
; 18   : 	x = fabs(x);

	andps	xmm1, QWORD PTR __xmm@7fffffffffffffff7fffffffffffffff

; 19   : 
; 20   : 	// A&S formula 7.1.26
; 21   : 	double t = 1.0 / (1.0 + p * x);

	movsd	xmm7, QWORD PTR __real@3ff0000000000000
	movaps	xmm0, xmm1
	mulsd	xmm0, QWORD PTR __real@3fd4f740a93d7b8c
	movaps	xmm6, xmm7

; 22   : 	double y = 1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * exp(-x * x);

	mulsd	xmm1, xmm1
	addsd	xmm0, xmm7
	xorps	xmm1, QWORD PTR __xmm@80000000000000008000000000000000
	divsd	xmm6, xmm0
	movaps	xmm0, xmm1
	call	exp
	movaps	xmm1, xmm6
	mulsd	xmm1, QWORD PTR __real@3ff0fb844255a12d
	subsd	xmm1, QWORD PTR __real@3ff7401c57014c39
	mulsd	xmm1, xmm6
	addsd	xmm1, QWORD PTR __real@3ff6be1c55bae157
	mulsd	xmm1, xmm6
	subsd	xmm1, QWORD PTR __real@3fd23531cc3c1469
	mulsd	xmm1, xmm6
	addsd	xmm1, QWORD PTR __real@3fd04f20c6ec5a7e
	mulsd	xmm1, xmm6

; 23   : 
; 24   : 	return sign * y;
; 25   : }

	movaps	xmm6, XMMWORD PTR [rsp+48]
	mulsd	xmm0, xmm1
	xorps	xmm1, xmm1
	cvtsi2sd xmm1, ebx
	subsd	xmm7, xmm0
	mulsd	xmm7, xmm1
	movaps	xmm0, xmm7
	movaps	xmm7, XMMWORD PTR [rsp+32]
	add	rsp, 64					; 00000040H
	pop	rbx
	ret	0
?erf1@@YANN@Z ENDP					; erf1
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\spielwiese\staticlib1\project1\erf1.cpp
;	COMDAT ?sgn@@YAHN@Z
_TEXT	SEGMENT
v$ = 8
?sgn@@YAHN@Z PROC					; sgn, COMDAT

; 3    : int sgn(double v) {

	xorps	xmm1, xmm1

; 4    : 	return (v < 0) ? -1 : ((v > 0) ? 1 : 0);

	comisd	xmm1, xmm0
	jbe	SHORT $LN3@sgn
	or	eax, -1

; 5    : }

	ret	0
$LN3@sgn:

; 4    : 	return (v < 0) ? -1 : ((v > 0) ? 1 : 0);

	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al

; 5    : }

	ret	0
?sgn@@YAHN@Z ENDP					; sgn
_TEXT	ENDS
END
