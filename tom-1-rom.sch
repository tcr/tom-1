EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
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
L Connector_Generic:Conn_02x08_Top_Bottom J?
U 1 1 5ECBEF4A
P 3150 5800
AR Path="/5ECBEF4A" Ref="J?"  Part="1" 
AR Path="/5ECBD6DC/5ECBEF4A" Ref="J10"  Part="1" 
F 0 "J10" H 3200 6317 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 3200 6226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x09_P2.54mm_Vertical" H 3150 5800 50  0001 C CNN
F 3 "~" H 3150 5800 50  0001 C CNN
	1    3150 5800
	1    0    0    -1  
$EndComp
$Comp
L cbm-steve:27C1024 U?
U 1 1 5ECBEF51
P 3450 3050
AR Path="/5ECBEF51" Ref="U?"  Part="1" 
AR Path="/5ECBD6DC/5ECBEF51" Ref="U20"  Part="1" 
F 0 "U20" H 3450 4231 50  0000 C CNN
F 1 "27C1024" H 3450 4140 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0000 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
Wire Bus Line
	1000 1100 1850 1100
Entry Wire Line
	1850 2050 1950 2150
Entry Wire Line
	1850 2150 1950 2250
Entry Wire Line
	1850 2250 1950 2350
Entry Wire Line
	1850 2350 1950 2450
Entry Wire Line
	1850 2450 1950 2550
Entry Wire Line
	1850 2550 1950 2650
Entry Wire Line
	1850 2650 1950 2750
Entry Wire Line
	1850 2750 1950 2850
Entry Wire Line
	1850 2850 1950 2950
Entry Wire Line
	1850 2950 1950 3050
Entry Wire Line
	1850 3050 1950 3150
Entry Wire Line
	1850 3150 1950 3250
Entry Wire Line
	1850 3250 1950 3350
Entry Wire Line
	1850 3350 1950 3450
Entry Wire Line
	1850 3450 1950 3550
Entry Wire Line
	1850 3550 1950 3650
Entry Wire Line
	4950 2150 5050 2250
Entry Wire Line
	4950 2250 5050 2350
Entry Wire Line
	4950 2350 5050 2450
Entry Wire Line
	4950 2450 5050 2550
Entry Wire Line
	4950 2550 5050 2650
Entry Wire Line
	4950 2650 5050 2750
Entry Wire Line
	4950 2750 5050 2850
Entry Wire Line
	4950 2850 5050 2950
Entry Wire Line
	4950 2950 5050 3050
Entry Wire Line
	4950 3050 5050 3150
Entry Wire Line
	4950 3150 5050 3250
Entry Wire Line
	4950 3250 5050 3350
Entry Wire Line
	4950 3350 5050 3450
Entry Wire Line
	4950 3450 5050 3550
Entry Wire Line
	4950 3550 5050 3650
Entry Wire Line
	4950 3650 5050 3750
Wire Wire Line
	2750 2150 1950 2150
Wire Wire Line
	1950 2250 2750 2250
Wire Wire Line
	2750 2350 1950 2350
Wire Wire Line
	1950 2450 2750 2450
Wire Wire Line
	2750 2550 1950 2550
Wire Wire Line
	1950 2650 2750 2650
Wire Wire Line
	2750 2750 1950 2750
Wire Wire Line
	1950 2850 2750 2850
Wire Wire Line
	2750 2950 1950 2950
Wire Wire Line
	1950 3050 2750 3050
Wire Wire Line
	2750 3150 1950 3150
Wire Wire Line
	1950 3250 2750 3250
Wire Wire Line
	2750 3350 1950 3350
Wire Wire Line
	1950 3450 2750 3450
Wire Wire Line
	2750 3550 1950 3550
Wire Wire Line
	1950 3650 2750 3650
Wire Wire Line
	4950 3650 4150 3650
Wire Wire Line
	4150 3550 4950 3550
Wire Wire Line
	4950 3450 4150 3450
Wire Wire Line
	4150 3350 4950 3350
Wire Wire Line
	4950 3250 4150 3250
Wire Wire Line
	4150 3150 4950 3150
Wire Wire Line
	4950 3050 4150 3050
Wire Wire Line
	4150 2950 4950 2950
Wire Wire Line
	4950 2850 4150 2850
Wire Wire Line
	4150 2750 4950 2750
Wire Wire Line
	4950 2650 4150 2650
Wire Wire Line
	4150 2550 4950 2550
Wire Wire Line
	4950 2450 4150 2450
Wire Wire Line
	4150 2350 4950 2350
Wire Wire Line
	4950 2250 4150 2250
Wire Wire Line
	4150 2150 4950 2150
Wire Bus Line
	5050 4250 5950 4250
Text GLabel 5950 4250 2    50   Output ~ 0
rom[0..15]
Text GLabel 1000 1100 0    50   Input ~ 0
pc[0..15]
Text Label 2100 2150 0    50   ~ 0
pc0
Text Label 2100 2250 0    50   ~ 0
pc1
Text Label 2100 2350 0    50   ~ 0
pc2
Text Label 2100 2450 0    50   ~ 0
pc3
Text Label 2100 2550 0    50   ~ 0
pc4
Text Label 2100 2650 0    50   ~ 0
pc5
Text Label 2100 2750 0    50   ~ 0
pc6
Text Label 2100 2850 0    50   ~ 0
pc7
Text Label 2100 2950 0    50   ~ 0
pc8
Text Label 2100 3050 0    50   ~ 0
pc9
Text Label 2100 3150 0    50   ~ 0
pc10
Text Label 2100 3250 0    50   ~ 0
pc11
Text Label 2100 3350 0    50   ~ 0
pc12
Text Label 2100 3450 0    50   ~ 0
pc13
Text Label 2100 3550 0    50   ~ 0
pc14
Text Label 2150 3650 0    50   ~ 0
pc15
Text Label 4550 2150 0    50   ~ 0
rom0
Text Label 4550 2250 0    50   ~ 0
rom1
Text Label 4550 2350 0    50   ~ 0
rom2
Text Label 4550 2450 0    50   ~ 0
rom3
Text Label 4550 2550 0    50   ~ 0
rom4
Text Label 4550 2650 0    50   ~ 0
rom5
Text Label 4550 2750 0    50   ~ 0
rom6
Text Label 4550 2850 0    50   ~ 0
rom7
Text Label 4550 2950 0    50   ~ 0
rom8
Text Label 4550 3050 0    50   ~ 0
rom9
Text Label 4550 3150 0    50   ~ 0
rom10
Text Label 4550 3250 0    50   ~ 0
rom11
Text Label 4550 3350 0    50   ~ 0
rom12
Text Label 4550 3450 0    50   ~ 0
rom13
Text Label 4550 3550 0    50   ~ 0
rom14
Text Label 4550 3650 0    50   ~ 0
rom15
Wire Bus Line
	1850 1100 1850 4850
Wire Bus Line
	5050 1850 5050 4250
$EndSCHEMATC
