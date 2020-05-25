EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3000 1050 0    50   ~ 0
STACK: SRAM (2K x 16) with 1.5K unused
Wire Wire Line
	4100 1750 4150 1750
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J?
U 1 1 5ECB8E9C
P 10150 3000
AR Path="/5ECB8E9C" Ref="J?"  Part="1" 
AR Path="/5ECB89A1/5ECB8E9C" Ref="J8"  Part="1" 
F 0 "J8" H 10200 3517 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 10200 3426 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x09_P2.54mm_Vertical" H 10150 3000 50  0001 C CNN
F 3 "~" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
$Comp
L OpenTendo:2KB_SRAM U?
U 1 1 5ECB8EA2
P 3750 2300
AR Path="/5ECB8EA2" Ref="U?"  Part="1" 
AR Path="/5ECB89A1/5ECB8EA2" Ref="U10"  Part="1" 
F 0 "U10" H 3750 3115 50  0000 C CNN
F 1 "2KB_SRAM" H 3750 3024 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W10.16mm" H 3750 3100 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
$Comp
L OpenTendo:2KB_SRAM U?
U 1 1 5ECB8EA8
P 3750 4300
AR Path="/5ECB8EA8" Ref="U?"  Part="1" 
AR Path="/5ECB89A1/5ECB8EA8" Ref="U11"  Part="1" 
F 0 "U11" H 3750 5115 50  0000 C CNN
F 1 "2KB_SRAM" H 3750 5024 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W10.16mm" H 3750 5100 50  0001 C CNN
F 3 "" H 3500 5000 50  0001 C CNN
	1    3750 4300
	1    0    0    -1  
$EndComp
Entry Wire Line
	9850 2600 9950 2700
Entry Wire Line
	9850 2700 9950 2800
Entry Wire Line
	9850 2800 9950 2900
Entry Wire Line
	9850 2900 9950 3000
Entry Wire Line
	9850 3000 9950 3100
Entry Wire Line
	9850 3100 9950 3200
Entry Wire Line
	9850 3200 9950 3300
Entry Wire Line
	9850 3300 9950 3400
Entry Wire Line
	10450 2700 10550 2800
Entry Wire Line
	10450 2800 10550 2900
Entry Wire Line
	10450 2900 10550 3000
Entry Wire Line
	10450 3000 10550 3100
Entry Wire Line
	10450 3100 10550 3200
Entry Wire Line
	10450 3200 10550 3300
Entry Wire Line
	10450 3300 10550 3400
Entry Wire Line
	10450 3400 10550 3500
Wire Bus Line
	2250 3750 1600 3750
Connection ~ 2250 3750
Wire Bus Line
	5200 3750 5850 3750
Connection ~ 5200 3750
Entry Wire Line
	5100 2450 5200 2550
Entry Wire Line
	5100 2550 5200 2650
Entry Wire Line
	5100 2650 5200 2750
Entry Wire Line
	5100 2750 5200 2850
Entry Wire Line
	5100 2850 5200 2950
Entry Wire Line
	5100 2950 5200 3050
Entry Wire Line
	5100 3050 5200 3150
Entry Wire Line
	5100 3150 5200 3250
Entry Wire Line
	5100 4450 5200 4550
Entry Wire Line
	5100 4550 5200 4650
Entry Wire Line
	5100 4650 5200 4750
Entry Wire Line
	5100 4750 5200 4850
Entry Wire Line
	5100 4850 5200 4950
Entry Wire Line
	5100 4950 5200 5050
Entry Wire Line
	5100 5050 5200 5150
Entry Wire Line
	5100 5150 5200 5250
Wire Wire Line
	5100 2450 4150 2450
Wire Wire Line
	4150 2550 5100 2550
Wire Wire Line
	5100 2650 4150 2650
Wire Wire Line
	4150 2750 5100 2750
Wire Wire Line
	5100 2850 4150 2850
Wire Wire Line
	5100 4450 4150 4450
Wire Wire Line
	4150 4550 5100 4550
Wire Wire Line
	5100 4650 4150 4650
Wire Wire Line
	4150 4750 5100 4750
Wire Wire Line
	5100 4850 4150 4850
Wire Wire Line
	5100 4950 3000 4950
Wire Wire Line
	3000 4750 3350 4750
Wire Wire Line
	3350 4650 2900 4650
Wire Wire Line
	2900 4650 2900 5050
Wire Wire Line
	2900 5050 5100 5050
Wire Wire Line
	5100 5150 2800 5150
Wire Wire Line
	2800 5150 2800 4550
Wire Wire Line
	2800 4550 3350 4550
Wire Wire Line
	3350 4450 2350 4450
Wire Wire Line
	3350 4350 2350 4350
Wire Wire Line
	3350 4250 2350 4250
Wire Wire Line
	3350 4150 2350 4150
Wire Wire Line
	3350 4050 2350 4050
Wire Wire Line
	3350 3950 2350 3950
Wire Wire Line
	3350 3850 2350 3850
Wire Wire Line
	3350 3750 2350 3750
Wire Wire Line
	3000 4950 3000 4750
Wire Wire Line
	3350 2750 3000 2750
Wire Wire Line
	3000 2750 3000 2950
Wire Wire Line
	3000 2950 5100 2950
Wire Wire Line
	5100 3050 2900 3050
Wire Wire Line
	2900 3050 2900 2650
Wire Wire Line
	2900 2650 3350 2650
Wire Wire Line
	3350 2550 2800 2550
Wire Wire Line
	2800 2550 2800 3150
Wire Wire Line
	2800 3150 5100 3150
Wire Wire Line
	3350 2450 2350 2450
Wire Wire Line
	3350 2350 2350 2350
Wire Wire Line
	3350 2250 2350 2250
Wire Wire Line
	3350 2150 2350 2150
Wire Wire Line
	3350 2050 2350 2050
Wire Wire Line
	3350 1950 2350 1950
Wire Wire Line
	3350 1850 2350 1850
Wire Wire Line
	3350 1750 2350 1750
Entry Wire Line
	2250 1650 2350 1750
Entry Wire Line
	2250 1750 2350 1850
Entry Wire Line
	2250 1850 2350 1950
Entry Wire Line
	2250 1950 2350 2050
Entry Wire Line
	2250 2150 2350 2250
Entry Wire Line
	2250 2050 2350 2150
Entry Wire Line
	2250 2250 2350 2350
Entry Wire Line
	2250 2350 2350 2450
Entry Wire Line
	2250 3650 2350 3750
Entry Wire Line
	2250 3750 2350 3850
Entry Wire Line
	2250 3850 2350 3950
Entry Wire Line
	2250 3950 2350 4050
Entry Wire Line
	2250 4050 2350 4150
Entry Wire Line
	2250 4150 2350 4250
Entry Wire Line
	2250 4250 2350 4350
Entry Wire Line
	2250 4350 2350 4450
Text GLabel 1600 3750 0    50   Input ~ 0
stack[0..15]
Text GLabel 5850 3750 2    50   Output ~ 0
stack_bus[0..15]
Text Label 4600 2450 2    50   ~ 0
stack_bus7
Text Label 4600 2550 2    50   ~ 0
stack_bus6
Text Label 4600 2650 2    50   ~ 0
stack_bus5
Text Label 4600 2750 2    50   ~ 0
stack_bus4
Text Label 4600 2850 2    50   ~ 0
stack_bus3
Text Label 4600 2950 2    50   ~ 0
stack_bus2
Text Label 4600 3050 2    50   ~ 0
stack_bus1
Text Label 4600 3150 2    50   ~ 0
stack_bus0
Text Label 4600 4450 2    50   ~ 0
stack_bus15
Text Label 4600 4550 2    50   ~ 0
stack_bus14
Text Label 4600 4650 2    50   ~ 0
stack_bus13
Text Label 4600 4750 2    50   ~ 0
stack_bus12
Text Label 4600 4850 2    50   ~ 0
stack_bus11
Text Label 4600 4950 2    50   ~ 0
stack_bus10
Text Label 4600 5050 2    50   ~ 0
stack_bus9
Text Label 4600 5150 2    50   ~ 0
stack_bus8
Text Label 2400 1750 0    50   ~ 0
stack7
Text Label 2400 1850 0    50   ~ 0
stack6
Text Label 2400 1950 0    50   ~ 0
stack5
Text Label 2400 2050 0    50   ~ 0
stack4
Text Label 2400 2150 0    50   ~ 0
stack3
Text Label 2400 2250 0    50   ~ 0
stack2
Text Label 2400 2350 0    50   ~ 0
stack1
Text Label 2400 2450 0    50   ~ 0
stack0
Text Label 2400 3750 0    50   ~ 0
stack15
Text Label 2400 3850 0    50   ~ 0
stack14
Text Label 2400 3950 0    50   ~ 0
stack13
Text Label 2400 4050 0    50   ~ 0
stack12
Text Label 2400 4150 0    50   ~ 0
stack11
Text Label 2400 4250 0    50   ~ 0
stack10
Text Label 2400 4350 0    50   ~ 0
stack9
Text Label 2400 4450 0    50   ~ 0
stack8
Wire Wire Line
	4150 1850 4550 1850
Text GLabel 4550 1850 2    50   Output ~ 0
stack_a8
Wire Wire Line
	4150 3850 4550 3850
Text GLabel 4550 3850 2    50   Output ~ 0
stack_a8
Wire Bus Line
	2250 3750 2250 5650
Wire Bus Line
	2250 1550 2250 3750
Wire Bus Line
	5200 3750 5200 5650
Wire Bus Line
	5200 1500 5200 3750
$EndSCHEMATC
