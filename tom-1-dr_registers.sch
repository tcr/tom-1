EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic_MountingPin:Conn_02x08_Top_Bottom_MountingPin J?
U 1 1 5EC5EA21
P 10400 1400
AR Path="/5EC5EA21" Ref="J?"  Part="1" 
AR Path="/5EC5C6EC/5EC5EA21" Ref="J5"  Part="1" 
F 0 "J5" H 10488 1314 50  0000 L CNN
F 1 "Conn_02x08_Top_Bottom" H 10488 1223 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x09_P2.54mm_Vertical" H 10400 1400 50  0001 C CNN
F 3 "~" H 10400 1400 50  0001 C CNN
	1    10400 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 IC4
U 1 1 5EC5D4F7
P 2800 2600
F 0 "IC4" H 2800 3581 50  0000 C CNN
F 1 "74HC273" H 2800 3490 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 2800 2600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U6
U 1 1 5EC5E346
P 2800 4800
F 0 "U6" H 2800 5781 50  0000 C CNN
F 1 "74HC273" H 2800 5690 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 2800 4800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 2800 4800 50  0001 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U16
U 1 1 5EC61D04
P 6900 2550
F 0 "U16" H 6900 3531 50  0000 C CNN
F 1 "74HC273" H 6900 3440 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6900 2550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC273 U17
U 1 1 5EC61D0A
P 6900 4750
F 0 "U17" H 6900 5731 50  0000 C CNN
F 1 "74HC273" H 6900 5640 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6900 4750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 6900 4750 50  0001 C CNN
	1    6900 4750
	1    0    0    -1  
$EndComp
Wire Bus Line
	3900 3600 4450 3600
Connection ~ 3900 3600
Wire Bus Line
	8100 3600 8650 3600
Connection ~ 8100 3600
Wire Wire Line
	2300 4300 1550 4300
Wire Wire Line
	1550 4400 2300 4400
Wire Wire Line
	2300 4500 1550 4500
Wire Wire Line
	1550 4600 2300 4600
Wire Wire Line
	2300 4700 1550 4700
Wire Wire Line
	1550 4800 2300 4800
Wire Wire Line
	2300 4900 1550 4900
Wire Wire Line
	1550 5000 2300 5000
Wire Wire Line
	1550 2100 2300 2100
Wire Wire Line
	2300 2200 1550 2200
Wire Wire Line
	1550 2300 2300 2300
Wire Wire Line
	2300 2400 1550 2400
Wire Wire Line
	1550 2500 2300 2500
Wire Wire Line
	2300 2600 1550 2600
Wire Wire Line
	1550 2700 2300 2700
Wire Wire Line
	2300 2800 1550 2800
Entry Wire Line
	3800 2100 3900 2200
Entry Wire Line
	3800 2200 3900 2300
Entry Wire Line
	3800 2300 3900 2400
Entry Wire Line
	3800 2400 3900 2500
Entry Wire Line
	3800 2500 3900 2600
Entry Wire Line
	3800 2600 3900 2700
Entry Wire Line
	3800 2700 3900 2800
Entry Wire Line
	3800 2800 3900 2900
Entry Wire Line
	3800 4300 3900 4400
Entry Wire Line
	3800 4400 3900 4500
Entry Wire Line
	3800 4500 3900 4600
Entry Wire Line
	3800 4600 3900 4700
Entry Wire Line
	3800 4700 3900 4800
Entry Wire Line
	3800 4800 3900 4900
Entry Wire Line
	3800 4900 3900 5000
Entry Wire Line
	3800 5000 3900 5100
Wire Wire Line
	3300 5000 3800 5000
Wire Wire Line
	3800 4900 3300 4900
Wire Wire Line
	3300 4800 3800 4800
Wire Wire Line
	3800 4700 3300 4700
Wire Wire Line
	3300 4600 3800 4600
Wire Wire Line
	3300 4500 3800 4500
Wire Wire Line
	3800 4400 3300 4400
Wire Wire Line
	3300 4300 3800 4300
Wire Wire Line
	3300 2100 3800 2100
Wire Wire Line
	3800 2200 3300 2200
Wire Wire Line
	3300 2300 3800 2300
Wire Wire Line
	3800 2400 3300 2400
Wire Wire Line
	3300 2500 3800 2500
Wire Wire Line
	3800 2600 3300 2600
Wire Wire Line
	3300 2700 3800 2700
Wire Wire Line
	3800 2800 3300 2800
Entry Wire Line
	8000 4250 8100 4350
Entry Wire Line
	8000 4350 8100 4450
Entry Wire Line
	8000 4450 8100 4550
Entry Wire Line
	8000 4550 8100 4650
Entry Wire Line
	8000 4650 8100 4750
Entry Wire Line
	8000 4750 8100 4850
Entry Wire Line
	8000 4850 8100 4950
Entry Wire Line
	8000 4950 8100 5050
Entry Wire Line
	8000 2050 8100 2150
Entry Wire Line
	8000 2150 8100 2250
Entry Wire Line
	8000 2250 8100 2350
Entry Wire Line
	8000 2350 8100 2450
Entry Wire Line
	8000 2450 8100 2550
Entry Wire Line
	8000 2550 8100 2650
Entry Wire Line
	8000 2650 8100 2750
Entry Wire Line
	8000 2750 8100 2850
Wire Wire Line
	5950 2750 6400 2750
Wire Wire Line
	6400 2650 5950 2650
Wire Wire Line
	6400 2550 5950 2550
Wire Wire Line
	5950 2450 6400 2450
Wire Wire Line
	6400 2350 5950 2350
Wire Wire Line
	5950 2250 6400 2250
Wire Wire Line
	6400 2150 5950 2150
Wire Wire Line
	5950 2050 6400 2050
Wire Wire Line
	5950 4250 6400 4250
Wire Wire Line
	5950 4350 6400 4350
Wire Wire Line
	6400 4450 5950 4450
Wire Wire Line
	5950 4550 6400 4550
Wire Wire Line
	6400 4650 5950 4650
Wire Wire Line
	5950 4750 6400 4750
Wire Wire Line
	6400 4850 5950 4850
Wire Wire Line
	5950 4950 6400 4950
Text GLabel 4450 3600 2    50   Output ~ 0
stack[0..15]
Text GLabel 8650 3600 2    50   Output ~ 0
dr[0..15]
Text Label 3450 2100 0    50   ~ 0
stack0
Text Label 3450 2200 0    50   ~ 0
stack1
Text Label 3450 2300 0    50   ~ 0
stack2
Text Label 3450 2400 0    50   ~ 0
stack3
Text Label 3450 2500 0    50   ~ 0
stack4
Text Label 3450 2600 0    50   ~ 0
stack5
Text Label 3700 2700 2    50   ~ 0
stack6
Text Label 3450 2800 0    50   ~ 0
stack7
Text Label 3350 4300 0    50   ~ 0
stack8
Text Label 3350 4400 0    50   ~ 0
stack9
Text Label 3350 4500 0    50   ~ 0
stack10
Text Label 3350 4600 0    50   ~ 0
stack11
Text Label 3350 4700 0    50   ~ 0
stack12
Text Label 3350 4800 0    50   ~ 0
stack13
Text Label 3350 4900 0    50   ~ 0
stack14
Text Label 3350 5000 0    50   ~ 0
stack15
Text Label 7450 2050 0    50   ~ 0
r0
Text Label 7450 2150 0    50   ~ 0
r1
Text Label 7450 2250 0    50   ~ 0
r2
Text Label 7450 2350 0    50   ~ 0
r3
Text Label 7450 2450 0    50   ~ 0
r4
Text Label 7450 2550 0    50   ~ 0
r5
Text Label 7450 2650 0    50   ~ 0
r6
Text Label 7450 2750 0    50   ~ 0
r7
Text Label 7450 4250 0    50   ~ 0
r8
Text Label 7450 4350 0    50   ~ 0
r9
Text Label 7450 4450 0    50   ~ 0
r10
Text Label 7450 4550 0    50   ~ 0
r11
Text Label 7450 4650 0    50   ~ 0
r12
Text Label 7450 4750 0    50   ~ 0
r13
Text Label 7450 4850 0    50   ~ 0
r14
Text Label 7450 4950 0    50   ~ 0
r15
Wire Wire Line
	7400 4950 8000 4950
Wire Wire Line
	7400 4850 8000 4850
Wire Wire Line
	7400 4750 8000 4750
Wire Wire Line
	7400 4650 8000 4650
Wire Wire Line
	7400 4550 8000 4550
Wire Wire Line
	7400 4450 8000 4450
Wire Wire Line
	7400 4350 8000 4350
Wire Wire Line
	7400 4250 8000 4250
Wire Wire Line
	7400 2050 8000 2050
Wire Wire Line
	7400 2150 8000 2150
Wire Wire Line
	7400 2250 8000 2250
Wire Wire Line
	7400 2350 8000 2350
Wire Wire Line
	7400 2450 8000 2450
Wire Wire Line
	7400 2550 8000 2550
Wire Wire Line
	7400 2650 8000 2650
Wire Wire Line
	7400 2750 8000 2750
Wire Bus Line
	8100 1350 8100 3600
Wire Bus Line
	8100 3600 8100 5800
Wire Bus Line
	3900 3600 3900 5700
Wire Bus Line
	3900 1600 3900 3600
$Comp
L power:GNDREF #PWR0140
U 1 1 5ECEA819
P 6900 3350
F 0 "#PWR0140" H 6900 3100 50  0001 C CNN
F 1 "GNDREF" H 6905 3177 50  0000 C CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0141
U 1 1 5ECEAA5C
P 2800 3400
F 0 "#PWR0141" H 2800 3150 50  0001 C CNN
F 1 "GNDREF" H 2805 3227 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0142
U 1 1 5ECEAF83
P 6900 5550
F 0 "#PWR0142" H 6900 5300 50  0001 C CNN
F 1 "GNDREF" H 6905 5377 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0143
U 1 1 5ECEB1C5
P 2800 5600
F 0 "#PWR0143" H 2800 5350 50  0001 C CNN
F 1 "GNDREF" H 2805 5427 50  0000 C CNN
F 2 "" H 2800 5600 50  0001 C CNN
F 3 "" H 2800 5600 50  0001 C CNN
	1    2800 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0144
U 1 1 5ECEB4CA
P 2800 4000
F 0 "#PWR0144" H 2800 3850 50  0001 C CNN
F 1 "VCC" H 2815 4173 50  0000 C CNN
F 2 "" H 2800 4000 50  0001 C CNN
F 3 "" H 2800 4000 50  0001 C CNN
	1    2800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0145
U 1 1 5ECEB728
P 6900 3950
F 0 "#PWR0145" H 6900 3800 50  0001 C CNN
F 1 "VCC" H 6915 4123 50  0000 C CNN
F 2 "" H 6900 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0146
U 1 1 5ECEB996
P 2800 1800
F 0 "#PWR0146" H 2800 1650 50  0001 C CNN
F 1 "VCC" H 2815 1973 50  0000 C CNN
F 2 "" H 2800 1800 50  0001 C CNN
F 3 "" H 2800 1800 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0147
U 1 1 5ECEBC14
P 6900 1750
F 0 "#PWR0147" H 6900 1600 50  0001 C CNN
F 1 "VCC" H 6915 1923 50  0000 C CNN
F 2 "" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
