EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "vMIX20-EQ and Effects"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:LMH6643 U202
U 1 1 5FBE3F56
P 4300 1350
F 0 "U202" H 4300 1717 50  0000 C CNN
F 1 "LMH6643" H 4300 1626 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 1350 50  0001 C CNN
F 3 "~" H 4300 1350 50  0001 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U202
U 2 1 5FBE3F5C
P 6300 1450
F 0 "U202" H 6300 1817 50  0000 C CNN
F 1 "LMH6643" H 6300 1726 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 1450 50  0001 C CNN
F 3 "~" H 6300 1450 50  0001 C CNN
	2    6300 1450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:LMH6643 U202
U 3 1 5FBE3F62
P 4150 2250
F 0 "U202" H 4108 2296 50  0000 L CNN
F 1 "LMH6643" H 4108 2205 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	3    4150 2250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R202
U 1 1 5FBE3F68
P 3850 1250
F 0 "R202" V 3643 1250 50  0000 C CNN
F 1 "75" V 3734 1250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R211
U 1 1 5FBE3F6E
P 4300 1700
F 0 "R211" V 4400 1700 50  0000 C CNN
F 1 "75" V 4300 1700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 1700 50  0001 C CNN
F 3 "~" H 4300 1700 50  0001 C CNN
	1    4300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1450 4000 1700
Wire Wire Line
	4000 1700 4150 1700
Wire Wire Line
	4450 1700 4600 1700
Wire Wire Line
	4600 1700 4600 1350
$Comp
L Device:R_POT RV201
U 1 1 5FBE3F78
P 4950 1500
F 0 "RV201" H 4880 1454 50  0000 R CNN
F 1 "R_POT" H 4880 1545 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV202
U 1 1 5FBE3F7E
P 5350 1500
F 0 "RV202" H 5280 1454 50  0000 R CNN
F 1 "R_POT" H 5280 1545 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 5350 1500 50  0001 C CNN
F 3 "~" H 5350 1500 50  0001 C CNN
	1    5350 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1650 6000 1550
$Comp
L synkie_symbols:R R204
U 1 1 5FBE3F85
P 4750 1350
F 0 "R204" V 4850 1300 50  0000 C CNN
F 1 "2k2" V 4750 1350 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 1350 50  0001 C CNN
F 3 "~" H 4750 1350 50  0001 C CNN
	1    4750 1350
	0    1    1    0   
$EndComp
Connection ~ 4600 1350
Wire Wire Line
	4900 1350 4950 1350
Connection ~ 4950 1350
$Comp
L Device:R_POT RV203
U 1 1 5FBE3F8E
P 5750 1500
F 0 "RV203" H 5680 1454 50  0000 R CNN
F 1 "R_POT" H 5680 1545 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09K_Single_Horizontal" H 5750 1500 50  0001 C CNN
F 3 "~" H 5750 1500 50  0001 C CNN
	1    5750 1500
	-1   0    0    1   
$EndComp
Connection ~ 5750 1650
Wire Wire Line
	5750 1650 6000 1650
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 6000 1350
Wire Wire Line
	5350 1650 5750 1650
Connection ~ 5350 1350
Wire Wire Line
	5350 1350 5750 1350
Wire Wire Line
	4950 1350 5350 1350
Wire Wire Line
	4950 1650 5350 1650
Connection ~ 5350 1650
$Comp
L synkie_symbols:C_Small C206
U 1 1 5FBE3F9E
P 5200 1900
F 0 "C206" H 5315 1946 50  0000 L CNN
F 1 "300n" H 5315 1855 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5238 1750 50  0001 C CNN
F 3 "~" H 5200 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C207
U 1 1 5FBE3FA4
P 5600 1900
F 0 "C207" H 5715 1946 50  0000 L CNN
F 1 "210p" H 5715 1855 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5638 1750 50  0001 C CNN
F 3 "~" H 5600 1900 50  0001 C CNN
	1    5600 1900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C205
U 1 1 5FBE3FAA
P 4800 1900
F 0 "C205" H 4915 1946 50  0000 L CNN
F 1 "2u" H 4915 1855 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4838 1750 50  0001 C CNN
F 3 "~" H 4800 1900 50  0001 C CNN
	1    4800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1500 5200 1800
Wire Wire Line
	5600 1500 5600 1800
Wire Wire Line
	4800 1500 4800 1800
$Comp
L Device:L L202
U 1 1 5FBE3FB3
P 5200 2150
F 0 "L202" H 5252 2196 50  0000 L CNN
F 1 "330uH" H 5252 2105 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5200 2150 50  0001 C CNN
F 3 "~" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:L L203
U 1 1 5FBE3FB9
P 5600 2150
F 0 "L203" H 5652 2196 50  0000 L CNN
F 1 "1.19uH" H 5652 2105 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5600 2150 50  0001 C CNN
F 3 "~" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:L L201
U 1 1 5FBE3FBF
P 4800 2150
F 0 "L201" H 4853 2196 50  0000 L CNN
F 1 "330u" H 4853 2105 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4800 2150 50  0001 C CNN
F 3 "~" H 4800 2150 50  0001 C CNN
	1    4800 2150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0215
U 1 1 5FBE3FC5
P 4800 2300
F 0 "#PWR0215" H 4800 2050 50  0001 C CNN
F 1 "GND" H 4805 2127 50  0000 C CNN
F 2 "" H 4800 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0001 C CNN
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0216
U 1 1 5FBE3FCB
P 5200 2300
F 0 "#PWR0216" H 5200 2050 50  0001 C CNN
F 1 "GND" H 5205 2127 50  0000 C CNN
F 2 "" H 5200 2300 50  0001 C CNN
F 3 "" H 5200 2300 50  0001 C CNN
	1    5200 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0217
U 1 1 5FBE3FD1
P 5600 2300
F 0 "#PWR0217" H 5600 2050 50  0001 C CNN
F 1 "GND" H 5605 2127 50  0000 C CNN
F 2 "" H 5600 2300 50  0001 C CNN
F 3 "" H 5600 2300 50  0001 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R212
U 1 1 5FBE3FD7
P 6350 1850
F 0 "R212" V 6250 1850 50  0000 C CNN
F 1 "2k2" V 6350 1850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 1850 50  0001 C CNN
F 3 "~" H 6350 1850 50  0001 C CNN
	1    6350 1850
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R213
U 1 1 5FBE3FDD
P 6200 2100
F 0 "R213" H 6130 2054 50  0000 R CNN
F 1 "2k2" H 6130 2145 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 2100 50  0001 C CNN
F 3 "~" H 6200 2100 50  0001 C CNN
	1    6200 2100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0218
U 1 1 5FBE3FE3
P 6200 2400
F 0 "#PWR0218" H 6200 2150 50  0001 C CNN
F 1 "GND" H 6205 2227 50  0000 C CNN
F 2 "" H 6200 2400 50  0001 C CNN
F 3 "" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1650 6000 1850
Wire Wire Line
	6000 1850 6200 1850
Connection ~ 6000 1650
Wire Wire Line
	6200 1850 6200 1950
Connection ~ 6200 1850
Wire Wire Line
	6200 2250 6200 2400
Text Notes 3450 750  0    50   ~ 0
EQUALISER
Wire Wire Line
	6500 1850 6600 1850
Wire Wire Line
	6600 1850 6600 1450
$Comp
L synkie_symbols:C_Small C208
U 1 1 5FBE3FF3
P 3850 2100
F 0 "C208" H 3965 2146 50  0000 L CNN
F 1 "100n" H 3965 2055 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 1950 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
	1    3850 2100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C209
U 1 1 5FBE3FF9
P 3850 2400
F 0 "C209" H 3965 2446 50  0000 L CNN
F 1 "100n" H 3965 2355 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 2250 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0213
U 1 1 5FBE3FFF
P 4050 1950
F 0 "#PWR0213" H 4050 1800 50  0001 C CNN
F 1 "+5V" H 4065 2123 50  0000 C CNN
F 2 "" H 4050 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0219
U 1 1 5FBE4005
P 4050 2550
F 0 "#PWR0219" H 4050 2650 50  0001 C CNN
F 1 "-5V" H 4065 2723 50  0000 C CNN
F 2 "" H 4050 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0001 C CNN
	1    4050 2550
	-1   0    0    1   
$EndComp
Connection ~ 4050 2550
Wire Wire Line
	4050 2550 3850 2550
Wire Wire Line
	4050 1950 3850 1950
Connection ~ 4050 1950
$Comp
L synkie_symbols:GND #PWR0214
U 1 1 5FBE400F
P 3850 2250
F 0 "#PWR0214" H 3850 2000 50  0001 C CNN
F 1 "GND" H 3855 2077 50  0000 C CNN
F 2 "" H 3850 2250 50  0001 C CNN
F 3 "" H 3850 2250 50  0001 C CNN
	1    3850 2250
	0    1    1    0   
$EndComp
Text Notes 4300 1200 0    50   ~ 0
We dont have 2k5. Use 2k2 ??
$Comp
L synkie_symbols:R R207
U 1 1 5FBE4018
P 6750 1450
F 0 "R207" V 6650 1450 50  0000 C CNN
F 1 "75" V 6750 1450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 1450 50  0001 C CNN
F 3 "~" H 6750 1450 50  0001 C CNN
	1    6750 1450
	0    1    1    0   
$EndComp
Connection ~ 6600 1450
$Comp
L synkie_symbols:R R209
U 1 1 5FBE401F
P 6900 1600
F 0 "R209" V 6950 1650 50  0000 C CNN
F 1 "75" V 6900 1600 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
	1    6900 1600
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0210
U 1 1 5FBE4025
P 6900 1750
F 0 "#PWR0210" H 6900 1500 50  0001 C CNN
F 1 "GND" H 6905 1577 50  0000 C CNN
F 2 "" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
Wire Notes Line
	7200 650  7200 2800
Wire Notes Line
	7200 2800 3400 2800
Wire Notes Line
	3400 2800 3400 650 
Wire Notes Line
	3400 650  7200 650 
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F909
P 7450 4500
AR Path="/5FC7F909" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F909" Ref="#PWR0223"  Part="1" 
F 0 "#PWR0223" H 7450 4250 50  0001 C CNN
F 1 "GND" V 7455 4372 50  0000 R CNN
F 2 "" H 7450 4500 50  0001 C CNN
F 3 "" H 7450 4500 50  0001 C CNN
	1    7450 4500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7F90F
P 7950 3300
AR Path="/5FC7F90F" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F90F" Ref="#PWR0221"  Part="1" 
F 0 "#PWR0221" H 7950 3150 50  0001 C CNN
F 1 "+5V" H 7965 3473 50  0000 C CNN
F 2 "" H 7950 3300 50  0001 C CNN
F 3 "" H 7950 3300 50  0001 C CNN
	1    7950 3300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F915
P 7950 5100
AR Path="/5FC7F915" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F915" Ref="#PWR0226"  Part="1" 
F 0 "#PWR0226" H 7950 4850 50  0001 C CNN
F 1 "GND" H 7955 4927 50  0000 C CNN
F 2 "" H 7950 5100 50  0001 C CNN
F 3 "" H 7950 5100 50  0001 C CNN
	1    7950 5100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7F91B
P 8050 5100
AR Path="/5FC7F91B" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F91B" Ref="#PWR0227"  Part="1" 
F 0 "#PWR0227" H 8050 5200 50  0001 C CNN
F 1 "-5V" H 8065 5273 50  0000 C CNN
F 2 "" H 8050 5100 50  0001 C CNN
F 3 "" H 8050 5100 50  0001 C CNN
	1    8050 5100
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FC7F921
P 1950 3750
AR Path="/5FC7F921" Ref="U?"  Part="1" 
AR Path="/5FBCB961/5FC7F921" Ref="U201"  Part="1" 
F 0 "U201" H 1950 4117 50  0000 C CNN
F 1 "LMH6643" H 1950 4026 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1950 3750 50  0001 C CNN
F 3 "~" H 1950 3750 50  0001 C CNN
	1    1950 3750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F927
P 1400 3500
AR Path="/5FC7F927" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F927" Ref="R214"  Part="1" 
F 0 "R214" H 1470 3546 50  0000 L CNN
F 1 "2k2" H 1470 3455 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 3500 50  0001 C CNN
F 3 "~" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3650 1400 3650
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F92E
P 1400 3300
AR Path="/5FC7F92E" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F92E" Ref="#PWR0220"  Part="1" 
F 0 "#PWR0220" H 1400 3050 50  0001 C CNN
F 1 "GND" H 1405 3127 50  0000 C CNN
F 2 "" H 1400 3300 50  0001 C CNN
F 3 "" H 1400 3300 50  0001 C CNN
	1    1400 3300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F934
P 1450 3850
AR Path="/5FC7F934" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F934" Ref="R215"  Part="1" 
F 0 "R215" V 1350 3850 50  0000 C CNN
F 1 "2k2" V 1450 3850 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1380 3850 50  0001 C CNN
F 3 "~" H 1450 3850 50  0001 C CNN
	1    1450 3850
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F93A
P 1950 4050
AR Path="/5FC7F93A" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F93A" Ref="R216"  Part="1" 
F 0 "R216" V 2050 4100 50  0000 C CNN
F 1 "2k2" V 1950 4050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1880 4050 50  0001 C CNN
F 3 "~" H 1950 4050 50  0001 C CNN
	1    1950 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3850 1650 3850
Text Label 7450 3600 2    50   ~ 0
eq_out
Text Label 7450 3700 2    50   ~ 0
compa_out
Text Label 8450 3600 0    50   ~ 0
inverter_in
Text Label 1300 3850 2    50   ~ 0
inverter_in
Text Label 7450 3900 2    50   ~ 0
inverter_in
Text Label 7450 4000 2    50   ~ 0
inverter_out
Connection ~ 1600 3850
Text Label 2250 3750 0    50   ~ 0
inverter_out
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FC7F94B
P 1950 5550
AR Path="/5FC7F94B" Ref="U?"  Part="3" 
AR Path="/5FBCB961/5FC7F94B" Ref="U201"  Part="3" 
F 0 "U201" H 1908 5596 50  0000 L CNN
F 1 "LMH6643" H 1908 5505 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1950 5550 50  0001 C CNN
F 3 "~" H 1950 5550 50  0001 C CNN
	3    1950 5550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F951
P 1650 5400
AR Path="/5FC7F951" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F951" Ref="C212"  Part="1" 
F 0 "C212" H 1765 5446 50  0000 L CNN
F 1 "100n" H 1765 5355 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1688 5250 50  0001 C CNN
F 3 "~" H 1650 5400 50  0001 C CNN
	1    1650 5400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F957
P 1650 5700
AR Path="/5FC7F957" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F957" Ref="C213"  Part="1" 
F 0 "C213" H 1765 5746 50  0000 L CNN
F 1 "100n" H 1765 5655 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1688 5550 50  0001 C CNN
F 3 "~" H 1650 5700 50  0001 C CNN
	1    1650 5700
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7F95D
P 1850 5250
AR Path="/5FC7F95D" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F95D" Ref="#PWR0229"  Part="1" 
F 0 "#PWR0229" H 1850 5100 50  0001 C CNN
F 1 "+5V" H 1865 5423 50  0000 C CNN
F 2 "" H 1850 5250 50  0001 C CNN
F 3 "" H 1850 5250 50  0001 C CNN
	1    1850 5250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7F963
P 1850 5850
AR Path="/5FC7F963" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F963" Ref="#PWR0231"  Part="1" 
F 0 "#PWR0231" H 1850 5950 50  0001 C CNN
F 1 "-5V" H 1865 6023 50  0000 C CNN
F 2 "" H 1850 5850 50  0001 C CNN
F 3 "" H 1850 5850 50  0001 C CNN
	1    1850 5850
	-1   0    0    1   
$EndComp
Connection ~ 1850 5850
Wire Wire Line
	1850 5850 1650 5850
Wire Wire Line
	1850 5250 1650 5250
Connection ~ 1850 5250
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F96D
P 1650 5550
AR Path="/5FC7F96D" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F96D" Ref="#PWR0230"  Part="1" 
F 0 "#PWR0230" H 1650 5300 50  0001 C CNN
F 1 "GND" H 1655 5377 50  0000 C CNN
F 2 "" H 1650 5550 50  0001 C CNN
F 3 "" H 1650 5550 50  0001 C CNN
	1    1650 5550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7F974
P 8600 4650
AR Path="/5FC7F974" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F974" Ref="#PWR0224"  Part="1" 
F 0 "#PWR0224" H 8600 4500 50  0001 C CNN
F 1 "+5V" H 8615 4823 50  0000 C CNN
F 2 "" H 8600 4650 50  0001 C CNN
F 3 "" H 8600 4650 50  0001 C CNN
	1    8600 4650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F97A
P 8600 4750
AR Path="/5FC7F97A" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F97A" Ref="C210"  Part="1" 
F 0 "C210" H 8715 4796 50  0000 L CNN
F 1 "100n" H 8715 4705 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8638 4600 50  0001 C CNN
F 3 "~" H 8600 4750 50  0001 C CNN
	1    8600 4750
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F980
P 8600 4950
AR Path="/5FC7F980" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F980" Ref="C211"  Part="1" 
F 0 "C211" H 8715 4996 50  0000 L CNN
F 1 "100n" H 8715 4905 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8638 4800 50  0001 C CNN
F 3 "~" H 8600 4950 50  0001 C CNN
	1    8600 4950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7F986
P 8600 5050
AR Path="/5FC7F986" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F986" Ref="#PWR0228"  Part="1" 
F 0 "#PWR0228" H 8600 5150 50  0001 C CNN
F 1 "-5V" H 8615 5223 50  0000 C CNN
F 2 "" H 8600 5050 50  0001 C CNN
F 3 "" H 8600 5050 50  0001 C CNN
	1    8600 5050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F98C
P 8600 4850
AR Path="/5FC7F98C" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F98C" Ref="#PWR0225"  Part="1" 
F 0 "#PWR0225" H 8600 4600 50  0001 C CNN
F 1 "GND" H 8605 4677 50  0000 C CNN
F 2 "" H 8600 4850 50  0001 C CNN
F 3 "" H 8600 4850 50  0001 C CNN
	1    8600 4850
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F993
P 1600 4200
AR Path="/5FC7F993" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F993" Ref="R217"  Part="1" 
F 0 "R217" H 1670 4246 50  0000 L CNN
F 1 "16k" H 1670 4155 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 4200 50  0001 C CNN
F 3 "~" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3300 1400 3350
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FC7F99A
P 2100 1250
AR Path="/5FC7F99A" Ref="U?"  Part="2" 
AR Path="/5FBCB961/5FC7F99A" Ref="U201"  Part="2" 
F 0 "U201" H 2100 1617 50  0000 C CNN
F 1 "LMH6643" H 2100 1526 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2100 1250 50  0001 C CNN
F 3 "~" H 2100 1250 50  0001 C CNN
	2    2100 1250
	1    0    0    -1  
$EndComp
Text Label 7450 4200 2    50   ~ 0
edges_in
Text Label 7450 4300 2    50   ~ 0
edges_out
Text Label 8450 4200 0    50   ~ 0
eq_in
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F9A4
P 1500 1150
AR Path="/5FC7F9A4" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F9A4" Ref="R201"  Part="1" 
F 0 "R201" V 1400 1150 50  0000 C CNN
F 1 "1k" V 1500 1150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 1150 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F9AA
P 1650 1300
AR Path="/5FC7F9AA" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F9AA" Ref="C203"  Part="1" 
F 0 "C203" H 1765 1346 50  0000 L CNN
F 1 "100p" H 1765 1255 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 1150 50  0001 C CNN
F 3 "~" H 1650 1300 50  0001 C CNN
	1    1650 1300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F9B0
P 1650 1450
AR Path="/5FC7F9B0" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9B0" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 1650 1200 50  0001 C CNN
F 1 "GND" H 1655 1277 50  0000 C CNN
F 2 "" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0001 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1150 1650 1150
Text Label 1100 1150 3    50   ~ 0
edges_in
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F9B9
P 2400 1400
AR Path="/5FC7F9B9" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F9B9" Ref="R205"  Part="1" 
F 0 "R205" V 2300 1300 50  0000 L CNN
F 1 "30k" V 2400 1300 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 1400 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F9BF
P 2400 1700
AR Path="/5FC7F9BF" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F9BF" Ref="R210"  Part="1" 
F 0 "R210" V 2300 1650 50  0000 L CNN
F 1 "15k" V 2400 1600 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 1700 50  0001 C CNN
F 3 "~" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F9C5
P 2400 1850
AR Path="/5FC7F9C5" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9C5" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 2400 1600 50  0001 C CNN
F 1 "GND" H 2405 1677 50  0000 C CNN
F 2 "" H 2400 1850 50  0001 C CNN
F 3 "" H 2400 1850 50  0001 C CNN
	1    2400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1350 1800 1550
Wire Wire Line
	1800 1550 2400 1550
Connection ~ 2400 1550
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7F9CE
P 2550 1250
AR Path="/5FC7F9CE" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7F9CE" Ref="C201"  Part="1" 
F 0 "C201" H 2665 1296 50  0000 L CNN
F 1 "1n" H 2665 1205 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2588 1100 50  0001 C CNN
F 3 "~" H 2550 1250 50  0001 C CNN
	1    2550 1250
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FC7F9D4
P 2700 1400
AR Path="/5FC7F9D4" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7F9D4" Ref="R206"  Part="1" 
F 0 "R206" V 2800 1450 50  0000 C CNN
F 1 "100" V 2700 1400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2630 1400 50  0001 C CNN
F 3 "~" H 2700 1400 50  0001 C CNN
	1    2700 1400
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7F9DA
P 2700 1850
AR Path="/5FC7F9DA" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9DA" Ref="#PWR0212"  Part="1" 
F 0 "#PWR0212" H 2700 1600 50  0001 C CNN
F 1 "GND" H 2705 1677 50  0000 C CNN
F 2 "" H 2700 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0001 C CNN
	1    2700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1550 2700 1850
Text Label 2700 1250 0    50   ~ 0
edges_out
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7F9E3
P 1600 4350
AR Path="/5FC7F9E3" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9E3" Ref="#PWR0222"  Part="1" 
F 0 "#PWR0222" H 1600 4450 50  0001 C CNN
F 1 "-5V" H 1615 4523 50  0000 C CNN
F 2 "" H 1600 4350 50  0001 C CNN
F 3 "" H 1600 4350 50  0001 C CNN
	1    1600 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 3850 1600 4050
Wire Wire Line
	2100 4050 2250 4050
Wire Wire Line
	2250 4050 2250 3750
Wire Wire Line
	1800 4050 1600 4050
Connection ~ 1600 4050
Wire Notes Line
	900  700  3200 700 
Wire Notes Line
	3200 700  3200 2150
Wire Notes Line
	3200 2150 900  2150
Wire Notes Line
	900  2150 900  700 
Text Notes 950  800  0    50   ~ 0
1) EDGES
$Comp
L synkie_symbols:LM311 U?
U 1 1 5FC7F9F3
P 8450 1400
AR Path="/5FC7F9F3" Ref="U?"  Part="1" 
AR Path="/5FBCB961/5FC7F9F3" Ref="U203"  Part="1" 
F 0 "U203" H 8050 1600 50  0000 L CNN
F 1 "LM311" H 7950 1200 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8450 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm311.pdf" H 8450 1400 50  0001 C CNN
	1    8450 1400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7F9F9
P 8350 1100
AR Path="/5FC7F9F9" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9F9" Ref="#PWR0201"  Part="1" 
F 0 "#PWR0201" H 8350 950 50  0001 C CNN
F 1 "+5V" H 8365 1273 50  0000 C CNN
F 2 "" H 8350 1100 50  0001 C CNN
F 3 "" H 8350 1100 50  0001 C CNN
	1    8350 1100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7F9FF
P 8350 1700
AR Path="/5FC7F9FF" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7F9FF" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 8350 1800 50  0001 C CNN
F 1 "-5V" H 8365 1873 50  0000 C CNN
F 2 "" H 8350 1700 50  0001 C CNN
F 3 "" H 8350 1700 50  0001 C CNN
	1    8350 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1100 8450 1000
Wire Wire Line
	8450 1000 8550 1000
Wire Wire Line
	8550 1000 8550 1100
$Comp
L synkie_symbols:R R?
U 1 1 5FC7FA0E
P 8800 1550
AR Path="/5FC7FA0E" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7FA0E" Ref="R208"  Part="1" 
F 0 "R208" H 8550 1550 50  0000 L CNN
F 1 "75" H 8650 1450 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8730 1550 50  0001 C CNN
F 3 "~" H 8800 1550 50  0001 C CNN
	1    8800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1400 8750 1400
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7FA15
P 8800 1700
AR Path="/5FC7FA15" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7FA15" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 8800 1450 50  0001 C CNN
F 1 "GND" H 8805 1527 50  0000 C CNN
F 2 "" H 8800 1700 50  0001 C CNN
F 3 "" H 8800 1700 50  0001 C CNN
	1    8800 1700
	1    0    0    -1  
$EndComp
Connection ~ 8800 1400
$Comp
L synkie_symbols:R R?
U 1 1 5FC7FA1C
P 8800 1250
AR Path="/5FC7FA1C" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FC7FA1C" Ref="R203"  Part="1" 
F 0 "R203" H 8870 1296 50  0000 L CNN
F 1 "300" H 8870 1205 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8730 1250 50  0001 C CNN
F 3 "~" H 8800 1250 50  0001 C CNN
	1    8800 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7FA22
P 8800 1100
AR Path="/5FC7FA22" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7FA22" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 8800 950 50  0001 C CNN
F 1 "+5V" H 8815 1273 50  0000 C CNN
F 2 "" H 8800 1100 50  0001 C CNN
F 3 "" H 8800 1100 50  0001 C CNN
	1    8800 1100
	1    0    0    -1  
$EndComp
Text Label 8150 1300 2    50   ~ 0
eq_out
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FC7FA2C
P 10100 1250
AR Path="/5FC7FA2C" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7FA2C" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 10100 1100 50  0001 C CNN
F 1 "+5V" H 10115 1423 50  0000 C CNN
F 2 "" H 10100 1250 50  0001 C CNN
F 3 "" H 10100 1250 50  0001 C CNN
	1    10100 1250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7FA32
P 10100 1350
AR Path="/5FC7FA32" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7FA32" Ref="C202"  Part="1" 
F 0 "C202" H 10215 1396 50  0000 L CNN
F 1 "100n" H 10215 1305 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10138 1200 50  0001 C CNN
F 3 "~" H 10100 1350 50  0001 C CNN
	1    10100 1350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FC7FA38
P 10100 1550
AR Path="/5FC7FA38" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FC7FA38" Ref="C204"  Part="1" 
F 0 "C204" H 10215 1596 50  0000 L CNN
F 1 "100n" H 10215 1505 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10138 1400 50  0001 C CNN
F 3 "~" H 10100 1550 50  0001 C CNN
	1    10100 1550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FC7FA3E
P 10100 1650
AR Path="/5FC7FA3E" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7FA3E" Ref="#PWR0209"  Part="1" 
F 0 "#PWR0209" H 10100 1750 50  0001 C CNN
F 1 "-5V" H 10115 1823 50  0000 C CNN
F 2 "" H 10100 1650 50  0001 C CNN
F 3 "" H 10100 1650 50  0001 C CNN
	1    10100 1650
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7FA44
P 10100 1450
AR Path="/5FC7FA44" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FC7FA44" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 10100 1200 50  0001 C CNN
F 1 "GND" H 10105 1277 50  0000 C CNN
F 2 "" H 10100 1450 50  0001 C CNN
F 3 "" H 10100 1450 50  0001 C CNN
	1    10100 1450
	0    -1   -1   0   
$EndComp
Text HLabel 750  1150 0    50   Input ~ 0
INPUT
Wire Wire Line
	750  1150 1350 1150
Text Label 3700 1250 2    50   ~ 0
eq_in
Text Label 6900 1450 0    50   ~ 0
eq_out
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB403
P 4450 5350
AR Path="/5FCDB403" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB403" Ref="J205"  Part="1" 
F 0 "J205" H 4478 5376 50  0000 L CNN
F 1 "COMPA-DROP" H 4478 5285 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 5350 50  0001 C CNN
F 3 "~" H 4450 5350 50  0001 C CNN
	1    4450 5350
	1    0    0    -1  
$EndComp
Text Label 4250 5350 2    50   ~ 0
compa_out
Text Label 4250 5550 2    50   ~ 0
inverter_out
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB40B
P 4450 5550
AR Path="/5FCDB40B" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB40B" Ref="J206"  Part="1" 
F 0 "J206" H 4478 5576 50  0000 L CNN
F 1 "INVERTER-DROP" H 4478 5485 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 5550 50  0001 C CNN
F 3 "~" H 4450 5550 50  0001 C CNN
	1    4450 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB411
P 4450 4850
AR Path="/5FCDB411" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB411" Ref="J202"  Part="1" 
F 0 "J202" H 4478 4876 50  0000 L CNN
F 1 "EQ_IN" H 4478 4785 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 4850 50  0001 C CNN
F 3 "~" H 4450 4850 50  0001 C CNN
	1    4450 4850
	1    0    0    -1  
$EndComp
Text Label 4250 4850 2    50   ~ 0
eq_in
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB418
P 4450 4700
AR Path="/5FCDB418" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB418" Ref="J201"  Part="1" 
F 0 "J201" H 4478 4726 50  0000 L CNN
F 1 "EDGES_IN" H 4478 4635 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 4700 50  0001 C CNN
F 3 "~" H 4450 4700 50  0001 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
Text Label 4250 4700 2    50   ~ 0
edges_in
Text Label 4250 5200 2    50   ~ 0
edges_out
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB420
P 4450 5200
AR Path="/5FCDB420" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB420" Ref="J204"  Part="1" 
F 0 "J204" H 4478 5226 50  0000 L CNN
F 1 "EDGES_OUT" H 4478 5135 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FCDB426
P 4450 5050
AR Path="/5FCDB426" Ref="J?"  Part="1" 
AR Path="/5FBCB961/5FCDB426" Ref="J203"  Part="1" 
F 0 "J203" H 4478 5076 50  0000 L CNN
F 1 "EQ_OUT" H 4478 4985 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4450 5050 50  0001 C CNN
F 3 "~" H 4450 5050 50  0001 C CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
Text Label 4250 5050 2    50   ~ 0
eq_out
Text GLabel 7450 4600 0    50   Input ~ 0
compa_bypass
Text GLabel 7450 4700 0    50   Input ~ 0
inverter_bypass
$Comp
L 4xxx:4053 U?
U 1 1 5FC7F902
P 7950 4200
AR Path="/5FC7F902" Ref="U?"  Part="1" 
AR Path="/5FBCB961/5FC7F902" Ref="U204"  Part="1" 
F 0 "U204" H 8100 5100 50  0000 C CNN
F 1 "MAX4053" H 8150 5000 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 7950 4200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
Text GLabel 7450 4800 0    50   Input ~ 0
edges_bypass
Text GLabel 8150 1500 0    50   Input ~ 0
compa_cv
Text HLabel 8450 3900 2    50   Input ~ 0
OUTPUT
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FCEFCB4
P 1650 6750
AR Path="/5FCEFCB4" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FCEFCB4" Ref="#PWR0232"  Part="1" 
F 0 "#PWR0232" H 1650 6600 50  0001 C CNN
F 1 "+5V" H 1665 6923 50  0000 C CNN
F 2 "" H 1650 6750 50  0001 C CNN
F 3 "" H 1650 6750 50  0001 C CNN
	1    1650 6750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FCEFCBA
P 1650 6850
AR Path="/5FCEFCBA" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FCEFCBA" Ref="C214"  Part="1" 
F 0 "C214" H 1768 6896 50  0000 L CNN
F 1 "10u" H 1768 6805 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1688 6700 50  0001 C CNN
F 3 "~" H 1650 6850 50  0001 C CNN
	1    1650 6850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FCEFCC0
P 1650 7150
AR Path="/5FCEFCC0" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FCEFCC0" Ref="C215"  Part="1" 
F 0 "C215" H 1768 7196 50  0000 L CNN
F 1 "10u" H 1768 7105 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1688 7000 50  0001 C CNN
F 3 "~" H 1650 7150 50  0001 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FCEFCC6
P 1650 7250
AR Path="/5FCEFCC6" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FCEFCC6" Ref="#PWR0234"  Part="1" 
F 0 "#PWR0234" H 1650 7350 50  0001 C CNN
F 1 "-5V" H 1665 7423 50  0000 C CNN
F 2 "" H 1650 7250 50  0001 C CNN
F 3 "" H 1650 7250 50  0001 C CNN
	1    1650 7250
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FCEFCCC
P 1650 7000
AR Path="/5FCEFCCC" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FCEFCCC" Ref="#PWR0233"  Part="1" 
F 0 "#PWR0233" H 1650 6750 50  0001 C CNN
F 1 "GND" V 1655 6872 50  0000 R CNN
F 2 "" H 1650 7000 50  0001 C CNN
F 3 "" H 1650 7000 50  0001 C CNN
	1    1650 7000
	0    1    1    0   
$EndComp
Text Label 8950 1400 0    50   ~ 0
compa_out
Text Label 8450 2400 2    50   ~ 0
compa_out
Text GLabel 8800 2400 2    50   Input ~ 0
COMPA-OUT
Wire Wire Line
	8800 2400 8450 2400
Wire Wire Line
	1650 1200 1650 1150
Connection ~ 1650 1150
Wire Wire Line
	1650 1400 1650 1450
Wire Wire Line
	2400 1250 2450 1250
Connection ~ 2400 1250
Wire Wire Line
	2650 1250 2700 1250
Wire Wire Line
	3850 2000 3850 1950
Wire Wire Line
	3850 2200 3850 2250
Connection ~ 3850 2250
Wire Wire Line
	3850 2250 3850 2300
Wire Wire Line
	3850 2550 3850 2500
Connection ~ 10100 1450
Wire Wire Line
	1650 5300 1650 5250
Wire Wire Line
	1650 5500 1650 5550
Connection ~ 1650 5550
Wire Wire Line
	1650 5550 1650 5600
Wire Wire Line
	1650 5850 1650 5800
Wire Wire Line
	1650 6950 1650 7000
Connection ~ 1650 7000
Wire Wire Line
	1650 7000 1650 7050
Connection ~ 8600 4850
$Comp
L synkie_symbols:R R?
U 1 1 5FE90893
P 8450 1850
AR Path="/5FE90893" Ref="R?"  Part="1" 
AR Path="/5FBCB961/5FE90893" Ref="R?"  Part="1" 
F 0 "R?" H 8520 1896 50  0000 L CNN
F 1 "220" H 8520 1805 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 1850 50  0001 C CNN
F 3 "~" H 8450 1850 50  0001 C CNN
	1    8450 1850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FE90F7E
P 8450 2000
AR Path="/5FE90F7E" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FE90F7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 2100 50  0001 C CNN
F 1 "-5V" H 8465 2173 50  0000 C CNN
F 2 "" H 8450 2000 50  0001 C CNN
F 3 "" H 8450 2000 50  0001 C CNN
	1    8450 2000
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FE93A31
P 9100 1550
AR Path="/5FE93A31" Ref="C?"  Part="1" 
AR Path="/5FBCB961/5FE93A31" Ref="C?"  Part="1" 
F 0 "C?" H 8900 1650 50  0000 L CNN
F 1 "100p-470p?" H 8800 1550 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 1400 50  0001 C CNN
F 3 "~" H 9100 1550 50  0001 C CNN
	1    9100 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 1400 9100 1450
Wire Wire Line
	8800 1400 9100 1400
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FE98AF7
P 9100 1650
AR Path="/5FE98AF7" Ref="#PWR?"  Part="1" 
AR Path="/5FBCB961/5FE98AF7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9100 1400 50  0001 C CNN
F 1 "GND" H 9105 1477 50  0000 C CNN
F 2 "" H 9100 1650 50  0001 C CNN
F 3 "" H 9100 1650 50  0001 C CNN
	1    9100 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
