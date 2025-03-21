EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:LED D1
U 1 1 5C6F56D9
P 4600 4150
F 0 "D1" V 4650 4050 50  0000 R CNN
F 1 "LED" V 4550 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 4600 4150 50  0001 C CNN
F 3 "~" H 4600 4150 50  0001 C CNN
	1    4600 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C6F56F7
P 4950 4150
F 0 "D2" V 5000 4050 50  0000 R CNN
F 1 "LED" V 4900 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 4950 4150 50  0001 C CNN
F 3 "~" H 4950 4150 50  0001 C CNN
	1    4950 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C6F5728
P 5350 4150
F 0 "D3" V 5400 4050 50  0000 R CNN
F 1 "LED" V 5300 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 5350 4150 50  0001 C CNN
F 3 "~" H 5350 4150 50  0001 C CNN
	1    5350 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5C6F5750
P 5750 4150
F 0 "D4" V 5800 4050 50  0000 R CNN
F 1 "LED" V 5700 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 5750 4150 50  0001 C CNN
F 3 "~" H 5750 4150 50  0001 C CNN
	1    5750 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 4900 5750 4750
Wire Wire Line
	5350 4750 5350 4900
Wire Wire Line
	4950 4750 4950 4900
Wire Wire Line
	4600 4750 4600 4900
$Comp
L Device:LED D5
U 1 1 5C71463E
P 6150 4150
F 0 "D5" V 6200 4050 50  0000 R CNN
F 1 "LED" V 6100 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 6150 4150 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5C714644
P 6550 4150
F 0 "D6" V 6600 4050 50  0000 R CNN
F 1 "LED" V 6500 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 6550 4150 50  0001 C CNN
F 3 "~" H 6550 4150 50  0001 C CNN
	1    6550 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5C71464A
P 6950 4150
F 0 "D7" V 7000 4050 50  0000 R CNN
F 1 "LED" V 6900 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 6950 4150 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5C714656
P 7350 4150
F 0 "D8" V 7400 4050 50  0000 R CNN
F 1 "LED" V 7300 4050 50  0000 R CNN
F 2 "Rays Footprints:LED_D3.0mm" H 7350 4150 50  0001 C CNN
F 3 "~" H 7350 4150 50  0001 C CNN
	1    7350 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4750 6150 4900
Wire Wire Line
	7350 4900 7350 4750
Wire Wire Line
	6950 4750 6950 4900
Connection ~ 6950 4900
$Comp
L power:VCC #PWR02
U 1 1 5C71B681
P 6250 2850
F 0 "#PWR02" H 6250 2700 50  0001 C CNN
F 1 "VCC" H 6267 3023 50  0000 C CNN
F 2 "" H 6250 2850 50  0001 C CNN
F 3 "" H 6250 2850 50  0001 C CNN
	1    6250 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5C701347
P 3300 3450
F 0 "#PWR04" H 3300 3300 50  0001 C CNN
F 1 "VCC" H 3317 3623 50  0000 C CNN
F 2 "" H 3300 3450 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C702E76
P 2400 4450
F 0 "#PWR03" H 2400 4200 50  0001 C CNN
F 1 "GND" H 2405 4277 50  0000 C CNN
F 2 "" H 2400 4450 50  0001 C CNN
F 3 "" H 2400 4450 50  0001 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3550 2600 3550
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D646327
P 2800 3550
F 0 "SW1" H 2800 3835 50  0000 C CNN
F 1 "SW_SPDT" H 2800 3744 50  0000 C CNN
F 2 "Rays Footprints:KM-SPDT-Slide" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D777CB0
P 6000 5150
F 0 "#PWR01" H 6000 4900 50  0001 C CNN
F 1 "GND" H 6005 4977 50  0000 C CNN
F 2 "" H 6000 5150 50  0001 C CNN
F 3 "" H 6000 5150 50  0001 C CNN
	1    6000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5150 6000 4900
$Comp
L Device:R_US R1
U 1 1 5D784021
P 4600 4600
F 0 "R1" H 4650 4650 50  0000 L CNN
F 1 "300" H 4650 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 4640 4590 50  0001 C CNN
F 3 "~" H 4600 4600 50  0001 C CNN
	1    4600 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D784027
P 4950 4600
F 0 "R2" H 5000 4650 50  0000 L CNN
F 1 "300" H 5000 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 4990 4590 50  0001 C CNN
F 3 "~" H 4950 4600 50  0001 C CNN
	1    4950 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5D78402D
P 5350 4600
F 0 "R3" H 5400 4650 50  0000 L CNN
F 1 "300" H 5400 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 5390 4590 50  0001 C CNN
F 3 "~" H 5350 4600 50  0001 C CNN
	1    5350 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D784033
P 5750 4600
F 0 "R4" H 5800 4650 50  0000 L CNN
F 1 "300" H 5800 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 5790 4590 50  0001 C CNN
F 3 "~" H 5750 4600 50  0001 C CNN
	1    5750 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5D784039
P 6150 4600
F 0 "R5" H 6200 4650 50  0000 L CNN
F 1 "300" H 6200 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 6190 4590 50  0001 C CNN
F 3 "~" H 6150 4600 50  0001 C CNN
	1    6150 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5D78403F
P 6550 4600
F 0 "R6" H 6600 4650 50  0000 L CNN
F 1 "300" H 6600 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 6590 4590 50  0001 C CNN
F 3 "~" H 6550 4600 50  0001 C CNN
	1    6550 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5D784045
P 6950 4600
F 0 "R7" H 7000 4650 50  0000 L CNN
F 1 "300" H 7000 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 6990 4590 50  0001 C CNN
F 3 "~" H 6950 4600 50  0001 C CNN
	1    6950 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5D784051
P 7350 4600
F 0 "R8" H 7400 4650 50  0000 L CNN
F 1 "300" H 7400 4550 50  0000 L CNN
F 2 "Rays Footprints:R_Axial_Minimal_KM" V 7390 4590 50  0001 C CNN
F 3 "~" H 7350 4600 50  0001 C CNN
	1    7350 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 4300 4600 4450
Wire Wire Line
	5350 4300 5350 4450
Wire Wire Line
	6150 4300 6150 4450
Wire Wire Line
	6950 4300 6950 4450
Wire Wire Line
	7350 4300 7350 4450
Wire Wire Line
	4950 4450 4950 4300
Wire Wire Line
	5750 4450 5750 4300
Wire Wire Line
	6150 4900 6000 4900
Connection ~ 6150 4900
Wire Wire Line
	6250 2850 6250 2950
Connection ~ 6250 2950
Connection ~ 4950 4900
Wire Wire Line
	4600 4900 4950 4900
Connection ~ 5350 4900
Connection ~ 5750 4900
Wire Wire Line
	4600 2950 4600 4000
Wire Wire Line
	5350 2950 5350 4000
Wire Wire Line
	6150 2950 6150 4000
Connection ~ 6150 2950
Wire Wire Line
	6150 2950 6250 2950
Connection ~ 5750 2950
Connection ~ 6000 4900
Connection ~ 6550 4900
Wire Wire Line
	6950 4000 6950 2950
Connection ~ 6550 2950
Connection ~ 6950 2950
Wire Wire Line
	7350 2950 7350 4000
Wire Wire Line
	6550 2950 6550 4000
Wire Wire Line
	5750 2950 5750 4000
Wire Wire Line
	6150 4900 6550 4900
Wire Wire Line
	6250 2950 6550 2950
Wire Wire Line
	6550 4900 6950 4900
Wire Wire Line
	6550 2950 6950 2950
Wire Wire Line
	6950 4900 7350 4900
Wire Wire Line
	6950 2950 7350 2950
Wire Wire Line
	4950 2950 4950 4000
Wire Wire Line
	5750 4900 6000 4900
Wire Wire Line
	5750 2950 6150 2950
Wire Wire Line
	5350 4900 5750 4900
Wire Wire Line
	5350 2950 5750 2950
Wire Wire Line
	4950 2950 4600 2950
Wire Wire Line
	4950 4900 5350 4900
Connection ~ 5350 2950
Connection ~ 4950 2950
Wire Wire Line
	4950 2950 5350 2950
Wire Wire Line
	6550 4450 6550 4300
Wire Wire Line
	6550 4750 6550 4900
$Comp
L km-covid-rescue:USB-Micro-B-Power-Only-symbols J1
U 1 1 5D799CD9
P 1800 3900
F 0 "J1" H 1572 3896 50  0000 R CNN
F 1 "USB-Micro-B-Power-Only" H 2600 5000 50  0000 R CNN
F 2 "Rays Footprints:USB Micro-B Power Only" H 1750 3700 50  0001 C CNN
F 3 "" H 1750 3700 50  0001 C CNN
	1    1800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4150 2400 4450
Wire Wire Line
	2400 3550 2400 3750
$Comp
L power:GND #PWR0101
U 1 1 5D7A6AE7
P 1900 4600
F 0 "#PWR0101" H 1900 4350 50  0001 C CNN
F 1 "GND" H 1905 4427 50  0000 C CNN
F 2 "" H 1900 4600 50  0001 C CNN
F 3 "" H 1900 4600 50  0001 C CNN
	1    1900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4600 1900 4550
$Comp
L power:GND #PWR0102
U 1 1 5D7A78C3
P 1900 3300
F 0 "#PWR0102" H 1900 3050 50  0001 C CNN
F 1 "GND" H 1905 3127 50  0000 C CNN
F 2 "" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3300 50  0001 C CNN
	1    1900 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 3300 1900 3350
Wire Wire Line
	3300 3450 3300 3650
Wire Wire Line
	3300 3650 3000 3650
$EndSCHEMATC
