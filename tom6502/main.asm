;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _main_PARM_2
	.globl _main_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_main_PARM_1:
	.ds 1
_main_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 1
_main_sloc2_1_0:
	.ds 1
_main_sloc3_1_0:
	.ds 2
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 2
_main_sloc6_1_0:
	.ds 2
_main_sloc7_1_0:
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	.area	HEADER (ABS)
	.org	 0x0020
	reti
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	.area	PREG (ABS)
	.org 0x00
p::
	.ds 2
	.area	HEADER (ABS)
	.org 0x0000
	nop
	clear	p+1
	mov	a, #s_OSEG
	add	a, #l_OSEG + 1
	and	a, #0xfe
	mov	sp, a
	call	__sdcc_external_startup
	goto	__sdcc_gs_init_startup
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
	mov	a, #s_DATA
	mov	p, a
	goto	00002$
00001$:
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #s_DATA
00002$:
	add	a, #l_DATA
	ceqsn	a, p
	goto	00001$
	.area GSFINAL
	goto	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	goto	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 30: int main(uint8_t a, uint8_t b) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 32: do {
	clear	_main_sloc0_1_0+0
00101$:
;	main.c: 33: k--;
	dec	_main_sloc0_1_0+0
;	main.c: 34: uint8_t l = k + k;
	mov	a, _main_sloc0_1_0+0
	mov	_main_sloc1_1_0+0, a
	sl	_main_sloc1_1_0+0
;	main.c: 35: *(uint8_t*)(0x200 + k) = l;
	mov	a, _main_sloc0_1_0+0
	mov	p, a
	mov	a, #0x00
	add	a, #0x02
	mov	a, _main_sloc1_1_0+0
	idxm	p, a
;	main.c: 36: *(uint8_t*)(0x300 + l) = k;
	mov	a, _main_sloc1_1_0+0
	mov	p, a
	mov	a, #0x00
	add	a, #0x03
	mov	a, _main_sloc0_1_0+0
	idxm	p, a
;	main.c: 37: } while (k > 0);
	mov	a, _main_sloc0_1_0+0
	ceqsn	a, #0x00
	goto	00101$
;	main.c: 39: sum = 0;
	clear	_main_sloc2_1_0+0
;	main.c: 40: for (i = 0; i < a; ++i) {
	clear	p
00115$:
	mov	a, p
	sub	a, _main_PARM_1+0
	t1sn	f, c
	goto	00104$
;	main.c: 41: sum += b;
	mov	a, _main_PARM_2+0
	add	_main_sloc2_1_0+0, a
;	main.c: 40: for (i = 0; i < a; ++i) {
	inc	p
	goto	00115$
00104$:
;	main.c: 11: for (iter = 1;iter < 10;iter ++) {
	mov	a, #0x01
	mov	_main_sloc3_1_0+0, a
	clear	_main_sloc3_1_0+1
;	main.c: 13: for (i = 0; i <= size; i++) {
00132$:
	clear	_main_sloc4_1_0+0
	clear	_main_sloc4_1_0+1
00118$:
	mov	a, #0x58
	sub	a, _main_sloc4_1_0+0
	mov	a, #0x02
	subc	a, _main_sloc4_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00105$
;	main.c: 14: flags[i] = 1;
	mov	a, _main_sloc4_1_0+0
	mov	p, a
	mov	a, _main_sloc4_1_0+1
	add	a, #0x10
	mov	a, #0x01
	idxm	p, a
;	main.c: 13: for (i = 0; i <= size; i++) {
	inc	_main_sloc4_1_0+0
	addc	_main_sloc4_1_0+1
	goto	00118$
00105$:
;	main.c: 16: for (i = 0; i <= size; i++) {
	clear	_main_sloc5_1_0+0
	clear	_main_sloc5_1_0+1
00121$:
	mov	a, #0x58
	sub	a, _main_sloc5_1_0+0
	mov	a, #0x02
	subc	a, _main_sloc5_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00124$
;	main.c: 17: if (flags[i]) {
	mov	a, _main_sloc5_1_0+0
	mov	p, a
	mov	a, _main_sloc5_1_0+1
	add	a, #0x10
	call	__gptrget
	ceqsn	a, #0x00
	goto	00184$
	goto	00122$
00184$:
;	main.c: 18: prime = i + i + 3;
	mov	a, _main_sloc5_1_0+1
	mov	p, a
	mov	a, _main_sloc5_1_0+0
	sl	a
	slc	p
	add	a, #0x03
	mov	_main_sloc6_1_0+0, a
	mov	a, #0x00
	addc	a, p
	mov	_main_sloc6_1_0+1, a
;	main.c: 19: kv = 1 + prime;
	mov	a, _main_sloc6_1_0+0
	add	a, #0x01
	mov	_main_sloc7_1_0+0, a
	mov	a, _main_sloc6_1_0+1
	addc	a
	mov	_main_sloc7_1_0+1, a
;	main.c: 20: while (kv <= size) {
00106$:
	mov	a, #0x58
	sub	a, _main_sloc7_1_0+0
	mov	a, #0x02
	subc	a, _main_sloc7_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00122$
;	main.c: 21: flags[kv] = 0;
	mov	a, _main_sloc7_1_0+0
	mov	p, a
	mov	a, _main_sloc7_1_0+1
	add	a, #0x10
	mov	a, #0x00
	idxm	p, a
;	main.c: 22: kv += prime;
	mov	a, _main_sloc6_1_0+0
	add	_main_sloc7_1_0+0, a
	mov	a, _main_sloc6_1_0+1
	addc	_main_sloc7_1_0+1, a
	goto	00106$
;	main.c: 24: count = count + 1;
00122$:
;	main.c: 16: for (i = 0; i <= size; i++) {
	inc	_main_sloc5_1_0+0
	addc	_main_sloc5_1_0+1
	goto	00121$
00124$:
;	main.c: 11: for (iter = 1;iter < 10;iter ++) {
	inc	_main_sloc3_1_0+0
	addc	_main_sloc3_1_0+1
	mov	a, _main_sloc3_1_0+0
	sub	a, #0x0a
	mov	a, _main_sloc3_1_0+1
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00132$
;	main.c: 46: return sum;
	clear	p
	mov	a, _main_sloc2_1_0+0
;	main.c: 47: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
