EESchema Schematic File Version 4
LIBS:km-skillz-badge-kit-cache
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
$Comp
L Device:LED D1
U 1 1 5C6F5677
P 3250 4050
F 0 "D1" V 3300 3950 50  0000 R CNN
F 1 "LED" V 3200 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 3250 4050 50  0001 C CNN
F 3 "~" H 3250 4050 50  0001 C CNN
	1    3250 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C6F56D9
P 3550 4050
F 0 "D2" V 3600 3950 50  0000 R CNN
F 1 "LED" V 3500 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 3550 4050 50  0001 C CNN
F 3 "~" H 3550 4050 50  0001 C CNN
	1    3550 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C6F56F7
P 3850 4050
F 0 "D3" V 3900 3950 50  0000 R CNN
F 1 "LED" V 3800 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 3850 4050 50  0001 C CNN
F 3 "~" H 3850 4050 50  0001 C CNN
	1    3850 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5C6F5728
P 4150 4050
F 0 "D4" V 4200 3950 50  0000 R CNN
F 1 "LED" V 4100 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 4150 4050 50  0001 C CNN
F 3 "~" H 4150 4050 50  0001 C CNN
	1    4150 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5C6F5750
P 4450 4050
F 0 "D5" V 4500 3950 50  0000 R CNN
F 1 "LED" V 4400 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 4450 4050 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
	1    4450 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5C6F5963
P 3250 3650
F 0 "R1" H 3300 3700 50  0000 L CNN
F 1 "220" H 3300 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3290 3640 50  0001 C CNN
F 3 "~" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5C6F59A9
P 3550 3650
F 0 "R2" H 3600 3700 50  0000 L CNN
F 1 "220" H 3600 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3590 3640 50  0001 C CNN
F 3 "~" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5C6F59D9
P 3850 3650
F 0 "R3" H 3900 3700 50  0000 L CNN
F 1 "220" H 3900 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3890 3640 50  0001 C CNN
F 3 "~" H 3850 3650 50  0001 C CNN
	1    3850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5C6F5A0B
P 4150 3650
F 0 "R4" H 4200 3700 50  0000 L CNN
F 1 "220" H 4200 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4190 3640 50  0001 C CNN
F 3 "~" H 4150 3650 50  0001 C CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5C6F5A3B
P 4450 3650
F 0 "R5" H 4500 3700 50  0000 L CNN
F 1 "220" H 4500 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4490 3640 50  0001 C CNN
F 3 "~" H 4450 3650 50  0001 C CNN
	1    4450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3800 4450 3900
Wire Wire Line
	4150 3800 4150 3900
Wire Wire Line
	3850 3800 3850 3900
Wire Wire Line
	3550 3800 3550 3900
Wire Wire Line
	3250 3800 3250 3900
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5C6F7B41
P 3950 4950
F 0 "Q1" H 4141 4996 50  0000 L CNN
F 1 "2N3904" H 4141 4905 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4150 4875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3950 4950 50  0001 L CNN
	1    3950 4950
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5C6F7E05
P 6350 3950
F 0 "#PWR03" H 6350 3800 50  0001 C CNN
F 1 "VCC" H 6367 4123 50  0000 C CNN
F 2 "" H 6350 3950 50  0001 C CNN
F 3 "" H 6350 3950 50  0001 C CNN
	1    6350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4200 3250 4350
Wire Wire Line
	3250 4350 3550 4350
Wire Wire Line
	4450 4350 4450 4200
Wire Wire Line
	4150 4200 4150 4350
Connection ~ 4150 4350
Wire Wire Line
	4150 4350 4450 4350
Wire Wire Line
	3850 4200 3850 4350
Connection ~ 3850 4350
Wire Wire Line
	3850 4350 4150 4350
Wire Wire Line
	3550 4200 3550 4350
Connection ~ 3550 4350
Wire Wire Line
	3550 4350 3850 4350
Wire Wire Line
	3250 3500 3250 3350
Wire Wire Line
	4450 3350 4450 3500
Wire Wire Line
	4150 3500 4150 3350
Connection ~ 4150 3350
Wire Wire Line
	4150 3350 4450 3350
Wire Wire Line
	3850 3500 3850 3350
Connection ~ 3850 3350
Wire Wire Line
	3850 3350 4150 3350
Wire Wire Line
	3550 3500 3550 3350
$Comp
L power:GND #PWR08
U 1 1 5C70DBE1
P 3850 5200
F 0 "#PWR08" H 3850 4950 50  0001 C CNN
F 1 "GND" H 3855 5027 50  0000 C CNN
F 2 "" H 3850 5200 50  0001 C CNN
F 3 "" H 3850 5200 50  0001 C CNN
	1    3850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5200 3850 5150
$Comp
L Device:LED D6
U 1 1 5C71463E
P 4800 4050
F 0 "D6" V 4850 3950 50  0000 R CNN
F 1 "LED" V 4750 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 4800 4050 50  0001 C CNN
F 3 "~" H 4800 4050 50  0001 C CNN
	1    4800 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5C714644
P 7900 4050
F 0 "D7" V 7950 3950 50  0000 R CNN
F 1 "LED" V 7850 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 7900 4050 50  0001 C CNN
F 3 "~" H 7900 4050 50  0001 C CNN
	1    7900 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5C71464A
P 8200 4050
F 0 "D8" V 8250 3950 50  0000 R CNN
F 1 "LED" V 8150 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 8200 4050 50  0001 C CNN
F 3 "~" H 8200 4050 50  0001 C CNN
	1    8200 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5C714650
P 8500 4050
F 0 "D9" V 8550 3950 50  0000 R CNN
F 1 "LED" V 8450 3950 50  0000 R CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" H 8500 4050 50  0001 C CNN
F 3 "~" H 8500 4050 50  0001 C CNN
	1    8500 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5C714656
P 8800 4050
F 0 "D10" V 8850 3950 50  0000 R CNN
F 1 "LED" V 8750 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 8800 4050 50  0001 C CNN
F 3 "~" H 8800 4050 50  0001 C CNN
	1    8800 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5C71465C
P 4800 3650
F 0 "R6" H 4850 3700 50  0000 L CNN
F 1 "220" H 4850 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4840 3640 50  0001 C CNN
F 3 "~" H 4800 3650 50  0001 C CNN
	1    4800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5C714662
P 7900 3650
F 0 "R7" H 7950 3700 50  0000 L CNN
F 1 "220" H 7950 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7940 3640 50  0001 C CNN
F 3 "~" H 7900 3650 50  0001 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5C714668
P 8200 3650
F 0 "R8" H 8250 3700 50  0000 L CNN
F 1 "220" H 8250 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8240 3640 50  0001 C CNN
F 3 "~" H 8200 3650 50  0001 C CNN
	1    8200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5C71466E
P 8500 3650
F 0 "R9" H 8550 3700 50  0000 L CNN
F 1 "220" H 8550 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8540 3640 50  0001 C CNN
F 3 "~" H 8500 3650 50  0001 C CNN
	1    8500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5C714674
P 8800 3650
F 0 "R10" H 8850 3700 50  0000 L CNN
F 1 "220" H 8850 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8840 3640 50  0001 C CNN
F 3 "~" H 8800 3650 50  0001 C CNN
	1    8800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3800 8800 3900
Wire Wire Line
	8500 3800 8500 3900
Wire Wire Line
	8200 3800 8200 3900
Wire Wire Line
	7900 3800 7900 3900
Wire Wire Line
	4800 3800 4800 3900
Wire Wire Line
	4800 4200 4800 4350
Wire Wire Line
	8800 4350 8800 4200
Wire Wire Line
	8500 4200 8500 4350
Connection ~ 8500 4350
Wire Wire Line
	8500 4350 8800 4350
Wire Wire Line
	8200 4200 8200 4350
Connection ~ 8200 4350
Wire Wire Line
	8200 4350 8500 4350
Wire Wire Line
	7900 4200 7900 4350
Wire Wire Line
	7900 4350 8200 4350
Wire Wire Line
	4800 3500 4800 3350
Wire Wire Line
	8800 3350 8800 3500
Wire Wire Line
	8500 3500 8500 3350
Connection ~ 8500 3350
Wire Wire Line
	8500 3350 8800 3350
Wire Wire Line
	8200 3500 8200 3350
Connection ~ 8200 3350
Wire Wire Line
	8200 3350 8500 3350
Wire Wire Line
	7900 3500 7900 3350
Wire Wire Line
	7900 3350 8200 3350
$Comp
L power:VCC #PWR07
U 1 1 5C71B681
P 3850 3250
F 0 "#PWR07" H 3850 3100 50  0001 C CNN
F 1 "VCC" H 3867 3423 50  0000 C CNN
F 2 "" H 3850 3250 50  0001 C CNN
F 3 "" H 3850 3250 50  0001 C CNN
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5C71B6D8
P 8500 3300
F 0 "#PWR09" H 8500 3150 50  0001 C CNN
F 1 "VCC" H 8517 3473 50  0000 C CNN
F 2 "" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0001 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3250 3850 3350
Wire Wire Line
	8500 3300 8500 3350
Wire Wire Line
	3850 4350 3850 4750
$Comp
L Device:R_US R12
U 1 1 5C74F58C
P 4450 4950
F 0 "R12" V 4245 4950 50  0000 C CNN
F 1 "1k" V 4336 4950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4490 4940 50  0001 C CNN
F 3 "~" H 4450 4950 50  0001 C CNN
	1    4450 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 4950 4300 4950
$Comp
L Connector:TestPoint KM_LOGO1
U 1 1 5C6F8B27
P 5550 1800
F 0 "KM_LOGO1" H 5608 1920 50  0000 L CNN
F 1 "KM_LOGO_FOOTPRINT" H 5608 1829 50  0000 L CNN
F 2 "km-noob-badge-kit:km-logo-back-silkscreen" H 5750 1800 50  0001 C CNN
F 3 "~" H 5750 1800 50  0001 C CNN
	1    5550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4350 4450 4350
Connection ~ 4450 4350
Wire Wire Line
	4450 3350 4800 3350
Connection ~ 4450 3350
$Comp
L Device:LED D11
U 1 1 5C6FD4CE
P 9100 4050
F 0 "D11" V 9150 3950 50  0000 R CNN
F 1 "LED" V 9050 3950 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 9100 4050 50  0001 C CNN
F 3 "~" H 9100 4050 50  0001 C CNN
	1    9100 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5C6FD4D4
P 9100 3650
F 0 "R11" H 9150 3700 50  0000 L CNN
F 1 "220" H 9150 3600 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 9140 3640 50  0001 C CNN
F 3 "~" H 9100 3650 50  0001 C CNN
	1    9100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3800 9100 3900
Wire Wire Line
	9100 4350 9100 4200
Wire Wire Line
	8800 4350 9100 4350
Wire Wire Line
	9100 3350 9100 3500
Wire Wire Line
	8800 3350 9100 3350
Connection ~ 8800 3350
Connection ~ 8800 4350
$Comp
L Device:Battery_Cell BT1
U 1 1 5C7010F5
P 3900 1850
F 0 "BT1" H 4018 1946 50  0000 L CNN
F 1 "Battery_Cell" H 4018 1855 50  0000 L CNN
F 2 "Rays Footprints:Keystone-3035-CR2032-Coin" V 3900 1910 50  0001 C CNN
F 3 "~" V 3900 1910 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5C701347
P 4800 1600
F 0 "#PWR011" H 4800 1450 50  0001 C CNN
F 1 "VCC" H 4817 1773 50  0000 C CNN
F 2 "" H 4800 1600 50  0001 C CNN
F 3 "" H 4800 1600 50  0001 C CNN
	1    4800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3900 1650
$Comp
L power:GND #PWR012
U 1 1 5C702E76
P 3700 2150
F 0 "#PWR012" H 3700 1900 50  0001 C CNN
F 1 "GND" H 3705 1977 50  0000 C CNN
F 2 "" H 3700 2150 50  0001 C CNN
F 3 "" H 3700 2150 50  0001 C CNN
	1    3700 2150
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 5C6F7D25
P 5900 4700
F 0 "C1" H 5722 4654 50  0000 R CNN
F 1 "10u" H 5722 4745 50  0000 R CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5900 4700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104K15X7RF5UH5/BC5229CT-ND/8557358" H 5900 4700 50  0001 C CNN
	1    5900 4700
	0    -1   -1   0   
$EndComp
Connection ~ 3550 3350
Wire Wire Line
	3550 3350 3850 3350
Wire Wire Line
	3250 3350 3550 3350
$Comp
L Device:R_US R14
U 1 1 5C714049
P 5650 4350
F 0 "R14" H 5718 4396 50  0000 L CNN
F 1 "10k" H 5718 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5690 4340 50  0001 C CNN
F 3 "~" H 5650 4350 50  0001 C CNN
	1    5650 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5C71404F
P 6150 4350
F 0 "R15" H 6218 4396 50  0000 L CNN
F 1 "121k" H 6218 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 6190 4340 50  0001 C CNN
F 3 "~" H 6150 4350 50  0001 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4200 5650 4050
Wire Wire Line
	6150 4200 6150 4050
Wire Wire Line
	6350 3950 6350 4050
Wire Wire Line
	5650 4050 6150 4050
Wire Wire Line
	5650 4500 5650 4700
Wire Wire Line
	6150 4500 6150 4700
$Comp
L pspice:C C2
U 1 1 5C7550CD
P 6800 4700
F 0 "C2" H 6622 4654 50  0000 R CNN
F 1 "10u" H 6622 4745 50  0000 R CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6800 4700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104K15X7RF5UH5/BC5229CT-ND/8557358" H 6800 4700 50  0001 C CNN
	1    6800 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5C7550D3
P 6550 4350
F 0 "R16" H 6618 4396 50  0000 L CNN
F 1 "121k" H 6618 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 6590 4340 50  0001 C CNN
F 3 "~" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 5C7550D9
P 7050 4350
F 0 "R17" H 7118 4396 50  0000 L CNN
F 1 "10k" H 7118 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7090 4340 50  0001 C CNN
F 3 "~" H 7050 4350 50  0001 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4200 6550 4050
Wire Wire Line
	7050 4200 7050 4050
Wire Wire Line
	6550 4050 7050 4050
Wire Wire Line
	6550 4500 6550 4700
Wire Wire Line
	7050 4500 7050 4700
Wire Wire Line
	6150 4050 6350 4050
Connection ~ 6150 4050
Connection ~ 6550 4050
Connection ~ 6350 4050
Wire Wire Line
	6350 4050 6550 4050
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5C75AA23
P 6950 5300
F 0 "Q4" H 7141 5346 50  0000 L CNN
F 1 "2N3904" H 7141 5255 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7150 5225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6950 5300 50  0001 L CNN
	1    6950 5300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5C75AB19
P 5750 5300
F 0 "Q3" H 5941 5346 50  0000 L CNN
F 1 "2N3904" H 5941 5255 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5950 5225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5750 5300 50  0001 L CNN
	1    5750 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 4700 5650 4950
Connection ~ 5650 4700
Wire Wire Line
	7050 4700 7050 4950
Connection ~ 7050 4700
$Comp
L power:GND #PWR02
U 1 1 5C765477
P 7050 5550
F 0 "#PWR02" H 7050 5300 50  0001 C CNN
F 1 "GND" H 7055 5377 50  0000 C CNN
F 2 "" H 7050 5550 50  0001 C CNN
F 3 "" H 7050 5550 50  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C7654CC
P 5650 5550
F 0 "#PWR01" H 5650 5300 50  0001 C CNN
F 1 "GND" H 5655 5377 50  0000 C CNN
F 2 "" H 5650 5550 50  0001 C CNN
F 3 "" H 5650 5550 50  0001 C CNN
	1    5650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5650 5550
Wire Wire Line
	7050 5500 7050 5550
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5C77F2AF
P 8400 4950
F 0 "Q2" H 8591 4996 50  0000 L CNN
F 1 "2N3904" H 8591 4905 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8600 4875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8400 4950 50  0001 L CNN
	1    8400 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C77F2B5
P 8500 5200
F 0 "#PWR04" H 8500 4950 50  0001 C CNN
F 1 "GND" H 8505 5027 50  0000 C CNN
F 2 "" H 8500 5200 50  0001 C CNN
F 3 "" H 8500 5200 50  0001 C CNN
	1    8500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5200 8500 5150
Wire Wire Line
	8500 4350 8500 4750
$Comp
L Device:R_US R13
U 1 1 5C77F2BD
P 7950 4950
F 0 "R13" V 7745 4950 50  0000 C CNN
F 1 "1k" V 7836 4950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 7990 4940 50  0001 C CNN
F 3 "~" H 7950 4950 50  0001 C CNN
	1    7950 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 4950 8200 4950
Wire Wire Line
	7800 4950 7050 4950
Connection ~ 7050 4950
Wire Wire Line
	7050 4950 7050 5100
Wire Wire Line
	4600 4950 5650 4950
Connection ~ 5650 4950
Wire Wire Line
	5650 4950 5650 5100
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C7A3D24
P 4350 1400
F 0 "J1" V 4550 1400 50  0000 R CNN
F 1 "Conn_01x02" V 4450 1600 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4350 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	3900 1600 4250 1600
Wire Wire Line
	4350 1600 4800 1600
$Comp
L pspice:C C3
U 1 1 5C7B4DE3
P 3500 1850
F 0 "C3" H 3322 1804 50  0000 R CNN
F 1 "0.1u" H 3322 1895 50  0000 R CNN
F 2 "Capacitors_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3500 1850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-bc-components/K104K15X7RF5UH5/BC5229CT-ND/8557358" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1600 3900 1600
Connection ~ 3900 1600
Wire Wire Line
	3500 2100 3500 2150
Wire Wire Line
	3500 2150 3700 2150
Wire Wire Line
	3900 2150 3700 2150
Wire Wire Line
	3900 1950 3900 2150
Connection ~ 3700 2150
$Comp
L Connector:TestPoint MTH1
U 1 1 5C7BEE0B
P 6850 1250
F 0 "MTH1" H 6908 1370 50  0000 L CNN
F 1 "Mount Hole" H 6908 1279 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7050 1250 50  0001 C CNN
F 3 "~" H 7050 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint MTH4
U 1 1 5C7C3E6F
P 6850 1850
F 0 "MTH4" H 6908 1970 50  0000 L CNN
F 1 "Mount Hole" H 6908 1879 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7050 1850 50  0001 C CNN
F 3 "~" H 7050 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint MTH3
U 1 1 5C7C3ED3
P 6850 1650
F 0 "MTH3" H 6908 1770 50  0000 L CNN
F 1 "Mount Hole" H 6908 1679 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7050 1650 50  0001 C CNN
F 3 "~" H 7050 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint MTH2
U 1 1 5C7C3F39
P 6850 1450
F 0 "MTH2" H 6908 1570 50  0000 L CNN
F 1 "Mount Hole" H 6908 1479 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7050 1450 50  0001 C CNN
F 3 "~" H 7050 1450 50  0001 C CNN
	1    6850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4700 6550 5300
Wire Wire Line
	6550 5300 6750 5300
Connection ~ 6150 4700
Wire Wire Line
	6550 4700 6150 5300
Wire Wire Line
	6150 5300 5950 5300
Connection ~ 6550 4700
$EndSCHEMATC
