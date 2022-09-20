EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Connector_Generic:Conn_01x01 MTH1
U 1 1 5C7BEE0B
P 11850 7100
F 0 "MTH1" H 11908 7220 50  0000 L CNN
F 1 "Mount Hole" H 11908 7129 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12050 7100 50  0001 C CNN
F 3 "~" H 12050 7100 50  0001 C CNN
	1    11850 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 MTH3
U 1 1 5C7C3E6F
P 11850 7600
F 0 "MTH3" H 11908 7720 50  0000 L CNN
F 1 "Mount Hole" H 11908 7629 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12050 7600 50  0001 C CNN
F 3 "~" H 12050 7600 50  0001 C CNN
	1    11850 7600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 MTH2
U 1 1 5C7C3ED3
P 11850 7350
F 0 "MTH2" H 11908 7470 50  0000 L CNN
F 1 "Mount Hole" H 11908 7379 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12050 7350 50  0001 C CNN
F 3 "~" H 12050 7350 50  0001 C CNN
	1    11850 7350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 MTH4
U 1 1 5C7C3F39
P 11850 7850
F 0 "MTH4" H 11908 7970 50  0000 L CNN
F 1 "Mount Hole" H 11908 7879 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12050 7850 50  0001 C CNN
F 3 "~" H 12050 7850 50  0001 C CNN
	1    11850 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F1B9070
P 5300 4050
F 0 "R1" H 5150 4000 50  0000 C CNN
F 1 "1k" H 5150 4100 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 5340 4040 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 5300 4050 50  0001 C CNN
	1    5300 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F1B9076
P 5800 5650
F 0 "#PWR01" H 5800 5400 50  0001 C CNN
F 1 "GND" H 5805 5477 50  0001 C CNN
F 2 "" H 5800 5650 50  0001 C CNN
F 3 "" H 5800 5650 50  0001 C CNN
	1    5800 5650
	1    0    0    -1  
$EndComp
$Comp
L SMT-Theremin-v2-rescue:LM555-Rays_Symbols U1
U 1 1 5EE98C1B
P 5900 4350
F 0 "U1" H 5900 4300 50  0000 L CNN
F 1 "NE555" H 5800 4200 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 5900 4350 50  0001 C CNN
	1    5900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4250 5300 4250
Wire Wire Line
	5300 4250 5300 4200
Wire Wire Line
	5800 3950 5800 3850
Wire Wire Line
	5800 3850 5300 3850
Wire Wire Line
	5300 3850 5300 3900
Wire Wire Line
	5800 3850 6050 3850
Wire Wire Line
	6050 3850 6050 3950
Connection ~ 5800 3850
Text GLabel 6100 3700 2    50   Input ~ 0
VCC
Wire Wire Line
	6100 3700 6050 3700
Wire Wire Line
	6050 3700 6050 3850
Connection ~ 6050 3850
$Comp
L Device:R_US R2
U 1 1 5EEA9AFA
P 6650 4100
F 0 "R2" H 6500 4050 50  0000 C CNN
F 1 "1k" H 6500 4150 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 6690 4090 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 6650 4100 50  0001 C CNN
	1    6650 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3850 6650 3850
$Comp
L Device:LED D1
U 1 1 5EEB2C9B
P 6650 4450
F 0 "D1" V 6689 4333 50  0000 R CNN
F 1 "LED" V 6598 4333 50  0000 R CNN
F 2 "Rays Footprints:D_0805_HandSoldering" H 6650 4450 50  0001 C CNN
F 3 "~" H 6650 4450 50  0001 C CNN
	1    6650 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 4250 6650 4300
Wire Wire Line
	6650 3850 6650 3950
Wire Wire Line
	6400 4700 6650 4700
Wire Wire Line
	6650 4700 6650 4600
Wire Wire Line
	5800 5550 5800 5600
Wire Wire Line
	5800 5600 6050 5600
$Comp
L Device:CP C1
U 1 1 5EECC96C
P 5300 5250
F 0 "C1" H 5000 5300 50  0000 L CNN
F 1 "10u" H 5000 5200 50  0000 L CNN
F 2 "Rays Footprints:C_1206_HandSoldering" H 5338 5100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL31B106KBHNNNE/1276-6767-1-ND/5961626" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4850 5300 4850
Wire Wire Line
	5300 5600 5800 5600
Connection ~ 5800 5600
Wire Wire Line
	5800 5650 5800 5600
Wire Wire Line
	5400 4700 5300 4700
Wire Wire Line
	5300 4700 5300 4850
Connection ~ 5300 4250
$Comp
L Device:C C2
U 1 1 5EF0390D
P 5800 5400
F 0 "C2" H 5950 5350 50  0000 L CNN
F 1 "0.01u" H 5900 5450 50  0000 L CNN
F 2 "Rays Footprints:C_0603_HandSoldering" H 5838 5250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0805C822KBRACTU/399-6740-1-ND/3083914" H 5800 5400 50  0001 C CNN
	1    5800 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 5200 5800 5250
Wire Wire Line
	6050 5200 6050 5600
Wire Wire Line
	5300 4850 5300 4900
Connection ~ 5300 4850
Wire Wire Line
	5300 5400 5300 5600
$Comp
L Device:Speaker LS1
U 1 1 5EF2FAD5
P 10400 5250
F 0 "LS1" H 10570 5246 50  0000 L CNN
F 1 "Speaker" H 10570 5155 50  0000 L CNN
F 2 "Rays Footprints:Speaker-40mm" H 10400 5050 50  0001 C CNN
F 3 "~" H 10390 5200 50  0001 C CNN
	1    10400 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5EF65298
P 8850 4050
F 0 "R4" H 8700 4000 50  0000 C CNN
F 1 "1k" H 8700 4100 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 8890 4040 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 8850 4050 50  0001 C CNN
	1    8850 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EF652A2
P 9300 5650
F 0 "#PWR02" H 9300 5400 50  0001 C CNN
F 1 "GND" H 9305 5477 50  0001 C CNN
F 2 "" H 9300 5650 50  0001 C CNN
F 3 "" H 9300 5650 50  0001 C CNN
	1    9300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4250 8850 4200
Wire Wire Line
	9300 3950 9300 3850
Wire Wire Line
	8850 3850 8850 3900
Wire Wire Line
	9550 3850 9550 3950
Connection ~ 9300 3850
Text GLabel 9600 3700 2    50   Input ~ 0
VCC
Wire Wire Line
	9600 3700 9550 3700
Wire Wire Line
	9550 3700 9550 3850
Connection ~ 9550 3850
Wire Wire Line
	9300 5550 9300 5600
Wire Wire Line
	8850 5600 9300 5600
Connection ~ 9300 5600
Wire Wire Line
	9300 5650 9300 5600
Wire Wire Line
	8850 4700 8850 4850
$Comp
L Device:C C4
U 1 1 5EF652FD
P 9300 5400
F 0 "C4" H 9450 5350 50  0000 L CNN
F 1 "0.01u" H 9400 5450 50  0000 L CNN
F 2 "Rays Footprints:C_0603_HandSoldering" H 9338 5250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0805C822KBRACTU/399-6740-1-ND/3083914" H 9300 5400 50  0001 C CNN
	1    9300 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 5200 9300 5250
Wire Wire Line
	9550 5200 9550 5600
Wire Wire Line
	8850 4850 8850 5100
Connection ~ 8850 4850
Wire Wire Line
	8850 5400 8850 5600
$Comp
L Device:C C3
U 1 1 5EF70326
P 8850 5250
F 0 "C3" H 9000 5200 50  0000 L CNN
F 1 "0.1u" H 8950 5300 50  0000 L CNN
F 2 "Rays Footprints:C_0805_HandSoldering" H 8888 5100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0805C822KBRACTU/399-6740-1-ND/3083914" H 8850 5250 50  0001 C CNN
	1    8850 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 4700 9950 4750
Connection ~ 9550 5600
$Comp
L Connector_Generic:Conn_01x01 TP1
U 1 1 5EFE14FB
P 12050 5250
F 0 "TP1" H 12108 5370 50  0000 L CNN
F 1 "EZ Hook Hole" H 12108 5279 50  0000 L CNN
F 2 "Rays Footprints:TP-Minigrabber-Edge-Via" H 12250 5250 50  0001 C CNN
F 3 "~" H 12250 5250 50  0001 C CNN
	1    12050 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 TP2
U 1 1 5EFE2840
P 12050 5500
F 0 "TP2" H 12108 5620 50  0000 L CNN
F 1 "EZ Hook Hole" H 12108 5529 50  0000 L CNN
F 2 "Rays Footprints:TP-Minigrabber-Edge-Via" H 12250 5500 50  0001 C CNN
F 3 "~" H 12250 5500 50  0001 C CNN
	1    12050 5500
	1    0    0    -1  
$EndComp
Text GLabel 11800 5250 0    50   Input ~ 0
VCC
Wire Wire Line
	11800 5250 11850 5250
$Comp
L power:GND #PWR03
U 1 1 5EFE3AD7
P 11800 5500
F 0 "#PWR03" H 11800 5250 50  0001 C CNN
F 1 "GND" H 11805 5327 50  0001 C CNN
F 2 "" H 11800 5500 50  0001 C CNN
F 3 "" H 11800 5500 50  0001 C CNN
	1    11800 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	11800 5500 11850 5500
Connection ~ 8850 4250
Wire Wire Line
	8850 4700 8800 4700
Connection ~ 8850 4700
$Comp
L Device:R_PHOTO R6
U 1 1 5EFE57AA
P 8650 4700
F 0 "R6" V 8750 4500 50  0000 C CNN
F 1 "R_PHOTO" V 8850 4600 50  0000 C CNN
F 2 "OptoDevice:R_LDR_5.1x4.3mm_P3.4mm_Vertical" V 8700 4450 50  0001 L CNN
F 3 "~" H 8650 4650 50  0001 C CNN
	1    8650 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 4700 9950 4700
Wire Wire Line
	8900 4850 8850 4850
Wire Wire Line
	9300 3850 8850 3850
Wire Wire Line
	9300 3850 9550 3850
Wire Wire Line
	8900 4250 8850 4250
Wire Wire Line
	8900 4700 8850 4700
$Comp
L SMT-Theremin-v2-rescue:LM555-Rays_Symbols U2
U 1 1 5EF652B6
P 9400 4350
F 0 "U2" H 9350 4350 50  0000 L CNN
F 1 "NE555" H 9300 4250 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9400 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 9400 4350 50  0001 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5600 9550 5600
Text GLabel 6750 4700 2    50   Input ~ 0
OUT1
Wire Wire Line
	6750 4700 6650 4700
Connection ~ 6650 4700
Text GLabel 10200 4700 2    50   Input ~ 0
OUT2
Wire Wire Line
	10200 4700 9950 4700
Connection ~ 9950 4700
Text GLabel 11800 5750 0    50   Input ~ 0
OUT1
Text GLabel 11800 6000 0    50   Input ~ 0
OUT2
$Comp
L Connector_Generic:Conn_01x01 TP3
U 1 1 5EFFBA34
P 12050 5750
F 0 "TP3" H 12108 5870 50  0000 L CNN
F 1 "EZ Hook Hole" H 12108 5779 50  0000 L CNN
F 2 "Rays Footprints:TP-Minigrabber-Edge-Via" H 12250 5750 50  0001 C CNN
F 3 "~" H 12250 5750 50  0001 C CNN
	1    12050 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 TP4
U 1 1 5EFFBC2F
P 12050 6000
F 0 "TP4" H 12108 6120 50  0000 L CNN
F 1 "EZ Hook Hole" H 12108 6029 50  0000 L CNN
F 2 "Rays Footprints:TP-Minigrabber-Edge-Via" H 12250 6000 50  0001 C CNN
F 3 "~" H 12250 6000 50  0001 C CNN
	1    12050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 5750 11800 5750
Wire Wire Line
	11850 6000 11800 6000
$Comp
L Device:C C5
U 1 1 5F04EC08
P 7750 4150
F 0 "C5" H 7900 4100 50  0000 L CNN
F 1 "0.1u" H 7850 4200 50  0000 L CNN
F 2 "Rays Footprints:C_0805_HandSoldering" H 7788 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0805C822KBRACTU/399-6740-1-ND/3083914" H 7750 4150 50  0001 C CNN
	1    7750 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F050ED8
P 7750 4350
F 0 "#PWR0101" H 7750 4100 50  0001 C CNN
F 1 "GND" H 7755 4177 50  0001 C CNN
F 2 "" H 7750 4350 50  0001 C CNN
F 3 "" H 7750 4350 50  0001 C CNN
	1    7750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4350 7750 4300
$Comp
L power:GND #PWR0102
U 1 1 5F053720
P 12000 3700
F 0 "#PWR0102" H 12000 3450 50  0001 C CNN
F 1 "GND" H 12005 3527 50  0001 C CNN
F 2 "" H 12000 3700 50  0001 C CNN
F 3 "" H 12000 3700 50  0001 C CNN
	1    12000 3700
	0    -1   -1   0   
$EndComp
Text GLabel 12150 4100 2    50   Input ~ 0
VCC
Wire Wire Line
	11800 3700 11650 3700
$Comp
L Connector_Generic:Conn_01x02 TP5
U 1 1 5F079BA9
P 11900 3500
F 0 "TP5" V 12100 3400 50  0000 L CNN
F 1 "9V Battery" V 12000 3250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12100 3500 50  0001 C CNN
F 3 "~" H 12100 3500 50  0001 C CNN
	1    11900 3500
	0    1    -1   0   
$EndComp
Wire Wire Line
	9550 5600 10200 5600
$Comp
L Device:R_US R7
U 1 1 5F0883C8
P 9950 4900
F 0 "R7" H 9800 4850 50  0000 C CNN
F 1 "100" H 9800 4950 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 9990 4890 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 9950 4900 50  0001 C CNN
	1    9950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 5050 10200 5050
$Comp
L Switch:SW_SPDT SW1
U 1 1 5F08AE04
P 11650 3900
F 0 "SW1" V 11604 3712 50  0000 R CNN
F 1 "SW_SPDT" V 11695 3712 50  0000 R CNN
F 2 "Rays Footprints:KM-SPDT-Slide" H 11650 3900 50  0001 C CNN
F 3 "~" H 11650 3900 50  0001 C CNN
	1    11650 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	12150 4100 11750 4100
Wire Wire Line
	11900 3700 12000 3700
Text Notes 11600 4500 0    79   ~ 0
9V battery\npower switch
Text Notes 11600 6500 0    79   ~ 0
Min-grabber holes\nfor quick debugging\nduring class
Text Notes 11600 8400 0    79   ~ 0
Mounting holes\nin case anyone\nwants them
Text Notes 5500 3450 0    79   ~ 0
Flashes an LED\nfor vibrato
Text Notes 8850 3500 0    79   ~ 0
LDR picks up ambient\nlight and pulsed LED\nfor vibrato and pitch
Text Notes 5150 8700 0    79   ~ 0
Different size components gives attendees variety\nand makes it easy to quickly tell if components\nare installed in correct spots during class\n\n0.01uF - 0603\n0.1uF - 0805\n10uF - 1206\n\nResistors - 1206, 2 values\nTeimpots - 100k
Wire Wire Line
	6650 3850 7750 3850
Connection ~ 6650 3850
Connection ~ 8850 3850
Wire Wire Line
	7750 4000 7750 3850
Connection ~ 7750 3850
Wire Wire Line
	7750 3850 8850 3850
Text Notes 7500 3800 0    79   ~ 0
Vcc Bypass
Text Notes 10200 4900 0    79   ~ 0
Sets volume
Wire Wire Line
	10200 5350 10200 5600
Wire Wire Line
	10200 5050 10200 5250
Text Notes 5150 6850 0    79   ~ 0
T=0.693*(R1+2*R2)*C1\nR2=0: 0.693*(1000 + 2 * 0) * 10e-6 = 0.007 seconds = 144 hz\nR2=50k: 0.693*(1000 + 2 * 50,000) * 10e-6 = 0.700 seconds = 1.4 hz\nR2=100k: 0.693*(1000 + 2 * 100,000) * 10e-6 = 1.39 seconds = 0.718 hz
Text Notes 5150 7200 0    79   ~ 0
Frequency of 2nd stage is 72Hz if LDR = 0 Ohms
$Comp
L Device:R_US R8
U 1 1 5FBB6676
P 3450 6850
F 0 "R8" H 3300 6800 50  0000 C CNN
F 1 "1k" H 3300 6900 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 3490 6840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3450 6850 50  0001 C CNN
	1    3450 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5FBB6D96
P 3700 6850
F 0 "R9" H 3550 6800 50  0000 C CNN
F 1 "1k" H 3550 6900 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 3740 6840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3700 6850 50  0001 C CNN
	1    3700 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5FBB715B
P 3950 6850
F 0 "R10" H 3800 6800 50  0000 C CNN
F 1 "1k" H 3800 6900 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 3990 6840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3950 6850 50  0001 C CNN
	1    3950 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5FBB72FA
P 4200 6850
F 0 "R11" H 4050 6800 50  0000 C CNN
F 1 "1k" H 4050 6900 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 4240 6840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4200 6850 50  0001 C CNN
	1    4200 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5FBB777C
P 4450 6850
F 0 "R12" H 4300 6800 50  0000 C CNN
F 1 "1k" H 4300 6900 50  0000 C CNN
F 2 "Rays Footprints:R_1206_HandSoldering" V 4490 6840 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4450 6850 50  0001 C CNN
	1    4450 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R13
U 1 1 5FBB9406
P 3450 7300
F 0 "R13" H 3300 7250 50  0000 C CNN
F 1 "1k" H 3300 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 3490 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3450 7300 50  0001 C CNN
	1    3450 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R14
U 1 1 5FBB991B
P 3700 7300
F 0 "R14" H 3550 7250 50  0000 C CNN
F 1 "1k" H 3550 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 3740 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3700 7300 50  0001 C CNN
	1    3700 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R15
U 1 1 5FBB9CA7
P 3950 7300
F 0 "R15" H 3800 7250 50  0000 C CNN
F 1 "1k" H 3800 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 3990 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3950 7300 50  0001 C CNN
	1    3950 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5FBB9FA9
P 4200 7300
F 0 "R16" H 4050 7250 50  0000 C CNN
F 1 "1k" H 4050 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 4240 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4200 7300 50  0001 C CNN
	1    4200 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5FBBA2C1
P 4450 7300
F 0 "R17" H 4300 7250 50  0000 C CNN
F 1 "1k" H 4300 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 4490 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4450 7300 50  0001 C CNN
	1    4450 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R23
U 1 1 5FBBA637
P 4500 7750
F 0 "R23" H 4350 7700 50  0000 C CNN
F 1 "1k" H 4350 7800 50  0000 C CNN
F 2 "Rays Footprints:R_0603_HandSoldering" V 4540 7740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4500 7750 50  0001 C CNN
	1    4500 7750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5FBBAA7D
P 3450 7750
F 0 "R19" H 3300 7700 50  0000 C CNN
F 1 "1k" H 3300 7800 50  0000 C CNN
F 2 "Rays Footprints:R_0603_HandSoldering" V 3490 7740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3450 7750 50  0001 C CNN
	1    3450 7750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5FBBAD88
P 3700 7750
F 0 "R20" H 3550 7700 50  0000 C CNN
F 1 "1k" H 3550 7800 50  0000 C CNN
F 2 "Rays Footprints:R_0603_HandSoldering" V 3740 7740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3700 7750 50  0001 C CNN
	1    3700 7750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R21
U 1 1 5FBBB0F3
P 3950 7750
F 0 "R21" H 3800 7700 50  0000 C CNN
F 1 "1k" H 3800 7800 50  0000 C CNN
F 2 "Rays Footprints:R_0603_HandSoldering" V 3990 7740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 3950 7750 50  0001 C CNN
	1    3950 7750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R22
U 1 1 5FBBB417
P 4200 7750
F 0 "R22" H 4050 7700 50  0000 C CNN
F 1 "1k" H 4050 7800 50  0000 C CNN
F 2 "Rays Footprints:R_0603_HandSoldering" V 4240 7740 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4200 7750 50  0001 C CNN
	1    4200 7750
	-1   0    0    1   
$EndComp
Text Notes 3050 6900 0    79   ~ 0
1206
Text Notes 3050 7350 0    79   ~ 0
0805
Text Notes 3050 7750 0    79   ~ 0
0603
$Comp
L Device:R_US R18
U 1 1 5FBD33FA
P 4750 7300
F 0 "R18" H 4600 7250 50  0000 C CNN
F 1 "1k" H 4600 7350 50  0000 C CNN
F 2 "Rays Footprints:R_0805_HandSoldering" V 4790 7290 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/te-connectivity-passive-product/RLP73N3AR068FTDF/A109690CT-ND/4032456" H 4750 7300 50  0001 C CNN
	1    4750 7300
	-1   0    0    1   
$EndComp
$Comp
L symbols:Bourns-3310Y-xxx-xxxx R3
U 1 1 5EE91D28
P 4950 4500
F 0 "R3" V 4900 4700 50  0000 R CNN
F 1 "100k" V 5000 4750 50  0000 R CNN
F 2 "Rays Footprints:Bourns-3386PT-xxx-xxxx" H 4950 4500 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32783054938.html?spm=a2g0o.productlist.0.0.ab666affxj8zGK&algo_pvid=7ba6ab71-139d-481b-973b-450dc1e53d14&algo_expid=7ba6ab71-139d-481b-973b-450dc1e53d14-0&btsid=0bb0623116085147264632602e214e&ws_ab_test=searchweb0_0,searchweb201602_,searchweb201603_" H 4950 4500 50  0001 C CNN
	1    4950 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 4200 5150 4200
Wire Wire Line
	5150 4200 5150 4250
Wire Wire Line
	5150 4250 5300 4250
Wire Wire Line
	4750 4500 4750 4900
Wire Wire Line
	4750 4900 4950 4900
Wire Wire Line
	4950 4900 4950 4800
Wire Wire Line
	4950 4900 5300 4900
Connection ~ 4950 4900
Connection ~ 5300 4900
Wire Wire Line
	5300 4900 5300 5100
$Comp
L symbols:Bourns-3310Y-xxx-xxxx R5
U 1 1 5FE62569
P 8500 4300
F 0 "R5" V 8450 4500 50  0000 R CNN
F 1 "100k" V 8550 4550 50  0000 R CNN
F 2 "Rays Footprints:Bourns-3386PT-xxx-xxxx" H 8500 4300 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32783054938.html?spm=a2g0o.productlist.0.0.ab666affxj8zGK&algo_pvid=7ba6ab71-139d-481b-973b-450dc1e53d14&algo_expid=7ba6ab71-139d-481b-973b-450dc1e53d14-0&btsid=0bb0623116085147264632602e214e&ws_ab_test=searchweb0_0,searchweb201602_,searchweb201603_" H 8500 4300 50  0001 C CNN
	1    8500 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 4250 8850 4300
Wire Wire Line
	8150 4300 8150 4700
Wire Wire Line
	8150 4700 8500 4700
Wire Wire Line
	8150 4100 8150 4300
Connection ~ 8150 4300
Wire Wire Line
	8800 4300 8850 4300
Wire Wire Line
	8200 4300 8150 4300
Wire Wire Line
	8150 4100 8500 4100
$EndSCHEMATC
