EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SIM108 Switch Input Module"
Date "2022-06-11"
Rev "2.0.0"
Comp "PDJR <preeve@pdjr.eu>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  950  0    50   ~ 0
Opto-isolated SPST inputs. Each opto-isolator\nis driven by a constant current source which\noperates the isolator LED at 6mA from voltages\nin the range 5VDC through 50VDC.
$Comp
L Device:R R1
U 1 1 5F1E6C5E
P 1600 7400
F 0 "R1" H 1600 7250 50  0000 R CNN
F 1 "4K7 0.125W" V 1600 7400 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 7400 50  0001 C CNN
F 3 "~" H 1600 7400 50  0001 C CNN
	1    1600 7400
	-1   0    0    1   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F2A4B92
P 3700 5400
F 0 "F1" V 3600 5400 50  0000 C CNN
F 1 "1A" V 3700 5400 39  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 3750 5200 50  0001 L CNN
F 3 "~" H 3700 5400 50  0001 C CNN
	1    3700 5400
	0    1    1    0   
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U1
U 1 1 5F1D12F5
P 2850 6800
F 0 "U1" H 3050 7150 50  0000 C CNN
F 1 "MCP2551-I-P" H 3100 6450 39  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2850 6300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 2850 6800 50  0001 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
Connection ~ 1600 7550
Wire Wire Line
	1600 7000 1600 7250
Wire Wire Line
	2000 6300 2850 6300
Wire Wire Line
	2850 6300 2850 6400
Connection ~ 2000 6300
Wire Wire Line
	3350 5400 3450 5400
Wire Wire Line
	2850 7200 2850 7550
NoConn ~ 2350 6900
$Comp
L power:+5V #PWR01
U 1 1 5FC3AC81
P 950 5400
F 0 "#PWR01" H 950 5250 50  0001 C CNN
F 1 "+5V" V 965 5528 50  0000 L CNN
F 2 "" H 950 5400 50  0001 C CNN
F 3 "" H 950 5400 50  0001 C CNN
	1    950  5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC3B74A
P 950 5800
F 0 "#PWR02" H 950 5550 50  0001 C CNN
F 1 "GND" V 955 5672 50  0000 R CNN
F 2 "" H 950 5800 50  0001 C CNN
F 3 "" H 950 5800 50  0001 C CNN
	1    950  5800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 63360127
P 950 6300
F 0 "#PWR03" H 950 6150 50  0001 C CNN
F 1 "+5V" V 965 6428 50  0000 L CNN
F 2 "" H 950 6300 50  0001 C CNN
F 3 "" H 950 6300 50  0001 C CNN
	1    950  6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FC44BAE
P 950 7550
F 0 "#PWR04" H 950 7300 50  0001 C CNN
F 1 "GND" V 950 7350 50  0000 C CNN
F 2 "" H 950 7550 50  0001 C CNN
F 3 "" H 950 7550 50  0001 C CNN
	1    950  7550
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6300 2000 6300
Text Label 650  7200 0    50   ~ 0
CAN_RX
Text Label 650  7100 0    50   ~ 0
CAN_TX
Wire Wire Line
	4250 7350 4600 7350
Text Notes 600  5200 0    50   ~ 10
POWER SUPPLY & CAN INTERFACE
Text Label 4600 7350 0    50   ~ 0
CAN_SCR
Wire Wire Line
	3350 5800 3450 5800
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6336012D
P 3450 5400
F 0 "#FLG01" H 3450 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 5573 50  0001 C CNN
F 2 "" H 3450 5400 50  0001 C CNN
F 3 "~" H 3450 5400 50  0001 C CNN
	1    3450 5400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6336012E
P 3450 5800
F 0 "#FLG02" H 3450 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 5973 50  0001 C CNN
F 2 "" H 3450 5800 50  0001 C CNN
F 3 "~" H 3450 5800 50  0001 C CNN
	1    3450 5800
	-1   0    0    1   
$EndComp
Connection ~ 3450 5400
Wire Wire Line
	3450 5400 3550 5400
Connection ~ 3450 5800
Wire Wire Line
	3450 5800 3550 5800
$Comp
L Device:R R2
U 1 1 63360130
P 3800 7050
F 0 "R2" V 3700 7100 50  0000 R CNN
F 1 "120R 0.5W" V 3800 7050 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3730 7050 50  0001 C CNN
F 3 "~" H 3800 7050 50  0001 C CNN
	1    3800 7050
	0    -1   -1   0   
$EndComp
Text Label 4600 7050 0    50   ~ 0
CAN_H
Wire Wire Line
	4600 7050 3950 7050
Text Label 4600 7200 0    50   ~ 0
CAN_L
Wire Wire Line
	3350 6700 3550 6700
Wire Wire Line
	3650 7050 3550 7050
Wire Wire Line
	3550 7050 3550 6700
Connection ~ 3550 6700
Wire Wire Line
	3550 6700 3900 6700
Wire Wire Line
	4600 7200 3450 7200
Wire Wire Line
	3450 7200 3450 6900
Connection ~ 3450 6900
Wire Wire Line
	3450 6900 4000 6900
Wire Wire Line
	3350 6900 3450 6900
Text Label 5450 6500 2    50   ~ 0
CAN_H
Text Label 6400 6500 0    50   ~ 0
CAN_L
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 63360129
P 4550 5600
F 0 "J2" H 4550 5900 50  0000 C CNN
F 1 "CAN" H 4550 5300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4550 5600 50  0001 C CNN
F 3 "~" H 4550 5600 50  0001 C CNN
	1    4550 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 631C329D
P 9900 3300
F 0 "D1" H 10000 3250 50  0000 C CNN
F 1 "LED" H 9893 3136 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 3300 50  0001 C CNN
F 3 "~" H 9900 3300 50  0001 C CNN
	1    9900 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 631D7AEF
P 10200 3400
F 0 "D6" H 10300 3350 50  0000 C CNN
F 1 "LED" H 10193 3236 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 3400 50  0001 C CNN
F 3 "~" H 10200 3400 50  0001 C CNN
	1    10200 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 631D7EE7
P 9900 3500
F 0 "D2" H 10000 3450 50  0000 C CNN
F 1 "LED" H 9893 3336 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 3500 50  0001 C CNN
F 3 "~" H 9900 3500 50  0001 C CNN
	1    9900 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 631D8355
P 10200 3600
F 0 "D7" H 10300 3550 50  0000 C CNN
F 1 "LED" H 10193 3436 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 3600 50  0001 C CNN
F 3 "~" H 10200 3600 50  0001 C CNN
	1    10200 3600
	-1   0    0    1   
$EndComp
Text Label 6400 6600 0    50   ~ 0
CAN_SCR
$Comp
L Switch:SW_DIP_x02 SW3
U 1 1 62A67242
P 5750 6600
F 0 "SW3" H 5750 6450 50  0000 C CNN
F 1 "BUS" H 5750 6850 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm_LongPads" H 5750 6600 50  0001 C CNN
F 3 "~" H 5750 6600 50  0001 C CNN
	1    5750 6600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U4
U 1 1 6338D277
P 9250 3700
F 0 "U4" H 9500 4250 50  0000 C CNN
F 1 "74HCT595" H 9450 3050 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 9250 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9250 3700 50  0001 C CNN
	1    9250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 63F004DD
P 9900 3700
F 0 "D3" H 10000 3650 50  0000 C CNN
F 1 "LED" H 9893 3536 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 3700 50  0001 C CNN
F 3 "~" H 9900 3700 50  0001 C CNN
	1    9900 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 63F00A5B
P 10200 3800
F 0 "D8" H 10300 3750 50  0000 C CNN
F 1 "LED" H 10193 3636 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 3800 50  0001 C CNN
F 3 "~" H 10200 3800 50  0001 C CNN
	1    10200 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 3300 9750 3300
Wire Wire Line
	9650 3400 10050 3400
Wire Wire Line
	9650 3500 9750 3500
Wire Wire Line
	9650 3600 10050 3600
Wire Wire Line
	9650 3700 9750 3700
Wire Wire Line
	9650 3800 10050 3800
Wire Wire Line
	10050 3300 10450 3300
Wire Wire Line
	10350 3400 10450 3400
Wire Wire Line
	10050 3500 10450 3500
Wire Wire Line
	10350 3600 10450 3600
Wire Wire Line
	10050 3700 10450 3700
Wire Wire Line
	10350 3800 10450 3800
Text Label 8650 3300 2    50   ~ 0
LED_DATA
Text Label 8650 3500 2    50   ~ 0
LED_CLOCK
Text Label 8650 3800 2    50   ~ 0
LED_LATCH
Wire Wire Line
	9250 4400 9250 4500
Wire Wire Line
	9250 4500 8750 4500
Wire Wire Line
	8750 4500 8750 3900
Wire Wire Line
	8750 3900 8850 3900
Wire Wire Line
	8750 4500 8650 4500
Connection ~ 8750 4500
$Comp
L power:GND #PWR024
U 1 1 640FFD0C
P 8650 4500
F 0 "#PWR024" H 8650 4250 50  0001 C CNN
F 1 "GND" V 8650 4300 50  0000 C CNN
F 2 "" H 8650 4500 50  0001 C CNN
F 3 "" H 8650 4500 50  0001 C CNN
	1    8650 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 3600 8750 3600
Wire Wire Line
	8750 3600 8750 3000
Wire Wire Line
	8750 3000 9250 3000
Wire Wire Line
	9250 3000 9250 3100
Wire Wire Line
	8750 3000 8650 3000
Connection ~ 8750 3000
$Comp
L power:+5V #PWR023
U 1 1 64136A77
P 8650 3000
F 0 "#PWR023" H 8650 2850 50  0001 C CNN
F 1 "+5V" V 8650 3150 50  0000 L CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 "" H 8650 3000 50  0001 C CNN
	1    8650 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10950 4500 9250 4500
Connection ~ 9250 4500
Wire Wire Line
	8650 3300 8850 3300
Wire Wire Line
	8650 3500 8850 3500
Wire Wire Line
	8650 3800 8850 3800
$Comp
L Device:LED D4
U 1 1 63327BC0
P 9900 3900
F 0 "D4" H 10000 3850 50  0000 C CNN
F 1 "LED" H 9893 3736 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 3900 50  0001 C CNN
F 3 "~" H 9900 3900 50  0001 C CNN
	1    9900 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 633284CB
P 10200 4000
F 0 "D9" H 10300 3950 50  0000 C CNN
F 1 "LED" H 10193 3836 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 4000 50  0001 C CNN
F 3 "~" H 10200 4000 50  0001 C CNN
	1    10200 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 3900 9750 3900
Wire Wire Line
	9650 4000 10050 4000
Wire Wire Line
	10050 3900 10450 3900
Wire Wire Line
	10350 4000 10450 4000
$Comp
L Switch:SW_DIP_x08 SW2
U 1 1 633236F9
P 6350 2000
F 0 "SW2" H 6350 2550 50  0000 C CNN
F 1 "INSTANCE" H 6350 1550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6350 2000 50  0001 C CNN
F 3 "~" H 6350 2000 50  0001 C CNN
	1    6350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5400 5150 5500
Wire Wire Line
	5150 6600 5450 6600
Connection ~ 5150 5500
Wire Wire Line
	5150 5500 5150 5600
Connection ~ 5150 5600
Wire Wire Line
	5150 5600 5150 5700
Connection ~ 5150 5700
Wire Wire Line
	5150 5700 5150 5800
Connection ~ 5150 5800
Wire Wire Line
	5150 5800 5150 5900
Connection ~ 5150 5900
Wire Wire Line
	5150 5900 5150 6000
Connection ~ 5150 6000
Wire Wire Line
	5150 6000 5150 6100
Wire Wire Line
	5150 6100 5150 6600
Text Label 6400 5400 0    50   ~ 0
ADDR_0
Text Label 6400 5500 0    50   ~ 0
ADDR_1
Text Label 6400 5600 0    50   ~ 0
ADDR_2
Text Label 6400 5700 0    50   ~ 0
ADDR_3
Text Label 6400 5800 0    50   ~ 0
ADDR_4
Text Label 6400 5900 0    50   ~ 0
ADDR_5
Text Label 6400 6000 0    50   ~ 0
ADDR_6
Text Label 6400 6100 0    50   ~ 0
ADDR_7
Connection ~ 9250 3000
Wire Wire Line
	9250 3000 9800 3000
Wire Wire Line
	10000 3000 10950 3000
Text Label 6400 7150 0    50   ~ 0
PRG
$Comp
L Device:CP_Small C1
U 1 1 635FBF50
P 2000 6850
F 0 "C1" H 2100 6950 50  0000 C CNN
F 1 "100nF" H 2150 6750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2000 6850 50  0001 C CNN
F 3 "~" H 2000 6850 50  0001 C CNN
	1    2000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5400 2000 5400
Wire Wire Line
	950  5800 2000 5800
Wire Notes Line
	5050 5200 6800 5200
Text Notes 5050 5200 0    50   ~ 10
CONFIGURATION
Wire Notes Line
	11050 2400 11050 6350
Wire Notes Line
	11050 6350 8100 6350
Wire Notes Line
	8100 6350 8100 2400
Wire Notes Line
	8100 2400 11050 2400
Text Notes 8100 2400 0    50   ~ 10
DISPLAY
Wire Notes Line
	600  5200 600  7650
Wire Notes Line
	600  5200 5000 5200
Wire Notes Line
	5000 7650 5000 5200
Wire Notes Line
	600  7650 5000 7650
Wire Notes Line
	5050 7650 6800 7650
Wire Notes Line
	6800 5200 6800 7650
Wire Notes Line
	5050 5200 5050 7650
Connection ~ 5150 6100
Wire Wire Line
	5450 5400 5150 5400
Wire Wire Line
	5450 5500 5150 5500
Wire Wire Line
	5450 5600 5150 5600
Wire Wire Line
	5450 5700 5150 5700
Wire Wire Line
	5450 5800 5150 5800
Wire Wire Line
	5450 5900 5150 5900
Wire Wire Line
	5450 6000 5150 6000
Wire Wire Line
	5450 6100 5150 6100
$Comp
L power:GND #PWR014
U 1 1 63724529
P 6350 7400
F 0 "#PWR014" H 6350 7150 50  0001 C CNN
F 1 "GND" V 6350 7200 50  0000 C CNN
F 2 "" H 6350 7400 50  0001 C CNN
F 3 "" H 6350 7400 50  0001 C CNN
	1    6350 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 5400 6400 5400
Wire Wire Line
	6050 5500 6400 5500
Wire Wire Line
	6050 5600 6400 5600
Wire Wire Line
	6050 5700 6400 5700
Wire Wire Line
	6050 5800 6400 5800
Wire Wire Line
	6050 5900 6400 5900
Wire Wire Line
	6050 6000 6400 6000
Wire Wire Line
	6050 6100 6400 6100
Wire Wire Line
	6050 6500 6400 6500
Wire Wire Line
	6050 6600 6400 6600
NoConn ~ -3250 8100
$Comp
L Device:CP_Small C4
U 1 1 6357107B
P 9900 3000
F 0 "C4" V 9950 3100 50  0000 C CNN
F 1 "100nF" V 9950 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9900 3000 50  0001 C CNN
F 3 "~" H 9900 3000 50  0001 C CNN
	1    9900 3000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 634C34EB
P 10600 3300
F 0 "R28" V 10650 3200 50  0000 R CNN
F 1 "560R" V 10600 3300 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3300 50  0001 C CNN
F 3 "~" H 10600 3300 50  0001 C CNN
	1    10600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 634C3A8E
P 10600 3400
F 0 "R29" V 10650 3300 50  0000 R CNN
F 1 "560R" V 10600 3400 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3400 50  0001 C CNN
F 3 "~" H 10600 3400 50  0001 C CNN
	1    10600 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 634C3E87
P 10600 3500
F 0 "R30" V 10650 3400 50  0000 R CNN
F 1 "560R" V 10600 3500 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3500 50  0001 C CNN
F 3 "~" H 10600 3500 50  0001 C CNN
	1    10600 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 634C42EC
P 10600 3600
F 0 "R31" V 10650 3500 50  0000 R CNN
F 1 "560R" V 10600 3600 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3600 50  0001 C CNN
F 3 "~" H 10600 3600 50  0001 C CNN
	1    10600 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R32
U 1 1 634C469C
P 10600 3700
F 0 "R32" V 10650 3600 50  0000 R CNN
F 1 "560R" V 10600 3700 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3700 50  0001 C CNN
F 3 "~" H 10600 3700 50  0001 C CNN
	1    10600 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 634C4AC7
P 10600 3800
F 0 "R33" V 10650 3700 50  0000 R CNN
F 1 "560R" V 10600 3800 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3800 50  0001 C CNN
F 3 "~" H 10600 3800 50  0001 C CNN
	1    10600 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R34
U 1 1 634C4F7E
P 10600 3900
F 0 "R34" V 10650 3800 50  0000 R CNN
F 1 "560R" V 10600 3900 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 3900 50  0001 C CNN
F 3 "~" H 10600 3900 50  0001 C CNN
	1    10600 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 634C53BF
P 10600 4000
F 0 "R35" V 10650 3900 50  0000 R CNN
F 1 "560R" V 10600 4000 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 4000 50  0001 C CNN
F 3 "~" H 10600 4000 50  0001 C CNN
	1    10600 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 3300 10950 3300
Wire Wire Line
	10950 4000 10750 4000
Wire Wire Line
	10950 3000 10950 3300
Wire Wire Line
	10750 3400 10950 3400
Wire Wire Line
	10750 3500 10950 3500
Wire Wire Line
	10750 3600 10950 3600
Wire Wire Line
	10750 3700 10950 3700
Wire Wire Line
	10750 3800 10950 3800
Wire Wire Line
	10750 3900 10950 3900
$Comp
L Device:R R38
U 1 1 638A66B7
P 1400 6900
F 0 "R38" H 1550 7050 50  0000 R CNN
F 1 "2K2 0.125W" V 1400 6900 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 6900 50  0001 C CNN
F 3 "~" H 1400 6900 50  0001 C CNN
	1    1400 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 638A701E
P 1400 7400
F 0 "R39" H 1400 7250 50  0000 R CNN
F 1 "3K3 0.125W" V 1400 7400 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 7400 50  0001 C CNN
F 3 "~" H 1400 7400 50  0001 C CNN
	1    1400 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 6750 1400 6600
Wire Wire Line
	1400 6600 2350 6600
Wire Wire Line
	1400 7050 1400 7100
Wire Wire Line
	650  7100 1400 7100
Connection ~ 1400 7100
Wire Wire Line
	1400 7100 1400 7250
$Comp
L Device:R R36
U 1 1 638DB685
P 1200 6900
F 0 "R36" H 1200 7050 50  0000 L CNN
F 1 "2K2 0.125W" V 1200 6900 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1130 6900 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 638DBDD6
P 1200 7400
F 0 "R37" H 1050 7250 50  0000 L CNN
F 1 "3K3 0.125W" V 1200 7400 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1130 7400 50  0001 C CNN
F 3 "~" H 1200 7400 50  0001 C CNN
	1    1200 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 7050 1200 7200
Wire Wire Line
	1200 7200 650  7200
Connection ~ 1200 7200
Wire Wire Line
	1200 7200 1200 7250
Wire Wire Line
	1200 6750 1200 6700
Wire Wire Line
	1200 6700 2350 6700
Wire Wire Line
	5950 7150 6050 7150
Wire Wire Line
	5150 7400 6350 7400
Connection ~ 1400 7550
Wire Wire Line
	1400 7550 1600 7550
Wire Wire Line
	950  7550 1200 7550
Connection ~ 1200 7550
Wire Wire Line
	1200 7550 1400 7550
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 638DE6DD
P 5750 7250
F 0 "SW1" H 5750 7635 50  0000 C CNN
F 1 "PRG" H 5750 7544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 5750 7550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 5750 7550 50  0001 C CNN
	1    5750 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 7250 5450 7250
$Comp
L Device:LED D18
U 1 1 6399F1CF
P 9900 5000
F 0 "D18" H 10000 4950 50  0000 C CNN
F 1 "LED" H 9893 4836 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 5000 50  0001 C CNN
F 3 "~" H 9900 5000 50  0001 C CNN
	1    9900 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D22
U 1 1 6399F1D5
P 10200 5100
F 0 "D22" H 10300 5050 50  0000 C CNN
F 1 "LED" H 10193 4936 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 5100 50  0001 C CNN
F 3 "~" H 10200 5100 50  0001 C CNN
	1    10200 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D19
U 1 1 6399F1DB
P 9900 5200
F 0 "D19" H 10000 5150 50  0000 C CNN
F 1 "LED" H 9893 5036 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 5200 50  0001 C CNN
F 3 "~" H 9900 5200 50  0001 C CNN
	1    9900 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D23
U 1 1 6399F1E1
P 10200 5300
F 0 "D23" H 10300 5250 50  0000 C CNN
F 1 "LED" H 10193 5136 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 5300 50  0001 C CNN
F 3 "~" H 10200 5300 50  0001 C CNN
	1    10200 5300
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 6399F1E7
P 9250 5400
F 0 "U3" H 9500 5950 50  0000 C CNN
F 1 "74HCT595" H 9450 4750 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 9250 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D20
U 1 1 6399F1ED
P 9900 5400
F 0 "D20" H 10000 5350 50  0000 C CNN
F 1 "LED" H 9893 5236 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 5400 50  0001 C CNN
F 3 "~" H 9900 5400 50  0001 C CNN
	1    9900 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D24
U 1 1 6399F1F3
P 10200 5500
F 0 "D24" H 10300 5450 50  0000 C CNN
F 1 "LED" H 10193 5336 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 5500 50  0001 C CNN
F 3 "~" H 10200 5500 50  0001 C CNN
	1    10200 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 5000 9750 5000
Wire Wire Line
	9650 5100 10050 5100
Wire Wire Line
	9650 5200 9750 5200
Wire Wire Line
	9650 5300 10050 5300
Wire Wire Line
	9650 5400 9750 5400
Wire Wire Line
	9650 5500 10050 5500
Wire Wire Line
	10050 5000 10450 5000
Wire Wire Line
	10350 5100 10450 5100
Wire Wire Line
	10050 5200 10450 5200
Wire Wire Line
	10350 5300 10450 5300
Wire Wire Line
	10050 5400 10450 5400
Wire Wire Line
	10350 5500 10450 5500
NoConn ~ 9650 5900
Text Label 8650 5200 2    50   ~ 0
LED_CLOCK
Text Label 8650 5500 2    50   ~ 0
LED_LATCH
Wire Wire Line
	9250 6100 9250 6200
Wire Wire Line
	9250 6200 8750 6200
Wire Wire Line
	8750 6200 8750 5600
Wire Wire Line
	8750 5600 8850 5600
Wire Wire Line
	8750 6200 8650 6200
Connection ~ 8750 6200
$Comp
L power:GND #PWR0101
U 1 1 6399F20F
P 8650 6200
F 0 "#PWR0101" H 8650 5950 50  0001 C CNN
F 1 "GND" V 8650 6000 50  0000 C CNN
F 2 "" H 8650 6200 50  0001 C CNN
F 3 "" H 8650 6200 50  0001 C CNN
	1    8650 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 5300 8750 5300
Wire Wire Line
	8750 5300 8750 4700
Wire Wire Line
	8750 4700 9250 4700
Wire Wire Line
	9250 4700 9250 4800
Wire Wire Line
	8750 4700 8650 4700
Connection ~ 8750 4700
$Comp
L power:+5V #PWR0102
U 1 1 6399F21B
P 8650 4700
F 0 "#PWR0102" H 8650 4550 50  0001 C CNN
F 1 "+5V" V 8650 4850 50  0000 L CNN
F 2 "" H 8650 4700 50  0001 C CNN
F 3 "" H 8650 4700 50  0001 C CNN
	1    8650 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10950 6200 9250 6200
Connection ~ 9250 6200
Wire Wire Line
	8650 5200 8850 5200
Wire Wire Line
	8650 5500 8850 5500
$Comp
L Device:LED D21
U 1 1 6399F226
P 9900 5600
F 0 "D21" H 10000 5550 50  0000 C CNN
F 1 "LED" H 9893 5436 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9900 5600 50  0001 C CNN
F 3 "~" H 9900 5600 50  0001 C CNN
	1    9900 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D25
U 1 1 6399F22C
P 10200 5700
F 0 "D25" H 10300 5650 50  0000 C CNN
F 1 "LED" H 10193 5536 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10200 5700 50  0001 C CNN
F 3 "~" H 10200 5700 50  0001 C CNN
	1    10200 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 5600 9750 5600
Wire Wire Line
	9650 5700 10050 5700
Wire Wire Line
	10050 5600 10450 5600
Wire Wire Line
	10350 5700 10450 5700
Connection ~ 9250 4700
Wire Wire Line
	9250 4700 9800 4700
Wire Wire Line
	10000 4700 10950 4700
$Comp
L Device:CP_Small C2
U 1 1 6399F239
P 9900 4700
F 0 "C2" V 9950 4800 50  0000 C CNN
F 1 "100nF" V 9950 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9900 4700 50  0001 C CNN
F 3 "~" H 9900 4700 50  0001 C CNN
	1    9900 4700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R40
U 1 1 6399F23F
P 10600 5000
F 0 "R40" V 10650 4900 50  0000 R CNN
F 1 "560R" V 10600 5000 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5000 50  0001 C CNN
F 3 "~" H 10600 5000 50  0001 C CNN
	1    10600 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R41
U 1 1 6399F245
P 10600 5100
F 0 "R41" V 10650 5000 50  0000 R CNN
F 1 "560R" V 10600 5100 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5100 50  0001 C CNN
F 3 "~" H 10600 5100 50  0001 C CNN
	1    10600 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R42
U 1 1 6399F24B
P 10600 5200
F 0 "R42" V 10650 5100 50  0000 R CNN
F 1 "560R" V 10600 5200 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5200 50  0001 C CNN
F 3 "~" H 10600 5200 50  0001 C CNN
	1    10600 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R43
U 1 1 6399F251
P 10600 5300
F 0 "R43" V 10650 5200 50  0000 R CNN
F 1 "560R" V 10600 5300 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5300 50  0001 C CNN
F 3 "~" H 10600 5300 50  0001 C CNN
	1    10600 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R44
U 1 1 6399F257
P 10600 5400
F 0 "R44" V 10650 5300 50  0000 R CNN
F 1 "560R" V 10600 5400 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5400 50  0001 C CNN
F 3 "~" H 10600 5400 50  0001 C CNN
	1    10600 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R45
U 1 1 6399F25D
P 10600 5500
F 0 "R45" V 10650 5400 50  0000 R CNN
F 1 "560R" V 10600 5500 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5500 50  0001 C CNN
F 3 "~" H 10600 5500 50  0001 C CNN
	1    10600 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R46
U 1 1 6399F263
P 10600 5600
F 0 "R46" V 10650 5500 50  0000 R CNN
F 1 "560R" V 10600 5600 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5600 50  0001 C CNN
F 3 "~" H 10600 5600 50  0001 C CNN
	1    10600 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R47
U 1 1 6399F269
P 10600 5700
F 0 "R47" V 10650 5600 50  0000 R CNN
F 1 "560R" V 10600 5700 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10530 5700 50  0001 C CNN
F 3 "~" H 10600 5700 50  0001 C CNN
	1    10600 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 5000 10950 5000
Wire Wire Line
	10950 5700 10750 5700
Wire Wire Line
	10950 4700 10950 5000
Wire Wire Line
	10750 5100 10950 5100
Wire Wire Line
	10750 5200 10950 5200
Wire Wire Line
	10750 5300 10950 5300
Wire Wire Line
	10750 5400 10950 5400
Wire Wire Line
	10750 5500 10950 5500
Wire Wire Line
	10750 5600 10950 5600
Wire Wire Line
	8650 5000 8850 5000
Connection ~ 10950 5000
Wire Wire Line
	10950 5000 10950 5100
Connection ~ 10950 5100
Wire Wire Line
	10950 5100 10950 5200
Connection ~ 10950 5200
Wire Wire Line
	10950 5200 10950 5300
Connection ~ 10950 5300
Wire Wire Line
	10950 5300 10950 5400
Connection ~ 10950 5400
Wire Wire Line
	10950 5400 10950 5500
Connection ~ 10950 5500
Wire Wire Line
	10950 5500 10950 5600
Connection ~ 10950 5600
Wire Wire Line
	10950 5600 10950 5700
Connection ~ 10950 5700
Wire Wire Line
	10950 5700 10950 6200
Connection ~ 10950 3300
Wire Wire Line
	10950 3300 10950 3400
Connection ~ 10950 3400
Wire Wire Line
	10950 3400 10950 3500
Connection ~ 10950 3500
Wire Wire Line
	10950 3500 10950 3600
Connection ~ 10950 3600
Wire Wire Line
	10950 3600 10950 3700
Connection ~ 10950 3700
Wire Wire Line
	10950 3700 10950 3800
Connection ~ 10950 3800
Wire Wire Line
	10950 3800 10950 3900
Connection ~ 10950 3900
Wire Wire Line
	10950 3900 10950 4000
Connection ~ 10950 4000
Wire Wire Line
	10950 4000 10950 4500
Text Label 9650 4200 0    50   ~ 0
LED_SER
Text Label 8650 5000 2    50   ~ 0
LED_SER
$Comp
L Device:CP_Small C3
U 1 1 634CCFDB
P 1700 4050
F 0 "C3" V 1750 4150 50  0000 C CNN
F 1 "100nF" V 1750 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1700 4050 50  0001 C CNN
F 3 "~" H 1700 4050 50  0001 C CNN
	1    1700 4050
	0    -1   1    0   
$EndComp
Text Label 1150 2600 2    50   ~ 0
TRANSMIT_LED
Text Label 8850 2650 2    50   ~ 0
TRANSMIT_LED
Wire Wire Line
	8950 2650 8850 2650
$Comp
L Device:R R3
U 1 1 63493E4A
P 9400 2650
F 0 "R3" V 9450 2550 50  0000 R CNN
F 1 "560R" V 9400 2650 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 2650 50  0001 C CNN
F 3 "~" H 9400 2650 50  0001 C CNN
	1    9400 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 6348B352
P 9100 2650
F 0 "D5" H 9200 2600 50  0000 C CNN
F 1 "LED" H 9093 2486 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9100 2650 50  0001 C CNN
F 3 "~" H 9100 2650 50  0001 C CNN
	1    9100 2650
	-1   0    0    1   
$EndComp
NoConn ~ 1150 2400
Text Label 1150 2500 2    50   ~ 0
PRG
Text Label 2250 3600 0    50   ~ 0
LED_CLOCK
Text Label 2250 3400 0    50   ~ 0
LED_DATA
Text Label 2250 3500 0    50   ~ 0
LED_LATCH
Text Label 1150 2800 2    50   ~ 0
D17
Text Label 1150 2900 2    50   ~ 0
D18
Text Label 1150 3000 2    50   ~ 0
D19
Text Label 1150 3100 2    50   ~ 0
D20
Text Label 1150 3200 2    50   ~ 0
D21
Text Label 1150 3300 2    50   ~ 0
D22
Text Label 1150 3400 2    50   ~ 0
D23
NoConn ~ 1500 2200
NoConn ~ 1600 2200
NoConn ~ 1700 2200
$Comp
L pdjr:Teensy_3.2 U5
U 1 1 60F2AB82
P 2250 3700
F 0 "U5" H 2400 2150 50  0000 C CNN
F 1 "Teensy_4.0" H 2550 2250 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 2250 3700 50  0001 C CNN
F 3 "" H 2250 3700 50  0001 C CNN
	1    2250 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 3700 1050 4050
Connection ~ 2350 4050
Wire Wire Line
	2350 4100 2350 4050
$Comp
L power:GND #PWR027
U 1 1 6096FBD9
P 2350 4100
F 0 "#PWR027" H 2350 3850 50  0001 C CNN
F 1 "GND" H 2355 3927 50  0000 C CNN
F 2 "" H 2350 4100 50  0001 C CNN
F 3 "" H 2350 4100 50  0001 C CNN
	1    2350 4100
	1    0    0    -1  
$EndComp
Connection ~ 1050 4050
Wire Wire Line
	1050 4100 1050 4050
$Comp
L power:+5V #PWR026
U 1 1 6336012B
P 1050 4100
F 0 "#PWR026" H 1050 3950 50  0001 C CNN
F 1 "+5V" H 1065 4273 50  0000 C CNN
F 2 "" H 1050 4100 50  0001 C CNN
F 3 "" H 1050 4100 50  0001 C CNN
	1    1050 4100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6336012A
P 850 4100
F 0 "#PWR025" H 850 3850 50  0001 C CNN
F 1 "GND" H 855 3927 50  0000 C CNN
F 2 "" H 850 4100 50  0001 C CNN
F 3 "" H 850 4100 50  0001 C CNN
	1    850  4100
	1    0    0    -1  
$EndComp
Text Label 2250 3300 0    50   ~ 0
CAN_TX
Text Label 2250 3200 0    50   ~ 0
CAN_RX
Wire Wire Line
	2350 3700 2250 3700
Wire Wire Line
	2350 4050 2350 3700
Wire Wire Line
	1050 4050 1600 4050
Wire Wire Line
	1150 3700 1050 3700
Wire Wire Line
	850  3600 850  4100
Wire Wire Line
	1150 3600 850  3600
Wire Wire Line
	1800 4050 2350 4050
Wire Wire Line
	10950 3000 10950 2650
Connection ~ 10950 3000
Wire Wire Line
	9550 2650 10950 2650
$Comp
L Device:CP_Small C5
U 1 1 638ECFDF
P 2000 5600
F 0 "C5" H 2100 5700 50  0000 C CNN
F 1 "100nF" H 2150 5500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2000 5600 50  0001 C CNN
F 3 "~" H 2000 5600 50  0001 C CNN
	1    2000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5500 2000 5400
Connection ~ 2000 5400
Wire Wire Line
	2000 5400 2350 5400
Wire Wire Line
	2000 5700 2000 5800
Connection ~ 2000 5800
Wire Wire Line
	2000 5800 2350 5800
Wire Wire Line
	2000 6750 2000 6300
Wire Wire Line
	1600 7550 2000 7550
Wire Wire Line
	2000 6950 2000 7550
Connection ~ 2000 7550
Wire Wire Line
	2000 7550 2850 7550
Wire Wire Line
	1600 7000 2350 7000
Wire Wire Line
	1400 6600 650  6600
Connection ~ 1400 6600
Wire Wire Line
	1200 6700 650  6700
Connection ~ 1200 6700
Text Label 650  6600 0    50   ~ 0
CAN_TX_3V3
Text Label 650  6700 0    50   ~ 0
CAN_RX_3V3
Wire Wire Line
	4350 5500 3550 5500
Wire Wire Line
	3550 5500 3550 5800
Wire Wire Line
	3850 5400 4350 5400
Wire Wire Line
	4350 5800 4250 5800
Wire Wire Line
	4250 5800 4250 7350
Wire Wire Line
	4350 5700 4000 5700
Wire Wire Line
	4000 5700 4000 6900
Wire Wire Line
	3900 5600 4350 5600
Wire Wire Line
	3900 5600 3900 6700
Text Notes 4600 5450 0    50   ~ 0
NET_S
Text Notes 4600 5550 0    50   ~ 0
NET_C
Text Notes 4600 5650 0    50   ~ 0
CAN_H
Text Notes 4600 5750 0    50   ~ 0
CAN_L
Text Notes 4600 5850 0    50   ~ 0
CAN_SCR
Wire Wire Line
	4600 5200 4650 5200
Connection ~ 5150 6600
Wire Wire Line
	5150 6600 5150 7250
Connection ~ 5150 7250
Wire Wire Line
	5150 7250 5150 7400
$Comp
L pdjr:TMR-2-2411 U2
U 1 1 63A71732
P 2850 5600
F 0 "U2" H 2850 6067 50  0000 C CNN
F 1 "TMR-2-2411" H 2850 5976 50  0000 C CNN
F 2 "PDJR_DC-DC_Converters:TMR_2411" H 2850 5250 50  0001 C CNN
F 3 "" H 2850 5100 50  0001 C CNN
	1    2850 5600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 639236D5
P 850 3500
F 0 "#PWR0103" H 850 3350 50  0001 C CNN
F 1 "+3V3" H 865 3673 50  0000 C CNN
F 2 "" H 850 3500 50  0001 C CNN
F 3 "" H 850 3500 50  0001 C CNN
	1    850  3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3500 850  3500
Text Label 1150 2700 2    50   ~ 0
D16
NoConn ~ 1150 2700
NoConn ~ 1150 2800
NoConn ~ 1150 2900
NoConn ~ 1150 3000
NoConn ~ 1150 3100
NoConn ~ 1150 3200
NoConn ~ 1150 3300
NoConn ~ 1150 3400
Wire Wire Line
	5950 7250 6050 7250
Wire Wire Line
	6050 7250 6050 7150
Connection ~ 6050 7150
Wire Wire Line
	6050 7150 6400 7150
Wire Wire Line
	5550 7150 5450 7150
Wire Wire Line
	5450 7150 5450 7250
Connection ~ 5450 7250
Wire Wire Line
	5450 7250 5150 7250
Wire Wire Line
	4100 1500 4000 1500
Wire Wire Line
	4600 1100 4150 1100
$Comp
L power:+3V3 #PWR?
U 1 1 63A6B75E
P 4150 1100
F 0 "#PWR?" H 4150 950 50  0001 C CNN
F 1 "+3V3" V 4150 1300 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "" H 4150 1100 50  0001 C CNN
	1    4150 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63A6CC25
P 3950 2600
F 0 "#PWR?" H 3950 2350 50  0001 C CNN
F 1 "GND" V 3950 2400 50  0000 C CNN
F 2 "" H 3950 2600 50  0001 C CNN
F 3 "" H 3950 2600 50  0001 C CNN
	1    3950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1600 5200 1600
Wire Wire Line
	5100 1700 5200 1700
Wire Wire Line
	5100 1800 5200 1800
Wire Wire Line
	5100 1900 5200 1900
Wire Wire Line
	5100 2000 5200 2000
Wire Wire Line
	5100 2100 5200 2100
Wire Wire Line
	5100 2200 5200 2200
Wire Wire Line
	5100 2300 5200 2300
Wire Wire Line
	6750 2300 6650 2300
Wire Wire Line
	6750 2300 6750 2200
Wire Wire Line
	6750 2200 6650 2200
Connection ~ 6750 2300
Wire Wire Line
	6750 2200 6750 2100
Wire Wire Line
	6750 2100 6650 2100
Connection ~ 6750 2200
Wire Wire Line
	6750 2100 6750 2000
Wire Wire Line
	6750 2000 6650 2000
Connection ~ 6750 2100
Wire Wire Line
	6750 2000 6750 1900
Wire Wire Line
	6750 1900 6650 1900
Connection ~ 6750 2000
Wire Wire Line
	6750 1900 6750 1800
Wire Wire Line
	6750 1800 6650 1800
Connection ~ 6750 1900
Wire Wire Line
	6750 1800 6750 1700
Wire Wire Line
	6750 1700 6650 1700
Connection ~ 6750 1800
Wire Wire Line
	6750 1700 6750 1600
Wire Wire Line
	6750 1600 6650 1600
Connection ~ 6750 1700
$Comp
L Device:CP_Small C?
U 1 1 63C82001
P 5150 1100
F 0 "C?" V 5200 1200 50  0000 C CNN
F 1 "100nF" V 5200 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5150 1100 50  0001 C CNN
F 3 "~" H 5150 1100 50  0001 C CNN
	1    5150 1100
	0    -1   1    0   
$EndComp
Wire Wire Line
	6750 1600 6750 1100
Wire Wire Line
	5900 1100 5250 1100
Connection ~ 6750 1600
Wire Wire Line
	5050 1100 4600 1100
Connection ~ 4600 1100
Wire Wire Line
	4600 1100 4600 1200
$Comp
L pdjr:74LS165 U?
U 1 1 63F7C7A4
P 4600 2100
F 0 "U?" H 4850 2850 50  0000 C CNN
F 1 "74LS165" H 4300 2850 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ls165a.pdf" H 4600 2100 50  0001 C CNN
	1    4600 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 2600 5900 2550
Wire Wire Line
	6750 2600 6750 2300
Wire Wire Line
	3950 2600 4600 2600
Connection ~ 4600 2600
Text Label 4000 2000 2    50   ~ 0
INSTANCE_CLOCK
Text Label 4000 1500 2    50   ~ 0
INSTANCE_SERIAL
Wire Wire Line
	4100 2000 4000 2000
Text Label 4000 2100 2    50   ~ 0
INSTANCE_CLOCK_ENABLE
Wire Wire Line
	4100 2100 4000 2100
Text Label 4000 1800 2    50   ~ 0
INSTANCE_LOAD
Wire Wire Line
	4100 1800 4000 1800
Text Label 2250 2400 0    50   ~ 0
INSTANCE_LOAD
Text Label 2250 2500 0    50   ~ 0
INSTANCE_CLOCK
Text Label 2250 2600 0    50   ~ 0
INSTANCE_SERIAL
Text Label 2250 2700 0    50   ~ 0
INSTANCE_CLOCK_ENABLE
Text Label 2250 2800 0    50   ~ 0
D8
Text Label 2250 2900 0    50   ~ 0
D7
Text Label 2250 3000 0    50   ~ 0
D6
Text Label 2250 3100 0    50   ~ 0
D5
$EndSCHEMATC
