; Assembly listing for method ConsoleApplication.Program:Erf1(double):double
; Emitting BLENDED_CODE for X64 CPU with AVX
; optimized code
; rbp based frame
; partially interruptible
; Final local variable assignments
;
;  V00 arg0         [V00,T01] (  8,  8   )  double  ->  [rbp-0x10]  
;  V01 loc0         [V01,T00] (  2,  2   )     int  ->  rbx        
;  V02 loc1         [V02,T02] (  6,  6   )  double  ->  [rbp-0x18]  
;  V03 loc2         [V03,T03] (  2,  2   )  double  ->  mm1        
;# V04 OutArgs      [V04    ] (  1,  1   )  lclBlk ( 0) [rsp+0x00]  
;
; Lcl frame size = 24

G_M21215_IG01:
       55                   push     rbp
       53                   push     rbx
       4883EC18             sub      rsp, 24
       C5F877               vzeroupper 
       488D6C2420           lea      rbp, [rsp+20H]

G_M21215_IG02:
       C4E17B1145F0         vmovsd   qword ptr [rbp-10H], xmm0
       E8E76863FF           call     System.Math:Sign(double):int
       8BD8                 mov      ebx, eax
       C4E17B104DF0         vmovsd   xmm1, qword ptr [rbp-10H]
       C4E17B1005BE000000   vmovsd   xmm0, qword ptr [reloc @RWD00]
       C4E17054C8           vandps   xmm1, xmm0
       C4E17828C1           vmovaps  xmm0, xmm1
       C4E17B5905B3000000   vmulsd   xmm0, qword ptr [reloc @RWD08]
       C4E17B5805B2000000   vaddsd   xmm0, qword ptr [reloc @RWD16]
       C4E17B1015B1000000   vmovsd   xmm2, qword ptr [reloc @RWD24]
       C4E16B5ED0           vdivsd   xmm2, xmm0
       C4E17B1155E8         vmovsd   qword ptr [rbp-18H], xmm2
       C4E17B1005A5000000   vmovsd   xmm0, qword ptr [reloc @RWD32]
       C4E17857C1           vxorps   xmm0, xmm1
       C4E17B59C1           vmulsd   xmm0, xmm1
       E83E6FEA78           call     System.Math:Exp(double):double
       C4E17B1055E8         vmovsd   xmm2, qword ptr [rbp-18H]
       C4E17828CA           vmovaps  xmm1, xmm2
       C4E173590D8A000000   vmulsd   xmm1, qword ptr [reloc @RWD40]
       C4E173580D89000000   vaddsd   xmm1, qword ptr [reloc @RWD48]
       C4E17359CA           vmulsd   xmm1, xmm2
       C4E173580D83000000   vaddsd   xmm1, qword ptr [reloc @RWD56]
       C4E17359CA           vmulsd   xmm1, xmm2
       C4E173580D7D000000   vaddsd   xmm1, qword ptr [reloc @RWD64]
       C4E17359CA           vmulsd   xmm1, xmm2
       C4E173580D77000000   vaddsd   xmm1, qword ptr [reloc @RWD72]
       C4E17359CA           vmulsd   xmm1, xmm2
       C4E17B59C1           vmulsd   xmm0, xmm1
       C4E17B100D6C000000   vmovsd   xmm1, qword ptr [reloc @RWD80]
       C4E1735CC8           vsubsd   xmm1, xmm0
       C4E17857C0           vxorps   xmm0, xmm0
       C4E17B2AC3           vcvtsi2sd  xmm0, ebx
       C4E17B59C1           vmulsd   xmm0, xmm1

G_M21215_IG03:
       488D65F8             lea      rsp, [rbp-08H]
       5B                   pop      rbx
       5D                   pop      rbp
       C3                   ret      

; Total bytes of code 231, prolog size 14 for method ConsoleApplication.Program:Erf1(double):double
; ============================================================
