EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
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
L 74xx:74LS573 U4
U 1 1 5F199E9C
P 4950 3200
F 0 "U4" H 4950 4181 50  0000 C CNN
F 1 "74LS573" H 4950 4090 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4950 3200 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 4950 3200 50  0001 C CNN
	1    4950 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5F19A35F
P 4950 2400
F 0 "#PWR0107" H 4950 2250 50  0001 C CNN
F 1 "VCC" H 4965 2573 50  0000 C CNN
F 2 "" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F19A64D
P 4950 4000
F 0 "#PWR0108" H 4950 3750 50  0001 C CNN
F 1 "GND" H 4955 3827 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Text HLabel 4450 3700 0    50   Input ~ 0
output_enable
Text HLabel 4450 3600 0    50   Input ~ 0
latch_enable
$EndSCHEMATC
