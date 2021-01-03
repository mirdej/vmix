EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "vMIX20-Effects"
Date "2020-12-30"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x10 J110
U 1 1 5F36B663
P 1300 6450
F 0 "J110" H 1380 6442 50  0000 L CNN
F 1 "FROM CTL" H 1380 6351 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1300 6450 50  0001 C CNN
F 3 "~" H 1300 6450 50  0001 C CNN
	1    1300 6450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J112
U 1 1 5F79495D
P 1450 7300
F 0 "J112" H 1478 7326 50  0000 L CNN
F 1 "gnd" H 1478 7235 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1450 7300 50  0001 C CNN
F 3 "~" H 1450 7300 50  0001 C CNN
	1    1450 7300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0141
U 1 1 5FFE6D0A
P 1250 7300
F 0 "#PWR0141" H 1250 7050 50  0001 C CNN
F 1 "GND" H 1255 7127 50  0000 C CNN
F 2 "" H 1250 7300 50  0001 C CNN
F 3 "" H 1250 7300 50  0001 C CNN
	1    1250 7300
	1    0    0    -1  
$EndComp
Text GLabel 1500 6050 2    50   Input ~ 0
scale_cv
Text GLabel 1500 6250 2    50   Input ~ 0
compa_cv
Text GLabel 1500 6450 2    50   Input ~ 0
edges_bypass
Text GLabel 1500 6550 2    50   Input ~ 0
compa_bypass
Text GLabel 1500 6650 2    50   Input ~ 0
inverter_bypass
Text GLabel 1500 6750 2    50   Input ~ 0
dry~wet~
Text GLabel 1500 6850 2    50   Input ~ 0
bias_cv
$Comp
L synkie_symbols:+5V #PWR0133
U 1 1 5DCB58DB
P 6400 6450
F 0 "#PWR0133" H 6400 6300 50  0001 C CNN
F 1 "+5V" H 6400 6600 50  0000 C CNN
F 2 "" H 6400 6450 50  0001 C CNN
F 3 "" H 6400 6450 50  0001 C CNN
	1    6400 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 6450 6400 6800
Connection ~ 6400 6800
Connection ~ 6400 7000
Wire Wire Line
	6400 7300 6400 7000
Wire Wire Line
	6600 6900 6700 6900
$Comp
L synkie_symbols:-5V #PWR0143
U 1 1 5DCB6075
P 6400 7300
F 0 "#PWR0143" H 6400 7400 50  0001 C CNN
F 1 "-5V" H 6400 7450 50  0000 C CNN
F 2 "" H 6400 7300 50  0001 C CNN
F 3 "" H 6400 7300 50  0001 C CNN
	1    6400 7300
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0136
U 1 1 5DCB53A6
P 6700 6900
F 0 "#PWR0136" H 6700 6650 50  0001 C CNN
F 1 "GND" H 6705 6727 50  0000 C CNN
F 2 "" H 6700 6900 50  0001 C CNN
F 3 "" H 6700 6900 50  0001 C CNN
	1    6700 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 6900 6600 7000
Connection ~ 6600 6900
Wire Wire Line
	6600 6800 6600 6900
$Comp
L synkie_symbols:CP_Small C116
U 1 1 5DCB0A0D
P 6500 7000
F 0 "C116" V 6350 7000 50  0000 C CNN
F 1 "10u" V 6250 7000 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6500 7000 50  0001 C CNN
F 3 "~" H 6500 7000 50  0001 C CNN
	1    6500 7000
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5DCAC6DA
P 6250 6800
F 0 "FB101" V 5976 6800 50  0000 C CNN
F 1 "330u" V 6067 6800 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 6800 50  0001 C CNN
F 3 "~" H 6250 6800 50  0001 C CNN
	1    6250 6800
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB102
U 1 1 5DCAD10D
P 6250 7000
F 0 "FB102" V 6400 7000 50  0000 C CNN
F 1 "330u" V 6500 7000 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 7000 50  0001 C CNN
F 3 "~" H 6250 7000 50  0001 C CNN
	1    6250 7000
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C113
U 1 1 5DCABC45
P 6500 6800
F 0 "C113" V 6275 6800 50  0000 C CNN
F 1 "10u" V 6366 6800 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 6500 6800 50  0001 C CNN
F 3 "~" H 6500 6800 50  0001 C CNN
	1    6500 6800
	0    -1   1    0   
$EndComp
$Sheet
S 5900 5250 950  600 
U 5FF12D61
F0 "Mechanicals" 50
F1 "vm113-mechanical.sch" 50
$EndSheet
$Comp
L synkie_symbols:LMH6643 U102
U 1 1 5FBE3F56
P 4500 1400
F 0 "U102" H 4500 1767 50  0000 C CNN
F 1 "LMH6643" H 4500 1676 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4500 1400 50  0001 C CNN
F 3 "~" H 4500 1400 50  0001 C CNN
	1    4500 1400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U102
U 2 1 5FBE3F5C
P 6500 1500
F 0 "U102" H 6500 1867 50  0000 C CNN
F 1 "LMH6643" H 6500 1776 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6500 1500 50  0001 C CNN
F 3 "~" H 6500 1500 50  0001 C CNN
	2    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U102
U 3 1 5FBE3F62
P 4350 2300
F 0 "U102" H 4308 2346 50  0000 L CNN
F 1 "LMH6643" H 4308 2255 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 2300 50  0001 C CNN
F 3 "~" H 4350 2300 50  0001 C CNN
	3    4350 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R110
U 1 1 5FBE3F6E
P 4500 1750
F 0 "R110" V 4600 1750 50  0000 C CNN
F 1 "75" V 4500 1750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 1750 50  0001 C CNN
F 3 "~" H 4500 1750 50  0001 C CNN
	1    4500 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1500 4200 1750
Wire Wire Line
	4200 1750 4350 1750
Wire Wire Line
	4650 1750 4800 1750
Wire Wire Line
	4800 1750 4800 1400
$Comp
L Device:R_POT RV101
U 1 1 5FBE3F78
P 5150 1550
F 0 "RV101" H 5080 1504 50  0000 R CNN
F 1 "LOW" H 5080 1595 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 5150 1550 50  0001 C CNN
F 3 "~" H 5150 1550 50  0001 C CNN
	1    5150 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT RV102
U 1 1 5FBE3F7E
P 5550 1550
F 0 "RV102" H 5480 1504 50  0000 R CNN
F 1 "MID" H 5480 1595 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 5550 1550 50  0001 C CNN
F 3 "~" H 5550 1550 50  0001 C CNN
	1    5550 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 1700 6200 1600
$Comp
L synkie_symbols:R R103
U 1 1 5FBE3F85
P 4950 1400
F 0 "R103" V 5050 1350 50  0000 C CNN
F 1 "2k2" V 4950 1400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 1400 50  0001 C CNN
F 3 "~" H 4950 1400 50  0001 C CNN
	1    4950 1400
	0    1    1    0   
$EndComp
Connection ~ 4800 1400
Wire Wire Line
	5100 1400 5150 1400
Connection ~ 5150 1400
$Comp
L Device:R_POT RV103
U 1 1 5FBE3F8E
P 5950 1550
F 0 "RV103" H 5880 1504 50  0000 R CNN
F 1 "HIGH" H 5880 1595 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 5950 1550 50  0001 C CNN
F 3 "~" H 5950 1550 50  0001 C CNN
	1    5950 1550
	-1   0    0    -1  
$EndComp
Connection ~ 5950 1700
Wire Wire Line
	5950 1700 6200 1700
Connection ~ 5950 1400
Wire Wire Line
	5950 1400 6200 1400
Wire Wire Line
	5550 1700 5950 1700
Connection ~ 5550 1400
Wire Wire Line
	5550 1400 5950 1400
Wire Wire Line
	5150 1400 5550 1400
Wire Wire Line
	5150 1700 5550 1700
Connection ~ 5550 1700
$Comp
L synkie_symbols:C_Small C107
U 1 1 5FBE3F9E
P 5400 1950
F 0 "C107" H 5515 1996 50  0000 L CNN
F 1 "300n" H 5515 1905 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5438 1800 50  0001 C CNN
F 3 "~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C108
U 1 1 5FBE3FA4
P 5800 1950
F 0 "C108" H 5915 1996 50  0000 L CNN
F 1 "210p" H 5915 1905 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5838 1800 50  0001 C CNN
F 3 "~" H 5800 1950 50  0001 C CNN
	1    5800 1950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C106
U 1 1 5FBE3FAA
P 5000 1950
F 0 "C106" H 5115 1996 50  0000 L CNN
F 1 "2u" H 5115 1905 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5038 1800 50  0001 C CNN
F 3 "~" H 5000 1950 50  0001 C CNN
	1    5000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1550 5400 1850
Wire Wire Line
	5800 1550 5800 1850
Wire Wire Line
	5000 1550 5000 1850
$Comp
L Device:L L102
U 1 1 5FBE3FB3
P 5400 2200
F 0 "L102" H 5452 2246 50  0000 L CNN
F 1 "330uH" H 5452 2155 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5400 2200 50  0001 C CNN
F 3 "~" H 5400 2200 50  0001 C CNN
	1    5400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:L L103
U 1 1 5FBE3FB9
P 5800 2200
F 0 "L103" H 5852 2246 50  0000 L CNN
F 1 "1.19uH" H 5852 2155 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5800 2200 50  0001 C CNN
F 3 "~" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:L L101
U 1 1 5FBE3FBF
P 5000 2200
F 0 "L101" H 5053 2246 50  0000 L CNN
F 1 "330u" H 5053 2155 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5000 2200 50  0001 C CNN
F 3 "~" H 5000 2200 50  0001 C CNN
	1    5000 2200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 5FBE3FC5
P 5000 2350
F 0 "#PWR0116" H 5000 2100 50  0001 C CNN
F 1 "GND" H 5005 2177 50  0000 C CNN
F 2 "" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0117
U 1 1 5FBE3FCB
P 5400 2350
F 0 "#PWR0117" H 5400 2100 50  0001 C CNN
F 1 "GND" H 5405 2177 50  0000 C CNN
F 2 "" H 5400 2350 50  0001 C CNN
F 3 "" H 5400 2350 50  0001 C CNN
	1    5400 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0118
U 1 1 5FBE3FD1
P 5800 2350
F 0 "#PWR0118" H 5800 2100 50  0001 C CNN
F 1 "GND" H 5805 2177 50  0000 C CNN
F 2 "" H 5800 2350 50  0001 C CNN
F 3 "" H 5800 2350 50  0001 C CNN
	1    5800 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R111
U 1 1 5FBE3FD7
P 6550 1900
F 0 "R111" V 6450 1900 50  0000 C CNN
F 1 "2k2" V 6550 1900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 1900 50  0001 C CNN
F 3 "~" H 6550 1900 50  0001 C CNN
	1    6550 1900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R113
U 1 1 5FBE3FDD
P 6400 2150
F 0 "R113" H 6330 2104 50  0000 R CNN
F 1 "2k2" H 6330 2195 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6400 2150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0119
U 1 1 5FBE3FE3
P 6400 2450
F 0 "#PWR0119" H 6400 2200 50  0001 C CNN
F 1 "GND" H 6405 2277 50  0000 C CNN
F 2 "" H 6400 2450 50  0001 C CNN
F 3 "" H 6400 2450 50  0001 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1700 6200 1900
Wire Wire Line
	6200 1900 6400 1900
Connection ~ 6200 1700
Wire Wire Line
	6400 1900 6400 2000
Connection ~ 6400 1900
Wire Wire Line
	6400 2300 6400 2450
Text Notes 3650 800  0    50   ~ 0
EQUALISER
Wire Wire Line
	6700 1900 6800 1900
Wire Wire Line
	6800 1900 6800 1500
$Comp
L synkie_symbols:C_Small C109
U 1 1 5FBE3FF3
P 4050 2150
F 0 "C109" H 4165 2196 50  0000 L CNN
F 1 "100n" H 4165 2105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 2000 50  0001 C CNN
F 3 "~" H 4050 2150 50  0001 C CNN
	1    4050 2150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C110
U 1 1 5FBE3FF9
P 4050 2450
F 0 "C110" H 4165 2496 50  0000 L CNN
F 1 "100n" H 4165 2405 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 2300 50  0001 C CNN
F 3 "~" H 4050 2450 50  0001 C CNN
	1    4050 2450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0113
U 1 1 5FBE3FFF
P 4250 2000
F 0 "#PWR0113" H 4250 1850 50  0001 C CNN
F 1 "+5V" H 4265 2173 50  0000 C CNN
F 2 "" H 4250 2000 50  0001 C CNN
F 3 "" H 4250 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0120
U 1 1 5FBE4005
P 4250 2600
F 0 "#PWR0120" H 4250 2700 50  0001 C CNN
F 1 "-5V" H 4265 2773 50  0000 C CNN
F 2 "" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4250 2600
	-1   0    0    1   
$EndComp
Connection ~ 4250 2600
Wire Wire Line
	4250 2600 4050 2600
Wire Wire Line
	4250 2000 4050 2000
Connection ~ 4250 2000
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 5FBE400F
P 4050 2300
F 0 "#PWR0115" H 4050 2050 50  0001 C CNN
F 1 "GND" H 4055 2127 50  0000 C CNN
F 2 "" H 4050 2300 50  0001 C CNN
F 3 "" H 4050 2300 50  0001 C CNN
	1    4050 2300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R106
U 1 1 5FBE4018
P 6950 1500
F 0 "R106" V 6850 1500 50  0000 C CNN
F 1 "75" V 6950 1500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1500 50  0001 C CNN
F 3 "~" H 6950 1500 50  0001 C CNN
	1    6950 1500
	0    1    1    0   
$EndComp
Connection ~ 6800 1500
$Comp
L synkie_symbols:R R108
U 1 1 5FBE401F
P 7100 1650
F 0 "R108" V 7150 1700 50  0000 C CNN
F 1 "75" V 7100 1650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 1650 50  0001 C CNN
F 3 "~" H 7100 1650 50  0001 C CNN
	1    7100 1650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0110
U 1 1 5FBE4025
P 7100 1800
F 0 "#PWR0110" H 7100 1550 50  0001 C CNN
F 1 "GND" H 7105 1627 50  0000 C CNN
F 2 "" H 7100 1800 50  0001 C CNN
F 3 "" H 7100 1800 50  0001 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
Wire Notes Line
	7400 700  7400 2850
Wire Notes Line
	7400 2850 3600 2850
Wire Notes Line
	3600 2850 3600 700 
Wire Notes Line
	3600 700  7400 700 
$Comp
L synkie_symbols:GND #PWR0124
U 1 1 5FC7F909
P 9050 4600
AR Path="/5FC7F909" Ref="#PWR0124"  Part="1" 
AR Path="/5FBCB961/5FC7F909" Ref="#PWR?"  Part="1" 
F 0 "#PWR0124" H 9050 4350 50  0001 C CNN
F 1 "GND" V 9055 4472 50  0000 R CNN
F 2 "" H 9050 4600 50  0001 C CNN
F 3 "" H 9050 4600 50  0001 C CNN
	1    9050 4600
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0121
U 1 1 5FC7F90F
P 9550 3400
AR Path="/5FC7F90F" Ref="#PWR0121"  Part="1" 
AR Path="/5FBCB961/5FC7F90F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 9550 3250 50  0001 C CNN
F 1 "+5V" H 9565 3573 50  0000 C CNN
F 2 "" H 9550 3400 50  0001 C CNN
F 3 "" H 9550 3400 50  0001 C CNN
	1    9550 3400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0129
U 1 1 5FC7F915
P 9550 5200
AR Path="/5FC7F915" Ref="#PWR0129"  Part="1" 
AR Path="/5FBCB961/5FC7F915" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 9550 4950 50  0001 C CNN
F 1 "GND" H 9555 5027 50  0000 C CNN
F 2 "" H 9550 5200 50  0001 C CNN
F 3 "" H 9550 5200 50  0001 C CNN
	1    9550 5200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0130
U 1 1 5FC7F91B
P 9650 5200
AR Path="/5FC7F91B" Ref="#PWR0130"  Part="1" 
AR Path="/5FBCB961/5FC7F91B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0130" H 9650 5300 50  0001 C CNN
F 1 "-5V" H 9665 5373 50  0000 C CNN
F 2 "" H 9650 5200 50  0001 C CNN
F 3 "" H 9650 5200 50  0001 C CNN
	1    9650 5200
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U101
U 1 1 5FC7F921
P 4350 3900
AR Path="/5FC7F921" Ref="U101"  Part="1" 
AR Path="/5FBCB961/5FC7F921" Ref="U?"  Part="1" 
F 0 "U101" H 4350 4267 50  0000 C CNN
F 1 "LMH6643" H 4350 4176 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4350 3900 50  0001 C CNN
F 3 "~" H 4350 3900 50  0001 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R114
U 1 1 5FC7F927
P 3800 3650
AR Path="/5FC7F927" Ref="R114"  Part="1" 
AR Path="/5FBCB961/5FC7F927" Ref="R?"  Part="1" 
F 0 "R114" H 3870 3696 50  0000 L CNN
F 1 "2k2" H 3870 3605 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 3650 50  0001 C CNN
F 3 "~" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3800 3800 3800
$Comp
L synkie_symbols:GND #PWR0122
U 1 1 5FC7F92E
P 3800 3450
AR Path="/5FC7F92E" Ref="#PWR0122"  Part="1" 
AR Path="/5FBCB961/5FC7F92E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 3800 3200 50  0001 C CNN
F 1 "GND" H 3805 3277 50  0000 C CNN
F 2 "" H 3800 3450 50  0001 C CNN
F 3 "" H 3800 3450 50  0001 C CNN
	1    3800 3450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R115
U 1 1 5FC7F934
P 3850 4000
AR Path="/5FC7F934" Ref="R115"  Part="1" 
AR Path="/5FBCB961/5FC7F934" Ref="R?"  Part="1" 
F 0 "R115" V 3750 4000 50  0000 C CNN
F 1 "2k2" V 3850 4000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R116
U 1 1 5FC7F93A
P 4350 4200
AR Path="/5FC7F93A" Ref="R116"  Part="1" 
AR Path="/5FBCB961/5FC7F93A" Ref="R?"  Part="1" 
F 0 "R116" V 4450 4250 50  0000 C CNN
F 1 "2k2" V 4350 4200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 4200 50  0001 C CNN
F 3 "~" H 4350 4200 50  0001 C CNN
	1    4350 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4000 4050 4000
Text Label 5850 4000 2    50   ~ 0
eq_out
Text Label 9050 3800 2    50   ~ 0
compa_out
Text Label 10050 3700 0    50   ~ 0
inverter_in
Text Label 3700 4000 2    50   ~ 0
inverter_in
Text Label 9050 4000 2    50   ~ 0
inverter_in
Text Label 9050 4100 2    50   ~ 0
inverter_out
Connection ~ 4000 4000
Text Label 4650 3900 0    50   ~ 0
inverter_out
$Comp
L synkie_symbols:Opamp_Dual_Generic U101
U 3 1 5FC7F94B
P 3450 7000
AR Path="/5FC7F94B" Ref="U101"  Part="3" 
AR Path="/5FBCB961/5FC7F94B" Ref="U?"  Part="3" 
F 0 "U101" H 3408 7046 50  0000 L CNN
F 1 "LMH6643" H 3408 6955 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3450 7000 50  0001 C CNN
F 3 "~" H 3450 7000 50  0001 C CNN
	3    3450 7000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C114
U 1 1 5FC7F951
P 3150 6850
AR Path="/5FC7F951" Ref="C114"  Part="1" 
AR Path="/5FBCB961/5FC7F951" Ref="C?"  Part="1" 
F 0 "C114" H 3265 6896 50  0000 L CNN
F 1 "100n" H 3265 6805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 6700 50  0001 C CNN
F 3 "~" H 3150 6850 50  0001 C CNN
	1    3150 6850
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C117
U 1 1 5FC7F957
P 3150 7150
AR Path="/5FC7F957" Ref="C117"  Part="1" 
AR Path="/5FBCB961/5FC7F957" Ref="C?"  Part="1" 
F 0 "C117" H 3265 7196 50  0000 L CNN
F 1 "100n" H 3265 7105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 7000 50  0001 C CNN
F 3 "~" H 3150 7150 50  0001 C CNN
	1    3150 7150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0134
U 1 1 5FC7F95D
P 3350 6700
AR Path="/5FC7F95D" Ref="#PWR0134"  Part="1" 
AR Path="/5FBCB961/5FC7F95D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0134" H 3350 6550 50  0001 C CNN
F 1 "+5V" H 3365 6873 50  0000 C CNN
F 2 "" H 3350 6700 50  0001 C CNN
F 3 "" H 3350 6700 50  0001 C CNN
	1    3350 6700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0142
U 1 1 5FC7F963
P 3350 7300
AR Path="/5FC7F963" Ref="#PWR0142"  Part="1" 
AR Path="/5FBCB961/5FC7F963" Ref="#PWR?"  Part="1" 
F 0 "#PWR0142" H 3350 7400 50  0001 C CNN
F 1 "-5V" H 3365 7473 50  0000 C CNN
F 2 "" H 3350 7300 50  0001 C CNN
F 3 "" H 3350 7300 50  0001 C CNN
	1    3350 7300
	-1   0    0    1   
$EndComp
Connection ~ 3350 7300
Wire Wire Line
	3350 7300 3150 7300
Wire Wire Line
	3350 6700 3150 6700
Connection ~ 3350 6700
$Comp
L synkie_symbols:GND #PWR0138
U 1 1 5FC7F96D
P 3150 7000
AR Path="/5FC7F96D" Ref="#PWR0138"  Part="1" 
AR Path="/5FBCB961/5FC7F96D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0138" H 3150 6750 50  0001 C CNN
F 1 "GND" H 3155 6827 50  0000 C CNN
F 2 "" H 3150 7000 50  0001 C CNN
F 3 "" H 3150 7000 50  0001 C CNN
	1    3150 7000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0125
U 1 1 5FC7F974
P 10200 4750
AR Path="/5FC7F974" Ref="#PWR0125"  Part="1" 
AR Path="/5FBCB961/5FC7F974" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 10200 4600 50  0001 C CNN
F 1 "+5V" H 10215 4923 50  0000 C CNN
F 2 "" H 10200 4750 50  0001 C CNN
F 3 "" H 10200 4750 50  0001 C CNN
	1    10200 4750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C111
U 1 1 5FC7F97A
P 10200 4850
AR Path="/5FC7F97A" Ref="C111"  Part="1" 
AR Path="/5FBCB961/5FC7F97A" Ref="C?"  Part="1" 
F 0 "C111" H 10315 4896 50  0000 L CNN
F 1 "100n" H 10315 4805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 4700 50  0001 C CNN
F 3 "~" H 10200 4850 50  0001 C CNN
	1    10200 4850
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C112
U 1 1 5FC7F980
P 10200 5050
AR Path="/5FC7F980" Ref="C112"  Part="1" 
AR Path="/5FBCB961/5FC7F980" Ref="C?"  Part="1" 
F 0 "C112" H 10315 5096 50  0000 L CNN
F 1 "100n" H 10315 5005 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10238 4900 50  0001 C CNN
F 3 "~" H 10200 5050 50  0001 C CNN
	1    10200 5050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0128
U 1 1 5FC7F986
P 10200 5150
AR Path="/5FC7F986" Ref="#PWR0128"  Part="1" 
AR Path="/5FBCB961/5FC7F986" Ref="#PWR?"  Part="1" 
F 0 "#PWR0128" H 10200 5250 50  0001 C CNN
F 1 "-5V" H 10215 5323 50  0000 C CNN
F 2 "" H 10200 5150 50  0001 C CNN
F 3 "" H 10200 5150 50  0001 C CNN
	1    10200 5150
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0126
U 1 1 5FC7F98C
P 10200 4950
AR Path="/5FC7F98C" Ref="#PWR0126"  Part="1" 
AR Path="/5FBCB961/5FC7F98C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 10200 4700 50  0001 C CNN
F 1 "GND" H 10205 4777 50  0000 C CNN
F 2 "" H 10200 4950 50  0001 C CNN
F 3 "" H 10200 4950 50  0001 C CNN
	1    10200 4950
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R117
U 1 1 5FC7F993
P 4000 4350
AR Path="/5FC7F993" Ref="R117"  Part="1" 
AR Path="/5FBCB961/5FC7F993" Ref="R?"  Part="1" 
F 0 "R117" H 4070 4396 50  0000 L CNN
F 1 "16k" H 4070 4305 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 4350 50  0001 C CNN
F 3 "~" H 4000 4350 50  0001 C CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3450 3800 3500
$Comp
L synkie_symbols:Opamp_Dual_Generic U101
U 2 1 5FC7F99A
P 2300 1300
AR Path="/5FC7F99A" Ref="U101"  Part="2" 
AR Path="/5FBCB961/5FC7F99A" Ref="U?"  Part="2" 
F 0 "U101" H 2300 1667 50  0000 C CNN
F 1 "LMH6643" H 2300 1576 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 1300 50  0001 C CNN
F 3 "~" H 2300 1300 50  0001 C CNN
	2    2300 1300
	1    0    0    -1  
$EndComp
Text Label 9050 4300 2    50   ~ 0
edges_in
Text Label 9050 4400 2    50   ~ 0
edges_out
Text Label 10050 4000 0    50   ~ 0
eq_in
$Comp
L synkie_symbols:R R101
U 1 1 5FC7F9A4
P 1700 1200
AR Path="/5FC7F9A4" Ref="R101"  Part="1" 
AR Path="/5FBCB961/5FC7F9A4" Ref="R?"  Part="1" 
F 0 "R101" V 1600 1200 50  0000 C CNN
F 1 "1k" V 1700 1200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 1200 50  0001 C CNN
F 3 "~" H 1700 1200 50  0001 C CNN
	1    1700 1200
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C102
U 1 1 5FC7F9AA
P 1850 1350
AR Path="/5FC7F9AA" Ref="C102"  Part="1" 
AR Path="/5FBCB961/5FC7F9AA" Ref="C?"  Part="1" 
F 0 "C102" H 1965 1396 50  0000 L CNN
F 1 "100p" H 1965 1305 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1888 1200 50  0001 C CNN
F 3 "~" H 1850 1350 50  0001 C CNN
	1    1850 1350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0104
U 1 1 5FC7F9B0
P 1850 1500
AR Path="/5FC7F9B0" Ref="#PWR0104"  Part="1" 
AR Path="/5FBCB961/5FC7F9B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1850 1250 50  0001 C CNN
F 1 "GND" H 1855 1327 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 1850 1200
Text Label 1300 1200 3    50   ~ 0
edges_in
$Comp
L synkie_symbols:R R104
U 1 1 5FC7F9B9
P 2600 1450
AR Path="/5FC7F9B9" Ref="R104"  Part="1" 
AR Path="/5FBCB961/5FC7F9B9" Ref="R?"  Part="1" 
F 0 "R104" V 2500 1350 50  0000 L CNN
F 1 "30k" V 2600 1350 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 1450 50  0001 C CNN
F 3 "~" H 2600 1450 50  0001 C CNN
	1    2600 1450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R109
U 1 1 5FC7F9BF
P 2600 1750
AR Path="/5FC7F9BF" Ref="R109"  Part="1" 
AR Path="/5FBCB961/5FC7F9BF" Ref="R?"  Part="1" 
F 0 "R109" V 2500 1700 50  0000 L CNN
F 1 "15k" V 2600 1650 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
	1    2600 1750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0111
U 1 1 5FC7F9C5
P 2600 1900
AR Path="/5FC7F9C5" Ref="#PWR0111"  Part="1" 
AR Path="/5FBCB961/5FC7F9C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 2600 1650 50  0001 C CNN
F 1 "GND" H 2605 1727 50  0000 C CNN
F 2 "" H 2600 1900 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1400 2000 1600
Wire Wire Line
	2000 1600 2600 1600
Connection ~ 2600 1600
$Comp
L synkie_symbols:C_Small C101
U 1 1 5FC7F9CE
P 2750 1300
AR Path="/5FC7F9CE" Ref="C101"  Part="1" 
AR Path="/5FBCB961/5FC7F9CE" Ref="C?"  Part="1" 
F 0 "C101" H 2865 1346 50  0000 L CNN
F 1 "1n" H 2865 1255 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 1150 50  0001 C CNN
F 3 "~" H 2750 1300 50  0001 C CNN
	1    2750 1300
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R105
U 1 1 5FC7F9D4
P 2900 1450
AR Path="/5FC7F9D4" Ref="R105"  Part="1" 
AR Path="/5FBCB961/5FC7F9D4" Ref="R?"  Part="1" 
F 0 "R105" V 3000 1500 50  0000 C CNN
F 1 "100" V 2900 1450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 1450 50  0001 C CNN
F 3 "~" H 2900 1450 50  0001 C CNN
	1    2900 1450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0112
U 1 1 5FC7F9DA
P 2900 1900
AR Path="/5FC7F9DA" Ref="#PWR0112"  Part="1" 
AR Path="/5FBCB961/5FC7F9DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 2900 1650 50  0001 C CNN
F 1 "GND" H 2905 1727 50  0000 C CNN
F 2 "" H 2900 1900 50  0001 C CNN
F 3 "" H 2900 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1600 2900 1900
Text Label 2900 1300 0    50   ~ 0
edges_out
$Comp
L synkie_symbols:-5V #PWR0123
U 1 1 5FC7F9E3
P 4000 4500
AR Path="/5FC7F9E3" Ref="#PWR0123"  Part="1" 
AR Path="/5FBCB961/5FC7F9E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 4000 4600 50  0001 C CNN
F 1 "-5V" H 4015 4673 50  0000 C CNN
F 2 "" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 4000 4000 4200
Wire Wire Line
	4500 4200 4650 4200
Wire Wire Line
	4650 4200 4650 3900
Wire Wire Line
	4200 4200 4000 4200
Connection ~ 4000 4200
Wire Notes Line
	1100 750  3400 750 
Wire Notes Line
	3400 750  3400 2200
Wire Notes Line
	3400 2200 1100 2200
Wire Notes Line
	1100 2200 1100 750 
Text Notes 1150 850  0    50   ~ 0
1) EDGES
$Comp
L synkie_symbols:LM311 U103
U 1 1 5FC7F9F3
P 8650 1450
AR Path="/5FC7F9F3" Ref="U103"  Part="1" 
AR Path="/5FBCB961/5FC7F9F3" Ref="U?"  Part="1" 
F 0 "U103" H 8250 1650 50  0000 L CNN
F 1 "LM311" H 8150 1250 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8650 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm311.pdf" H 8650 1450 50  0001 C CNN
	1    8650 1450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0101
U 1 1 5FC7F9F9
P 8550 1150
AR Path="/5FC7F9F9" Ref="#PWR0101"  Part="1" 
AR Path="/5FBCB961/5FC7F9F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 8550 1000 50  0001 C CNN
F 1 "+5V" H 8565 1323 50  0000 C CNN
F 2 "" H 8550 1150 50  0001 C CNN
F 3 "" H 8550 1150 50  0001 C CNN
	1    8550 1150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0108
U 1 1 5FC7F9FF
P 8550 1750
AR Path="/5FC7F9FF" Ref="#PWR0108"  Part="1" 
AR Path="/5FBCB961/5FC7F9FF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 8550 1850 50  0001 C CNN
F 1 "-5V" H 8565 1923 50  0000 C CNN
F 2 "" H 8550 1750 50  0001 C CNN
F 3 "" H 8550 1750 50  0001 C CNN
	1    8550 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 1150 8650 1050
Wire Wire Line
	8650 1050 8750 1050
Wire Wire Line
	8750 1050 8750 1150
$Comp
L synkie_symbols:R R107
U 1 1 5FC7FA0E
P 9000 1600
AR Path="/5FC7FA0E" Ref="R107"  Part="1" 
AR Path="/5FBCB961/5FC7FA0E" Ref="R?"  Part="1" 
F 0 "R107" H 8750 1600 50  0000 L CNN
F 1 "75" H 8850 1500 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 1600 50  0001 C CNN
F 3 "~" H 9000 1600 50  0001 C CNN
	1    9000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1450 8950 1450
$Comp
L synkie_symbols:GND #PWR0109
U 1 1 5FC7FA15
P 9000 1750
AR Path="/5FC7FA15" Ref="#PWR0109"  Part="1" 
AR Path="/5FBCB961/5FC7FA15" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 9000 1500 50  0001 C CNN
F 1 "GND" H 9005 1577 50  0000 C CNN
F 2 "" H 9000 1750 50  0001 C CNN
F 3 "" H 9000 1750 50  0001 C CNN
	1    9000 1750
	1    0    0    -1  
$EndComp
Connection ~ 9000 1450
$Comp
L synkie_symbols:R R102
U 1 1 5FC7FA1C
P 9000 1300
AR Path="/5FC7FA1C" Ref="R102"  Part="1" 
AR Path="/5FBCB961/5FC7FA1C" Ref="R?"  Part="1" 
F 0 "R102" H 9070 1346 50  0000 L CNN
F 1 "300" H 9070 1255 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 1300 50  0001 C CNN
F 3 "~" H 9000 1300 50  0001 C CNN
	1    9000 1300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0102
U 1 1 5FC7FA22
P 9000 1150
AR Path="/5FC7FA22" Ref="#PWR0102"  Part="1" 
AR Path="/5FBCB961/5FC7FA22" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 9000 1000 50  0001 C CNN
F 1 "+5V" H 9015 1323 50  0000 C CNN
F 2 "" H 9000 1150 50  0001 C CNN
F 3 "" H 9000 1150 50  0001 C CNN
	1    9000 1150
	1    0    0    -1  
$EndComp
Text Label 8350 1350 2    50   ~ 0
compa_in
$Comp
L synkie_symbols:+5V #PWR0103
U 1 1 5FC7FA2C
P 10300 1300
AR Path="/5FC7FA2C" Ref="#PWR0103"  Part="1" 
AR Path="/5FBCB961/5FC7FA2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 10300 1150 50  0001 C CNN
F 1 "+5V" H 10315 1473 50  0000 C CNN
F 2 "" H 10300 1300 50  0001 C CNN
F 3 "" H 10300 1300 50  0001 C CNN
	1    10300 1300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C103
U 1 1 5FC7FA32
P 10300 1400
AR Path="/5FC7FA32" Ref="C103"  Part="1" 
AR Path="/5FBCB961/5FC7FA32" Ref="C?"  Part="1" 
F 0 "C103" H 10415 1446 50  0000 L CNN
F 1 "100n" H 10415 1355 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10338 1250 50  0001 C CNN
F 3 "~" H 10300 1400 50  0001 C CNN
	1    10300 1400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C105
U 1 1 5FC7FA38
P 10300 1600
AR Path="/5FC7FA38" Ref="C105"  Part="1" 
AR Path="/5FBCB961/5FC7FA38" Ref="C?"  Part="1" 
F 0 "C105" H 10415 1646 50  0000 L CNN
F 1 "100n" H 10415 1555 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10338 1450 50  0001 C CNN
F 3 "~" H 10300 1600 50  0001 C CNN
	1    10300 1600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR0107
U 1 1 5FC7FA3E
P 10300 1700
AR Path="/5FC7FA3E" Ref="#PWR0107"  Part="1" 
AR Path="/5FBCB961/5FC7FA3E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 10300 1800 50  0001 C CNN
F 1 "-5V" H 10315 1873 50  0000 C CNN
F 2 "" H 10300 1700 50  0001 C CNN
F 3 "" H 10300 1700 50  0001 C CNN
	1    10300 1700
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0105
U 1 1 5FC7FA44
P 10300 1500
AR Path="/5FC7FA44" Ref="#PWR0105"  Part="1" 
AR Path="/5FBCB961/5FC7FA44" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 10300 1250 50  0001 C CNN
F 1 "GND" H 10305 1327 50  0000 C CNN
F 2 "" H 10300 1500 50  0001 C CNN
F 3 "" H 10300 1500 50  0001 C CNN
	1    10300 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  1200 1550 1200
Text Label 4200 1300 2    50   ~ 0
eq_in
Text Label 7100 1500 0    50   ~ 0
eq_out
$Comp
L Connector:Conn_01x01_Female J108
U 1 1 5FCDB403
P 8600 6050
AR Path="/5FCDB403" Ref="J108"  Part="1" 
AR Path="/5FBCB961/5FCDB403" Ref="J?"  Part="1" 
F 0 "J108" H 8628 6076 50  0000 L CNN
F 1 "COMPA-DROP" H 8628 5985 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 6050 50  0001 C CNN
F 3 "~" H 8600 6050 50  0001 C CNN
	1    8600 6050
	1    0    0    -1  
$EndComp
Text Label 8400 6050 2    50   ~ 0
compa_out
Text Label 8400 6250 2    50   ~ 0
inverter_out
$Comp
L Connector:Conn_01x01_Female J109
U 1 1 5FCDB40B
P 8600 6250
AR Path="/5FCDB40B" Ref="J109"  Part="1" 
AR Path="/5FBCB961/5FCDB40B" Ref="J?"  Part="1" 
F 0 "J109" H 8628 6276 50  0000 L CNN
F 1 "INVERTER-DROP" H 8628 6185 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 6250 50  0001 C CNN
F 3 "~" H 8600 6250 50  0001 C CNN
	1    8600 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J105
U 1 1 5FCDB411
P 8600 5550
AR Path="/5FCDB411" Ref="J105"  Part="1" 
AR Path="/5FBCB961/5FCDB411" Ref="J?"  Part="1" 
F 0 "J105" H 8628 5576 50  0000 L CNN
F 1 "EQ_IN" H 8628 5485 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 5550 50  0001 C CNN
F 3 "~" H 8600 5550 50  0001 C CNN
	1    8600 5550
	1    0    0    -1  
$EndComp
Text Label 8400 5550 2    50   ~ 0
eq_in
$Comp
L Connector:Conn_01x01_Female J103
U 1 1 5FCDB418
P 8600 5400
AR Path="/5FCDB418" Ref="J103"  Part="1" 
AR Path="/5FBCB961/5FCDB418" Ref="J?"  Part="1" 
F 0 "J103" H 8628 5426 50  0000 L CNN
F 1 "EDGES_IN" H 8628 5335 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 5400 50  0001 C CNN
F 3 "~" H 8600 5400 50  0001 C CNN
	1    8600 5400
	1    0    0    -1  
$EndComp
Text Label 8400 5400 2    50   ~ 0
edges_in
Text Label 8400 5900 2    50   ~ 0
edges_out
$Comp
L Connector:Conn_01x01_Female J107
U 1 1 5FCDB420
P 8600 5900
AR Path="/5FCDB420" Ref="J107"  Part="1" 
AR Path="/5FBCB961/5FCDB420" Ref="J?"  Part="1" 
F 0 "J107" H 8628 5926 50  0000 L CNN
F 1 "EDGES_OUT" H 8628 5835 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 5900 50  0001 C CNN
F 3 "~" H 8600 5900 50  0001 C CNN
	1    8600 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J106
U 1 1 5FCDB426
P 8600 5750
AR Path="/5FCDB426" Ref="J106"  Part="1" 
AR Path="/5FBCB961/5FCDB426" Ref="J?"  Part="1" 
F 0 "J106" H 8628 5776 50  0000 L CNN
F 1 "EQ_OUT" H 8628 5685 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 8600 5750 50  0001 C CNN
F 3 "~" H 8600 5750 50  0001 C CNN
	1    8600 5750
	1    0    0    -1  
$EndComp
Text Label 8400 5750 2    50   ~ 0
eq_out
Text GLabel 9050 4700 0    50   Input ~ 0
compa_bypass
Text GLabel 9050 4800 0    50   Input ~ 0
inverter_bypass
$Comp
L 4xxx:4053 U104
U 1 1 5FC7F902
P 9550 4300
AR Path="/5FC7F902" Ref="U104"  Part="1" 
AR Path="/5FBCB961/5FC7F902" Ref="U?"  Part="1" 
F 0 "U104" H 9700 5200 50  0000 C CNN
F 1 "MAX4053" H 9750 5100 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 9550 4300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 9550 4300 50  0001 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
Text GLabel 9050 4900 0    50   Input ~ 0
edges_bypass
Text GLabel 8350 1550 0    50   Input ~ 0
compa_cv
Text Label 9150 1450 0    50   ~ 0
compa_out
Text Label 8650 2450 2    50   ~ 0
compa_out
Text GLabel 9000 2450 2    50   Input ~ 0
COMPA-OUT
Wire Wire Line
	9000 2450 8650 2450
Wire Wire Line
	1850 1250 1850 1200
Connection ~ 1850 1200
Wire Wire Line
	1850 1450 1850 1500
Wire Wire Line
	2600 1300 2650 1300
Connection ~ 2600 1300
Wire Wire Line
	2850 1300 2900 1300
Wire Wire Line
	4050 2050 4050 2000
Wire Wire Line
	4050 2250 4050 2300
Connection ~ 4050 2300
Wire Wire Line
	4050 2300 4050 2350
Wire Wire Line
	4050 2600 4050 2550
Connection ~ 10300 1500
Wire Wire Line
	3150 6750 3150 6700
Wire Wire Line
	3150 6950 3150 7000
Connection ~ 3150 7000
Wire Wire Line
	3150 7000 3150 7050
Wire Wire Line
	3150 7300 3150 7250
Connection ~ 10200 4950
$Comp
L synkie_symbols:R R112
U 1 1 5FE90893
P 8650 1900
AR Path="/5FE90893" Ref="R112"  Part="1" 
AR Path="/5FBCB961/5FE90893" Ref="R?"  Part="1" 
F 0 "R112" H 8720 1946 50  0000 L CNN
F 1 "220" H 8720 1855 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8580 1900 50  0001 C CNN
F 3 "~" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0114
U 1 1 5FE90F7E
P 8650 2050
AR Path="/5FE90F7E" Ref="#PWR0114"  Part="1" 
AR Path="/5FBCB961/5FE90F7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 8650 2150 50  0001 C CNN
F 1 "-5V" H 8665 2223 50  0000 C CNN
F 2 "" H 8650 2050 50  0001 C CNN
F 3 "" H 8650 2050 50  0001 C CNN
	1    8650 2050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C104
U 1 1 5FE93A31
P 9300 1600
AR Path="/5FE93A31" Ref="C104"  Part="1" 
AR Path="/5FBCB961/5FE93A31" Ref="C?"  Part="1" 
F 0 "C104" H 9100 1700 50  0000 L CNN
F 1 "100p-470p?" H 9000 1600 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9338 1450 50  0001 C CNN
F 3 "~" H 9300 1600 50  0001 C CNN
	1    9300 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1450 9300 1500
Wire Wire Line
	9000 1450 9300 1450
$Comp
L synkie_symbols:GND #PWR0106
U 1 1 5FE98AF7
P 9300 1700
AR Path="/5FE98AF7" Ref="#PWR0106"  Part="1" 
AR Path="/5FBCB961/5FE98AF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 9300 1450 50  0001 C CNN
F 1 "GND" H 9305 1527 50  0000 C CNN
F 2 "" H 9300 1700 50  0001 C CNN
F 3 "" H 9300 1700 50  0001 C CNN
	1    9300 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0127
U 1 1 5FF5C7EF
P 850 5000
AR Path="/5FF5C7EF" Ref="#PWR0127"  Part="1" 
AR Path="/5FED65BF/5FF5C7EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0127" H 850 4750 50  0001 C CNN
F 1 "GND" H 855 4827 50  0000 C CNN
F 2 "" H 850 5000 50  0001 C CNN
F 3 "" H 850 5000 50  0001 C CNN
	1    850  5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP101
U 1 1 5FF5D333
P 1150 5000
F 0 "JP101" H 1150 5264 50  0000 C CNN
F 1 "Jumper" H 1150 5173 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1150 5000 50  0001 C CNN
F 3 "~" H 1150 5000 50  0001 C CNN
	1    1150 5000
	1    0    0    -1  
$EndComp
Text Notes 1900 5200 0    50   ~ 0
Check orientation
Wire Wire Line
	1450 4550 1450 4750
Connection ~ 1450 4550
Wire Wire Line
	2000 4550 1450 4550
Wire Wire Line
	1450 4350 1450 4550
Connection ~ 1450 4350
Wire Wire Line
	2000 4350 1450 4350
Wire Wire Line
	1450 4250 1450 4350
Connection ~ 1450 4250
Wire Wire Line
	2000 4250 1450 4250
Wire Wire Line
	1450 4050 1450 4250
Connection ~ 1450 4050
Wire Wire Line
	2000 4050 1450 4050
Wire Wire Line
	1450 3950 1450 4050
Connection ~ 1450 3950
Wire Wire Line
	2000 3950 1450 3950
Wire Wire Line
	1450 3750 1450 3950
Connection ~ 1450 3750
Wire Wire Line
	2000 3750 1450 3750
Wire Wire Line
	1450 3550 1450 3750
Connection ~ 1450 3550
Wire Wire Line
	2000 3550 1450 3550
Wire Wire Line
	1450 3350 1450 3550
Connection ~ 1450 3350
Wire Wire Line
	2000 3350 1450 3350
Wire Wire Line
	2000 3250 1450 3250
Wire Wire Line
	2000 3050 1450 3050
Wire Wire Line
	2000 2850 1450 2850
Connection ~ 1450 4750
Wire Wire Line
	2000 2550 1450 2550
Wire Wire Line
	1450 4750 1450 5000
Wire Wire Line
	2000 4750 1450 4750
Text Label 2000 4450 2    50   ~ 0
scale
Text Label 2000 4650 2    50   ~ 0
bias
Text Label 2000 2650 2    50   ~ 0
compa-out
Text Label 2000 4150 2    50   ~ 0
to-101
Text Label 2000 3850 2    50   ~ 0
from-101
$Comp
L Connector_Generic:Conn_01x24 J101
U 1 1 5FEB56F5
P 2200 3750
F 0 "J101" H 2280 3742 50  0000 L CNN
F 1 "To 101" H 2280 3651 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-24S-0.5SH_1x24-1MP_P0.50mm_Horizontal" H 2200 3750 50  0001 C CNN
F 3 "~" H 2200 3750 50  0001 C CNN
	1    2200 3750
	1    0    0    1   
$EndComp
Text GLabel 2000 4850 0    50   Input ~ 0
dry~wet~
$Sheet
S 5850 3600 1000 800 
U 6007CABE
F0 "Scabi/Clip" 50
F1 "vm113-scabiclip.sch" 50
F2 "INPUT" I L 5850 4000 50 
F3 "OUTPUT" I R 6850 4000 50 
$EndSheet
Text Label 10050 4300 0    50   ~ 0
compa_in
Text Label 9050 3700 2    50   ~ 0
compa_in
Text Label 7150 4000 0    50   ~ 0
to-101
Text GLabel 2000 2950 0    50   Input ~ 0
lo_clip_1
Text GLabel 2000 3150 0    50   Input ~ 0
lo_clip_2
Text GLabel 2000 3650 0    50   Input ~ 0
hi_clip_1
Text GLabel 2000 3450 0    50   Input ~ 0
hi_clip_2
Connection ~ 1450 2850
Connection ~ 1450 3050
Connection ~ 1450 3250
Wire Wire Line
	1450 3250 1450 3350
Wire Wire Line
	1450 3050 1450 3250
Wire Wire Line
	1450 2850 1450 3050
Wire Wire Line
	1450 2550 1450 2750
Wire Wire Line
	2000 2750 1450 2750
Connection ~ 1450 2750
Wire Wire Line
	1450 2750 1450 2850
$Comp
L synkie_symbols:Conn_01x03 J111
U 1 1 5DCAB59D
P 5150 6900
F 0 "J111" H 5068 6575 50  0000 C CNN
F 1 "Power" H 5068 6666 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5150 6900 50  0001 C CNN
F 3 "~" H 5150 6900 50  0001 C CNN
	1    5150 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 7000 5450 7000
Wire Wire Line
	5350 6800 5450 6800
$Comp
L Device:Polyfuse F101
U 1 1 5FFE6D14
P 5600 6800
F 0 "F101" V 5375 6800 50  0000 C CNN
F 1 "Polyfuse" V 5466 6800 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 5650 6600 50  0001 L CNN
F 3 "~" H 5600 6800 50  0001 C CNN
	1    5600 6800
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F102
U 1 1 5FFE6D13
P 5600 7000
F 0 "F102" V 5375 7000 50  0000 C CNN
F 1 "Polyfuse" V 5466 7000 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 5650 6800 50  0001 L CNN
F 3 "~" H 5600 7000 50  0001 C CNN
	1    5600 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6900 6600 6900
Wire Wire Line
	5750 7000 6100 7000
Wire Wire Line
	6100 6800 5750 6800
Text Notes 4500 1250 0    50   ~ 0
We dont have 2k5. Use 2k2 ??
Text GLabel 4400 9200 2    50   Input ~ 0
edges_bypass
Text GLabel 3000 9200 2    50   Input ~ 0
compa_bypass
Text GLabel 1450 9150 2    50   Input ~ 0
inverter_bypass
$Comp
L Connector_Generic:Conn_01x02 J113
U 1 1 60185046
P 1100 9150
F 0 "J113" H 1100 8900 50  0000 C CNN
F 1 "Jumper" V 1200 9100 50  0000 C CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 1100 9150 50  0001 C CNN
F 3 "~" H 1100 9150 50  0001 C CNN
	1    1100 9150
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0147
U 1 1 60186093
P 1300 9250
F 0 "#PWR0147" H 1300 9000 50  0001 C CNN
F 1 "GND" H 1305 9077 50  0000 C CNN
F 2 "" H 1300 9250 50  0001 C CNN
F 3 "" H 1300 9250 50  0001 C CNN
	1    1300 9250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R118
U 1 1 6018A3BD
P 1300 9000
AR Path="/6018A3BD" Ref="R118"  Part="1" 
AR Path="/5FBCB961/6018A3BD" Ref="R?"  Part="1" 
F 0 "R118" V 1200 8950 50  0000 L CNN
F 1 "15k" V 1300 8900 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 9000 50  0001 C CNN
F 3 "~" H 1300 9000 50  0001 C CNN
	1    1300 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 9150 1450 9150
Connection ~ 1300 9150
$Comp
L synkie_symbols:+5V #PWR0144
U 1 1 6018ED17
P 1300 8850
AR Path="/6018ED17" Ref="#PWR0144"  Part="1" 
AR Path="/5FBCB961/6018ED17" Ref="#PWR?"  Part="1" 
F 0 "#PWR0144" H 1300 8700 50  0001 C CNN
F 1 "+5V" H 1315 9023 50  0000 C CNN
F 2 "" H 1300 8850 50  0001 C CNN
F 3 "" H 1300 8850 50  0001 C CNN
	1    1300 8850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J114
U 1 1 601995E8
P 2650 9200
F 0 "J114" H 2650 8950 50  0000 C CNN
F 1 "Jumper" V 2750 9150 50  0000 C CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 2650 9200 50  0001 C CNN
F 3 "~" H 2650 9200 50  0001 C CNN
	1    2650 9200
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0148
U 1 1 601995F2
P 2850 9300
F 0 "#PWR0148" H 2850 9050 50  0001 C CNN
F 1 "GND" H 2855 9127 50  0000 C CNN
F 2 "" H 2850 9300 50  0001 C CNN
F 3 "" H 2850 9300 50  0001 C CNN
	1    2850 9300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R119
U 1 1 601995FC
P 2850 9050
AR Path="/601995FC" Ref="R119"  Part="1" 
AR Path="/5FBCB961/601995FC" Ref="R?"  Part="1" 
F 0 "R119" V 2750 9000 50  0000 L CNN
F 1 "15k" V 2850 8950 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 9050 50  0001 C CNN
F 3 "~" H 2850 9050 50  0001 C CNN
	1    2850 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 9200 3000 9200
Connection ~ 2850 9200
$Comp
L synkie_symbols:+5V #PWR0145
U 1 1 60199608
P 2850 8900
AR Path="/60199608" Ref="#PWR0145"  Part="1" 
AR Path="/5FBCB961/60199608" Ref="#PWR?"  Part="1" 
F 0 "#PWR0145" H 2850 8750 50  0001 C CNN
F 1 "+5V" H 2865 9073 50  0000 C CNN
F 2 "" H 2850 8900 50  0001 C CNN
F 3 "" H 2850 8900 50  0001 C CNN
	1    2850 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J115
U 1 1 6019E7D3
P 4050 9200
F 0 "J115" H 4050 8950 50  0000 C CNN
F 1 "Jumper" V 4150 9150 50  0000 C CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 4050 9200 50  0001 C CNN
F 3 "~" H 4050 9200 50  0001 C CNN
	1    4050 9200
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0149
U 1 1 6019E7DD
P 4250 9300
F 0 "#PWR0149" H 4250 9050 50  0001 C CNN
F 1 "GND" H 4255 9127 50  0000 C CNN
F 2 "" H 4250 9300 50  0001 C CNN
F 3 "" H 4250 9300 50  0001 C CNN
	1    4250 9300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R120
U 1 1 6019E7E7
P 4250 9050
AR Path="/6019E7E7" Ref="R120"  Part="1" 
AR Path="/5FBCB961/6019E7E7" Ref="R?"  Part="1" 
F 0 "R120" V 4150 9000 50  0000 L CNN
F 1 "15k" V 4250 8950 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 9050 50  0001 C CNN
F 3 "~" H 4250 9050 50  0001 C CNN
	1    4250 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 9200 4400 9200
Connection ~ 4250 9200
$Comp
L synkie_symbols:+5V #PWR0146
U 1 1 6019E7F3
P 4250 8900
AR Path="/6019E7F3" Ref="#PWR0146"  Part="1" 
AR Path="/5FBCB961/6019E7F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0146" H 4250 8750 50  0001 C CNN
F 1 "+5V" H 4265 9073 50  0000 C CNN
F 2 "" H 4250 8900 50  0001 C CNN
F 3 "" H 4250 8900 50  0001 C CNN
	1    4250 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J116
U 1 1 601AD1C2
P 1750 9750
F 0 "J116" H 1778 9776 50  0000 L CNN
F 1 "TP" H 1778 9685 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1750 9750 50  0001 C CNN
F 3 "~" H 1750 9750 50  0001 C CNN
	1    1750 9750
	-1   0    0    1   
$EndComp
Text GLabel 1950 9750 2    50   Input ~ 0
scale_cv
Text GLabel 1950 9900 2    50   Input ~ 0
bias_cv
$Comp
L Connector:Conn_01x01_Female J117
U 1 1 601AEDC9
P 1750 9900
F 0 "J117" H 1778 9926 50  0000 L CNN
F 1 "TP" H 1778 9835 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1750 9900 50  0001 C CNN
F 3 "~" H 1750 9900 50  0001 C CNN
	1    1750 9900
	-1   0    0    1   
$EndComp
Text GLabel 1950 10050 2    50   Input ~ 0
compa_cv
$Comp
L Connector:Conn_01x01_Female J118
U 1 1 601AF271
P 1750 10050
F 0 "J118" H 1778 10076 50  0000 L CNN
F 1 "TP" H 1778 9985 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1750 10050 50  0001 C CNN
F 3 "~" H 1750 10050 50  0001 C CNN
	1    1750 10050
	-1   0    0    1   
$EndComp
Text Label 3700 5100 2    50   ~ 0
from-101
Text Label 3700 5450 2    50   ~ 0
to-101
$Comp
L Connector:Conn_01x01_Female J102
U 1 1 601B8E0E
P 3900 5100
F 0 "J102" H 3928 5126 50  0000 L CNN
F 1 "INPUT" H 3928 5035 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3900 5100 50  0001 C CNN
F 3 "~" H 3900 5100 50  0001 C CNN
	1    3900 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J104
U 1 1 601B95FE
P 3900 5450
F 0 "J104" H 3928 5476 50  0000 L CNN
F 1 "OUTPUT" H 3928 5385 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 3900 5450 50  0001 C CNN
F 3 "~" H 3900 5450 50  0001 C CNN
	1    3900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP102
U 1 1 6031CF16
P 900 7100
F 0 "JP102" H 900 7364 50  0000 C CNN
F 1 "Jumper" H 900 7273 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 900 7100 50  0001 C CNN
F 3 "~" H 900 7100 50  0001 C CNN
	1    900  7100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0131
U 1 1 6031E434
P 600 7100
F 0 "#PWR0131" H 600 6850 50  0001 C CNN
F 1 "GND" H 605 6927 50  0000 C CNN
F 2 "" H 600 7100 50  0001 C CNN
F 3 "" H 600 7100 50  0001 C CNN
	1    600  7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6150 2250 6150
Wire Wire Line
	2250 6150 2250 6350
Wire Wire Line
	2250 6950 1500 6950
Wire Wire Line
	1200 7100 2250 7100
Wire Wire Line
	2250 7100 2250 6950
Connection ~ 2250 6950
Wire Wire Line
	1500 6350 2250 6350
Connection ~ 2250 6350
Wire Wire Line
	2250 6350 2250 6950
Text Label 950  1200 2    50   ~ 0
from-101
$Comp
L synkie_symbols:R R121
U 1 1 6039F484
P 7000 4000
AR Path="/6039F484" Ref="R121"  Part="1" 
AR Path="/5FBCB961/6039F484" Ref="R?"  Part="1" 
F 0 "R121" H 6750 4000 50  0000 L CNN
F 1 "75" H 6850 3900 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6930 4000 50  0001 C CNN
F 3 "~" H 7000 4000 50  0001 C CNN
	1    7000 4000
	0    1    1    0   
$EndComp
Text Label 4700 4950 2    50   ~ 0
from-101
Text Label 4700 5600 2    50   ~ 0
to-101
$Comp
L synkie_symbols:GND #PWR0132
U 1 1 600AAA46
P 4700 5800
AR Path="/600AAA46" Ref="#PWR0132"  Part="1" 
AR Path="/5FED65BF/600AAA46" Ref="#PWR?"  Part="1" 
F 0 "#PWR0132" H 4700 5550 50  0001 C CNN
F 1 "GND" H 4705 5627 50  0000 C CNN
F 2 "" H 4700 5800 50  0001 C CNN
F 3 "" H 4700 5800 50  0001 C CNN
	1    4700 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5700 4700 5800
$Comp
L synkie_symbols:UMCC J119
U 1 1 5FF1EAD6
P 4700 4950
F 0 "J119" H 5228 4903 60  0000 L CNN
F 1 "UMCC" H 5228 4797 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 5100 4790 60  0001 C CNN
F 3 "" H 4700 4950 60  0000 C CNN
	1    4700 4950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J120
U 1 1 5FF1FD8A
P 4700 5600
F 0 "J120" H 5228 5553 60  0000 L CNN
F 1 "UMCC" H 5228 5447 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 5100 5440 60  0001 C CNN
F 3 "" H 4700 5600 60  0000 C CNN
	1    4700 5600
	1    0    0    -1  
$EndComp
Connection ~ 4700 5800
$EndSCHEMATC
