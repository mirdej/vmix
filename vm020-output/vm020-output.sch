EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "vMIX20-Analog-Signal-Section"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x01_Female J104
U 1 1 5F79495D
P 20250 4350
F 0 "J104" H 20278 4376 50  0000 L CNN
F 1 "gnd" H 20278 4285 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 20250 4350 50  0001 C CNN
F 3 "~" H 20250 4350 50  0001 C CNN
	1    20250 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0111
U 1 1 5F795277
P 20050 4350
F 0 "#PWR0111" H 20050 4100 50  0001 C CNN
F 1 "GND" H 20055 4177 50  0000 C CNN
F 2 "" H 20050 4350 50  0001 C CNN
F 3 "" H 20050 4350 50  0001 C CNN
	1    20050 4350
	1    0    0    -1  
$EndComp
Text GLabel 3100 4050 2    50   Input ~ 0
scale_cv
Text GLabel 3100 3200 2    50   Input ~ 0
bias_cv
Wire Wire Line
	-14800 5500 -14800 -9700
Wire Wire Line
	-14800 -9700 -13300 -9700
$Comp
L synkie_symbols:Conn_01x03 J103
U 1 1 5DCAB59D
P 750 2200
F 0 "J103" H 668 1875 50  0000 C CNN
F 1 "Power" H 668 1966 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 750 2200 50  0001 C CNN
F 3 "~" H 750 2200 50  0001 C CNN
	1    750  2200
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0101
U 1 1 5DCB58DB
P 2000 1750
F 0 "#PWR0101" H 2000 1600 50  0001 C CNN
F 1 "+5V" H 2000 1900 50  0000 C CNN
F 2 "" H 2000 1750 50  0001 C CNN
F 3 "" H 2000 1750 50  0001 C CNN
	1    2000 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 1750 2000 2100
Connection ~ 2000 2100
Connection ~ 2000 2300
Wire Wire Line
	2000 2600 2000 2300
Wire Wire Line
	2200 2200 2300 2200
$Comp
L synkie_symbols:-5V #PWR0105
U 1 1 5DCB6075
P 2000 2600
F 0 "#PWR0105" H 2000 2700 50  0001 C CNN
F 1 "-5V" H 2000 2750 50  0000 C CNN
F 2 "" H 2000 2600 50  0001 C CNN
F 3 "" H 2000 2600 50  0001 C CNN
	1    2000 2600
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 5DCB53A6
P 2300 2200
F 0 "#PWR0103" H 2300 1950 50  0001 C CNN
F 1 "GND" H 2305 2027 50  0000 C CNN
F 2 "" H 2300 2200 50  0001 C CNN
F 3 "" H 2300 2200 50  0001 C CNN
	1    2300 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 2200 2200 2300
Connection ~ 2200 2200
Wire Wire Line
	2200 2100 2200 2200
$Comp
L synkie_symbols:CP_Small C102
U 1 1 5DCB0A0D
P 2100 2300
F 0 "C102" V 1950 2300 50  0000 C CNN
F 1 "10u" V 1850 2300 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2100 2300 50  0001 C CNN
F 3 "~" H 2100 2300 50  0001 C CNN
	1    2100 2300
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5DCAC6DA
P 1850 2100
F 0 "FB101" V 1576 2100 50  0000 C CNN
F 1 "330u" V 1667 2100 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 2100 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1850 2100
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB102
U 1 1 5DCAD10D
P 1850 2300
F 0 "FB102" V 2000 2300 50  0000 C CNN
F 1 "330u" V 2100 2300 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1780 2300 50  0001 C CNN
F 3 "~" H 1850 2300 50  0001 C CNN
	1    1850 2300
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C101
U 1 1 5DCABC45
P 2100 2100
F 0 "C101" V 1875 2100 50  0000 C CNN
F 1 "10u" V 1966 2100 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2100 2100 50  0001 C CNN
F 3 "~" H 2100 2100 50  0001 C CNN
	1    2100 2100
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J105
U 1 1 5FA506A0
P 1100 4650
F 0 "J105" H 1180 4642 50  0000 L CNN
F 1 "SYNC-BUS" H 1180 4551 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1100 4650 50  0001 C CNN
F 3 "~" H 1100 4650 50  0001 C CNN
	1    1100 4650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0110
U 1 1 5FA59550
P 1300 4250
F 0 "#PWR0110" H 1300 4000 50  0001 C CNN
F 1 "GND" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0112
U 1 1 5FA59D22
P 1300 4450
F 0 "#PWR0112" H 1300 4200 50  0001 C CNN
F 1 "GND" H 1305 4277 50  0000 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0113
U 1 1 5FA5A34C
P 1300 4650
F 0 "#PWR0113" H 1300 4400 50  0001 C CNN
F 1 "GND" H 1305 4477 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "" H 1300 4650 50  0001 C CNN
	1    1300 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0114
U 1 1 5FA5A78F
P 1300 4750
F 0 "#PWR0114" H 1300 4500 50  0001 C CNN
F 1 "GND" H 1305 4577 50  0000 C CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 5FA5A8D5
P 1300 4950
F 0 "#PWR0115" H 1300 4700 50  0001 C CNN
F 1 "GND" H 1305 4777 50  0000 C CNN
F 2 "" H 1300 4950 50  0001 C CNN
F 3 "" H 1300 4950 50  0001 C CNN
	1    1300 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	6900 2250 7650 2250
Wire Wire Line
	7650 2250 7650 2100
Wire Wire Line
	7650 2100 8050 2100
$Sheet
S 1150 6950 950  600 
U 5FF12D61
F0 "Mechanicals" 50
F1 "vm013-mechanical.sch" 50
$EndSheet
Text GLabel 1300 4350 2    50   Input ~ 0
hsync
Text GLabel 1300 4550 2    50   Input ~ 0
porch
Text GLabel 1300 4850 2    50   Input ~ 0
genlock
Text GLabel 1300 5050 2    50   Input ~ 0
vsync
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 5FF3B930
P 1300 5150
F 0 "#PWR0116" H 1300 4900 50  0001 C CNN
F 1 "GND" H 1305 4977 50  0000 C CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:R R101
U 1 1 5FF83422
P 9900 2100
AR Path="/5FF83422" Ref="R101"  Part="1" 
AR Path="/5FED65BF/5FF83422" Ref="R?"  Part="1" 
F 0 "R101" V 9800 2200 50  0000 C CNN
F 1 "75" V 9900 2100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 2100 50  0001 C CNN
F 3 "~" H 9900 2100 50  0001 C CNN
	1    9900 2100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J102
U 1 1 5FF83428
P 10250 2100
AR Path="/5FF83428" Ref="J102"  Part="1" 
AR Path="/5FED65BF/5FF83428" Ref="J?"  Part="1" 
F 0 "J102" H 10168 2317 50  0000 C CNN
F 1 "OUT" H 10168 2226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0104
U 1 1 5FF8342E
P 10050 2200
AR Path="/5FF8342E" Ref="#PWR0104"  Part="1" 
AR Path="/5FED65BF/5FF8342E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 10050 1950 50  0001 C CNN
F 1 "GND" H 10055 2027 50  0000 C CNN
F 2 "" H 10050 2200 50  0001 C CNN
F 3 "" H 10050 2200 50  0001 C CNN
	1    10050 2200
	1    0    0    -1  
$EndComp
Text Notes 10100 2500 0    50   ~ 0
to monitor
Wire Wire Line
	9750 2100 9100 2100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FFA0DE1
P 3900 2000
AR Path="/5FE939A9/5FFA0DE1" Ref="J?"  Part="1" 
AR Path="/5FFA0DE1" Ref="J101"  Part="1" 
F 0 "J101" H 3818 2217 50  0000 C CNN
F 1 "SIFF-INPUT" H 3818 2126 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 3900 2000 50  0001 C CNN
F 3 "~" H 3900 2000 50  0001 C CNN
	1    3900 2000
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FFA0DEB
P 4100 2100
AR Path="/5FE939A9/5FFA0DEB" Ref="#PWR?"  Part="1" 
AR Path="/5FFA0DEB" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 4100 1850 50  0001 C CNN
F 1 "GND" H 4105 1927 50  0000 C CNN
F 2 "" H 4100 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0001 C CNN
	1    4100 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2100 1350 2100
Wire Wire Line
	1350 2300 1700 2300
Text Label 1050 2100 1    50   ~ 0
supply+
Text Label 1050 2300 3    50   ~ 0
supply-
Wire Wire Line
	950  2100 1050 2100
Wire Wire Line
	950  2200 2200 2200
Wire Wire Line
	950  2300 1050 2300
$Comp
L Device:Polyfuse F102
U 1 1 60201E7E
P 1200 2300
F 0 "F102" V 975 2300 50  0000 C CNN
F 1 "Polyfuse" V 1066 2300 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 1250 2100 50  0001 L CNN
F 3 "~" H 1200 2300 50  0001 C CNN
	1    1200 2300
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F101
U 1 1 6020292B
P 1200 2100
F 0 "F101" V 975 2100 50  0000 C CNN
F 1 "Polyfuse" V 1066 2100 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 1250 1900 50  0001 L CNN
F 3 "~" H 1200 2100 50  0001 C CNN
	1    1200 2100
	0    1    1    0   
$EndComp
$Sheet
S 8050 1700 1050 800 
U 5FED65BF
F0 "Resyncer" 50
F1 "vm020-resync.sch" 50
F2 "INPUT" I L 8050 2100 50 
F3 "OUTPUT" I R 9100 2100 50 
$EndSheet
$Sheet
S 6200 1950 700  400 
U 5FD30D96
F0 "Scabi" 50
F1 "vm020-scabiclip.sch" 50
F2 "INPUT" I L 6200 2100 50 
F3 "OUTPUT" I R 6900 2250 50 
$EndSheet
Wire Wire Line
	4100 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2100
Wire Wire Line
	5850 2100 6200 2100
$Comp
L Device:R_POT RV102
U 1 1 5FCFEDA2
P 2950 4050
F 0 "RV102" H 2881 4096 50  0000 R CNN
F 1 "R_POT" H 2881 4005 50  0000 R CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 2950 4050 50  0001 C CNN
F 3 "~" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0109
U 1 1 5FCFF43E
P 2950 4200
F 0 "#PWR0109" H 2950 4300 50  0001 C CNN
F 1 "-5V" H 2950 4350 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0108
U 1 1 5FCFF8B8
P 2950 3900
F 0 "#PWR0108" H 2950 3750 50  0001 C CNN
F 1 "+5V" H 2950 4050 50  0000 C CNN
F 2 "" H 2950 3900 50  0001 C CNN
F 3 "" H 2950 3900 50  0001 C CNN
	1    2950 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT RV101
U 1 1 5FD0092C
P 2950 3200
F 0 "RV101" H 2881 3246 50  0000 R CNN
F 1 "R_POT" H 2881 3155 50  0000 R CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 2950 3200 50  0001 C CNN
F 3 "~" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0107
U 1 1 5FD00936
P 2950 3350
F 0 "#PWR0107" H 2950 3450 50  0001 C CNN
F 1 "-5V" H 2950 3500 50  0000 C CNN
F 2 "" H 2950 3350 50  0001 C CNN
F 3 "" H 2950 3350 50  0001 C CNN
	1    2950 3350
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0106
U 1 1 5FD00940
P 2950 3050
F 0 "#PWR0106" H 2950 2900 50  0001 C CNN
F 1 "+5V" H 2950 3200 50  0000 C CNN
F 2 "" H 2950 3050 50  0001 C CNN
F 3 "" H 2950 3050 50  0001 C CNN
	1    2950 3050
	-1   0    0    -1  
$EndComp
$EndSCHEMATC