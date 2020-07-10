EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3600 1750 4800 1750
$Comp
L 74xx:74LS193 U?
U 1 1 5EC5E9E1
P 3600 4100
AR Path="/5EC5E9E1" Ref="U?"  Part="1" 
AR Path="/5EC5C6EC/5EC5E9E1" Ref="U17"  Part="1" 
F 0 "U17" H 3600 4981 50  0000 C CNN
F 1 "74LS193" H 3600 4890 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3600 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 3600 4100 50  0001 C CNN
	1    3600 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 5EC5E9E7
P 3600 2450
AR Path="/5EC5E9E7" Ref="U?"  Part="1" 
AR Path="/5EC5C6EC/5EC5E9E7" Ref="U16"  Part="1" 
F 0 "U16" H 3600 3331 50  0000 C CNN
F 1 "74LS193" H 3600 3240 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3600 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 3600 2450 50  0001 C CNN
	1    3600 2450
	1    0    0    -1  
$EndComp
Entry Wire Line
	3000 3600 3100 3700
Entry Wire Line
	3000 3700 3100 3800
Entry Wire Line
	3000 3800 3100 3900
Entry Wire Line
	3000 3900 3100 4000
Entry Wire Line
	3000 1950 3100 2050
Entry Wire Line
	3000 2050 3100 2150
Entry Wire Line
	3000 2250 3100 2350
Entry Wire Line
	3000 2150 3100 2250
Wire Bus Line
	3000 2400 2700 2400
Wire Bus Line
	3000 4050 2700 4050
Entry Wire Line
	4150 2050 4250 2150
Entry Wire Line
	4150 2150 4250 2250
Entry Wire Line
	4150 2250 4250 2350
Entry Wire Line
	4150 2350 4250 2450
Entry Wire Line
	4150 3700 4250 3800
Entry Wire Line
	4150 3800 4250 3900
Entry Wire Line
	4150 3900 4250 4000
Text GLabel 4650 4550 2    50   Input ~ 0
D_REGISTER
Wire Bus Line
	4250 4550 4650 4550
Wire Wire Line
	4150 2050 4100 2050
Wire Wire Line
	4100 2150 4150 2150
Wire Wire Line
	4150 2250 4100 2250
Wire Wire Line
	4100 2350 4150 2350
Wire Wire Line
	4100 3700 4150 3700
Wire Wire Line
	4150 3800 4100 3800
Wire Wire Line
	4100 3900 4150 3900
Wire Wire Line
	4150 4000 4100 4000
Entry Wire Line
	4150 4000 4250 4100
Text Label 4150 2050 0    50   ~ 0
A0
Text Label 4150 2150 0    50   ~ 0
A1
Text Label 4150 2250 0    50   ~ 0
A2
Text Label 4150 2350 0    50   ~ 0
A3
Text Label 4150 3700 0    50   ~ 0
A4
Text Label 4150 3800 0    50   ~ 0
A5
Text Label 4150 3900 0    50   ~ 0
A6
Text Label 4150 4000 0    50   ~ 0
A7
Entry Wire Line
	4250 2750 4350 2850
Entry Wire Line
	4250 2850 4350 2950
Entry Wire Line
	4250 2950 4350 3050
Entry Wire Line
	4250 3050 4350 3150
Entry Wire Line
	4250 3150 4350 3250
Entry Wire Line
	4250 3250 4350 3350
Entry Wire Line
	4250 3350 4350 3450
Entry Wire Line
	4250 3450 4350 3550
Wire Wire Line
	4400 3550 4350 3550
Wire Wire Line
	4400 3450 4350 3450
Wire Wire Line
	4400 3350 4350 3350
Wire Wire Line
	4400 3250 4350 3250
Wire Wire Line
	4400 3150 4350 3150
Wire Wire Line
	4400 3050 4350 3050
Wire Wire Line
	4400 2950 4350 2950
Wire Wire Line
	4400 2850 4350 2850
$Comp
L Connector_Generic_MountingPin:Conn_02x08_Top_Bottom_MountingPin J?
U 1 1 5EC5EA21
P 4600 3150
AR Path="/5EC5EA21" Ref="J?"  Part="1" 
AR Path="/5EC5C6EC/5EC5EA21" Ref="J5"  Part="1" 
F 0 "J5" H 4688 3064 50  0000 L CNN
F 1 "Conn_02x08_Top_Bottom" H 4688 2973 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x09_P2.54mm_Vertical" H 4600 3150 50  0001 C CNN
F 3 "~" H 4600 3150 50  0001 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	4250 2750 4350 2850
Text Label 4350 2850 0    50   ~ 0
A0
Text Label 4350 2950 0    50   ~ 0
A1
Text Label 4350 3050 0    50   ~ 0
A2
Text Label 4350 3150 0    50   ~ 0
A3
Text Label 4350 3250 0    50   ~ 0
A4
Text Label 4350 3350 0    50   ~ 0
A5
Text Label 4350 3450 0    50   ~ 0
A6
Text Label 4350 3550 0    50   ~ 0
A7
$Comp
L 74xx:74LS193 U?
U 1 1 5EC6F71C
P 7000 2650
AR Path="/5EC6F71C" Ref="U?"  Part="1" 
AR Path="/5EC5C6EC/5EC6F71C" Ref="U4"  Part="1" 
F 0 "U4" H 7000 3531 50  0000 C CNN
F 1 "74LS193" H 7000 3440 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7000 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 7000 2650 50  0001 C CNN
	1    7000 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 5EC6F722
P 8250 2650
AR Path="/5EC6F722" Ref="U?"  Part="1" 
AR Path="/5EC5C6EC/5EC6F722" Ref="U6"  Part="1" 
F 0 "U6" H 8250 3531 50  0000 C CNN
F 1 "74LS193" H 8250 3440 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8250 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1950 8250 1950
Wire Bus Line
	3000 1950 3000 2400
Wire Bus Line
	3000 3600 3000 4050
Wire Bus Line
	4250 2150 4250 4550
$EndSCHEMATC
