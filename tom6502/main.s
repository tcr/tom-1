;
; File generated by cc65 v 2.18 - Git N/A
;
	.fopt		compiler,"cc65 v 2.18 - Git N/A"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.forceimport	initmainargs
	.export		_main

; ---------------------------------------------------------------
; int __near__ __cdecl__ main (unsigned char, unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"BSS"

L0003:
	.res	1,$00
L0005:
	.res	1,$00
L0007:
	.res	1,$00
L0009:
	.res	2,$00
L000A:
	.res	2,$00
L000B:
	.res	2,$00
L000C:
	.res	2,$00
L000D:
	.res	2,$00
L000E:
	.res	2,$00

.segment	"CODE"

	lda     #$00
	sta     L0003
	sta     L0005
	sta     L0007
L005E:	dec     L0003
	lda     L0003
	clc
	adc     L0003
	sta     L0005
	lda     #$02
	sta     ptr1+1
	lda     L0003
	sta     ptr1
	lda     L0005
	ldy     #$00
	sta     (ptr1),y
	lda     #$03
	sta     ptr1+1
	lda     L0005
	sta     ptr1
	lda     L0003
	sta     (ptr1),y
	lda     L0003
	bne     L005E
	ldx     #$02
	lda     #$58
	sta     L000E
	stx     L000E+1
	ldx     #$00
	lda     #$01
L0061:	sta     L000D
	stx     L000D+1
	lda     L000D
	cmp     #$0A
	lda     L000D+1
	sbc     #$00
	bvc     L0025
	eor     #$80
L0025:	jpl     L005F
	lda     #$00
	sta     L000C
	sta     L000C+1
	sta     L0009
	sta     L0009+1
L002A:	lda     L0009
	ldx     L0009+1
	jsr     pushax
	lda     L000E
	ldx     L000E+1
	jsr     tosicmp
	beq     L005C
	bpl     L002B
L005C:	lda     #$00
	clc
	adc     L0009
	sta     ptr1
	lda     #$10
	adc     L0009+1
	sta     ptr1+1
	lda     #$01
	ldy     #$00
	sta     (ptr1),y
	lda     L0009
	ldx     L0009+1
	clc
	adc     #$01
	bcc     L0032
	inx
L0032:	sta     L0009
	stx     L0009+1
	jmp     L002A
L002B:	lda     #$00
	sta     L0009
	sta     L0009+1
L0038:	lda     L0009
	ldx     L0009+1
	jsr     pushax
	lda     L000E
	ldx     L000E+1
	jsr     tosicmp
	beq     L005D
	jpl     L0020
L005D:	lda     #$00
	sta     ptr1
	lda     #$10
	clc
	adc     L0009+1
	sta     ptr1+1
	ldy     L0009
	lda     (ptr1),y
	beq     L003A
	lda     L0009
	clc
	adc     L0009
	pha
	lda     L0009+1
	adc     L0009+1
	tax
	pla
	clc
	adc     #$03
	bcc     L0048
	inx
L0048:	sta     L000A
	stx     L000A+1
	clc
	adc     #$01
	bcc     L004B
	inx
L004B:	sta     L000B
	stx     L000B+1
	jmp     L004E
L004C:	lda     #$00
	clc
	adc     L000B
	sta     ptr1
	lda     #$10
	adc     L000B+1
	sta     ptr1+1
	lda     #$00
	tay
	sta     (ptr1),y
	lda     L000A
	clc
	adc     L000B
	sta     L000B
	lda     L000A+1
	adc     L000B+1
	sta     L000B+1
L004E:	lda     L000B
	ldx     L000B+1
	jsr     pushax
	lda     L000E
	ldx     L000E+1
	jsr     tosicmp
	bmi     L004C
	beq     L004C
	lda     L000C
	ldx     L000C+1
	clc
	adc     #$01
	bcc     L0059
	inx
L0059:	sta     L000C
	stx     L000C+1
L003A:	lda     L0009
	ldx     L0009+1
	clc
	adc     #$01
	bcc     L0040
	inx
L0040:	sta     L0009
	stx     L0009+1
	jmp     L0038
L0020:	lda     L000D
	ldx     L000D+1
	clc
	adc     #$01
	jcc     L0061
	inx
	jmp     L0061
L005F:	lda     L0007
	ldx     #$00
	jmp     incsp2

.endproc

