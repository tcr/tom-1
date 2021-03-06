EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 13
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
L Connector_Generic:Conn_02x06_Counter_Clockwise J?
U 1 1 5ECB4977
P 7500 3600
AR Path="/5ECB4977" Ref="J?"  Part="1" 
AR Path="/5ECB2A45/5ECB4977" Ref="J1"  Part="1" 
F 0 "J1" H 7550 4017 50  0000 C CNN
F 1 "Conn_02x06_Counter_Clockwise" H 7550 3926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 7500 3600 50  0001 C CNN
F 3 "~" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
Text Notes 7400 3000 0    50   ~ 0
OUTPUT
$Comp
L power:GNDREF #PWR0148
U 1 1 5ED04BA0
P 7300 3600
F 0 "#PWR0148" H 7300 3350 50  0001 C CNN
F 1 "GNDREF" V 7305 3472 50  0000 R CNN
F 2 "" H 7300 3600 50  0001 C CNN
F 3 "" H 7300 3600 50  0001 C CNN
	1    7300 3600
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0149
U 1 1 5ED055DC
P 7300 3700
F 0 "#PWR0149" H 7300 3450 50  0001 C CNN
F 1 "GNDREF" V 7305 3572 50  0000 R CNN
F 2 "" H 7300 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0154
U 1 1 5ED0A315
P 7300 3400
F 0 "#PWR0154" H 7300 3250 50  0001 C CNN
F 1 "VCC" V 7315 3527 50  0000 L CNN
F 2 "" H 7300 3400 50  0001 C CNN
F 3 "" H 7300 3400 50  0001 C CNN
	1    7300 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0155
U 1 1 5ED0B838
P 7300 3500
F 0 "#PWR0155" H 7300 3350 50  0001 C CNN
F 1 "VCC" V 7315 3627 50  0000 L CNN
F 2 "" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0001 C CNN
	1    7300 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3400 8500 3400
Wire Wire Line
	8500 3400 8500 4200
Wire Wire Line
	5950 4200 5950 3350
Wire Wire Line
	5950 3350 5050 3350
Wire Wire Line
	5050 2950 5950 2950
Wire Wire Line
	5950 2950 5950 2550
Wire Wire Line
	5950 2550 8300 2550
Wire Wire Line
	8300 2550 8300 3500
Wire Wire Line
	8300 3500 7800 3500
Wire Wire Line
	7800 3600 8400 3600
Wire Wire Line
	8400 3600 8400 4300
Wire Wire Line
	8400 4300 5850 4300
Wire Wire Line
	5850 4300 5850 3450
Wire Wire Line
	5850 3450 5050 3450
Wire Wire Line
	5050 3550 5750 3550
Wire Wire Line
	5750 3550 5750 4400
Wire Wire Line
	5750 4400 8300 4400
Wire Wire Line
	8300 4400 8300 3800
Wire Wire Line
	8300 3800 7800 3800
Wire Wire Line
	7300 3900 7300 4500
Wire Wire Line
	7300 4500 5600 4500
Wire Wire Line
	5600 4500 5600 3650
Wire Wire Line
	5600 3650 5050 3650
Wire Wire Line
	7800 3700 8200 3700
Wire Wire Line
	8200 3700 8200 2650
Wire Wire Line
	8200 2650 6050 2650
Wire Wire Line
	6050 2650 6050 3050
Wire Wire Line
	6050 3050 5050 3050
Wire Wire Line
	5050 3150 6150 3150
Wire Wire Line
	6150 3150 6150 2750
Wire Wire Line
	6150 2750 8100 2750
Wire Wire Line
	8100 2750 8100 3900
Wire Wire Line
	8100 3900 7800 3900
Wire Wire Line
	7300 3800 6050 3800
Wire Wire Line
	6050 3800 6050 3250
Wire Wire Line
	6050 3250 5050 3250
Wire Wire Line
	8500 4200 5950 4200
$Comp
L 74xx:74LS245 U1
U 1 1 5ED87459
P 4550 3450
F 0 "U1" H 4550 4431 50  0000 C CNN
F 1 "74LS245" H 4550 4340 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4550 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4550 3450 50  0001 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0150
U 1 1 5ED89248
P 4550 4250
F 0 "#PWR0150" H 4550 4000 50  0001 C CNN
F 1 "GNDREF" H 4555 4077 50  0000 C CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "" H 4550 4250 50  0001 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0151
U 1 1 5ED8964D
P 4550 2650
F 0 "#PWR0151" H 4550 2500 50  0001 C CNN
F 1 "VCC" H 4565 2823 50  0000 C CNN
F 2 "" H 4550 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Wire Bus Line
	3250 2600 2800 2600
Wire Wire Line
	4050 2950 3350 2950
Wire Wire Line
	4050 3050 3350 3050
Wire Wire Line
	4050 3150 3350 3150
Wire Wire Line
	4050 3250 3350 3250
Wire Wire Line
	4050 3350 3350 3350
Wire Wire Line
	4050 3450 3350 3450
Wire Wire Line
	4050 3550 3350 3550
Wire Wire Line
	4050 3650 3350 3650
Entry Wire Line
	3250 2850 3350 2950
Entry Wire Line
	3250 2950 3350 3050
Entry Wire Line
	3250 3050 3350 3150
Entry Wire Line
	3250 3150 3350 3250
Entry Wire Line
	3250 3250 3350 3350
Entry Wire Line
	3250 3350 3350 3450
Entry Wire Line
	3250 3450 3350 3550
Entry Wire Line
	3250 3550 3350 3650
Text Label 3500 2950 0    50   ~ 0
stack_bus0
Text Label 3500 3050 0    50   ~ 0
stack_bus1
Text Label 3500 3150 0    50   ~ 0
stack_bus2
Text Label 3500 3250 0    50   ~ 0
stack_bus3
Text Label 3500 3350 0    50   ~ 0
stack_bus4
Text Label 3500 3450 0    50   ~ 0
stack_bus5
Text Label 3500 3550 0    50   ~ 0
stack_bus6
Text Label 3500 3650 0    50   ~ 0
stack_bus7
Text HLabel 2800 2600 0    50   Input ~ 0
stack_bus[0..15]
Wire Bus Line
	3250 2600 3250 3550
Text HLabel 4050 3850 0    50   Input ~ 0
a_to_b
Text HLabel 4050 3950 0    50   Input ~ 0
chip_enable
$EndSCHEMATC
