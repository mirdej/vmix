EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L synkie_symbols:CP_Small C2
U 1 1 5FA6FE65
P 2600 4650
F 0 "C2" V 2375 4650 50  0000 C CNN
F 1 "10u" V 2466 4650 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2600 4650 50  0001 C CNN
F 3 "~" H 2600 4650 50  0001 C CNN
	1    2600 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCE4D3A
P 2350 4850
F 0 "FB2" V 2500 4850 50  0000 C CNN
F 1 "330u" V 2600 4850 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4850 50  0001 C CNN
F 3 "~" H 2350 4850 50  0001 C CNN
	1    2350 4850
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5DCE4D39
P 2350 4650
F 0 "FB1" V 2076 4650 50  0000 C CNN
F 1 "330u" V 2167 4650 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4650 50  0001 C CNN
F 3 "~" H 2350 4650 50  0001 C CNN
	1    2350 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR09
U 1 1 5FA6FE67
P 2900 4750
F 0 "#PWR09" H 2900 4500 50  0001 C CNN
F 1 "GND" H 2905 4577 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "" H 2900 4750 50  0001 C CNN
	1    2900 4750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR013
U 1 1 5DCE4D3F
P 2500 5200
F 0 "#PWR013" H 2500 5300 50  0001 C CNN
F 1 "-5V" H 2500 5350 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR02
U 1 1 5DCB58DB
P 2500 4350
F 0 "#PWR02" H 2500 4200 50  0001 C CNN
F 1 "+5V" H 2500 4500 50  0000 C CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
	1    2500 4350
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG02
U 1 1 5DCB666B
P 2900 4750
F 0 "#FLG02" H 2900 4825 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 4950 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C4
U 1 1 5FA6FE66
P 2600 4850
F 0 "C4" V 2450 4850 50  0000 C CNN
F 1 "10u" V 2350 4850 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2600 4850 50  0001 C CNN
F 3 "~" H 2600 4850 50  0001 C CNN
	1    2600 4850
	0    1    -1   0   
$EndComp
Wire Wire Line
	2500 4350 2500 4650
Connection ~ 2500 4650
Connection ~ 2900 4750
Wire Wire Line
	2700 4650 2700 4750
Wire Wire Line
	2900 4750 2700 4750
Connection ~ 2700 4750
Wire Wire Line
	2700 4850 2700 4750
Wire Wire Line
	2500 5200 2500 4850
Connection ~ 2500 4850
Text Label 2200 4650 2    50   ~ 0
supply+
Text Label 2200 4850 2    50   ~ 0
supply-
Text Label 2900 4750 0    50   ~ 0
supply_gnd
$Comp
L synkie_symbols:ADR510 U201
U 1 1 5FA6FE70
P 3450 6200
F 0 "U201" H 3678 6246 50  0000 L CNN
F 1 "ADR510" H 3678 6155 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 3000 6100 50  0001 C CNN
F 3 "" H 3000 6100 50  0001 C CNN
	1    3450 6200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX5741 U200
U 1 1 5FA6FE71
P 2550 6750
F 0 "U200" H 2150 6400 50  0000 C CNN
F 1 "MAX5741" H 2900 6400 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2550 6050 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX5741.pdf" H 3300 7400 50  0001 C CNN
	1    2550 6750
	1    0    0    -1  
$EndComp
Text Label 2050 6750 2    50   ~ 0
sck
Text Label 2050 6850 2    50   ~ 0
mosi
Text Label 2050 6550 2    50   ~ 0
dac_select
$Comp
L power:+5V #PWR0140
U 1 1 5FA6FE72
P 2550 6350
F 0 "#PWR0140" H 2550 6200 50  0001 C CNN
F 1 "+5V" H 2565 6523 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6100 2450 6350
$Comp
L power:+5V #PWR0141
U 1 1 5FA6FE73
P 2450 5800
F 0 "#PWR0141" H 2450 5650 50  0001 C CNN
F 1 "+5V" H 2465 5973 50  0000 C CNN
F 2 "" H 2450 5800 50  0001 C CNN
F 3 "" H 2450 5800 50  0001 C CNN
	1    2450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R200
U 1 1 5FA6FE74
P 2450 5950
F 0 "R200" H 2520 5996 50  0000 L CNN
F 1 "560" H 2520 5905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 5950 50  0001 C CNN
F 3 "~" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
Connection ~ 2450 6100
Wire Wire Line
	2450 6100 3150 6100
$Sheet
S 7850 1450 500  300 
U 5FA6FAA9
F0 "MixUnit" 50
F1 "vm005-unit.sch" 50
F2 "DAC" I L 7850 1500 50 
F3 "CV" I L 7850 1600 50 
F4 "Input" I L 7850 1700 50 
F5 "Output" O R 8350 1600 50 
$EndSheet
Text Label 3050 6550 0    50   ~ 0
dac_a
Text Label 7850 1600 2    50   ~ 0
cv_a
Text Label 7850 2200 2    50   ~ 0
cv_b
Text Label 3050 6650 0    50   ~ 0
dac_b
$Comp
L power:GND #PWR0124
U 1 1 5FA8A697
P 2550 7150
F 0 "#PWR0124" H 2550 6900 50  0001 C CNN
F 1 "GND" H 2555 6977 50  0000 C CNN
F 2 "" H 2550 7150 50  0001 C CNN
F 3 "" H 2550 7150 50  0001 C CNN
	1    2550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5FA8AEE8
P 3150 6200
F 0 "#PWR0125" H 3150 5950 50  0001 C CNN
F 1 "GND" H 3155 6027 50  0000 C CNN
F 2 "" H 3150 6200 50  0001 C CNN
F 3 "" H 3150 6200 50  0001 C CNN
	1    3150 6200
	0    1    1    0   
$EndComp
Text Label 3050 6750 0    50   ~ 0
dac_c
Text Label 3050 6850 0    50   ~ 0
dac_d
Text Label 7850 1500 2    50   ~ 0
dac_a
Text Label 7850 2100 2    50   ~ 0
dac_b
Text Label 7850 1700 2    50   ~ 0
input
Text Label 7850 2300 2    50   ~ 0
input
Text Label 8350 1600 0    50   ~ 0
out_a
Text Label 8350 2200 0    50   ~ 0
out_b
Text Label 7850 2850 2    50   ~ 0
cv_c
Text Label 7850 2750 2    50   ~ 0
dac_c
Text Label 7850 2950 2    50   ~ 0
input
Text Label 8350 2850 0    50   ~ 0
out_c
Text Label 7850 3650 2    50   ~ 0
cv_d
Text Label 7850 3550 2    50   ~ 0
dac_d
Text Label 7850 3750 2    50   ~ 0
input
Text Label 8350 3650 0    50   ~ 0
out_d
Text Label 5300 5350 2    50   ~ 0
input
Text Label 5300 5550 2    50   ~ 0
cv_a
Text Label 5300 5750 2    50   ~ 0
cv_b
Text Label 5900 5750 0    50   ~ 0
cv_c
Text Label 5900 5950 0    50   ~ 0
cv_d
$Comp
L power:GND #PWR0148
U 1 1 5FAA0FE0
P 5300 6150
F 0 "#PWR0148" H 5300 5900 50  0001 C CNN
F 1 "GND" V 5305 6022 50  0000 R CNN
F 2 "" H 5300 6150 50  0001 C CNN
F 3 "" H 5300 6150 50  0001 C CNN
	1    5300 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5FAA24CA
P 5300 5250
F 0 "#PWR0149" H 5300 5000 50  0001 C CNN
F 1 "GND" V 5305 5122 50  0000 R CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "" H 5300 5250 50  0001 C CNN
	1    5300 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5FAA2E59
P 5300 5450
F 0 "#PWR0150" H 5300 5200 50  0001 C CNN
F 1 "GND" V 5305 5322 50  0000 R CNN
F 2 "" H 5300 5450 50  0001 C CNN
F 3 "" H 5300 5450 50  0001 C CNN
	1    5300 5450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5FAA3155
P 5300 5650
F 0 "#PWR0151" H 5300 5400 50  0001 C CNN
F 1 "GND" V 5305 5522 50  0000 R CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5FAA38A4
P 5300 6050
F 0 "#PWR0152" H 5300 5800 50  0001 C CNN
F 1 "GND" V 5305 5922 50  0000 R CNN
F 2 "" H 5300 6050 50  0001 C CNN
F 3 "" H 5300 6050 50  0001 C CNN
	1    5300 6050
	0    1    1    0   
$EndComp
Text Label 5900 6150 0    50   ~ 0
sck
Text Label 5900 5550 0    50   ~ 0
mosi
Text Label 5300 5850 2    50   ~ 0
dac_select
$Comp
L Anyma_Library:Conn_EDGE J1
U 1 1 5FAB23B3
P 2750 2150
F 0 "J1" H 2830 2142 50  0000 L CNN
F 1 "Conn_EDGE" H 2830 2051 50  0000 L CNN
F 2 "Connector_PCBEdge:Samtec_MECF-08-0_-L-DV_2x08_P1.27mm_Polarized_Edge" H 2750 2150 50  0001 C CNN
F 3 "~" H 2750 2150 50  0001 C CNN
	1    2750 2150
	1    0    0    -1  
$EndComp
Text Label 2550 1450 2    50   ~ 0
supply+
Text Label 2550 1550 2    50   ~ 0
supply+
$Comp
L power:GND #PWR0173
U 1 1 5FAB4417
P 2550 1750
F 0 "#PWR0173" H 2550 1500 50  0001 C CNN
F 1 "GND" V 2555 1622 50  0000 R CNN
F 2 "" H 2550 1750 50  0001 C CNN
F 3 "" H 2550 1750 50  0001 C CNN
	1    2550 1750
	0    1    1    0   
$EndComp
Text Label 2550 1650 2    50   ~ 0
out_a
Text Label 2550 2050 2    50   ~ 0
out_b
$Comp
L power:GND #PWR0174
U 1 1 5FAB53B9
P 2550 2150
F 0 "#PWR0174" H 2550 1900 50  0001 C CNN
F 1 "GND" V 2555 2022 50  0000 R CNN
F 2 "" H 2550 2150 50  0001 C CNN
F 3 "" H 2550 2150 50  0001 C CNN
	1    2550 2150
	0    1    1    0   
$EndComp
Text Label 2550 2650 2    50   ~ 0
supply-
Text Label 2550 2750 2    50   ~ 0
supply-
$Comp
L power:GND #PWR0175
U 1 1 5FAB5F93
P 2550 2250
F 0 "#PWR0175" H 2550 2000 50  0001 C CNN
F 1 "GND" V 2555 2122 50  0000 R CNN
F 2 "" H 2550 2250 50  0001 C CNN
F 3 "" H 2550 2250 50  0001 C CNN
	1    2550 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0176
U 1 1 5FAB6131
P 2550 2350
F 0 "#PWR0176" H 2550 2100 50  0001 C CNN
F 1 "GND" V 2555 2222 50  0000 R CNN
F 2 "" H 2550 2350 50  0001 C CNN
F 3 "" H 2550 2350 50  0001 C CNN
	1    2550 2350
	0    1    1    0   
$EndComp
Text Label 2550 2450 2    50   ~ 0
out_c
$Comp
L power:GND #PWR0177
U 1 1 5FAB6CE3
P 2550 2550
F 0 "#PWR0177" H 2550 2300 50  0001 C CNN
F 1 "GND" V 2555 2422 50  0000 R CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
	1    2550 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 5FAB7243
P 2550 2950
F 0 "#PWR0178" H 2550 2700 50  0001 C CNN
F 1 "GND" V 2555 2822 50  0000 R CNN
F 2 "" H 2550 2950 50  0001 C CNN
F 3 "" H 2550 2950 50  0001 C CNN
	1    2550 2950
	0    1    1    0   
$EndComp
Text Label 2550 2850 2    50   ~ 0
out_d
$Comp
L synkie_symbols:CP_Small C35
U 1 1 5FAC0268
P 3750 4600
F 0 "C35" V 3525 4600 50  0000 C CNN
F 1 "10u" V 3616 4600 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3750 4600 50  0001 C CNN
F 3 "~" H 3750 4600 50  0001 C CNN
	1    3750 4600
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C36
U 1 1 5FAC1380
P 3750 4800
F 0 "C36" V 3525 4800 50  0000 C CNN
F 1 "10u" V 3616 4800 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3750 4800 50  0001 C CNN
F 3 "~" H 3750 4800 50  0001 C CNN
	1    3750 4800
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0179
U 1 1 5FAC1980
P 3750 4700
F 0 "#PWR0179" H 3750 4450 50  0001 C CNN
F 1 "GND" H 3755 4527 50  0000 C CNN
F 2 "" H 3750 4700 50  0001 C CNN
F 3 "" H 3750 4700 50  0001 C CNN
	1    3750 4700
	0    1    -1   0   
$EndComp
Connection ~ 3750 4700
$Comp
L synkie_symbols:+5V #PWR0180
U 1 1 5FAC2177
P 3750 4500
F 0 "#PWR0180" H 3750 4350 50  0001 C CNN
F 1 "+5V" H 3750 4650 50  0000 C CNN
F 2 "" H 3750 4500 50  0001 C CNN
F 3 "" H 3750 4500 50  0001 C CNN
	1    3750 4500
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0181
U 1 1 5FAC27A1
P 3750 4900
F 0 "#PWR0181" H 3750 5000 50  0001 C CNN
F 1 "-5V" H 3750 5050 50  0000 C CNN
F 2 "" H 3750 4900 50  0001 C CNN
F 3 "" H 3750 4900 50  0001 C CNN
	1    3750 4900
	1    0    0    1   
$EndComp
$Sheet
S 7850 2050 500  300 
U 5FA7E734
F0 "MixUnit2" 50
F1 "vm005-unit.sch" 50
F2 "DAC" I L 7850 2100 50 
F3 "CV" I L 7850 2200 50 
F4 "Input" I L 7850 2300 50 
F5 "Output" O R 8350 2200 50 
$EndSheet
$Sheet
S 7850 2700 500  300 
U 5FA82020
F0 "MixUnit3" 50
F1 "vm005-unit.sch" 50
F2 "DAC" I L 7850 2750 50 
F3 "CV" I L 7850 2850 50 
F4 "Input" I L 7850 2950 50 
F5 "Output" O R 8350 2850 50 
$EndSheet
$Sheet
S 7850 3500 500  300 
U 5FA8A96F
F0 "MixUnit4" 50
F1 "vm005-unit.sch" 50
F2 "DAC" I L 7850 3550 50 
F3 "CV" I L 7850 3650 50 
F4 "Input" I L 7850 3750 50 
F5 "Output" O R 8350 3650 50 
$EndSheet
$Comp
L Connector:TestPoint TP101
U 1 1 5FB05585
P 4450 2450
F 0 "TP101" H 4508 2568 50  0000 L CNN
F 1 "TestPoint" H 4508 2477 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4650 2450 50  0001 C CNN
F 3 "~" H 4650 2450 50  0001 C CNN
	1    4450 2450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 5FB05BE6
P 4450 2450
F 0 "#PWR0182" H 4450 2200 50  0001 C CNN
F 1 "GND" V 4455 2322 50  0000 R CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "" H 4450 2450 50  0001 C CNN
	1    4450 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5FC95E58
P 4750 2650
F 0 "TP2" H 4808 2768 50  0000 L CNN
F 1 "TestPoint" H 4808 2677 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4950 2650 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5FC97AB6
P 4750 2250
F 0 "TP1" H 4808 2368 50  0000 L CNN
F 1 "TestPoint" H 4808 2277 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 4950 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4750 2250
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0183
U 1 1 5FC98216
P 4750 2250
F 0 "#PWR0183" H 4750 2100 50  0001 C CNN
F 1 "+5V" H 4750 2400 50  0000 C CNN
F 2 "" H 4750 2250 50  0001 C CNN
F 3 "" H 4750 2250 50  0001 C CNN
	1    4750 2250
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0184
U 1 1 5FC98A9C
P 4750 2650
F 0 "#PWR0184" H 4750 2750 50  0001 C CNN
F 1 "-5V" H 4750 2800 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    1   
$EndComp
$Comp
L Connector:DB15_Female_HighDensity_MountingHoles J5
U 1 1 5FCA2DB0
P 5600 5750
F 0 "J5" H 5600 6617 50  0000 C CNN
F 1 "DB15_Female_HighDensity_MountingHoles" H 5600 6526 50  0000 C CNN
F 2 "synkie_footprints:DSUB-15-FCI" H 4650 6150 50  0001 C CNN
F 3 " ~" H 4650 6150 50  0001 C CNN
	1    5600 5750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0185
U 1 1 5FCA7485
P 5600 6450
F 0 "#PWR0185" H 5600 6200 50  0001 C CNN
F 1 "GND" H 5605 6277 50  0000 C CNN
F 2 "" H 5600 6450 50  0001 C CNN
F 3 "" H 5600 6450 50  0001 C CNN
	1    5600 6450
	-1   0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO G1
U 1 1 5FCA80BB
P 4900 7000
F 0 "G1" H 4978 7121 50  0000 L CNN
F 1 "LOGO" H 4978 7030 50  0000 L CNN
F 2 "anyma_footprints:logo_anyma" H 4900 7000 50  0001 C CNN
F 3 "" H 4900 7000 50  0001 C CNN
	1    4900 7000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
