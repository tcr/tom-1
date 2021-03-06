EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 500  1250 800  2200
U 5EEB51A0
F0 "Power/Clock" 50
F1 "tom-1-clock.sch" 50
F2 "clk" O R 1300 1400 50 
F3 "~clk" O R 1300 1550 50 
$EndSheet
$Sheet
S 7150 1600 1450 600 
U 5EC259CE
F0 "JUMP / CHAR" 50
F1 "tom-1-lcd.sch" 50
F2 "tos[0..15]" I L 7150 1850 50 
F3 "~jump0" O R 8600 1850 50 
$EndSheet
$Sheet
S 7150 4400 1450 1050
U 5EC3E773
F0 "NAND" 50
F1 "tom-1-nand.sch" 50
F2 "tos_bus[0..15]" O R 8600 4900 50 
F3 "stack[0..15]" I L 7150 5100 50 
F4 "tos[0..15]" I L 7150 4750 50 
F5 "enable" I L 7150 5250 50 
$EndSheet
$Sheet
S 9450 4600 1500 850 
U 5ECB2A45
F0 "I/O" 50
F1 "tom-1-io.sch" 50
F2 "stack_bus[0..15]" I L 9450 4900 50 
F3 "a_to_b" I L 9450 5100 50 
F4 "chip_enable" I L 9450 5250 50 
$EndSheet
$Sheet
S 3750 5200 1450 600 
U 5ECB6025
F0 "TOS" 50
F1 "tom-1-tos.sch" 50
F2 "tos_bus[0..15]" I L 3750 5400 50 
F3 "tos[0..15]" O R 5200 5400 50 
F4 "clk" I L 3750 5550 50 
F5 "~clock_enable" I L 3750 5700 50 
$EndSheet
$Sheet
S 7150 2550 1450 1100
U 5ECBA3C5
F0 "ADD" 50
F1 "tom-1-add.sch" 50
F2 "tos[0..15]" I L 7150 2950 50 
F3 "stack[0..15]" I L 7150 3200 50 
F4 "tos_bus[0..15]" O R 8600 2950 50 
F5 "enable" I L 7150 2700 50 
$EndSheet
$Sheet
S 4750 1500 1450 850 
U 5ECBD6DC
F0 "ROM" 50
F1 "tom-1-rom.sch" 50
F2 "pc[0..15]" I L 4750 1750 50 
F3 "rom[0..15]" O R 6200 1900 50 
F4 "~output_enable~" I L 4750 2000 50 
F5 "~chip_enable~" I L 4750 2150 50 
$EndSheet
$Sheet
S 3000 1500 1450 800 
U 5ECC038F
F0 "Program Counter" 50
F1 "tom-1-pc.sch" 50
F2 "up" I L 3000 1900 50 
F3 "rom[0..15]" I L 3000 1700 50 
F4 "pc[0..15]" O R 4450 1750 50 
F5 "~load" I L 3000 2100 50 
$EndSheet
$Comp
L Device:C C5
U 1 1 5ED611CF
P 5500 7350
AR Path="/5ED611CF" Ref="C5"  Part="1" 
AR Path="/5EEB51A0/5ED611CF" Ref="C?"  Part="1" 
F 0 "C5" H 5385 7304 50  0000 R CNN
F 1 "C" H 5385 7395 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5538 7200 50  0001 C CNN
F 3 "~" H 5500 7350 50  0001 C CNN
	1    5500 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5ED611D5
P 5200 7350
AR Path="/5ED611D5" Ref="C6"  Part="1" 
AR Path="/5EEB51A0/5ED611D5" Ref="C?"  Part="1" 
F 0 "C6" H 5085 7304 50  0000 R CNN
F 1 "C" H 5085 7395 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5238 7200 50  0001 C CNN
F 3 "~" H 5200 7350 50  0001 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5ED611DB
P 4900 7350
AR Path="/5ED611DB" Ref="C7"  Part="1" 
AR Path="/5EEB51A0/5ED611DB" Ref="C?"  Part="1" 
F 0 "C7" H 4785 7304 50  0000 R CNN
F 1 "C" H 4785 7395 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4938 7200 50  0001 C CNN
F 3 "~" H 4900 7350 50  0001 C CNN
	1    4900 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5ED611E1
P 4600 7350
AR Path="/5ED611E1" Ref="C8"  Part="1" 
AR Path="/5EEB51A0/5ED611E1" Ref="C?"  Part="1" 
F 0 "C8" H 4485 7304 50  0000 R CNN
F 1 "C" H 4485 7395 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4638 7200 50  0001 C CNN
F 3 "~" H 4600 7350 50  0001 C CNN
	1    4600 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7500 4900 7500
Connection ~ 5200 7500
Wire Wire Line
	5200 7500 5500 7500
Connection ~ 4900 7500
Wire Wire Line
	4900 7500 5200 7500
Wire Wire Line
	5500 7200 5200 7200
Connection ~ 5200 7200
Wire Wire Line
	5200 7200 4900 7200
Connection ~ 4900 7200
Wire Wire Line
	4900 7200 4600 7200
$Comp
L Device:C C10
U 1 1 5ED611F1
P 4300 7350
AR Path="/5ED611F1" Ref="C10"  Part="1" 
AR Path="/5EEB51A0/5ED611F1" Ref="C?"  Part="1" 
F 0 "C10" H 4415 7396 50  0000 L CNN
F 1 "C" H 4415 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4338 7200 50  0001 C CNN
F 3 "~" H 4300 7350 50  0001 C CNN
	1    4300 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5ED611F7
P 4000 7350
AR Path="/5ED611F7" Ref="C12"  Part="1" 
AR Path="/5EEB51A0/5ED611F7" Ref="C?"  Part="1" 
F 0 "C12" H 4115 7396 50  0000 L CNN
F 1 "C" H 4115 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4038 7200 50  0001 C CNN
F 3 "~" H 4000 7350 50  0001 C CNN
	1    4000 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C15
U 1 1 5ED611FD
P 3650 7350
AR Path="/5ED611FD" Ref="C15"  Part="1" 
AR Path="/5EEB51A0/5ED611FD" Ref="C?"  Part="1" 
F 0 "C15" H 3765 7396 50  0000 L CNN
F 1 "C" H 3765 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3688 7200 50  0001 C CNN
F 3 "~" H 3650 7350 50  0001 C CNN
	1    3650 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C17
U 1 1 5ED61203
P 3300 7350
AR Path="/5ED61203" Ref="C17"  Part="1" 
AR Path="/5EEB51A0/5ED61203" Ref="C?"  Part="1" 
F 0 "C17" H 3415 7396 50  0000 L CNN
F 1 "C" H 3415 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3338 7200 50  0001 C CNN
F 3 "~" H 3300 7350 50  0001 C CNN
	1    3300 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C19
U 1 1 5ED61209
P 3000 7350
AR Path="/5ED61209" Ref="C19"  Part="1" 
AR Path="/5EEB51A0/5ED61209" Ref="C?"  Part="1" 
F 0 "C19" H 3115 7396 50  0000 L CNN
F 1 "C" H 3115 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3038 7200 50  0001 C CNN
F 3 "~" H 3000 7350 50  0001 C CNN
	1    3000 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C21
U 1 1 5ED6120F
P 2750 7350
AR Path="/5ED6120F" Ref="C21"  Part="1" 
AR Path="/5EEB51A0/5ED6120F" Ref="C?"  Part="1" 
F 0 "C21" H 2865 7396 50  0000 L CNN
F 1 "C" H 2865 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2788 7200 50  0001 C CNN
F 3 "~" H 2750 7350 50  0001 C CNN
	1    2750 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C23
U 1 1 5ED61215
P 2500 7350
AR Path="/5ED61215" Ref="C23"  Part="1" 
AR Path="/5EEB51A0/5ED61215" Ref="C?"  Part="1" 
F 0 "C23" H 2615 7396 50  0000 L CNN
F 1 "C" H 2615 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2538 7200 50  0001 C CNN
F 3 "~" H 2500 7350 50  0001 C CNN
	1    2500 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 7500 2750 7500
Connection ~ 4600 7500
Connection ~ 4300 7500
Wire Wire Line
	4300 7500 4600 7500
Connection ~ 4000 7500
Wire Wire Line
	4000 7500 4300 7500
Connection ~ 3650 7500
Wire Wire Line
	3650 7500 4000 7500
Connection ~ 3300 7500
Wire Wire Line
	3300 7500 3650 7500
Connection ~ 3000 7500
Wire Wire Line
	3000 7500 3300 7500
Connection ~ 2750 7500
Wire Wire Line
	2750 7500 3000 7500
Wire Wire Line
	4600 7200 4300 7200
Connection ~ 4600 7200
Connection ~ 4300 7200
Wire Wire Line
	4300 7200 4000 7200
Connection ~ 4000 7200
Wire Wire Line
	4000 7200 3650 7200
Connection ~ 3650 7200
Wire Wire Line
	3650 7200 3300 7200
Connection ~ 3300 7200
Wire Wire Line
	3300 7200 3000 7200
Connection ~ 3000 7200
Wire Wire Line
	3000 7200 2750 7200
Connection ~ 2750 7200
Wire Wire Line
	2750 7200 2500 7200
$Comp
L Device:C C25
U 1 1 5ED61237
P 2200 7350
AR Path="/5ED61237" Ref="C25"  Part="1" 
AR Path="/5EEB51A0/5ED61237" Ref="C?"  Part="1" 
F 0 "C25" H 2315 7396 50  0000 L CNN
F 1 "C" H 2315 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2238 7200 50  0001 C CNN
F 3 "~" H 2200 7350 50  0001 C CNN
	1    2200 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C27
U 1 1 5ED6123D
P 1950 7350
AR Path="/5ED6123D" Ref="C27"  Part="1" 
AR Path="/5EEB51A0/5ED6123D" Ref="C?"  Part="1" 
F 0 "C27" H 2065 7396 50  0000 L CNN
F 1 "C" H 2065 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1988 7200 50  0001 C CNN
F 3 "~" H 1950 7350 50  0001 C CNN
	1    1950 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C29
U 1 1 5ED61243
P 1750 7350
AR Path="/5ED61243" Ref="C29"  Part="1" 
AR Path="/5EEB51A0/5ED61243" Ref="C?"  Part="1" 
F 0 "C29" H 1865 7396 50  0000 L CNN
F 1 "C" H 1865 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1788 7200 50  0001 C CNN
F 3 "~" H 1750 7350 50  0001 C CNN
	1    1750 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5ED61249
P 5750 7350
AR Path="/5ED61249" Ref="C4"  Part="1" 
AR Path="/5EEB51A0/5ED61249" Ref="C?"  Part="1" 
F 0 "C4" H 5865 7396 50  0000 L CNN
F 1 "C" H 5865 7305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5788 7200 50  0001 C CNN
F 3 "~" H 5750 7350 50  0001 C CNN
	1    5750 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5ED6124F
P 4550 6700
AR Path="/5ED6124F" Ref="C9"  Part="1" 
AR Path="/5EEB51A0/5ED6124F" Ref="C?"  Part="1" 
F 0 "C9" H 4665 6746 50  0000 L CNN
F 1 "C" H 4665 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4588 6550 50  0001 C CNN
F 3 "~" H 4550 6700 50  0001 C CNN
	1    4550 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5ED61255
P 4300 6700
AR Path="/5ED61255" Ref="C11"  Part="1" 
AR Path="/5EEB51A0/5ED61255" Ref="C?"  Part="1" 
F 0 "C11" H 4415 6746 50  0000 L CNN
F 1 "C" H 4415 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4338 6550 50  0001 C CNN
F 3 "~" H 4300 6700 50  0001 C CNN
	1    4300 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 5ED6125B
P 4000 6700
AR Path="/5ED6125B" Ref="C13"  Part="1" 
AR Path="/5EEB51A0/5ED6125B" Ref="C?"  Part="1" 
F 0 "C13" H 4115 6746 50  0000 L CNN
F 1 "C" H 4115 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4038 6550 50  0001 C CNN
F 3 "~" H 4000 6700 50  0001 C CNN
	1    4000 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 5ED61261
P 3750 6700
AR Path="/5ED61261" Ref="C14"  Part="1" 
AR Path="/5EEB51A0/5ED61261" Ref="C?"  Part="1" 
F 0 "C14" H 3865 6746 50  0000 L CNN
F 1 "C" H 3865 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3788 6550 50  0001 C CNN
F 3 "~" H 3750 6700 50  0001 C CNN
	1    3750 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5ED61267
P 3450 6700
AR Path="/5ED61267" Ref="C16"  Part="1" 
AR Path="/5EEB51A0/5ED61267" Ref="C?"  Part="1" 
F 0 "C16" H 3565 6746 50  0000 L CNN
F 1 "C" H 3565 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3488 6550 50  0001 C CNN
F 3 "~" H 3450 6700 50  0001 C CNN
	1    3450 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C18
U 1 1 5ED6126D
P 3200 6700
AR Path="/5ED6126D" Ref="C18"  Part="1" 
AR Path="/5EEB51A0/5ED6126D" Ref="C?"  Part="1" 
F 0 "C18" H 3315 6746 50  0000 L CNN
F 1 "C" H 3315 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3238 6550 50  0001 C CNN
F 3 "~" H 3200 6700 50  0001 C CNN
	1    3200 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C20
U 1 1 5ED61273
P 2900 6700
AR Path="/5ED61273" Ref="C20"  Part="1" 
AR Path="/5EEB51A0/5ED61273" Ref="C?"  Part="1" 
F 0 "C20" H 3015 6746 50  0000 L CNN
F 1 "C" H 3015 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2938 6550 50  0001 C CNN
F 3 "~" H 2900 6700 50  0001 C CNN
	1    2900 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C22
U 1 1 5ED61279
P 2700 6700
AR Path="/5ED61279" Ref="C22"  Part="1" 
AR Path="/5EEB51A0/5ED61279" Ref="C?"  Part="1" 
F 0 "C22" H 2815 6746 50  0000 L CNN
F 1 "C" H 2815 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2738 6550 50  0001 C CNN
F 3 "~" H 2700 6700 50  0001 C CNN
	1    2700 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C24
U 1 1 5ED6127F
P 2400 6700
AR Path="/5ED6127F" Ref="C24"  Part="1" 
AR Path="/5EEB51A0/5ED6127F" Ref="C?"  Part="1" 
F 0 "C24" H 2515 6746 50  0000 L CNN
F 1 "C" H 2515 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2438 6550 50  0001 C CNN
F 3 "~" H 2400 6700 50  0001 C CNN
	1    2400 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C26
U 1 1 5ED61285
P 2100 6700
AR Path="/5ED61285" Ref="C26"  Part="1" 
AR Path="/5EEB51A0/5ED61285" Ref="C?"  Part="1" 
F 0 "C26" H 2215 6746 50  0000 L CNN
F 1 "C" H 2215 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2138 6550 50  0001 C CNN
F 3 "~" H 2100 6700 50  0001 C CNN
	1    2100 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C28
U 1 1 5ED6128B
P 1800 6700
AR Path="/5ED6128B" Ref="C28"  Part="1" 
AR Path="/5EEB51A0/5ED6128B" Ref="C?"  Part="1" 
F 0 "C28" H 1915 6746 50  0000 L CNN
F 1 "C" H 1915 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1838 6550 50  0001 C CNN
F 3 "~" H 1800 6700 50  0001 C CNN
	1    1800 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 7200 5750 7200
Connection ~ 5500 7200
Connection ~ 5750 7200
Wire Wire Line
	5750 7200 6050 7200
Wire Wire Line
	5500 7500 5750 7500
Connection ~ 5500 7500
Wire Wire Line
	2500 7500 2200 7500
Connection ~ 2500 7500
Connection ~ 2200 7500
Wire Wire Line
	2200 7500 1950 7500
Connection ~ 1950 7500
Wire Wire Line
	1950 7500 1750 7500
Connection ~ 1750 7500
Wire Wire Line
	1750 7500 1450 7500
Wire Wire Line
	2500 7200 2200 7200
Connection ~ 2500 7200
Connection ~ 2200 7200
Wire Wire Line
	2200 7200 1950 7200
Connection ~ 1950 7200
Wire Wire Line
	1950 7200 1750 7200
Wire Wire Line
	1450 6850 1800 6850
Connection ~ 4300 6850
Wire Wire Line
	4300 6850 4550 6850
Connection ~ 4000 6850
Wire Wire Line
	4000 6850 4300 6850
Connection ~ 3750 6850
Wire Wire Line
	3750 6850 4000 6850
Connection ~ 3450 6850
Wire Wire Line
	3450 6850 3750 6850
Connection ~ 3200 6850
Wire Wire Line
	3200 6850 3450 6850
Connection ~ 2900 6850
Wire Wire Line
	2900 6850 3200 6850
Connection ~ 2700 6850
Wire Wire Line
	2700 6850 2900 6850
Connection ~ 2400 6850
Wire Wire Line
	2400 6850 2700 6850
Connection ~ 2100 6850
Wire Wire Line
	2100 6850 2400 6850
Connection ~ 1800 6850
Wire Wire Line
	1800 6850 2100 6850
Wire Wire Line
	4850 6550 4550 6550
Connection ~ 4550 6550
Wire Wire Line
	4550 6550 4300 6550
Connection ~ 4300 6550
Wire Wire Line
	4300 6550 4000 6550
Connection ~ 4000 6550
Wire Wire Line
	4000 6550 3750 6550
Connection ~ 3750 6550
Wire Wire Line
	3750 6550 3450 6550
Connection ~ 3450 6550
Wire Wire Line
	3450 6550 3200 6550
Connection ~ 3200 6550
Wire Wire Line
	3200 6550 2900 6550
Connection ~ 2900 6550
Wire Wire Line
	2900 6550 2700 6550
Connection ~ 2700 6550
Wire Wire Line
	2700 6550 2400 6550
Connection ~ 2400 6550
Wire Wire Line
	2400 6550 2100 6550
Connection ~ 2100 6550
Wire Wire Line
	2100 6550 1800 6550
$Comp
L power:VCC #PWR0123
U 1 1 5ED612D7
P 1450 7500
AR Path="/5ED612D7" Ref="#PWR0123"  Part="1" 
AR Path="/5EEB51A0/5ED612D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 1450 7350 50  0001 C CNN
F 1 "VCC" H 1465 7673 50  0000 C CNN
F 2 "" H 1450 7500 50  0001 C CNN
F 3 "" H 1450 7500 50  0001 C CNN
	1    1450 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0124
U 1 1 5ED612DD
P 1450 6850
AR Path="/5ED612DD" Ref="#PWR0124"  Part="1" 
AR Path="/5EEB51A0/5ED612DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 1450 6700 50  0001 C CNN
F 1 "VCC" H 1465 7023 50  0000 C CNN
F 2 "" H 1450 6850 50  0001 C CNN
F 3 "" H 1450 6850 50  0001 C CNN
	1    1450 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 5ED612E3
P 6050 7200
AR Path="/5ED612E3" Ref="#PWR0125"  Part="1" 
AR Path="/5EEB51A0/5ED612E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 6050 6950 50  0001 C CNN
F 1 "GNDREF" H 6055 7027 50  0000 C CNN
F 2 "" H 6050 7200 50  0001 C CNN
F 3 "" H 6050 7200 50  0001 C CNN
	1    6050 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0126
U 1 1 5ED612E9
P 4850 6550
AR Path="/5ED612E9" Ref="#PWR0126"  Part="1" 
AR Path="/5EEB51A0/5ED612E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 4850 6300 50  0001 C CNN
F 1 "GNDREF" H 4855 6377 50  0000 C CNN
F 2 "" H 4850 6550 50  0001 C CNN
F 3 "" H 4850 6550 50  0001 C CNN
	1    4850 6550
	0    -1   -1   0   
$EndComp
$Sheet
S 9450 2600 1450 1150
U 5EC4D7B2
F0 "RAM" 50
F1 "tom-1-ram.sch" 50
F2 "tos_bus[0..15]" O L 9450 2950 50 
F3 "stack_bus[0..15]" I R 10900 3150 50 
F4 "~write_enable~" I L 9450 3150 50 
F5 "~output_enable~" I L 9450 3300 50 
F6 "~chip_enable~" I L 9450 3450 50 
$EndSheet
$Sheet
S 4750 3350 1450 1050
U 5ECB89A1
F0 "Stack" 50
F1 "tom-1-stack.sch" 50
F2 "a8" I L 4750 3550 50 
F3 "stack_bus[0..15]" O R 6200 3800 50 
F4 "stack[0..7]" I L 4750 3800 50 
F5 "~write_enable" I L 4750 4000 50 
F6 "~output_enable" I L 4750 4150 50 
F7 "~chip_select" I L 4750 4300 50 
$EndSheet
Wire Bus Line
	8600 2950 8850 2950
Wire Bus Line
	9050 4000 11150 4000
Wire Bus Line
	11150 4000 11150 3150
Wire Bus Line
	11150 3150 10900 3150
Wire Bus Line
	7150 2950 6500 2950
Wire Bus Line
	6500 4750 7150 4750
Connection ~ 6500 2950
Wire Bus Line
	6950 3200 7150 3200
Wire Bus Line
	7150 5100 6950 5100
Wire Bus Line
	6500 1850 7150 1850
Wire Bus Line
	6950 5650 9050 5650
Wire Bus Line
	9450 4900 9050 4900
Connection ~ 8850 2950
Wire Bus Line
	8850 2950 9450 2950
Wire Bus Line
	3300 5400 3750 5400
Wire Bus Line
	6500 1850 6500 2950
Wire Bus Line
	5200 5400 6500 5400
Wire Bus Line
	4450 1750 4750 1750
Wire Bus Line
	6200 1900 6400 1900
Wire Bus Line
	6400 1900 6400 1150
Wire Bus Line
	6400 1150 2800 1150
Wire Bus Line
	2800 1150 2800 1700
Wire Bus Line
	2800 1700 3000 1700
Wire Wire Line
	8600 1850 9000 1850
Wire Wire Line
	9000 1850 9000 1000
Wire Wire Line
	2650 1000 2650 2100
Wire Wire Line
	2650 2100 3000 2100
Wire Bus Line
	8850 6100 3300 6100
Wire Bus Line
	3300 6100 3300 5400
Connection ~ 9050 4900
Wire Bus Line
	9050 4900 9050 5650
Wire Bus Line
	9050 4000 9050 4900
Wire Bus Line
	4750 3800 4450 3800
Wire Bus Line
	6200 3800 6950 3800
Wire Bus Line
	6950 3200 6950 3800
Wire Wire Line
	1750 1550 1600 1550
$Sheet
S 1750 1250 800  2200
U 5F194744
F0 "Control" 50
F1 "tom-1-ctrl.sch" 50
F2 "output_enable" I L 1750 1400 50 
F3 "latch_enable" I L 1750 1550 50 
$EndSheet
Wire Wire Line
	9000 1000 2650 1000
Connection ~ 6950 3800
Wire Wire Line
	7150 2700 2750 2700
Connection ~ 6500 4750
Wire Bus Line
	6500 4750 6500 5400
Connection ~ 6950 5100
Wire Bus Line
	6950 5100 6950 5650
Wire Bus Line
	6500 2950 6500 4750
Wire Bus Line
	6950 3800 6950 5100
Wire Wire Line
	3750 5550 1600 5550
Wire Wire Line
	1600 5550 1600 1550
Connection ~ 1600 1550
Wire Wire Line
	1600 1550 1300 1550
Wire Wire Line
	3000 1900 2900 1900
Wire Wire Line
	2900 1900 2900 2300
Wire Wire Line
	2900 2300 2750 2300
Wire Wire Line
	4750 2000 4550 2000
Wire Wire Line
	4550 2000 4550 2450
Wire Wire Line
	4550 2450 2750 2450
Wire Wire Line
	4750 2150 4650 2150
Wire Wire Line
	4650 2150 4650 2550
Wire Wire Line
	4650 2550 2750 2550
Wire Wire Line
	4750 3550 4700 3550
Wire Wire Line
	4700 3550 4700 2750
Wire Wire Line
	4700 2750 2750 2750
Wire Wire Line
	4750 4000 4650 4000
Wire Wire Line
	4650 4000 4650 2800
Wire Wire Line
	4650 2800 2750 2800
Wire Wire Line
	4750 4150 4600 4150
Wire Wire Line
	4600 4150 4600 2850
Wire Wire Line
	2750 2850 4600 2850
Wire Wire Line
	4750 4300 4550 4300
Wire Wire Line
	4550 4300 4550 2900
Wire Wire Line
	4550 2900 2750 2900
Wire Wire Line
	3750 5700 3000 5700
Wire Wire Line
	9450 3150 8700 3150
Wire Wire Line
	8700 3150 8700 3900
Wire Wire Line
	8700 3900 6600 3900
Wire Wire Line
	6600 3900 6600 4550
Wire Wire Line
	6600 4550 2850 4550
Wire Wire Line
	9450 3300 8750 3300
Wire Wire Line
	8750 3300 8750 3950
Wire Wire Line
	8750 3950 6650 3950
Wire Wire Line
	6650 3950 6650 4600
Wire Wire Line
	6650 4600 2850 4600
Wire Wire Line
	9450 3450 8800 3450
Wire Wire Line
	8800 3450 8800 4000
Wire Wire Line
	8800 4000 6700 4000
Wire Wire Line
	6700 4000 6700 4650
Wire Wire Line
	6700 4650 2850 4650
Wire Wire Line
	3000 5700 3000 5100
Wire Wire Line
	3000 5100 2850 5100
Wire Wire Line
	7150 5250 6700 5250
Wire Wire Line
	6700 5250 6700 4900
Wire Wire Line
	6700 4900 2850 4900
Wire Wire Line
	3000 3250 2900 3250
Wire Wire Line
	2900 3250 2900 3050
Wire Wire Line
	2900 3050 2750 3050
Wire Wire Line
	3000 3450 2850 3450
Wire Wire Line
	2850 3450 2850 3100
Wire Wire Line
	2850 3100 2750 3100
Wire Bus Line
	8600 4900 8850 4900
Connection ~ 8850 4900
Wire Bus Line
	8850 4900 8850 6100
Wire Bus Line
	8850 2950 8850 4900
$Sheet
S 3000 3050 1450 1350
U 5EC5C6EC
F0 "D/R Registers" 50
F1 "tom-1-dr_registers.sch" 50
F2 "stack[0..7]" O R 4450 3800 50 
F3 "~d_enable" I L 3000 3250 50 
F4 "~r_enable" I L 3000 3450 50 
F5 "d_U_~D" I L 3000 3650 50 
F6 "r_U_~D" I L 3000 3750 50 
F7 "clk" I L 3000 3850 50 
F8 "d_rck" I L 3000 3950 50 
F9 "r_rck" I L 3000 4050 50 
F10 "~d_output_enable" I L 3000 4150 50 
F11 "~r_output_enable" I L 3000 4250 50 
$EndSheet
Wire Wire Line
	9450 5100 9150 5100
Wire Wire Line
	9150 5100 9150 6000
Wire Wire Line
	9150 6000 2850 6000
Wire Wire Line
	9450 5250 9250 5250
Wire Wire Line
	9250 5250 9250 6050
Wire Wire Line
	9250 6050 2850 6050
Wire Wire Line
	3000 3650 2750 3650
Wire Wire Line
	3000 3750 2750 3750
Wire Wire Line
	3000 3850 2750 3850
Wire Wire Line
	3000 3950 2750 3950
Wire Wire Line
	3000 4050 2750 4050
Wire Wire Line
	3000 4150 2750 4150
Wire Wire Line
	3000 4250 2750 4250
$EndSCHEMATC
