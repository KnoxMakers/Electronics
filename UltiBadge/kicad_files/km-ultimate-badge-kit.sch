EESchema Schematic File Version 4
LIBS:km-ultimate-badge-kit-cache
EELAYER 26 0
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
Text GLabel 2850 5850 2    60   Input ~ 0
PB3
Text GLabel 2850 5750 2    60   Input ~ 0
PB2
Text GLabel 2850 5550 2    60   Input ~ 0
PB0
Text GLabel 2850 5650 2    60   Input ~ 0
PB1
Text Notes 7400 7500 0    59   ~ 0
KM Badge Board
Text Notes 10600 7650 0    59   ~ 0
1
$Comp
L Device:R_US R109
U 1 1 5C153320
P 3600 2600
F 0 "R109" V 3550 2400 50  0000 C CNN
F 1 "4.7k" V 3700 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3640 2590 50  0001 C CNN
F 3 "~" H 3600 2600 50  0001 C CNN
	1    3600 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R117
U 1 1 5C181EA7
P 4100 2600
F 0 "R117" V 4000 2600 50  0000 C CNN
F 1 "4.7k" V 4200 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4140 2590 50  0001 C CNN
F 3 "~" H 4100 2600 50  0001 C CNN
	1    4100 2600
	-1   0    0    1   
$EndComp
Text GLabel 4000 2800 0    60   Input ~ 0
SDA
Wire Wire Line
	4000 2800 4100 2800
Wire Wire Line
	4100 2800 4100 2750
Text GLabel 3500 2800 0    60   Input ~ 0
SCL
Wire Wire Line
	3500 2800 3600 2800
Wire Wire Line
	3600 2800 3600 2750
$Comp
L km-ultimate-badge-kit-rescue:Momentary_Push_Buttom_KM_6x6-symbols S1
U 1 1 5C78A10D
P 3950 4600
F 0 "S1" V 4150 4700 50  0000 L CNN
F 1 "Momentary_Push_Buttom_KM_6x6" V 4600 4700 50  0000 L CNN
F 2 "Rays Footprints:Momentary_Push_Button_KM_6x6" H 4355 4585 50  0001 C CNN
F 3 "" H 4355 4585 50  0001 C CNN
	1    3950 4600
	0    1    1    0   
$EndComp
$Comp
L km-ultimate-badge-kit-rescue:Momentary_Push_Buttom_KM_6x6-symbols S2
U 1 1 5C78A1DD
P 4500 4600
F 0 "S2" V 4700 4650 50  0000 L CNN
F 1 "Momentary_Push_Buttom_KM_6x6" V 5250 4150 50  0000 L CNN
F 2 "Rays Footprints:Momentary_Push_Button_KM_6x6" H 4905 4585 50  0001 C CNN
F 3 "" H 4905 4585 50  0001 C CNN
	1    4500 4600
	0    1    1    0   
$EndComp
Text GLabel 3750 4350 0    60   Input ~ 0
PB3
Text GLabel 4300 4350 0    60   Input ~ 0
PB2
$Comp
L km-ultimate-badge-kit-rescue:Momentary_Push_Buttom_KM_6x6-symbols S3
U 1 1 5C7E307C
P 5050 4600
F 0 "S3" V 5250 4650 50  0000 L CNN
F 1 "Momentary_Push_Buttom_KM_6x6" V 5900 3600 50  0000 L CNN
F 2 "Rays Footprints:Momentary_Push_Button_KM_6x6" H 5455 4585 50  0001 C CNN
F 3 "" H 5455 4585 50  0001 C CNN
	1    5050 4600
	0    1    1    0   
$EndComp
$Comp
L km-ultimate-badge-kit-rescue:Momentary_Push_Buttom_KM_6x6-symbols S4
U 1 1 5C7E3082
P 5550 4600
F 0 "S4" V 5750 4650 50  0000 L CNN
F 1 "Momentary_Push_Buttom_KM_6x6" V 6500 3100 50  0000 L CNN
F 2 "Rays Footprints:Momentary_Push_Button_KM_6x6" H 5955 4585 50  0001 C CNN
F 3 "" H 5955 4585 50  0001 C CNN
	1    5550 4600
	0    1    1    0   
$EndComp
Text GLabel 4850 4350 0    60   Input ~ 0
PB1
Text GLabel 5350 4350 0    60   Input ~ 0
PB0
Text Notes 4500 3950 0    100  ~ 0
D Pad
NoConn ~ 2950 4000
NoConn ~ 4800 7200
$Comp
L symbols:8x8_LED_Matrix U1
U 1 1 5D62154E
P 9000 2350
F 0 "U1" H 9025 2815 50  0000 C CNN
F 1 "8x8_LED_Matrix" H 9025 2724 50  0000 C CNN
F 2 "Rays Footprints:8x8LED_Matrix" H 9450 2050 50  0001 C CNN
F 3 "" H 9450 2050 50  0001 C CNN
	1    9000 2350
	1    0    0    -1  
$EndComp
NoConn ~ 2850 5950
$Comp
L symbols:8x8_LED_Matrix U2
U 1 1 5D627B79
P 10100 2350
F 0 "U2" H 10125 2815 50  0000 C CNN
F 1 "8x8_LED_Matrix" H 10125 2724 50  0000 C CNN
F 2 "Rays Footprints:8x8LED_Matrix" H 10550 2050 50  0001 C CNN
F 3 "" H 10550 2050 50  0001 C CNN
	1    10100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2150 9600 2150
Wire Wire Line
	9500 2250 9600 2250
Wire Wire Line
	9500 2350 9650 2350
Wire Wire Line
	9500 2450 9650 2450
Wire Wire Line
	9500 2550 9650 2550
Text GLabel 1250 5850 0    60   Input ~ 0
DISPLAY_CS
Wire Wire Line
	2700 5850 2850 5850
$Comp
L power:VCC #PWR05
U 1 1 5D62FA06
P 2300 4450
F 0 "#PWR05" H 2300 4300 50  0001 C CNN
F 1 "VCC" H 2317 4623 50  0000 C CNN
F 2 "" H 2300 4450 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D6325EB
P 2250 6700
F 0 "#PWR04" H 2250 6450 50  0001 C CNN
F 1 "GND" H 2255 6527 50  0000 C CNN
F 2 "" H 2250 6700 50  0001 C CNN
F 3 "" H 2250 6700 50  0001 C CNN
	1    2250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6550 2200 6650
Wire Wire Line
	2200 6650 2250 6650
Wire Wire Line
	2300 6650 2300 6550
Wire Wire Line
	2250 6700 2250 6650
Connection ~ 2250 6650
Wire Wire Line
	2250 6650 2300 6650
$Comp
L power:GND #PWR09
U 1 1 5D634789
P 8450 2700
F 0 "#PWR09" H 8450 2450 50  0001 C CNN
F 1 "GND" V 8455 2572 50  0000 R CNN
F 2 "" H 8450 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0001 C CNN
	1    8450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2250 8450 2250
Wire Wire Line
	8450 2250 8450 2700
$Comp
L power:GND #PWR014
U 1 1 5D637DE1
P 9600 2700
F 0 "#PWR014" H 9600 2450 50  0001 C CNN
F 1 "GND" V 9605 2572 50  0000 R CNN
F 2 "" H 9600 2700 50  0001 C CNN
F 3 "" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2700 9600 2250
Connection ~ 9600 2250
Wire Wire Line
	9600 2250 9650 2250
$Comp
L power:VCC #PWR013
U 1 1 5D63A60C
P 9600 1600
F 0 "#PWR013" H 9600 1450 50  0001 C CNN
F 1 "VCC" H 9617 1773 50  0000 C CNN
F 2 "" H 9600 1600 50  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1700 9600 2150
Connection ~ 9600 1700
Connection ~ 9600 2150
Wire Wire Line
	9600 2150 9650 2150
Wire Wire Line
	9600 1600 9600 1700
$Comp
L Device:C C5
U 1 1 5D64031C
P 10950 1850
F 0 "C5" H 10975 1950 50  0000 L CNN
F 1 "100n" H 10975 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10988 1700 50  0001 C CNN
F 3 "AVX 08053C104KAT2A" H 10950 1850 50  0001 C CNN
	1    10950 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5D641CA1
P 10950 2050
F 0 "#PWR019" H 10950 1800 50  0001 C CNN
F 1 "GND" V 10955 1922 50  0000 R CNN
F 2 "" H 10950 2050 50  0001 C CNN
F 3 "" H 10950 2050 50  0001 C CNN
	1    10950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 2050 10950 2000
Wire Wire Line
	9600 1700 10700 1700
Wire Wire Line
	8550 2150 8450 2150
Wire Wire Line
	8450 2150 8450 1700
Wire Wire Line
	8450 1700 9600 1700
Wire Wire Line
	10600 2150 10700 2150
Wire Wire Line
	10700 2150 10700 1700
Connection ~ 10700 1700
Wire Wire Line
	10700 1700 10950 1700
Text GLabel 1550 5150 0    60   Input ~ 0
INT0
$Comp
L pspice:DIODE D3
U 1 1 5D669B10
P 5300 6850
F 0 "D3" V 5346 6722 50  0000 R CNN
F 1 "Diode" V 5255 6722 50  0000 R CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H 5300 6850 50  0001 C CNN
F 3 "MBRS360BT3G" H 5300 6850 50  0001 C CNN
	1    5300 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5D6757B2
P 3600 2350
F 0 "#PWR022" H 3600 2200 50  0001 C CNN
F 1 "VCC" H 3617 2523 50  0000 C CNN
F 2 "" H 3600 2350 50  0001 C CNN
F 3 "" H 3600 2350 50  0001 C CNN
	1    3600 2350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5D6757D5
P 4100 2350
F 0 "#PWR025" H 4100 2200 50  0001 C CNN
F 1 "VCC" H 4117 2523 50  0000 C CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2350 4100 2450
Wire Wire Line
	3600 2350 3600 2450
Text Notes 3300 1450 0    100  ~ 0
I2C Pull-Ups
Text Notes 9000 1250 0    100  ~ 0
8x8 LED Arrays
$Comp
L km-ultimate-badge-kit-rescue:Momentary_Push_Buttom_KM_6x6-symbols S5
U 1 1 5D681050
P 6650 4850
F 0 "S5" V 6850 4950 50  0000 L CNN
F 1 "Momentary_Push_Buttom_KM_6x6" H 5950 5150 50  0000 L CNN
F 2 "Rays Footprints:Momentary_Push_Button_KM_6x6" H 7055 4835 50  0001 C CNN
F 3 "" H 7055 4835 50  0001 C CNN
	1    6650 4850
	0    1    1    0   
$EndComp
Text GLabel 6500 4500 0    60   Input ~ 0
INT0
Wire Wire Line
	6500 4500 6650 4500
Wire Wire Line
	6650 4500 6650 4650
$Comp
L power:GND #PWR021
U 1 1 5D6838AE
P 6650 5200
F 0 "#PWR021" H 6650 4950 50  0001 C CNN
F 1 "GND" H 6655 5027 50  0000 C CNN
F 2 "" H 6650 5200 50  0001 C CNN
F 3 "" H 6650 5200 50  0001 C CNN
	1    6650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5200 6650 5100
Wire Wire Line
	5350 4350 5450 4350
Wire Wire Line
	5450 4350 5450 4400
Wire Wire Line
	4850 4350 4950 4350
Wire Wire Line
	4950 4350 4950 4400
Wire Wire Line
	4300 4350 4400 4350
Wire Wire Line
	4400 4350 4400 4400
Wire Wire Line
	3750 4350 3850 4350
Wire Wire Line
	3850 4350 3850 4400
$Comp
L power:GND #PWR010
U 1 1 5D68E678
P 3850 4950
F 0 "#PWR010" H 3850 4700 50  0001 C CNN
F 1 "GND" H 3855 4777 50  0000 C CNN
F 2 "" H 3850 4950 50  0001 C CNN
F 3 "" H 3850 4950 50  0001 C CNN
	1    3850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4950 3850 4850
$Comp
L power:GND #PWR011
U 1 1 5D68F569
P 4400 4950
F 0 "#PWR011" H 4400 4700 50  0001 C CNN
F 1 "GND" H 4405 4777 50  0000 C CNN
F 2 "" H 4400 4950 50  0001 C CNN
F 3 "" H 4400 4950 50  0001 C CNN
	1    4400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4950 4400 4850
$Comp
L power:GND #PWR016
U 1 1 5D6904DB
P 4950 4950
F 0 "#PWR016" H 4950 4700 50  0001 C CNN
F 1 "GND" H 4955 4777 50  0000 C CNN
F 2 "" H 4950 4950 50  0001 C CNN
F 3 "" H 4950 4950 50  0001 C CNN
	1    4950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4950 4950 4850
$Comp
L power:GND #PWR017
U 1 1 5D6914D2
P 5450 4950
F 0 "#PWR017" H 5450 4700 50  0001 C CNN
F 1 "GND" H 5455 4777 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "" H 5450 4950 50  0001 C CNN
	1    5450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4950 5450 4850
Text Notes 6100 4000 0    100  ~ 0
Ext Interrupt/\nGen Purp Button
Wire Wire Line
	6650 4400 6650 4500
Connection ~ 6650 4500
$Comp
L symbols:MMA8451 U3
U 1 1 5D69BE83
P 7900 5500
F 0 "U3" H 7850 6800 50  0000 L CNN
F 1 "MMA8451" H 8100 6650 50  0000 L CNN
F 2 "Rays Footprints:MMA8451" H 7900 5500 50  0001 C CNN
F 3 "" H 7900 5500 50  0001 C CNN
	1    7900 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5D69BFED
P 7650 5000
F 0 "#PWR023" H 7650 4850 50  0001 C CNN
F 1 "VCC" H 7667 5173 50  0000 C CNN
F 2 "" H 7650 5000 50  0001 C CNN
F 3 "" H 7650 5000 50  0001 C CNN
	1    7650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5000 7650 5100
Wire Wire Line
	7650 5100 7900 5100
Wire Wire Line
	7900 5100 7900 5000
$Comp
L power:GND #PWR024
U 1 1 5D69D3D0
P 8000 5150
F 0 "#PWR024" H 8000 4900 50  0001 C CNN
F 1 "GND" H 8005 4977 50  0000 C CNN
F 2 "" H 8000 5150 50  0001 C CNN
F 3 "" H 8000 5150 50  0001 C CNN
	1    8000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5150 8000 5000
$Comp
L power:GND #PWR026
U 1 1 5D69E92D
P 8600 5400
F 0 "#PWR026" H 8600 5150 50  0001 C CNN
F 1 "GND" H 8605 5227 50  0000 C CNN
F 2 "" H 8600 5400 50  0001 C CNN
F 3 "" H 8600 5400 50  0001 C CNN
	1    8600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5000 8600 5050
Wire Wire Line
	8600 5400 8600 5350
Wire Wire Line
	8500 5750 8500 5000
Wire Wire Line
	8400 5000 8400 5750
Text Notes 7800 4000 0    100  ~ 0
Accelerometer
Text GLabel 1250 6150 0    60   Input ~ 0
MISO
Wire Wire Line
	1250 6150 1700 6150
Text GLabel 1250 6050 0    60   Input ~ 0
MOSI
Wire Wire Line
	2850 5750 2700 5750
Wire Wire Line
	2700 5650 2850 5650
Wire Wire Line
	2700 5550 2850 5550
Wire Wire Line
	1250 6050 1700 6050
Text GLabel 8300 2350 0    60   Input ~ 0
MOSI
Wire Wire Line
	8300 2350 8550 2350
Text GLabel 8300 2450 0    60   Input ~ 0
DISPLAY_CS
Wire Wire Line
	8300 2450 8550 2450
Text GLabel 1250 6250 0    60   Input ~ 0
SCK
Wire Wire Line
	1250 6250 1700 6250
Text GLabel 8300 2550 0    60   Input ~ 0
SCK
Wire Wire Line
	8550 2550 8300 2550
Wire Wire Line
	2700 6050 3150 6050
Wire Wire Line
	2700 5950 3150 5950
$Comp
L power:GND #PWR08
U 1 1 5D6D01AE
P 4500 7200
F 0 "#PWR08" H 4500 6950 50  0001 C CNN
F 1 "GND" V 4505 7072 50  0000 R CNN
F 2 "" H 4500 7200 50  0001 C CNN
F 3 "" H 4500 7200 50  0001 C CNN
	1    4500 7200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5D6D1E36
P 4500 6450
F 0 "#PWR07" H 4500 6300 50  0001 C CNN
F 1 "VCC" H 4517 6623 50  0000 C CNN
F 2 "" H 4500 6450 50  0001 C CNN
F 3 "" H 4500 6450 50  0001 C CNN
	1    4500 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Photo D2
U 1 1 5D6D5C37
P 2200 2500
F 0 "D2" V 2100 2300 50  0000 L CNN
F 1 "D_Photo" V 2200 2100 50  0000 L CNN
F 2 "LEDs:LED_D3.0mm" H 2150 2500 50  0001 C CNN
F 3 "tsop6240" H 2150 2500 50  0001 C CNN
	1    2200 2500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5D6D5DF7
P 1650 2150
F 0 "#PWR03" H 1650 2000 50  0001 C CNN
F 1 "VCC" H 1667 2323 50  0000 C CNN
F 2 "" H 1650 2150 50  0001 C CNN
F 3 "" H 1650 2150 50  0001 C CNN
	1    1650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2200 2200 2300
Text GLabel 2150 2800 0    60   Input ~ 0
RX_DIODE
Wire Wire Line
	2150 2800 2200 2800
Wire Wire Line
	2200 2800 2200 2600
$Comp
L Device:R_US R2
U 1 1 5D6DBA6A
P 1900 2200
F 0 "R2" V 1850 2000 50  0000 C CNN
F 1 "100" V 2000 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1940 2190 50  0001 C CNN
F 3 "~" H 1900 2200 50  0001 C CNN
	1    1900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 2150 1650 2200
Wire Wire Line
	1650 2200 1750 2200
Wire Wire Line
	2050 2200 2200 2200
$Comp
L Device:C C4
U 1 1 5D6E21EE
P 6200 6800
F 0 "C4" H 6225 6900 50  0000 L CNN
F 1 "10u" H 6225 6700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x4.5" H 6238 6650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/wurth-electronics-inc/865250340003/732-8303-1-ND/5728260" H 6200 6800 50  0001 C CNN
	1    6200 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D6E21F4
P 6200 7000
F 0 "#PWR015" H 6200 6750 50  0001 C CNN
F 1 "GND" H 6205 6827 50  0000 C CNN
F 2 "" H 6200 7000 50  0001 C CNN
F 3 "" H 6200 7000 50  0001 C CNN
	1    6200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7000 6200 6950
Wire Wire Line
	2550 2200 2550 2300
$Comp
L Device:C C2
U 1 1 5D6EB5DB
P 2550 2450
F 0 "C2" H 2575 2550 50  0000 L CNN
F 1 "100n" H 2575 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 2300 50  0001 C CNN
F 3 "AVX 08053C104KAT2A" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D6EB5E1
P 2550 2650
F 0 "#PWR06" H 2550 2400 50  0001 C CNN
F 1 "GND" H 2555 2477 50  0000 C CNN
F 2 "" H 2550 2650 50  0001 C CNN
F 3 "" H 2550 2650 50  0001 C CNN
	1    2550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 2550 2600
$Comp
L Device:LED D1
U 1 1 5D6F0693
P 1150 2200
F 0 "D1" V 1188 2083 50  0000 R CNN
F 1 "LED" V 1097 2083 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 1150 2200 50  0001 C CNN
F 3 "~" H 1150 2200 50  0001 C CNN
	1    1150 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D6F07DC
P 1150 2000
F 0 "#PWR01" H 1150 1850 50  0001 C CNN
F 1 "VCC" H 1167 2173 50  0000 C CNN
F 2 "" H 1150 2000 50  0001 C CNN
F 3 "" H 1150 2000 50  0001 C CNN
	1    1150 2000
	1    0    0    -1  
$EndComp
NoConn ~ 1150 2050
NoConn ~ 1150 2000
Wire Wire Line
	1150 2000 1150 2050
$Comp
L Device:R_US R1
U 1 1 5D6F8101
P 1150 2550
F 0 "R1" H 1300 2600 50  0000 C CNN
F 1 "20" H 1300 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1190 2540 50  0001 C CNN
F 3 "~" H 1150 2550 50  0001 C CNN
	1    1150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2400 1150 2350
Text GLabel 1100 2800 0    60   Input ~ 0
TX_DIODE
Wire Wire Line
	1100 2800 1150 2800
Wire Wire Line
	1150 2700 1150 2800
Text GLabel 1300 5250 0    60   Input ~ 0
TX_DIODE
Text GLabel 1300 5350 0    60   Input ~ 0
RX_DIODE
Wire Wire Line
	1300 5350 1700 5350
Wire Wire Line
	1700 5250 1300 5250
Text Notes 1150 1450 0    100  ~ 0
Infrared Comms
Wire Wire Line
	5300 7150 4500 7150
Wire Wire Line
	5300 6500 4500 6500
Wire Wire Line
	5300 6500 5300 6650
Connection ~ 4500 6500
Wire Wire Line
	5850 6500 5850 6650
Connection ~ 5300 6500
$Comp
L Device:C C3
U 1 1 5D736B55
P 5850 6800
F 0 "C3" H 5875 6900 50  0000 L CNN
F 1 "0.1u" H 5875 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5888 6650 50  0001 C CNN
F 3 "AVX 08053C104KAT2A" H 5850 6800 50  0001 C CNN
	1    5850 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D736B5B
P 5850 7000
F 0 "#PWR012" H 5850 6750 50  0001 C CNN
F 1 "GND" H 5855 6827 50  0000 C CNN
F 2 "" H 5850 7000 50  0001 C CNN
F 3 "" H 5850 7000 50  0001 C CNN
	1    5850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7000 5850 6950
Wire Wire Line
	6200 6500 6200 6650
Text Notes 4900 6250 0    100  ~ 0
Power Supply
Text Notes 1750 3950 0    100  ~ 0
Arduino Nano
Connection ~ 4500 7150
Wire Wire Line
	4500 7200 4500 7150
Wire Wire Line
	5300 7050 5300 7150
Wire Wire Line
	5300 6500 5850 6500
Connection ~ 5850 6500
Wire Wire Line
	5850 6500 6200 6500
Wire Wire Line
	4500 6450 4500 6500
$Comp
L Jumper:SolderJumper_3_Bridged12 JP3
U 1 1 5C72F7D3
P 5450 2350
F 0 "JP3" V 5550 2200 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 5950 2000 50  0000 L CNN
F 2 "Rays Footprints:SolderJumper_3_Pad" H 5450 2350 50  0001 C CNN
F 3 "~" H 5450 2350 50  0001 C CNN
	1    5450 2350
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 5C72F942
P 5200 2450
F 0 "JP2" V 5300 2300 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 5700 1850 50  0000 L CNN
F 2 "Rays Footprints:SolderJumper_3_Pad" H 5200 2450 50  0001 C CNN
F 3 "~" H 5200 2450 50  0001 C CNN
	1    5200 2450
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5C72F9AE
P 4950 2600
F 0 "JP1" V 5050 2450 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 5500 1750 50  0000 L CNN
F 2 "Rays Footprints:SolderJumper_3_Pad" H 4950 2600 50  0001 C CNN
F 3 "~" H 4950 2600 50  0001 C CNN
	1    4950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2550 5650 2600
$Comp
L power:VCC #PWR028
U 1 1 5C73D163
P 6050 2050
F 0 "#PWR028" H 6050 1900 50  0001 C CNN
F 1 "VCC" H 6067 2223 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2050 6050 2100
$Comp
L power:GND #PWR027
U 1 1 5C744604
P 5750 2900
F 0 "#PWR027" H 5750 2650 50  0001 C CNN
F 1 "GND" H 5900 2800 50  0000 C CNN
F 2 "" H 5750 2900 50  0001 C CNN
F 3 "" H 5750 2900 50  0001 C CNN
	1    5750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2800 4950 2850
Wire Wire Line
	4950 2850 5200 2850
Wire Wire Line
	5450 2850 5450 2550
Wire Wire Line
	5200 2650 5200 2850
Connection ~ 5200 2850
Wire Wire Line
	5200 2850 5450 2850
Wire Wire Line
	5750 2900 5750 2850
Wire Wire Line
	5450 2850 5750 2850
Connection ~ 5450 2850
Wire Wire Line
	6050 2750 6050 2850
Connection ~ 5750 2850
Wire Wire Line
	5750 2850 6050 2850
Wire Wire Line
	5650 2600 5100 2600
Wire Wire Line
	5650 2450 5350 2450
$Comp
L memory:24LC04 U4
U 1 1 5C72F5B1
P 6050 2450
F 0 "U4" H 6150 2850 50  0000 C CNN
F 1 "24LC04" H 6250 2750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6100 2200 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21708K.pdf" H 6050 2350 50  0001 C CNN
	1    6050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2350 5650 2350
Wire Wire Line
	4950 2400 4950 2100
Wire Wire Line
	4950 2100 5200 2100
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6050 2150
Wire Wire Line
	5450 2150 5450 2100
Connection ~ 5450 2100
Wire Wire Line
	5450 2100 6050 2100
Wire Wire Line
	5200 2250 5200 2100
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5450 2100
Wire Wire Line
	6550 2350 6450 2350
Wire Wire Line
	6450 2450 6550 2450
Text GLabel 6550 2350 2    60   Input ~ 0
SDA
Text GLabel 6550 2450 2    60   Input ~ 0
SCL
Text GLabel 3150 5950 2    60   Input ~ 0
SDA
Text GLabel 3150 6050 2    60   Input ~ 0
SCL
Text GLabel 8400 5750 3    60   Input ~ 0
SCL
Text GLabel 8500 5750 3    60   Input ~ 0
SDA
$Comp
L conn:Conn_01x02_Male J1
U 1 1 5C779A79
P 7150 2550
F 0 "J1" H 7123 2430 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7500 2650 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7150 2550 50  0001 C CNN
F 3 "~" H 7150 2550 50  0001 C CNN
	1    7150 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5C7874AE
P 6550 2700
F 0 "R5" V 6450 2700 50  0000 C CNN
F 1 "10k" V 6650 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6590 2690 50  0001 C CNN
F 3 "~" H 6550 2700 50  0001 C CNN
	1    6550 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 2550 6550 2550
Connection ~ 6550 2550
Wire Wire Line
	6550 2550 6950 2550
Wire Wire Line
	6050 2850 6550 2850
Connection ~ 6050 2850
Wire Wire Line
	6950 2450 6950 2100
Wire Wire Line
	6950 2100 6050 2100
Text GLabel 10700 4650 0    60   Input ~ 0
SDA
Text GLabel 10700 4750 0    60   Input ~ 0
SCL
Text GLabel 10700 5700 0    60   Input ~ 0
MISO
Text GLabel 10700 5600 0    60   Input ~ 0
MOSI
Text GLabel 10700 5800 0    60   Input ~ 0
SCK
Wire Wire Line
	10700 4750 10800 4750
Wire Wire Line
	10700 5600 10800 5600
Wire Wire Line
	10700 5700 10800 5700
Wire Wire Line
	10700 5800 10800 5800
Text GLabel 1600 5450 0    60   Input ~ 0
D5
Text GLabel 1600 5550 0    60   Input ~ 0
D6
Text GLabel 1600 5650 0    60   Input ~ 0
D7
Text GLabel 1600 5750 0    60   Input ~ 0
D8
Text GLabel 1600 4950 0    60   Input ~ 0
D0
Text GLabel 1600 5050 0    60   Input ~ 0
D1
Wire Wire Line
	1600 4950 1700 4950
Wire Wire Line
	1600 5450 1700 5450
Wire Wire Line
	1600 5550 1700 5550
Wire Wire Line
	1600 5650 1700 5650
Wire Wire Line
	1600 5750 1700 5750
Text GLabel 1600 5950 0    60   Input ~ 0
D10
Wire Wire Line
	1600 5950 1700 5950
Text GLabel 9750 5600 0    60   Input ~ 0
D0
Text GLabel 9750 5500 0    60   Input ~ 0
D1
Text GLabel 9750 5400 0    60   Input ~ 0
D5
Text GLabel 9750 5300 0    60   Input ~ 0
D6
Text GLabel 9750 5200 0    60   Input ~ 0
D7
Text GLabel 9750 5100 0    60   Input ~ 0
D8
Text GLabel 9750 5000 0    60   Input ~ 0
D10
Wire Wire Line
	9750 4800 9850 4800
Wire Wire Line
	9750 5000 9850 5000
Wire Wire Line
	9850 4900 9750 4900
Wire Wire Line
	9850 5100 9750 5100
Wire Wire Line
	9750 5200 9850 5200
Wire Wire Line
	9850 5300 9750 5300
Wire Wire Line
	9750 5400 9850 5400
Text GLabel 2800 6250 2    60   Input ~ 0
A7
Wire Wire Line
	2800 6250 2700 6250
Text GLabel 9750 4900 0    60   Input ~ 0
A7
Text GLabel 2800 6150 2    60   Input ~ 0
A6
Wire Wire Line
	2800 6150 2700 6150
Text GLabel 9750 4800 0    60   Input ~ 0
A6
Wire Wire Line
	10800 4650 10700 4650
Wire Wire Line
	9750 5500 9850 5500
Wire Wire Line
	9850 5600 9750 5600
Text Notes 5700 1450 0    100  ~ 0
EEPROM
Text Notes 10100 3950 0    100  ~ 0
I/O Header
Wire Wire Line
	2200 2200 2550 2200
Connection ~ 2200 2200
$Comp
L Device:C C1
U 1 1 5C95363E
P 7250 2000
F 0 "C1" H 7275 2100 50  0000 L CNN
F 1 "100n" H 7275 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7288 1850 50  0001 C CNN
F 3 "AVX 08053C104KAT2A" H 7250 2000 50  0001 C CNN
	1    7250 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5C953645
P 7250 2200
F 0 "#PWR020" H 7250 1950 50  0001 C CNN
F 1 "GND" V 7255 2072 50  0000 R CNN
F 2 "" H 7250 2200 50  0001 C CNN
F 3 "" H 7250 2200 50  0001 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2200 7250 2150
Wire Wire Line
	6950 1850 6950 2100
Wire Wire Line
	6950 1850 7250 1850
Connection ~ 6950 2100
Wire Wire Line
	2300 4450 2300 4550
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5C989DE2
P 8600 5200
F 0 "JP4" H 8600 5450 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 8300 5350 50  0000 L CNN
F 2 "Rays Footprints:SolderJumper_2_Pad" H 8600 5200 50  0001 C CNN
F 3 "~" H 8600 5200 50  0001 C CNN
	1    8600 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 2250 10600 2250
$Comp
L power:GND #PWR018
U 1 1 5D639152
P 10700 2700
F 0 "#PWR018" H 10700 2450 50  0001 C CNN
F 1 "GND" V 10705 2572 50  0000 R CNN
F 2 "" H 10700 2700 50  0001 C CNN
F 3 "" H 10700 2700 50  0001 C CNN
	1    10700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2700 10700 2250
$Comp
L conn:Conn_01x01 J3
U 1 1 5C77F345
P 4200 6500
F 0 "J3" H 4120 6275 50  0000 C CNN
F 1 "Conn_01x01" H 4120 6366 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4200 6500 50  0001 C CNN
F 3 "~" H 4200 6500 50  0001 C CNN
	1    4200 6500
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x01 J4
U 1 1 5C78D576
P 4200 7150
F 0 "J4" H 4120 6925 50  0000 C CNN
F 1 "Conn_01x01" H 4120 7016 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4200 7150 50  0001 C CNN
F 3 "~" H 4200 7150 50  0001 C CNN
	1    4200 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 7150 4500 7150
Wire Wire Line
	4400 6500 4500 6500
$Comp
L conn:Conn_01x04_Male J5
U 1 1 5C79C3C6
P 11000 4650
F 0 "J5" H 11106 4928 50  0000 C CNN
F 1 "Conn_01x04_Male" V 10900 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 11000 4650 50  0001 C CNN
F 3 "~" H 11000 4650 50  0001 C CNN
	1    11000 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR030
U 1 1 5C7A38CC
P 10650 4550
F 0 "#PWR030" H 10650 4400 50  0001 C CNN
F 1 "VCC" H 10667 4723 50  0000 C CNN
F 2 "" H 10650 4550 50  0001 C CNN
F 3 "" H 10650 4550 50  0001 C CNN
	1    10650 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5C7A395D
P 10650 4850
F 0 "#PWR031" H 10650 4600 50  0001 C CNN
F 1 "GND" H 10655 4677 50  0000 C CNN
F 2 "" H 10650 4850 50  0001 C CNN
F 3 "" H 10650 4850 50  0001 C CNN
	1    10650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4550 10800 4550
Wire Wire Line
	10800 4850 10650 4850
$Comp
L conn:Conn_01x05_Male J6
U 1 1 5C7C8A3B
P 11000 5700
F 0 "J6" H 11150 5350 50  0000 R CNN
F 1 "Conn_01x05_Male" V 10950 6000 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 11000 5700 50  0001 C CNN
F 3 "~" H 11000 5700 50  0001 C CNN
	1    11000 5700
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR032
U 1 1 5C7C8B83
P 10650 5500
F 0 "#PWR032" H 10650 5350 50  0001 C CNN
F 1 "VCC" H 10667 5673 50  0000 C CNN
F 2 "" H 10650 5500 50  0001 C CNN
F 3 "" H 10650 5500 50  0001 C CNN
	1    10650 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5C7C8BD2
P 10650 5900
F 0 "#PWR033" H 10650 5650 50  0001 C CNN
F 1 "GND" H 10655 5727 50  0000 C CNN
F 2 "" H 10650 5900 50  0001 C CNN
F 3 "" H 10650 5900 50  0001 C CNN
	1    10650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5900 10800 5900
Wire Wire Line
	10650 5500 10800 5500
$Comp
L conn:Conn_01x11_Male J2
U 1 1 5C7E7486
P 10050 5200
F 0 "J2" H 10156 5878 50  0000 C CNN
F 1 "Conn_01x11_Male" V 9950 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11_Pitch2.54mm" H 10050 5200 50  0001 C CNN
F 3 "~" H 10050 5200 50  0001 C CNN
	1    10050 5200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5C805C7C
P 9700 5700
F 0 "#PWR029" H 9700 5450 50  0001 C CNN
F 1 "GND" H 9705 5527 50  0000 C CNN
F 2 "" H 9700 5700 50  0001 C CNN
F 3 "" H 9700 5700 50  0001 C CNN
	1    9700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5C805CCD
P 9700 4700
F 0 "#PWR02" H 9700 4550 50  0001 C CNN
F 1 "VCC" H 9717 4873 50  0000 C CNN
F 2 "" H 9700 4700 50  0001 C CNN
F 3 "" H 9700 4700 50  0001 C CNN
	1    9700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4700 9850 4700
Wire Wire Line
	9700 5700 9850 5700
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5C860B0B
P 3350 7000
F 0 "J7" V 3316 6812 50  0000 R CNN
F 1 "Conn_01x02" V 3225 6812 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3350 7000 50  0001 C CNN
F 3 "~" H 3350 7000 50  0001 C CNN
	1    3350 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5C860D42
P 3400 7300
F 0 "#PWR034" H 3400 7050 50  0001 C CNN
F 1 "GND" V 3405 7172 50  0000 R CNN
F 2 "" H 3400 7300 50  0001 C CNN
F 3 "" H 3400 7300 50  0001 C CNN
	1    3400 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7200 3350 7250
Wire Wire Line
	3350 7250 3400 7250
Wire Wire Line
	3400 7250 3450 7250
Wire Wire Line
	3450 7250 3450 7200
Connection ~ 3400 7250
Wire Wire Line
	3400 7300 3400 7250
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C877ED2
P 2200 5550
F 0 "A1" H 2550 6550 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 2200 5450 50  0000 C CNN
F 2 "Modules:Arduino_Nano" H 2350 4600 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2200 4550 50  0001 C CNN
	1    2200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5150 1700 5150
Wire Wire Line
	1250 5850 1700 5850
Wire Wire Line
	1600 5050 1700 5050
$EndSCHEMATC
