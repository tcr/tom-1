EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
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
L 74xx:74LS377 U?
U 1 1 5ECB777A
P 3300 1950
AR Path="/5ECB777A" Ref="U?"  Part="1" 
AR Path="/5ECB6025/5ECB777A" Ref="IC7"  Part="1" 
F 0 "IC7" H 3300 2931 50  0000 C CNN
F 1 "74LS377" H 3300 2840 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3300 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 3300 1950 50  0001 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U?
U 1 1 5ECB7780
P 3300 4450
AR Path="/5ECB7780" Ref="U?"  Part="1" 
AR Path="/5ECB6025/5ECB7780" Ref="IC9"  Part="1" 
F 0 "IC9" H 3300 5431 50  0000 C CNN
F 1 "74LS377" H 3300 5340 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3300 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 3300 4450 50  0001 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J?
U 1 1 5ECB7787
P 7050 1550
AR Path="/5ECB7787" Ref="J?"  Part="1" 
AR Path="/5ECB6025/5ECB7787" Ref="J7"  Part="1" 
F 0 "J7" H 7100 2067 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 7100 1976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x09_P2.54mm_Vertical" H 7050 1550 50  0001 C CNN
F 3 "~" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
Wire Bus Line
	2250 3150 1200 3150
Connection ~ 2250 3150
Entry Wire Line
	2250 1350 2350 1450
Entry Wire Line
	2250 1450 2350 1550
Entry Wire Line
	2250 1550 2350 1650
Entry Wire Line
	2250 1650 2350 1750
Entry Wire Line
	2250 1750 2350 1850
Entry Wire Line
	2250 1850 2350 1950
Entry Wire Line
	2250 1950 2350 2050
Entry Wire Line
	2250 2050 2350 2150
Entry Wire Line
	2250 4550 2350 4650
Entry Wire Line
	2250 4450 2350 4550
Entry Wire Line
	2250 4350 2350 4450
Entry Wire Line
	2250 4250 2350 4350
Entry Wire Line
	2250 4150 2350 4250
Entry Wire Line
	2250 4050 2350 4150
Entry Wire Line
	2250 3950 2350 4050
Entry Wire Line
	2250 3850 2350 3950
Wire Wire Line
	2800 1450 2350 1450
Wire Wire Line
	2350 1550 2800 1550
Wire Wire Line
	2800 1650 2350 1650
Wire Wire Line
	2350 1750 2800 1750
Wire Wire Line
	2800 1850 2350 1850
Wire Wire Line
	2350 1950 2800 1950
Wire Wire Line
	2800 2050 2350 2050
Wire Wire Line
	2800 2150 2350 2150
Text Label 2400 1450 0    50   ~ 0
tos_bus0
Text Label 2400 1550 0    50   ~ 0
tos_bus1
Text Label 2400 1650 0    50   ~ 0
tos_bus2
Text Label 2400 1750 0    50   ~ 0
tos_bus3
Text Label 2400 1850 0    50   ~ 0
tos_bus4
Text Label 2400 1950 0    50   ~ 0
tos_bus5
Text Label 2400 2050 0    50   ~ 0
tos_bus6
Text Label 2400 2150 0    50   ~ 0
tos_bus7
Wire Wire Line
	2800 3950 2350 3950
Wire Wire Line
	2350 4050 2800 4050
Wire Wire Line
	2800 4150 2350 4150
Wire Wire Line
	2350 4250 2800 4250
Wire Wire Line
	2800 4350 2350 4350
Wire Wire Line
	2350 4450 2800 4450
Wire Wire Line
	2800 4550 2350 4550
Wire Wire Line
	2350 4650 2800 4650
Text Label 2400 3950 0    50   ~ 0
tos_bus8
Text Label 2400 4050 0    50   ~ 0
tos_bus9
Text Label 2400 4150 0    50   ~ 0
tos_bus10
Text Label 2400 4250 0    50   ~ 0
tos_bus11
Text Label 2400 4350 0    50   ~ 0
tos_bus12
Text Label 2400 4450 0    50   ~ 0
tos_bus13
Text Label 2400 4550 0    50   ~ 0
tos_bus14
Text Label 2400 4650 0    50   ~ 0
tos_bus15
Text GLabel 1200 3150 0    50   Input ~ 0
tos_bus[0..15]
$Comp
L power:GNDREF #PWR0103
U 1 1 5EC9A318
P 3300 2750
F 0 "#PWR0103" H 3300 2500 50  0001 C CNN
F 1 "GNDREF" H 3305 2577 50  0000 C CNN
F 2 "" H 3300 2750 50  0001 C CNN
F 3 "" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0104
U 1 1 5EC9AAA5
P 3300 5250
F 0 "#PWR0104" H 3300 5000 50  0001 C CNN
F 1 "GNDREF" H 3305 5077 50  0000 C CNN
F 2 "" H 3300 5250 50  0001 C CNN
F 3 "" H 3300 5250 50  0001 C CNN
	1    3300 5250
	1    0    0    -1  
$EndComp
Wire Bus Line
	2250 3150 2250 3200
$Comp
L power:VCC #PWR0105
U 1 1 5EC9D942
P 3300 3650
F 0 "#PWR0105" H 3300 3500 50  0001 C CNN
F 1 "VCC" H 3315 3823 50  0000 C CNN
F 2 "" H 3300 3650 50  0001 C CNN
F 3 "" H 3300 3650 50  0001 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5EC9DBAE
P 3300 1150
F 0 "#PWR0106" H 3300 1000 50  0001 C CNN
F 1 "VCC" H 3315 1323 50  0000 C CNN
F 2 "" H 3300 1150 50  0001 C CNN
F 3 "" H 3300 1150 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
Entry Wire Line
	4300 1450 4400 1550
Entry Wire Line
	4300 1550 4400 1650
Entry Wire Line
	4300 1650 4400 1750
Entry Wire Line
	4300 1750 4400 1850
Entry Wire Line
	4300 1850 4400 1950
Entry Wire Line
	4300 1950 4400 2050
Entry Wire Line
	4300 2050 4400 2150
Wire Bus Line
	4400 3150 5950 3150
Connection ~ 4400 3150
Wire Wire Line
	4300 1450 3800 1450
Wire Wire Line
	3800 1550 4300 1550
Wire Wire Line
	4300 1650 3800 1650
Wire Wire Line
	3800 1750 4300 1750
Wire Wire Line
	4300 1850 3800 1850
Wire Wire Line
	3800 1950 4300 1950
Wire Wire Line
	4300 2050 3800 2050
Wire Wire Line
	3800 2150 4300 2150
Entry Wire Line
	4300 2150 4400 2250
Entry Wire Line
	4300 3950 4400 4050
Entry Wire Line
	4300 4050 4400 4150
Entry Wire Line
	4300 4150 4400 4250
Entry Wire Line
	4300 4250 4400 4350
Entry Wire Line
	4300 4350 4400 4450
Entry Wire Line
	4300 4450 4400 4550
Entry Wire Line
	4300 4550 4400 4650
Entry Wire Line
	4300 4650 4400 4750
Wire Wire Line
	3800 3950 4300 3950
Wire Wire Line
	4300 4050 3800 4050
Wire Wire Line
	3800 4150 4300 4150
Wire Wire Line
	4300 4250 3800 4250
Wire Wire Line
	3800 4350 4300 4350
Wire Wire Line
	4300 4450 3800 4450
Wire Wire Line
	3800 4550 4300 4550
Wire Wire Line
	4300 4650 3800 4650
Text Label 3950 1450 0    50   ~ 0
tos0
Text Label 3950 1550 0    50   ~ 0
tos1
Text Label 3950 1650 0    50   ~ 0
tos2
Text Label 3950 1750 0    50   ~ 0
tos3
Text Label 3950 1850 0    50   ~ 0
tos4
Text Label 3950 1950 0    50   ~ 0
tos5
Text Label 3950 2050 0    50   ~ 0
tos6
Text Label 3950 2150 0    50   ~ 0
tos7
Text Label 4000 3950 0    50   ~ 0
tos8
Text Label 4000 4050 0    50   ~ 0
tos9
Text Label 4000 4150 0    50   ~ 0
tos10
Text Label 4000 4250 0    50   ~ 0
tos11
Text Label 4000 4350 0    50   ~ 0
tos12
Text Label 4000 4450 0    50   ~ 0
tos13
Text Label 4000 4550 0    50   ~ 0
tos14
Text Label 4000 4650 0    50   ~ 0
tos15
Text GLabel 5950 3150 2    50   Output ~ 0
tos[0..15]
Wire Bus Line
	4400 3150 4400 4750
Wire Bus Line
	4400 1550 4400 3150
Wire Bus Line
	2250 1350 2250 3150
Wire Bus Line
	2250 3150 2250 4550
$EndSCHEMATC
