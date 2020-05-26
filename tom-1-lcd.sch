EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 13
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
L Device:R R1
U 1 1 5ECAD660
P 7900 3500
F 0 "R1" H 7970 3546 50  0000 L CNN
F 1 "R" H 7970 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 7830 3500 50  0001 C CNN
F 3 "~" H 7900 3500 50  0001 C CNN
	1    7900 3500
	0    -1   -1   0   
$EndComp
Wire Bus Line
	2900 2150 3550 2150
Entry Wire Line
	3550 2450 3650 2550
Entry Wire Line
	3550 2550 3650 2650
Entry Wire Line
	3550 2650 3650 2750
Entry Wire Line
	3550 2750 3650 2850
Entry Wire Line
	3550 2850 3650 2950
Entry Wire Line
	3550 2950 3650 3050
Entry Wire Line
	3550 3050 3650 3150
Entry Wire Line
	3550 3150 3650 3250
Entry Wire Line
	3550 3500 3650 3600
Entry Wire Line
	3550 3600 3650 3700
Entry Wire Line
	3550 3700 3650 3800
Entry Wire Line
	3550 3800 3650 3900
Entry Wire Line
	3550 3900 3650 4000
Entry Wire Line
	3550 4000 3650 4100
Entry Wire Line
	3550 4100 3650 4200
Entry Wire Line
	3550 4200 3650 4300
Wire Wire Line
	8050 3500 8700 3500
Wire Wire Line
	6250 3150 6000 3150
Wire Wire Line
	6000 3050 6350 3050
Wire Wire Line
	6450 2950 6000 2950
Wire Wire Line
	6000 2850 6550 2850
Wire Wire Line
	6650 2750 6000 2750
Wire Wire Line
	6000 2650 6850 2650
Wire Wire Line
	6950 2550 6000 2550
$Comp
L Display4x16segment-rescue:KingBright_PSA08-11-MyParts U27
U 1 1 5EC28090
P 5350 2950
F 0 "U27" H 5350 3615 50  0000 C CNN
F 1 "KingBright_PSA08-11-MyParts" H 5350 3524 50  0000 C CNN
F 2 "LED_THT:EightSegment" H 5350 2950 50  0001 C CNN
F 3 "" H 5350 2950 50  0001 C CNN
	1    5350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2550 4700 2550
Wire Wire Line
	3650 2650 4700 2650
Wire Wire Line
	3650 2750 4700 2750
Wire Wire Line
	3650 2850 4700 2850
Wire Wire Line
	3650 2950 4700 2950
Wire Wire Line
	3650 3050 4700 3050
Wire Wire Line
	3650 3150 4700 3150
Wire Wire Line
	3650 3250 4700 3250
Wire Wire Line
	3650 3600 6150 3600
Wire Wire Line
	6150 3600 6150 3250
Wire Wire Line
	6150 3250 6000 3250
Wire Wire Line
	6250 3150 6250 3700
Wire Wire Line
	6250 3700 3650 3700
Wire Wire Line
	3650 3800 6350 3800
Wire Wire Line
	6350 3050 6350 3800
Wire Wire Line
	3650 3900 6450 3900
Wire Wire Line
	6450 2950 6450 3900
Wire Wire Line
	3650 4000 6550 4000
Wire Wire Line
	6550 2850 6550 4000
Wire Wire Line
	3650 4100 6650 4100
Wire Wire Line
	6650 2750 6650 4100
Wire Wire Line
	3650 4200 6850 4200
Wire Wire Line
	6850 2650 6850 4200
Wire Wire Line
	3650 4300 6950 4300
Wire Wire Line
	6950 2550 6950 4300
Wire Wire Line
	4700 3350 4500 3350
Wire Wire Line
	4500 3350 4500 3500
Wire Wire Line
	4500 3500 7750 3500
Text Label 3800 2550 0    50   ~ 0
tos0
Text Label 3800 2650 0    50   ~ 0
tos1
Text Label 3800 2750 0    50   ~ 0
tos2
Text Label 3800 2850 0    50   ~ 0
tos3
Text Label 3800 2950 0    50   ~ 0
tos4
Text Label 3800 3050 0    50   ~ 0
tos5
Text Label 3800 3150 0    50   ~ 0
tos6
Text Label 3800 3250 0    50   ~ 0
tos7
Text Label 3800 3600 0    50   ~ 0
tos8
Text Label 3800 3700 0    50   ~ 0
tos9
Text Label 3800 3800 0    50   ~ 0
tos10
Text Label 3800 3900 0    50   ~ 0
tos11
Text Label 3800 4000 0    50   ~ 0
tos12
Text Label 3800 4100 0    50   ~ 0
tos13
Text Label 3800 4200 0    50   ~ 0
tos14
Text Label 3800 4300 0    50   ~ 0
tos15
Text HLabel 2900 2150 0    50   Input ~ 0
tos[0..15]
Text HLabel 8700 3500 2    50   Output ~ 0
jump0
Wire Bus Line
	3550 2150 3550 4200
$EndSCHEMATC
