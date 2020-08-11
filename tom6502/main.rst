                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mpdk13
                                      7 	
                                      8 
                                      9 ; default segment ordering in RAM for linker
                                     10 	.area DATA
                                     11 	.area OSEG (OVR,DATA)
                                     12 
                                     13 ;--------------------------------------------------------
                                     14 ; Public variables in this module
                                     15 ;--------------------------------------------------------
                                     16 	.globl _main
                                     17 	.globl _main_PARM_2
                                     18 	.globl _main_PARM_1
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG (ABS)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DATA
      000002                         28 _main_PARM_1:
      000002                         29 	.ds 1
      000003                         30 _main_PARM_2:
      000003                         31 	.ds 1
                                     32 ;--------------------------------------------------------
                                     33 ; overlayable items in ram 
                                     34 ;--------------------------------------------------------
                                     35 	.area	OSEG (OVR,DATA)
      000004                         36 _main_sloc0_1_0:
      000004                         37 	.ds 1
      000005                         38 _main_sloc1_1_0:
      000005                         39 	.ds 1
      000006                         40 _main_sloc2_1_0:
      000006                         41 	.ds 1
      000007                         42 _main_sloc3_1_0:
      000007                         43 	.ds 2
      000009                         44 _main_sloc4_1_0:
      000009                         45 	.ds 2
      00000B                         46 _main_sloc5_1_0:
      00000B                         47 	.ds 2
      00000D                         48 _main_sloc6_1_0:
      00000D                         49 	.ds 2
      00000F                         50 _main_sloc7_1_0:
      00000F                         51 	.ds 2
                                     52 ;--------------------------------------------------------
                                     53 ; Stack segment in internal ram 
                                     54 ;--------------------------------------------------------
                                     55 	.area	SSEG
      FFFFFF                         56 __start__stack:
      FFFFFF                         57 	.ds	1
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; absolute external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area DABS (ABS)
                                     63 ;--------------------------------------------------------
                                     64 ; interrupt vector 
                                     65 ;--------------------------------------------------------
                                     66 	.area HOME
      000022                         67 __interrupt_vect:
                                     68 	.area	HEADER (ABS)
      000020                         69 	.org	 0x0020
      000020 3B 00                   70 	reti
                                     71 ;--------------------------------------------------------
                                     72 ; global & static initialisations
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME
                                     75 	.area GSINIT
                                     76 	.area GSFINAL
                                     77 	.area GSINIT
                                     78 	.area	PREG (ABS)
      000000                         79 	.org 0x00
      000000                         80 p::
      000000                         81 	.ds 2
                                     82 	.area	HEADER (ABS)
      000000                         83 	.org 0x0000
      000000 00 00                   84 	nop
      000002 81 09                   85 	clear	p+1
      000004 04 17                   86 	mov	a, #s_OSEG
      000006 0E 10                   87 	add	a, #l_OSEG + 1
      000008 FE 14                   88 	and	a, #0xfe
      00000A 82 00                   89 	mov	sp, a
      00000C 9A 1C                   90 	call	__sdcc_external_startup
      00000E 12 18                   91 	goto	__sdcc_gs_init_startup
                                     92 	.area GSINIT
      000024                         93 __sdcc_gs_init_startup:
      000024                         94 __sdcc_init_data:
      000024 02 17                   95 	mov	a, #s_DATA
      000026 C0 05                   96 	mov	p, a
      000028 19 18                   97 	goto	00002$
      00002A                         98 00001$:
      00002A 00 17                   99 	mov	a, #0x00
      00002C E0 00                  100 	idxm	p, a
      00002E 00 09                  101 	inc	p
      000030 02 17                  102 	mov	a, #s_DATA
      000032                        103 00002$:
      000032 02 10                  104 	add	a, #l_DATA
      000034 80 0B                  105 	ceqsn	a, p
      000036 15 18                  106 	goto	00001$
                                    107 	.area GSFINAL
      000038 11 18                  108 	goto	__sdcc_program_startup
                                    109 ;--------------------------------------------------------
                                    110 ; Home
                                    111 ;--------------------------------------------------------
                                    112 	.area HOME
                                    113 	.area HOME
      000022                        114 __sdcc_program_startup:
      000022 1D 18                  115 	goto	_main
                                    116 ;	return from main will return to caller
                                    117 ;--------------------------------------------------------
                                    118 ; code
                                    119 ;--------------------------------------------------------
                                    120 	.area CODE
                                    121 ;	main.c: 30: int main(uint8_t a, uint8_t b) {
                                    122 ;	-----------------------------------------
                                    123 ;	 function main
                                    124 ;	-----------------------------------------
      00003A                        125 _main:
                                    126 ;	main.c: 32: do {
      00003A 84 09                  127 	clear	_main_sloc0_1_0+0
      00003C                        128 00101$:
                                    129 ;	main.c: 33: k--;
      00003C 44 09                  130 	dec	_main_sloc0_1_0+0
                                    131 ;	main.c: 34: uint8_t l = k + k;
      00003E C4 07                  132 	mov	a, _main_sloc0_1_0+0
      000040 C5 05                  133 	mov	_main_sloc1_1_0+0, a
      000042 C5 0A                  134 	sl	_main_sloc1_1_0+0
                                    135 ;	main.c: 35: *(uint8_t*)(0x200 + k) = l;
      000044 C4 07                  136 	mov	a, _main_sloc0_1_0+0
      000046 C0 05                  137 	mov	p, a
      000048 00 17                  138 	mov	a, #0x00
      00004A 02 10                  139 	add	a, #0x02
      00004C C5 07                  140 	mov	a, _main_sloc1_1_0+0
      00004E E0 00                  141 	idxm	p, a
                                    142 ;	main.c: 36: *(uint8_t*)(0x300 + l) = k;
      000050 C5 07                  143 	mov	a, _main_sloc1_1_0+0
      000052 C0 05                  144 	mov	p, a
      000054 00 17                  145 	mov	a, #0x00
      000056 03 10                  146 	add	a, #0x03
      000058 C4 07                  147 	mov	a, _main_sloc0_1_0+0
      00005A E0 00                  148 	idxm	p, a
                                    149 ;	main.c: 37: } while (k > 0);
      00005C C4 07                  150 	mov	a, _main_sloc0_1_0+0
      00005E 00 12                  151 	ceqsn	a, #0x00
      000060 1E 18                  152 	goto	00101$
                                    153 ;	main.c: 39: sum = 0;
      000062 86 09                  154 	clear	_main_sloc2_1_0+0
                                    155 ;	main.c: 40: for (i = 0; i < a; ++i) {
      000064 80 09                  156 	clear	p
      000066                        157 00115$:
      000066 C0 07                  158 	mov	a, p
      000068 42 06                  159 	sub	a, _main_PARM_1+0
      00006A 20 0D                  160 	t1sn	f, c
      00006C 3B 18                  161 	goto	00104$
                                    162 ;	main.c: 41: sum += b;
      00006E C3 07                  163 	mov	a, _main_PARM_2+0
      000070 06 04                  164 	add	_main_sloc2_1_0+0, a
                                    165 ;	main.c: 40: for (i = 0; i < a; ++i) {
      000072 00 09                  166 	inc	p
      000074 33 18                  167 	goto	00115$
      000076                        168 00104$:
                                    169 ;	main.c: 11: for (iter = 1;iter < 10;iter ++) {
      000076 01 17                  170 	mov	a, #0x01
      000078 C7 05                  171 	mov	_main_sloc3_1_0+0, a
      00007A 88 09                  172 	clear	_main_sloc3_1_0+1
                                    173 ;	main.c: 13: for (i = 0; i <= size; i++) {
      00007C                        174 00132$:
      00007C 89 09                  175 	clear	_main_sloc4_1_0+0
      00007E 8A 09                  176 	clear	_main_sloc4_1_0+1
      000080                        177 00118$:
      000080 58 17                  178 	mov	a, #0x58
      000082 49 06                  179 	sub	a, _main_sloc4_1_0+0
      000084 02 17                  180 	mov	a, #0x02
      000086 CA 06                  181 	subc	a, _main_sloc4_1_0+1
      000088 60 0C                  182 	t0sn	f, ov
      00008A 80 16                  183 	xor	a, #0x80
      00008C 1B 00                  184 	sl	a
      00008E 20 0C                  185 	t0sn	f, c
      000090 52 18                  186 	goto	00105$
                                    187 ;	main.c: 14: flags[i] = 1;
      000092 C9 07                  188 	mov	a, _main_sloc4_1_0+0
      000094 C0 05                  189 	mov	p, a
      000096 CA 07                  190 	mov	a, _main_sloc4_1_0+1
      000098 10 10                  191 	add	a, #0x10
      00009A 01 17                  192 	mov	a, #0x01
      00009C E0 00                  193 	idxm	p, a
                                    194 ;	main.c: 13: for (i = 0; i <= size; i++) {
      00009E 09 09                  195 	inc	_main_sloc4_1_0+0
      0000A0 0A 08                  196 	addc	_main_sloc4_1_0+1
      0000A2 40 18                  197 	goto	00118$
      0000A4                        198 00105$:
                                    199 ;	main.c: 16: for (i = 0; i <= size; i++) {
      0000A4 8B 09                  200 	clear	_main_sloc5_1_0+0
      0000A6 8C 09                  201 	clear	_main_sloc5_1_0+1
      0000A8                        202 00121$:
      0000A8 58 17                  203 	mov	a, #0x58
      0000AA 4B 06                  204 	sub	a, _main_sloc5_1_0+0
      0000AC 02 17                  205 	mov	a, #0x02
      0000AE CC 06                  206 	subc	a, _main_sloc5_1_0+1
      0000B0 60 0C                  207 	t0sn	f, ov
      0000B2 80 16                  208 	xor	a, #0x80
      0000B4 1B 00                  209 	sl	a
      0000B6 20 0C                  210 	t0sn	f, c
      0000B8 8C 18                  211 	goto	00124$
                                    212 ;	main.c: 17: if (flags[i]) {
      0000BA CB 07                  213 	mov	a, _main_sloc5_1_0+0
      0000BC C0 05                  214 	mov	p, a
      0000BE CC 07                  215 	mov	a, _main_sloc5_1_0+1
      0000C0 10 10                  216 	add	a, #0x10
      0000C2 9B 1C                  217 	call	__gptrget
      0000C4 00 12                  218 	ceqsn	a, #0x00
      0000C6 65 18                  219 	goto	00184$
      0000C8 89 18                  220 	goto	00122$
      0000CA                        221 00184$:
                                    222 ;	main.c: 18: prime = i + i + 3;
      0000CA CC 07                  223 	mov	a, _main_sloc5_1_0+1
      0000CC C0 05                  224 	mov	p, a
      0000CE CB 07                  225 	mov	a, _main_sloc5_1_0+0
      0000D0 1B 00                  226 	sl	a
      0000D2 40 0B                  227 	slc	p
      0000D4 03 10                  228 	add	a, #0x03
      0000D6 CD 05                  229 	mov	_main_sloc6_1_0+0, a
      0000D8 00 17                  230 	mov	a, #0x00
      0000DA 80 06                  231 	addc	a, p
      0000DC CE 05                  232 	mov	_main_sloc6_1_0+1, a
                                    233 ;	main.c: 19: kv = 1 + prime;
      0000DE CD 07                  234 	mov	a, _main_sloc6_1_0+0
      0000E0 01 10                  235 	add	a, #0x01
      0000E2 CF 05                  236 	mov	_main_sloc7_1_0+0, a
      0000E4 CE 07                  237 	mov	a, _main_sloc6_1_0+1
      0000E6 10 00                  238 	addc	a
      0000E8 D0 05                  239 	mov	_main_sloc7_1_0+1, a
                                    240 ;	main.c: 20: while (kv <= size) {
      0000EA                        241 00106$:
      0000EA 58 17                  242 	mov	a, #0x58
      0000EC 4F 06                  243 	sub	a, _main_sloc7_1_0+0
      0000EE 02 17                  244 	mov	a, #0x02
      0000F0 D0 06                  245 	subc	a, _main_sloc7_1_0+1
      0000F2 60 0C                  246 	t0sn	f, ov
      0000F4 80 16                  247 	xor	a, #0x80
      0000F6 1B 00                  248 	sl	a
      0000F8 20 0C                  249 	t0sn	f, c
      0000FA 89 18                  250 	goto	00122$
                                    251 ;	main.c: 21: flags[kv] = 0;
      0000FC CF 07                  252 	mov	a, _main_sloc7_1_0+0
      0000FE C0 05                  253 	mov	p, a
      000100 D0 07                  254 	mov	a, _main_sloc7_1_0+1
      000102 10 10                  255 	add	a, #0x10
      000104 00 17                  256 	mov	a, #0x00
      000106 E0 00                  257 	idxm	p, a
                                    258 ;	main.c: 22: kv += prime;
      000108 CD 07                  259 	mov	a, _main_sloc6_1_0+0
      00010A 0F 04                  260 	add	_main_sloc7_1_0+0, a
      00010C CE 07                  261 	mov	a, _main_sloc6_1_0+1
      00010E 90 04                  262 	addc	_main_sloc7_1_0+1, a
      000110 75 18                  263 	goto	00106$
                                    264 ;	main.c: 24: count = count + 1;
      000112                        265 00122$:
                                    266 ;	main.c: 16: for (i = 0; i <= size; i++) {
      000112 0B 09                  267 	inc	_main_sloc5_1_0+0
      000114 0C 08                  268 	addc	_main_sloc5_1_0+1
      000116 54 18                  269 	goto	00121$
      000118                        270 00124$:
                                    271 ;	main.c: 11: for (iter = 1;iter < 10;iter ++) {
      000118 07 09                  272 	inc	_main_sloc3_1_0+0
      00011A 08 08                  273 	addc	_main_sloc3_1_0+1
      00011C C7 07                  274 	mov	a, _main_sloc3_1_0+0
      00011E 0A 11                  275 	sub	a, #0x0a
      000120 C8 07                  276 	mov	a, _main_sloc3_1_0+1
      000122 11 00                  277 	subc	a
      000124 60 0C                  278 	t0sn	f, ov
      000126 80 16                  279 	xor	a, #0x80
      000128 1B 00                  280 	sl	a
      00012A 20 0C                  281 	t0sn	f, c
      00012C 3E 18                  282 	goto	00132$
                                    283 ;	main.c: 46: return sum;
      00012E 80 09                  284 	clear	p
      000130 C6 07                  285 	mov	a, _main_sloc2_1_0+0
                                    286 ;	main.c: 47: }
      000132 3A 00                  287 	ret
                                    288 	.area CODE
                                    289 	.area CONST
                                    290 	.area CABS (ABS)
