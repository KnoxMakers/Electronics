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
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH1
U 1 1 5C7BEE0B
P 11350 4500
F 0 "MTH1" H 11408 4620 50  0000 L CNN
F 1 "Mount Hole" H 11408 4529 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 11550 4500 50  0001 C CNN
F 3 "~" H 11550 4500 50  0001 C CNN
	1    11350 4500
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH3
U 1 1 5C7C3E6F
P 12150 4500
F 0 "MTH3" H 12208 4620 50  0000 L CNN
F 1 "Mount Hole" H 12208 4529 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12350 4500 50  0001 C CNN
F 3 "~" H 12350 4500 50  0001 C CNN
	1    12150 4500
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH2
U 1 1 5C7C3ED3
P 11350 4750
F 0 "MTH2" H 11408 4870 50  0000 L CNN
F 1 "Mount Hole" H 11408 4779 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 11550 4750 50  0001 C CNN
F 3 "~" H 11550 4750 50  0001 C CNN
	1    11350 4750
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH4
U 1 1 5C7C3F39
P 12150 4750
F 0 "MTH4" H 12208 4870 50  0000 L CNN
F 1 "Mount Hole" H 12208 4779 50  0000 L CNN
F 2 "Rays Footprints:Mount-Hole-#4" H 12350 4750 50  0001 C CNN
F 3 "~" H 12350 4750 50  0001 C CNN
	1    12150 4750
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x02-Connector_Generic TP1
U 1 1 5F079BA9
P 10100 2200
F 0 "TP1" V 10300 2100 50  0000 L CNN
F 1 "VCC" V 10200 2100 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10300 2200 50  0001 C CNN
F 3 "~" H 10300 2200 50  0001 C CNN
	1    10100 2200
	1    0    0    1   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:SW_SPDT-Switch SW1
U 1 1 5F08AE04
P 10300 1950
F 0 "SW1" H 10150 1750 50  0000 R CNN
F 1 "SW_SPDT" H 10300 1850 50  0000 R CNN
F 2 "Rays Footprints:KM-SPDT-Slide" H 10300 1950 50  0001 C CNN
F 3 "~" H 10300 1950 50  0001 C CNN
	1    10300 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	10750 1850 10500 1850
Text Notes 9600 1550 0    150  ~ 0
Power Switch
Text Notes 11350 4200 0    79   ~ 0
Mounting holes\nin case anyone\nwants them
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR032
U 1 1 680951E7
P 10750 1850
F 0 "#PWR032" H 10750 1700 50  0001 C CNN
F 1 "+5V" H 10765 2023 50  0000 C CNN
F 2 "" H 10750 1850 50  0001 C CNN
F 3 "" H 10750 1850 50  0001 C CNN
	1    10750 1850
	0    1    1    0   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:USB-Micro-B-Power-Only-Rays_Symbols-synth1-rescue-synth-v2-rescue-km-discrete-bcd-7seg-rescue J1
U 1 1 68096CB4
P 8750 2100
F 0 "J1" H 8523 2096 50  0000 R CNN
F 1 "USB-Micro-B-Power-Only" H 8523 2005 50  0000 R CNN
F 2 "Rays Footprints:USB Micro-B Power Only" H 8700 1900 50  0001 C CNN
F 3 "" H 8700 1900 50  0001 C CNN
	1    8750 2100
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:D-Device D11
U 1 1 680999C4
P 9600 2150
F 0 "D11" V 9554 2229 50  0000 L CNN
F 1 "D" V 9645 2229 50  0000 L CNN
F 2 "Rays Footprints:D_SMB_Handsoldering" H 9600 2150 50  0001 C CNN
F 3 "MBRS360BT3G" H 9600 2150 50  0001 C CNN
	1    9600 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 2350 9600 2350
Wire Wire Line
	9600 2350 9600 2300
Wire Wire Line
	9350 1950 9600 1950
Wire Wire Line
	9600 1950 9600 2000
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR025
U 1 1 680DE3B5
P 8850 2800
F 0 "#PWR025" H 8850 2550 50  0001 C CNN
F 1 "GND" H 8855 2627 50  0001 C CNN
F 2 "" H 8850 2800 50  0001 C CNN
F 3 "" H 8850 2800 50  0001 C CNN
	1    8850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2800 8850 2750
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR024
U 1 1 680EF0C7
P 8850 1500
F 0 "#PWR024" H 8850 1250 50  0001 C CNN
F 1 "GND" H 8855 1327 50  0001 C CNN
F 2 "" H 8850 1500 50  0001 C CNN
F 3 "" H 8850 1500 50  0001 C CNN
	1    8850 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 1500 8850 1550
Connection ~ 9600 1950
Wire Wire Line
	9600 1950 9900 1950
Wire Wire Line
	9900 2100 9900 1950
Connection ~ 9900 1950
Wire Wire Line
	9900 1950 10100 1950
Wire Wire Line
	9900 2200 9900 2350
Wire Wire Line
	9900 2350 9600 2350
Connection ~ 9600 2350
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR031
U 1 1 6815923B
P 9900 2400
F 0 "#PWR031" H 9900 2150 50  0001 C CNN
F 1 "GND" H 9905 2227 50  0001 C CNN
F 2 "" H 9900 2400 50  0001 C CNN
F 3 "" H 9900 2400 50  0001 C CNN
	1    9900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2400 9900 2350
Connection ~ 9900 2350
$Comp
L km-discrete-adc-dac-rescue:LED-Device D12
U 1 1 5FEF4BBB
P 12000 2100
F 0 "D12" V 12000 1900 50  0000 C CNN
F 1 "LED" V 11900 1900 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 12000 2100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 12000 2100 50  0001 C CNN
	1    12000 2100
	0    -1   -1   0   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R29
U 1 1 5FEF4BCF
P 12000 2450
F 0 "R29" H 11800 2400 50  0000 C CNN
F 1 "4.7k" H 11800 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 12040 2440 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/filter/chip-resistor-surface-mount/52?s=N4IgjCBcpgbFoDGUBmBDANgZwKYBoQB7KAbRAA4BmAdjAgF0CAHAFyhAGUWAnASwDsA5iAC%2BBMAE5yEhCGSR02fEVIgADCEYhW7LnyGiCAJjXkArLPmLcBYpDKUAdBIAEAawDyACwC2WTcxskCAAqvy8LB4oALI4aFgArtw4hiAAtBbQcqiYNir2IEYB2kEgqWlFWfI8Ccp2ZBYEMlo6waJiIPBZvAAm7GlgahCB7CAELACeTCnB8cgiIkA" H 12000 2450 50  0001 C CNN
	1    12000 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	12000 2300 12000 2250
Wire Wire Line
	12000 2650 12000 2600
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR033
U 1 1 5FEF4BDB
P 12000 1900
F 0 "#PWR033" H 12000 1750 50  0001 C CNN
F 1 "+5V" H 12015 2073 50  0000 C CNN
F 2 "" H 12000 1900 50  0001 C CNN
F 3 "" H 12000 1900 50  0001 C CNN
	1    12000 1900
	1    0    0    -1  
$EndComp
Text Notes 11550 1550 0    150  ~ 0
Pwr LED
Wire Wire Line
	12000 1900 12000 1950
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR034
U 1 1 5FFADB2A
P 12000 3000
F 0 "#PWR034" H 12000 2750 50  0001 C CNN
F 1 "GND" H 12005 2827 50  0001 C CNN
F 2 "" H 12000 3000 50  0001 C CNN
F 3 "" H 12000 3000 50  0001 C CNN
	1    12000 3000
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH6
U 1 1 6040510F
P 15350 4050
F 0 "MTH6" H 15408 4170 50  0000 L CNN
F 1 "Mount Hole" H 15408 4079 50  0000 L CNN
F 2 "Rays Footprints:Keystone-5005" H 15550 4050 50  0001 C CNN
F 3 "~" H 15550 4050 50  0001 C CNN
	1    15350 4050
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR037
U 1 1 60405531
P 15150 4050
F 0 "#PWR037" H 15150 3800 50  0001 C CNN
F 1 "GND" H 15155 3877 50  0001 C CNN
F 2 "" H 15150 4050 50  0001 C CNN
F 3 "" H 15150 4050 50  0001 C CNN
	1    15150 4050
	0    1    1    0   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH7
U 1 1 60405918
P 15350 4300
F 0 "MTH7" H 15408 4420 50  0000 L CNN
F 1 "Mount Hole" H 15408 4329 50  0000 L CNN
F 2 "Rays Footprints:Keystone-5005" H 15550 4300 50  0001 C CNN
F 3 "~" H 15550 4300 50  0001 C CNN
	1    15350 4300
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR038
U 1 1 60405CA9
P 15150 4300
F 0 "#PWR038" H 15150 4150 50  0001 C CNN
F 1 "+5V" H 15165 4473 50  0000 C CNN
F 2 "" H 15150 4300 50  0001 C CNN
F 3 "" H 15150 4300 50  0001 C CNN
	1    15150 4300
	0    -1   -1   0   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH5
U 1 1 6040675A
P 15350 3800
F 0 "MTH5" H 15408 3920 50  0000 L CNN
F 1 "Mount Hole" H 15408 3829 50  0000 L CNN
F 2 "Rays Footprints:Keystone-5005" H 15550 3800 50  0001 C CNN
F 3 "~" H 15550 3800 50  0001 C CNN
	1    15350 3800
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM4040LP-4.1-Reference_Voltage U4
U 1 1 617424DE
P 13650 4550
F 0 "U4" V 13650 4350 50  0000 C CNN
F 1 "LM4030" V 13550 4300 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 13650 4350 50  0001 C CIN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/LM4040D41ILPR/1666787" H 13650 4550 50  0001 C CIN
	1    13650 4550
	0    -1   -1   0   
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R33
U 1 1 617439F4
P 13650 4150
F 0 "R33" H 13800 4200 50  0000 C CNN
F 1 "4.7k" H 13800 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 13690 4140 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 13650 4150 50  0001 C CNN
	1    13650 4150
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR036
U 1 1 617666C7
P 13650 4750
F 0 "#PWR036" H 13650 4500 50  0001 C CNN
F 1 "GND" H 13655 4577 50  0001 C CNN
F 2 "" H 13650 4750 50  0001 C CNN
F 3 "" H 13650 4750 50  0001 C CNN
	1    13650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 4750 13650 4700
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR035
U 1 1 61777B25
P 13650 3900
F 0 "#PWR035" H 13650 3750 50  0001 C CNN
F 1 "+5V" H 13665 4073 50  0000 C CNN
F 2 "" H 13650 3900 50  0001 C CNN
F 3 "" H 13650 3900 50  0001 C CNN
	1    13650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 3950 13650 4000
Wire Wire Line
	13650 4300 13650 4350
Text GLabel 14100 4350 2    50   Input ~ 0
VREF
Connection ~ 13650 4350
Wire Wire Line
	13650 4350 13650 4400
$Comp
L km-discrete-adc-dac-rescue:Conn_01x01-Connector_Generic MTH8
U 1 1 617D4478
P 15350 4550
F 0 "MTH8" H 15408 4670 50  0000 L CNN
F 1 "Mount Hole" H 15408 4579 50  0000 L CNN
F 2 "Rays Footprints:Keystone-5005" H 15550 4550 50  0001 C CNN
F 3 "~" H 15550 4550 50  0001 C CNN
	1    15350 4550
	1    0    0    -1  
$EndComp
Text GLabel 15100 4550 0    50   Input ~ 0
VREF
Wire Wire Line
	15100 4550 15150 4550
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R5
U 1 1 6099AAD9
P 1450 6750
F 0 "R5" H 1600 6800 50  0000 C CNN
F 1 "4.7k" H 1600 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 6740 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 6750 50  0001 C CNN
	1    1450 6750
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R6
U 1 1 6099C71B
P 1450 7650
F 0 "R6" H 1600 7700 50  0000 C CNN
F 1 "4.7k" H 1600 7600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 7640 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 7650 50  0001 C CNN
	1    1450 7650
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R7
U 1 1 6099CAD5
P 1450 8600
F 0 "R7" H 1600 8650 50  0000 C CNN
F 1 "4.7k" H 1600 8550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 8590 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 8600 50  0001 C CNN
	1    1450 8600
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U2
U 1 1 609A0BA0
P 2650 7100
F 0 "U2" H 2650 7467 50  0000 C CNN
F 1 "LM339" H 2650 7376 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 7200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2700 7300 50  0001 C CNN
	1    2650 7100
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U2
U 2 1 609A20F2
P 2650 8000
F 0 "U2" H 2650 8367 50  0000 C CNN
F 1 "LM339" H 2650 8276 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 8100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2700 8200 50  0001 C CNN
	2    2650 8000
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U2
U 3 1 609A27D3
P 2650 8900
F 0 "U2" H 2650 9267 50  0000 C CNN
F 1 "LM339" H 2650 9176 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 9000 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2700 9100 50  0001 C CNN
	3    2650 8900
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U1
U 4 1 609A2EAB
P 2650 5300
F 0 "U1" H 2650 5667 50  0000 C CNN
F 1 "LM339" H 2650 5576 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 5400 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2700 5500 50  0001 C CNN
	4    2650 5300
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U1
U 5 1 609A34CD
P 9000 4800
F 0 "U1" H 8958 4846 50  0000 L CNN
F 1 "LM339" H 8958 4755 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 8950 4900 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 9050 5000 50  0001 C CNN
	5    9000 4800
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R8
U 1 1 609A4E8F
P 1450 9400
F 0 "R8" H 1600 9450 50  0000 C CNN
F 1 "4.7k" H 1600 9350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 9390 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 9400 50  0001 C CNN
	1    1450 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 9000 1450 9000
Wire Wire Line
	2350 8100 1450 8100
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R1
U 1 1 60A66604
P 1450 3100
F 0 "R1" H 1600 3150 50  0000 C CNN
F 1 "4.7k" H 1600 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 3090 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 3100 50  0001 C CNN
	1    1450 3100
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R2
U 1 1 60A6729E
P 1450 4100
F 0 "R2" H 1600 4150 50  0000 C CNN
F 1 "4.7k" H 1600 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 4090 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 4100 50  0001 C CNN
	1    1450 4100
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R3
U 1 1 60A672A8
P 1450 4950
F 0 "R3" H 1600 5000 50  0000 C CNN
F 1 "4.7k" H 1600 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 4940 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 4950 50  0001 C CNN
	1    1450 4950
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U1
U 2 1 60A672BC
P 2650 4400
F 0 "U1" H 2650 4767 50  0000 C CNN
F 1 "LM339" H 2650 4676 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 4500 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/LM339NE3/2596856" H 2700 4600 50  0001 C CNN
	2    2650 4400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U2
U 5 1 60A672DA
P 9500 4800
F 0 "U2" H 9458 4846 50  0000 L CNN
F 1 "LM339" H 9458 4755 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 9450 4900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/LM339NE3/2596856" H 9550 5000 50  0001 C CNN
	5    9500 4800
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R4
U 1 1 60A672E4
P 1450 5850
F 0 "R4" H 1600 5900 50  0000 C CNN
F 1 "4.7k" H 1600 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1490 5840 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428" H 1450 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U1
U 3 1 60A672C6
P 2650 6200
F 0 "U1" H 2650 6567 50  0000 C CNN
F 1 "LM339" H 2650 6476 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 6300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/LM339NE3/2596856" H 2700 6400 50  0001 C CNN
	3    2650 6200
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR01
U 1 1 60AF07FC
P 1450 9600
F 0 "#PWR01" H 1450 9350 50  0001 C CNN
F 1 "GND" H 1455 9427 50  0001 C CNN
F 2 "" H 1450 9600 50  0001 C CNN
F 3 "" H 1450 9600 50  0001 C CNN
	1    1450 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 9600 1450 9550
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R9
U 1 1 60B06DC6
P 3050 3300
F 0 "R9" H 3200 3350 50  0000 C CNN
F 1 "4.7k" H 3200 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 3290 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R11
U 1 1 60B07754
P 3050 5100
F 0 "R11" H 3200 5150 50  0000 C CNN
F 1 "4.7k" H 3200 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 5090 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 5100 50  0001 C CNN
	1    3050 5100
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R10
U 1 1 60B080A5
P 3050 4200
F 0 "R10" H 3200 4250 50  0000 C CNN
F 1 "4.7k" H 3200 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 4190 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 4200 50  0001 C CNN
	1    3050 4200
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R12
U 1 1 60B08C13
P 3050 6000
F 0 "R12" H 3200 6050 50  0000 C CNN
F 1 "4.7k" H 3200 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 5990 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 6000 50  0001 C CNN
	1    3050 6000
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R13
U 1 1 60B093D7
P 3050 6900
F 0 "R13" H 3200 6950 50  0000 C CNN
F 1 "4.7k" H 3200 6850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 6890 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 6900 50  0001 C CNN
	1    3050 6900
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R14
U 1 1 60B09AC8
P 3050 7800
F 0 "R14" H 3200 7850 50  0000 C CNN
F 1 "4.7k" H 3200 7750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 7790 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 7800 50  0001 C CNN
	1    3050 7800
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R15
U 1 1 60B0A369
P 3050 8700
F 0 "R15" H 3200 8750 50  0000 C CNN
F 1 "4.7k" H 3200 8650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3090 8690 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3050 8700 50  0001 C CNN
	1    3050 8700
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR02
U 1 1 60B205FF
P 3050 3100
F 0 "#PWR02" H 3050 2950 50  0001 C CNN
F 1 "+5V" H 3065 3273 50  0000 C CNN
F 2 "" H 3050 3100 50  0001 C CNN
F 3 "" H 3050 3100 50  0001 C CNN
	1    3050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3100 3050 3150
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR03
U 1 1 60B35565
P 3050 4000
F 0 "#PWR03" H 3050 3850 50  0001 C CNN
F 1 "+5V" H 3065 4173 50  0000 C CNN
F 2 "" H 3050 4000 50  0001 C CNN
F 3 "" H 3050 4000 50  0001 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR04
U 1 1 60B35940
P 3050 4900
F 0 "#PWR04" H 3050 4750 50  0001 C CNN
F 1 "+5V" H 3065 5073 50  0000 C CNN
F 2 "" H 3050 4900 50  0001 C CNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR06
U 1 1 60B36497
P 3050 6700
F 0 "#PWR06" H 3050 6550 50  0001 C CNN
F 1 "+5V" H 3065 6873 50  0000 C CNN
F 2 "" H 3050 6700 50  0001 C CNN
F 3 "" H 3050 6700 50  0001 C CNN
	1    3050 6700
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR07
U 1 1 60B3671D
P 3050 7600
F 0 "#PWR07" H 3050 7450 50  0001 C CNN
F 1 "+5V" H 3065 7773 50  0000 C CNN
F 2 "" H 3050 7600 50  0001 C CNN
F 3 "" H 3050 7600 50  0001 C CNN
	1    3050 7600
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR08
U 1 1 60B36CEF
P 3050 8500
F 0 "#PWR08" H 3050 8350 50  0001 C CNN
F 1 "+5V" H 3065 8673 50  0000 C CNN
F 2 "" H 3050 8500 50  0001 C CNN
F 3 "" H 3050 8500 50  0001 C CNN
	1    3050 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 8850 3050 8900
Wire Wire Line
	3050 8900 2950 8900
Wire Wire Line
	2950 8000 3050 8000
Wire Wire Line
	3050 8000 3050 7950
Wire Wire Line
	3050 7650 3050 7600
Wire Wire Line
	2950 7100 3050 7100
Wire Wire Line
	3050 7100 3050 7050
Wire Wire Line
	2950 6200 3050 6200
Wire Wire Line
	3050 6200 3050 6150
Wire Wire Line
	2950 5300 3050 5300
Wire Wire Line
	3050 5300 3050 5250
Wire Wire Line
	3050 4400 3050 4350
Wire Wire Line
	3050 4050 3050 4000
Wire Wire Line
	3050 3500 3050 3450
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R21
U 1 1 60D02641
P 3600 8200
F 0 "R21" H 3750 8250 50  0000 C CNN
F 1 "4.7k" H 3750 8150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 8190 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 8200 50  0001 C CNN
	1    3600 8200
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R22
U 1 1 60D02F0C
P 3600 9100
F 0 "R22" H 3750 9150 50  0000 C CNN
F 1 "4.7k" H 3750 9050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 9090 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 9100 50  0001 C CNN
	1    3600 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9300 3600 9250
$Comp
L km-discrete-adc-dac-rescue:LED-Device D7
U 1 1 60D36F5F
P 3600 9450
F 0 "D7" V 3600 9250 50  0000 C CNN
F 1 "LED" V 3500 9250 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 9450 50  0001 C CNN
F 3 "~" H 3600 9450 50  0001 C CNN
	1    3600 9450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 8500 3050 8550
Connection ~ 3050 8900
$Comp
L km-discrete-adc-dac-rescue:LED-Device D6
U 1 1 60DB0D05
P 3600 8550
F 0 "D6" V 3600 8350 50  0000 C CNN
F 1 "LED" V 3500 8350 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 8550 50  0001 C CNN
F 3 "~" H 3600 8550 50  0001 C CNN
	1    3600 8550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 8400 3600 8350
Wire Wire Line
	3050 8000 3600 8000
Wire Wire Line
	3600 8000 3600 8050
Connection ~ 3050 8000
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR014
U 1 1 60E5E453
P 3600 8750
F 0 "#PWR014" H 3600 8500 50  0001 C CNN
F 1 "GND" H 3605 8577 50  0001 C CNN
F 2 "" H 3600 8750 50  0001 C CNN
F 3 "" H 3600 8750 50  0001 C CNN
	1    3600 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 8700 3600 8750
$Comp
L km-discrete-adc-dac-rescue:74LS148-74xx U3
U 1 1 60EABB54
P 6100 6350
F 0 "U3" H 6200 7050 50  0000 C CNN
F 1 "74LS148" H 6300 6950 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6100 6350 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/SN74HC148N/376979" H 6100 6350 50  0001 C CNN
	1    6100 6350
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R20
U 1 1 60EAE113
P 3600 7300
F 0 "R20" H 3750 7350 50  0000 C CNN
F 1 "4.7k" H 3750 7250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 7290 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 7300 50  0001 C CNN
	1    3600 7300
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D5
U 1 1 60EAF199
P 3600 7650
F 0 "D5" V 3600 7450 50  0000 C CNN
F 1 "LED" V 3500 7450 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 7650 50  0001 C CNN
F 3 "~" H 3600 7650 50  0001 C CNN
	1    3600 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 7500 3600 7450
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR013
U 1 1 60EAF1A4
P 3600 7850
F 0 "#PWR013" H 3600 7600 50  0001 C CNN
F 1 "GND" H 3605 7677 50  0001 C CNN
F 2 "" H 3600 7850 50  0001 C CNN
F 3 "" H 3600 7850 50  0001 C CNN
	1    3600 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7800 3600 7850
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R19
U 1 1 60EC9E30
P 3600 6400
F 0 "R19" H 3750 6450 50  0000 C CNN
F 1 "4.7k" H 3750 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 6390 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 6400 50  0001 C CNN
	1    3600 6400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D4
U 1 1 60ECAEC2
P 3600 6750
F 0 "D4" V 3600 6550 50  0000 C CNN
F 1 "LED" V 3500 6550 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 6750 50  0001 C CNN
F 3 "~" H 3600 6750 50  0001 C CNN
	1    3600 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 6600 3600 6550
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR012
U 1 1 60ECAECD
P 3600 6950
F 0 "#PWR012" H 3600 6700 50  0001 C CNN
F 1 "GND" H 3605 6777 50  0001 C CNN
F 2 "" H 3600 6950 50  0001 C CNN
F 3 "" H 3600 6950 50  0001 C CNN
	1    3600 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6900 3600 6950
Wire Wire Line
	3050 7100 3600 7100
Wire Wire Line
	3600 7100 3600 7150
Connection ~ 3050 7100
Wire Wire Line
	3050 6200 3600 6200
Wire Wire Line
	3600 6200 3600 6250
Connection ~ 3050 6200
Wire Wire Line
	3050 6700 3050 6750
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR05
U 1 1 60B35D90
P 3050 5800
F 0 "#PWR05" H 3050 5650 50  0001 C CNN
F 1 "+5V" H 3065 5973 50  0000 C CNN
F 2 "" H 3050 5800 50  0001 C CNN
F 3 "" H 3050 5800 50  0001 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LM339-Comparator U1
U 1 1 60A672B2
P 2650 3500
F 0 "U1" H 2650 3867 50  0000 C CNN
F 1 "LM339" H 2650 3776 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2600 3600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/texas-instruments/LM339NE3/2596856" H 2700 3700 50  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R18
U 1 1 60FF0939
P 3600 5500
F 0 "R18" H 3750 5550 50  0000 C CNN
F 1 "4.7k" H 3750 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 5490 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 5500 50  0001 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D3
U 1 1 60FF19BF
P 3600 5850
F 0 "D3" V 3600 5650 50  0000 C CNN
F 1 "LED" V 3500 5650 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 5850 50  0001 C CNN
F 3 "~" H 3600 5850 50  0001 C CNN
	1    3600 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 5700 3600 5650
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR011
U 1 1 60FF19CA
P 3600 6050
F 0 "#PWR011" H 3600 5800 50  0001 C CNN
F 1 "GND" H 3605 5877 50  0001 C CNN
F 2 "" H 3600 6050 50  0001 C CNN
F 3 "" H 3600 6050 50  0001 C CNN
	1    3600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6000 3600 6050
Wire Wire Line
	3050 5300 3600 5300
Wire Wire Line
	3600 5300 3600 5350
Connection ~ 3050 5300
Wire Wire Line
	3050 5800 3050 5850
Wire Wire Line
	3050 4900 3050 4950
Wire Wire Line
	1450 7200 2350 7200
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R17
U 1 1 610C499D
P 3600 4600
F 0 "R17" H 3750 4650 50  0000 C CNN
F 1 "4.7k" H 3750 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 4590 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D2
U 1 1 610C5A5F
P 3600 4950
F 0 "D2" V 3600 4750 50  0000 C CNN
F 1 "LED" V 3500 4750 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 4950 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 3600 4950 50  0001 C CNN
	1    3600 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 4800 3600 4750
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR010
U 1 1 610C5A6A
P 3600 5150
F 0 "#PWR010" H 3600 4900 50  0001 C CNN
F 1 "GND" H 3605 4977 50  0001 C CNN
F 2 "" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5100 3600 5150
Wire Wire Line
	3600 4450 3600 4400
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R16
U 1 1 6111599A
P 3600 3700
F 0 "R16" H 3750 3750 50  0000 C CNN
F 1 "4.7k" H 3750 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3640 3690 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 3600 3700 50  0001 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D1
U 1 1 61116A98
P 3600 4050
F 0 "D1" V 3600 3850 50  0000 C CNN
F 1 "LED" V 3500 3850 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 3600 4050 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 3600 4050 50  0001 C CNN
	1    3600 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3900 3600 3850
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR09
U 1 1 61116AA3
P 3600 4250
F 0 "#PWR09" H 3600 4000 50  0001 C CNN
F 1 "GND" H 3605 4077 50  0001 C CNN
F 2 "" H 3600 4250 50  0001 C CNN
F 3 "" H 3600 4250 50  0001 C CNN
	1    3600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4200 3600 4250
Wire Wire Line
	3600 3550 3600 3500
Wire Wire Line
	2950 4400 3050 4400
Wire Wire Line
	2950 3500 3050 3500
Connection ~ 3050 4400
Wire Wire Line
	3050 4400 3600 4400
Connection ~ 3050 3500
Wire Wire Line
	3050 3500 3600 3500
Wire Wire Line
	2350 6300 1450 6300
Wire Wire Line
	2350 5400 1450 5400
Wire Wire Line
	2350 4500 1450 4500
Wire Wire Line
	2350 3600 1450 3600
Wire Wire Line
	1450 4250 1450 4500
Wire Wire Line
	1450 4800 1450 4500
Connection ~ 1450 4500
Wire Wire Line
	1450 5100 1450 5400
Wire Wire Line
	1450 5400 1450 5700
Connection ~ 1450 5400
Wire Wire Line
	1450 6000 1450 6300
Wire Wire Line
	1450 6300 1450 6600
Connection ~ 1450 6300
Wire Wire Line
	1450 6900 1450 7200
Wire Wire Line
	1450 7800 1450 8100
Wire Wire Line
	1450 7200 1450 7500
Connection ~ 1450 7200
Connection ~ 1450 9000
Wire Wire Line
	1450 9000 1450 9250
Wire Wire Line
	3050 8900 3600 8900
Wire Wire Line
	3600 8900 3600 8950
Wire Wire Line
	1450 8750 1450 9000
Wire Wire Line
	1450 8450 1450 8100
Connection ~ 1450 8100
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR015
U 1 1 6151C117
P 3600 9650
F 0 "#PWR015" H 3600 9400 50  0001 C CNN
F 1 "GND" H 3605 9477 50  0001 C CNN
F 2 "" H 3600 9650 50  0001 C CNN
F 3 "" H 3600 9650 50  0001 C CNN
	1    3600 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9650 3600 9600
Wire Wire Line
	1450 3250 1450 3600
Wire Wire Line
	1450 3950 1450 3600
Connection ~ 1450 3600
Wire Wire Line
	2100 3400 2350 3400
Wire Wire Line
	2100 4300 2350 4300
Wire Wire Line
	2100 5200 2350 5200
Wire Wire Line
	2100 6100 2350 6100
Wire Wire Line
	2100 7000 2350 7000
Wire Wire Line
	2100 6100 2100 7000
Connection ~ 2100 6100
Wire Wire Line
	2100 7000 2100 7900
Wire Wire Line
	2100 7900 2350 7900
Connection ~ 2100 7000
Wire Wire Line
	2100 7900 2100 8800
Wire Wire Line
	2100 8800 2350 8800
Connection ~ 2100 7900
Wire Wire Line
	3600 8900 5400 8900
Wire Wire Line
	5400 8900 5400 6650
Wire Wire Line
	5400 6650 5600 6650
Connection ~ 3600 8900
Wire Wire Line
	5600 6550 5100 6550
Wire Wire Line
	5100 6550 5100 8000
Wire Wire Line
	5100 8000 3600 8000
Connection ~ 3600 8000
Wire Wire Line
	3600 7100 4800 7100
Wire Wire Line
	4800 7100 4800 6450
Wire Wire Line
	4800 6450 5600 6450
Connection ~ 3600 7100
Wire Wire Line
	4800 6350 4800 6200
Wire Wire Line
	4800 6200 3600 6200
Connection ~ 3600 6200
Wire Wire Line
	4800 6350 5600 6350
Wire Wire Line
	5600 6250 5100 6250
Wire Wire Line
	5100 6250 5100 5300
Wire Wire Line
	5100 5300 3600 5300
Connection ~ 3600 5300
Wire Wire Line
	5600 6150 5250 6150
Wire Wire Line
	5250 6150 5250 4400
Wire Wire Line
	5250 4400 3600 4400
Connection ~ 3600 4400
Wire Wire Line
	5600 6050 5400 6050
Wire Wire Line
	5400 6050 5400 3500
Wire Wire Line
	5400 3500 3600 3500
Connection ~ 3600 3500
Wire Wire Line
	5600 6750 5600 7050
Wire Wire Line
	5600 7050 6100 7050
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR018
U 1 1 618210A3
P 6100 7100
F 0 "#PWR018" H 6100 6850 50  0001 C CNN
F 1 "GND" H 6105 6927 50  0001 C CNN
F 2 "" H 6100 7100 50  0001 C CNN
F 3 "" H 6100 7100 50  0001 C CNN
	1    6100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7100 6100 7050
Connection ~ 6100 7050
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR016
U 1 1 61845042
P 5550 5950
F 0 "#PWR016" H 5550 5700 50  0001 C CNN
F 1 "GND" H 5555 5777 50  0001 C CNN
F 2 "" H 5550 5950 50  0001 C CNN
F 3 "" H 5550 5950 50  0001 C CNN
	1    5550 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 5950 5550 5950
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR017
U 1 1 618F296A
P 6100 5150
F 0 "#PWR017" H 6100 5000 50  0001 C CNN
F 1 "+5V" H 6115 5323 50  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:C-Device C1
U 1 1 619399C8
P 6500 5350
F 0 "C1" H 6615 5396 50  0000 L CNN
F 1 "1u" H 6615 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 6538 5200 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/vishay-beyschlag-draloric-bc-components/K104K10X7RF5UH5/2356879" H 6500 5350 50  0001 C CNN
	1    6500 5350
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR019
U 1 1 6193A53E
P 6500 5550
F 0 "#PWR019" H 6500 5300 50  0001 C CNN
F 1 "GND" H 6505 5377 50  0001 C CNN
F 2 "" H 6500 5550 50  0001 C CNN
F 3 "" H 6500 5550 50  0001 C CNN
	1    6500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5200 6100 5650
Wire Wire Line
	6500 5550 6500 5500
Wire Wire Line
	6500 5200 6100 5200
Connection ~ 6100 5200
Wire Wire Line
	6100 5150 6100 5200
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R23
U 1 1 61A2DBF6
P 7150 6400
F 0 "R23" H 7300 6450 50  0000 C CNN
F 1 "4.7k" H 7300 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7190 6390 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 7150 6400 50  0001 C CNN
	1    7150 6400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D8
U 1 1 61A2DBFC
P 7150 7100
F 0 "D8" V 7150 6900 50  0000 C CNN
F 1 "LED" V 7050 6900 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 7150 7100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 7150 7100 50  0001 C CNN
	1    7150 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 6950 7150 6900
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR020
U 1 1 61A2DC03
P 7150 7300
F 0 "#PWR020" H 7150 7050 50  0001 C CNN
F 1 "GND" H 7155 7127 50  0001 C CNN
F 2 "" H 7150 7300 50  0001 C CNN
F 3 "" H 7150 7300 50  0001 C CNN
	1    7150 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7250 7150 7300
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R25
U 1 1 61A4FE5C
P 7600 6400
F 0 "R25" H 7750 6450 50  0000 C CNN
F 1 "4.7k" H 7750 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7640 6390 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 7600 6400 50  0001 C CNN
	1    7600 6400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D9
U 1 1 61A4FE62
P 7600 7100
F 0 "D9" V 7600 6900 50  0000 C CNN
F 1 "LED" V 7500 6900 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 7600 7100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 7600 7100 50  0001 C CNN
	1    7600 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 6950 7600 6900
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR021
U 1 1 61A4FE69
P 7600 7300
F 0 "#PWR021" H 7600 7050 50  0001 C CNN
F 1 "GND" H 7605 7127 50  0001 C CNN
F 2 "" H 7600 7300 50  0001 C CNN
F 3 "" H 7600 7300 50  0001 C CNN
	1    7600 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 7250 7600 7300
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R27
U 1 1 61A72E9B
P 8050 6400
F 0 "R27" H 8200 6450 50  0000 C CNN
F 1 "4.7k" H 8200 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8090 6390 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 8050 6400 50  0001 C CNN
	1    8050 6400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:LED-Device D10
U 1 1 61A72EA1
P 8050 7100
F 0 "D10" V 8050 6900 50  0000 C CNN
F 1 "LED" V 7950 6900 50  0000 C CNN
F 2 "Rays Footprints:LED_D3.0mm" H 8050 7100 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/inolux/INL-3AB30/7604618" H 8050 7100 50  0001 C CNN
	1    8050 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 6950 8050 6900
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR022
U 1 1 61A72EA8
P 8050 7300
F 0 "#PWR022" H 8050 7050 50  0001 C CNN
F 1 "GND" H 8055 7127 50  0001 C CNN
F 2 "" H 8050 7300 50  0001 C CNN
F 3 "" H 8050 7300 50  0001 C CNN
	1    8050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 7250 8050 7300
Wire Wire Line
	6600 6150 7150 6150
Wire Wire Line
	7150 6150 7150 6250
Wire Wire Line
	6600 6050 7600 6050
Wire Wire Line
	7600 6050 7600 6250
Wire Wire Line
	8050 5950 8050 6250
Wire Wire Line
	6600 5950 8050 5950
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR026
U 1 1 61CE1EA6
P 8900 4400
F 0 "#PWR026" H 8900 4250 50  0001 C CNN
F 1 "+5V" H 8915 4573 50  0000 C CNN
F 2 "" H 8900 4400 50  0001 C CNN
F 3 "" H 8900 4400 50  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR028
U 1 1 61CE247C
P 9400 4400
F 0 "#PWR028" H 9400 4250 50  0001 C CNN
F 1 "+5V" H 9415 4573 50  0000 C CNN
F 2 "" H 9400 4400 50  0001 C CNN
F 3 "" H 9400 4400 50  0001 C CNN
	1    9400 4400
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:C-Device C3
U 1 1 61CE4E30
P 9800 4600
F 0 "C3" H 9915 4646 50  0000 L CNN
F 1 "1u" H 9915 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9838 4450 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/vishay-beyschlag-draloric-bc-components/K104K10X7RF5UH5/2356879" H 9800 4600 50  0001 C CNN
	1    9800 4600
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR030
U 1 1 61CE4E36
P 9800 4800
F 0 "#PWR030" H 9800 4550 50  0001 C CNN
F 1 "GND" H 9805 4627 50  0001 C CNN
F 2 "" H 9800 4800 50  0001 C CNN
F 3 "" H 9800 4800 50  0001 C CNN
	1    9800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4800 9800 4750
Wire Wire Line
	9800 4450 9400 4450
$Comp
L km-discrete-adc-dac-rescue:C-Device C2
U 1 1 61CF03A3
P 8550 4600
F 0 "C2" H 8665 4646 50  0000 L CNN
F 1 "1u" H 8665 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8588 4450 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/vishay-beyschlag-draloric-bc-components/K104K10X7RF5UH5/2356879" H 8550 4600 50  0001 C CNN
	1    8550 4600
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR023
U 1 1 61CF03A9
P 8550 4800
F 0 "#PWR023" H 8550 4550 50  0001 C CNN
F 1 "GND" H 8555 4627 50  0001 C CNN
F 2 "" H 8550 4800 50  0001 C CNN
F 3 "" H 8550 4800 50  0001 C CNN
	1    8550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4800 8550 4750
Wire Wire Line
	8550 4450 8900 4450
Wire Wire Line
	8900 4450 8900 4500
Wire Wire Line
	8900 4400 8900 4450
Connection ~ 8900 4450
Wire Wire Line
	9400 4400 9400 4450
Connection ~ 9400 4450
Wire Wire Line
	9400 4450 9400 4500
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR027
U 1 1 61D1FAAB
P 8900 5150
F 0 "#PWR027" H 8900 4900 50  0001 C CNN
F 1 "GND" H 8905 4977 50  0001 C CNN
F 2 "" H 8900 5150 50  0001 C CNN
F 3 "" H 8900 5150 50  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR029
U 1 1 61D1FE91
P 9400 5150
F 0 "#PWR029" H 9400 4900 50  0001 C CNN
F 1 "GND" H 9405 4977 50  0001 C CNN
F 2 "" H 9400 5150 50  0001 C CNN
F 3 "" H 9400 5150 50  0001 C CNN
	1    9400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5150 9400 5100
Wire Wire Line
	8900 5100 8900 5150
Wire Wire Line
	2100 3400 2100 4300
Connection ~ 2100 3400
Wire Wire Line
	2100 4300 2100 5200
Connection ~ 2100 4300
Wire Wire Line
	2100 5200 2100 6100
Connection ~ 2100 5200
Text GLabel 1400 2600 0    50   Input ~ 0
VREF
Wire Wire Line
	1400 2600 1450 2600
Wire Wire Line
	1450 2600 1450 2950
Text GLabel 2050 2600 0    50   Input ~ 0
VIN
Wire Wire Line
	2050 2600 2100 2600
Wire Wire Line
	2100 2600 2100 3400
Text GLabel 15100 3800 0    50   Input ~ 0
VIN
Wire Wire Line
	15100 3800 15150 3800
Text Label 6750 5950 0    50   ~ 0
S0
Text Label 6750 6050 0    50   ~ 0
S1
Text Label 6750 6150 0    50   ~ 0
S2
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R24
U 1 1 60B4DBDB
P 7150 6750
F 0 "R24" H 7300 6800 50  0000 C CNN
F 1 "4.7k" H 7300 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7190 6740 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 7150 6750 50  0001 C CNN
	1    7150 6750
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R26
U 1 1 60B4E4D7
P 7600 6750
F 0 "R26" H 7750 6800 50  0000 C CNN
F 1 "4.7k" H 7750 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7640 6740 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 7600 6750 50  0001 C CNN
	1    7600 6750
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R28
U 1 1 60B4E4E1
P 8050 6750
F 0 "R28" H 8200 6800 50  0000 C CNN
F 1 "4.7k" H 8200 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8090 6740 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 8050 6750 50  0001 C CNN
	1    8050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6550 7150 6600
Wire Wire Line
	7600 6550 7600 6600
Wire Wire Line
	8050 6550 8050 6600
Text Notes 8150 1200 0    150  ~ 0
USB Micro
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R30
U 1 1 60C7AF66
P 12000 2800
F 0 "R30" H 11800 2750 50  0000 C CNN
F 1 "4.7k" H 11800 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 12040 2790 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/filter/chip-resistor-surface-mount/52?s=N4IgjCBcpgbFoDGUBmBDANgZwKYBoQB7KAbRAA4BmAdjAgF0CAHAFyhAGUWAnASwDsA5iAC%2BBMAE5yEhCGSR02fEVIgADCEYhW7LnyGiCAJjXkArLPmLcBYpDKUAdBIAEAawDyACwC2WTcxskCAAqvy8LB4oALI4aFgArtw4hiAAtBbQcqiYNir2IEYB2kEgqWlFWfI8Ccp2ZBYEMlo6waJiIPBZvAAm7GlgahCB7CAELACeTCnB8cgiIkA" H 12000 2800 50  0001 C CNN
	1    12000 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	12000 2950 12000 3000
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R32
U 1 1 60C89CCE
P 13350 4150
F 0 "R32" H 13500 4200 50  0000 C CNN
F 1 "4.7k" H 13500 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 13390 4140 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 13350 4150 50  0001 C CNN
	1    13350 4150
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R31
U 1 1 60C8A190
P 13050 4150
F 0 "R31" H 13200 4200 50  0000 C CNN
F 1 "4.7k" H 13200 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 13090 4140 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 13050 4150 50  0001 C CNN
	1    13050 4150
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:R_US-Device R34
U 1 1 60C8A470
P 13950 4150
F 0 "R34" H 13800 4200 50  0000 C CNN
F 1 "4.7k" H 13800 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 13990 4140 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/koa-speer-electronics-inc/CFS1-4CT52R104J/13537403" H 13950 4150 50  0001 C CNN
	1    13950 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13350 4300 13350 4350
Wire Wire Line
	13050 4300 13050 4350
Wire Wire Line
	13050 4350 13350 4350
Connection ~ 13350 4350
Wire Wire Line
	13350 4350 13650 4350
Wire Wire Line
	13950 4300 13950 4350
Wire Wire Line
	13950 4350 13650 4350
Wire Wire Line
	13050 4000 13050 3950
Wire Wire Line
	13050 3950 13350 3950
Wire Wire Line
	13350 3950 13350 4000
Wire Wire Line
	13350 3950 13650 3950
Connection ~ 13350 3950
Connection ~ 13650 3950
Wire Wire Line
	13650 3950 13950 3950
Wire Wire Line
	13950 3950 13950 4000
Wire Wire Line
	13650 3900 13650 3950
Wire Wire Line
	14100 4350 13950 4350
Connection ~ 13950 4350
$Comp
L km-discrete-adc-dac-rescue:Conn_01x05-Connector_Generic J4
U 1 1 60A8CCB6
P 9050 6050
F 0 "J4" H 9108 6170 50  0000 L CNN
F 1 "OUTPUT" H 9108 6079 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 9250 6050 50  0001 C CNN
F 3 "~" H 9250 6050 50  0001 C CNN
	1    9050 6050
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR0101
U 1 1 60A8D8D3
P 8800 6250
F 0 "#PWR0101" H 8800 6000 50  0001 C CNN
F 1 "GND" H 8805 6077 50  0001 C CNN
F 2 "" H 8800 6250 50  0001 C CNN
F 3 "" H 8800 6250 50  0001 C CNN
	1    8800 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 6250 8850 6250
Wire Wire Line
	8050 5950 8850 5950
Connection ~ 8050 5950
Wire Wire Line
	7600 6050 8850 6050
Connection ~ 7600 6050
Wire Wire Line
	7150 6150 8850 6150
Connection ~ 7150 6150
Text GLabel 6750 6450 2    50   Input ~ 0
GS
Wire Wire Line
	6600 6450 6750 6450
Text GLabel 8800 5850 0    50   Input ~ 0
GS
Wire Wire Line
	8800 5850 8850 5850
$Comp
L km-discrete-adc-dac-rescue:GND-power #PWR0102
U 1 1 60B32B62
P 13600 6550
F 0 "#PWR0102" H 13600 6300 50  0001 C CNN
F 1 "GND" H 13605 6377 50  0001 C CNN
F 2 "" H 13600 6550 50  0001 C CNN
F 3 "" H 13600 6550 50  0001 C CNN
	1    13600 6550
	1    0    0    -1  
$EndComp
$Comp
L km-discrete-adc-dac-rescue:Bourns-3310Y-xxx-xxxx-symbols R35
U 1 1 60B3DD0D
P 13600 6150
F 0 "R35" V 13646 6220 50  0000 L CNN
F 1 "Bourns-3310Y-xxx-xxxx" V 13555 6220 50  0000 L CNN
F 2 "Rays Footprints:Bourns-3310Y-xxx-xxxx" H 13150 5800 50  0001 L BNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/3310Y-001-502/3310Y-001-502-ND/158379" H 13400 5650 50  0001 L BNN
	1    13600 6150
	0    1    -1   0   
$EndComp
Wire Wire Line
	13600 5800 13600 5850
$Comp
L km-discrete-adc-dac-rescue:+5V-power #PWR0103
U 1 1 60B492A7
P 13600 5800
F 0 "#PWR0103" H 13600 5650 50  0001 C CNN
F 1 "+5V" H 13615 5973 50  0000 C CNN
F 2 "" H 13600 5800 50  0001 C CNN
F 3 "" H 13600 5800 50  0001 C CNN
	1    13600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 6550 13600 6450
Text GLabel 13300 6150 0    50   Input ~ 0
VIN
Wire Wire Line
	13300 6150 13400 6150
$EndSCHEMATC
