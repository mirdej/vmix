EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
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
L Connector_Generic:Conn_01x10 J?
U 1 1 5F36B663
P 1100 3400
F 0 "J?" H 1180 3392 50  0000 L CNN
F 1 "FROM CTL" H 1180 3301 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1100 3400 50  0001 C CNN
F 3 "~" H 1100 3400 50  0001 C CNN
	1    1100 3400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5F79495D
P 20250 4350
F 0 "J?" H 20278 4376 50  0000 L CNN
F 1 "gnd" H 20278 4285 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 20250 4350 50  0001 C CNN
F 3 "~" H 20250 4350 50  0001 C CNN
	1    20250 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0109
U 1 1 5F795277
P 20050 4350
F 0 "#PWR0109" H 20050 4100 50  0001 C CNN
F 1 "GND" H 20055 4177 50  0000 C CNN
F 2 "" H 20050 4350 50  0001 C CNN
F 3 "" H 20050 4350 50  0001 C CNN
	1    20050 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0119
U 1 1 5FACFD04
P 1300 3100
F 0 "#PWR0119" H 1300 2850 50  0001 C CNN
F 1 "GND" V 1305 2972 50  0000 R CNN
F 2 "" H 1300 3100 50  0001 C CNN
F 3 "" H 1300 3100 50  0001 C CNN
	1    1300 3100
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0120
U 1 1 5FAD03AB
P 1300 3300
F 0 "#PWR0120" H 1300 3050 50  0001 C CNN
F 1 "GND" V 1305 3172 50  0000 R CNN
F 2 "" H 1300 3300 50  0001 C CNN
F 3 "" H 1300 3300 50  0001 C CNN
	1    1300 3300
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0121
U 1 1 5FAD09CD
P 1300 3900
F 0 "#PWR0121" H 1300 3650 50  0001 C CNN
F 1 "GND" V 1305 3772 50  0000 R CNN
F 2 "" H 1300 3900 50  0001 C CNN
F 3 "" H 1300 3900 50  0001 C CNN
	1    1300 3900
	0    -1   -1   0   
$EndComp
$Sheet
S 5000 1950 500  400 
U 5FBCB961
F0 "EQ" 50
F1 "vm013-eq.sch" 50
F2 "INPUT" I L 5000 2100 50 
F3 "OUTPUT" I R 5500 2250 50 
$EndSheet
Text GLabel 1300 3000 2    50   Input ~ 0
scale_cv
Text GLabel 1300 3200 2    50   Input ~ 0
compa_cv
Text GLabel 1300 3400 2    50   Input ~ 0
edges_bypass
Text GLabel 1300 3500 2    50   Input ~ 0
compa_bypass
Text GLabel 1300 3600 2    50   Input ~ 0
inverter_bypass
Text GLabel 1300 3700 2    50   Input ~ 0
drywet
Text GLabel 1300 3800 2    50   Input ~ 0
bias_cv
$Sheet
S 6200 1950 700  400 
U 5FD30D96
F0 "Scabi/Clip" 50
F1 "vm013-scabiclip.sch" 50
F2 "INPUT" I L 6200 2100 50 
F3 "OUTPUT" I R 6900 2250 50 
$EndSheet
Wire Wire Line
	5500 2250 5900 2250
Wire Wire Line
	5900 2250 5900 2100
Wire Wire Line
	5900 2100 6200 2100
Wire Wire Line
	-14800 5500 -14800 -9700
Wire Wire Line
	-14800 -9700 -13300 -9700
$Comp
L synkie_symbols:Conn_01x03 J3
U 1 1 5DCAB59D
P 750 2200
F 0 "J3" H 668 1875 50  0000 C CNN
F 1 "Power" H 668 1966 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 750 2200 50  0001 C CNN
F 3 "~" H 750 2200 50  0001 C CNN
	1    750  2200
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR02
U 1 1 5DCB58DB
P 1600 1750
F 0 "#PWR02" H 1600 1600 50  0001 C CNN
F 1 "+5V" H 1600 1900 50  0000 C CNN
F 2 "" H 1600 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0001 C CNN
	1    1600 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 1750 1600 2100
Connection ~ 1600 2100
Connection ~ 1600 2300
Wire Wire Line
	1600 2600 1600 2300
Wire Wire Line
	1800 2200 1900 2200
$Comp
L synkie_symbols:-5V #PWR03
U 1 1 5DCB6075
P 1600 2600
F 0 "#PWR03" H 1600 2700 50  0001 C CNN
F 1 "-5V" H 1600 2750 50  0000 C CNN
F 2 "" H 1600 2600 50  0001 C CNN
F 3 "" H 1600 2600 50  0001 C CNN
	1    1600 2600
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR01
U 1 1 5DCB53A6
P 1900 2200
F 0 "#PWR01" H 1900 1950 50  0001 C CNN
F 1 "GND" H 1905 2027 50  0000 C CNN
F 2 "" H 1900 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
	1    1900 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 2200 1800 2300
Connection ~ 1800 2200
Wire Wire Line
	1800 2100 1800 2200
$Comp
L synkie_symbols:CP_Small C2
U 1 1 5DCB0A0D
P 1700 2300
F 0 "C2" V 1550 2300 50  0000 C CNN
F 1 "10u" V 1450 2300 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1700 2300 50  0001 C CNN
F 3 "~" H 1700 2300 50  0001 C CNN
	1    1700 2300
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 5DCAC6DA
P 1450 2100
F 0 "FB1" V 1176 2100 50  0000 C CNN
F 1 "330u" V 1267 2100 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1380 2100 50  0001 C CNN
F 3 "~" H 1450 2100 50  0001 C CNN
	1    1450 2100
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 5DCAD10D
P 1450 2300
F 0 "FB2" V 1600 2300 50  0000 C CNN
F 1 "330u" V 1700 2300 50  0000 C CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1380 2300 50  0001 C CNN
F 3 "~" H 1450 2300 50  0001 C CNN
	1    1450 2300
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C1
U 1 1 5DCABC45
P 1700 2100
F 0 "C1" V 1475 2100 50  0000 C CNN
F 1 "10u" V 1566 2100 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1700 2100 50  0001 C CNN
F 3 "~" H 1700 2100 50  0001 C CNN
	1    1700 2100
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J6
U 1 1 5FA506A0
P 1100 4650
F 0 "J6" H 1180 4642 50  0000 L CNN
F 1 "SYNC-BUS" H 1180 4551 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1100 4650 50  0001 C CNN
F 3 "~" H 1100 4650 50  0001 C CNN
	1    1100 4650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0113
U 1 1 5FA59550
P 1300 4250
F 0 "#PWR0113" H 1300 4000 50  0001 C CNN
F 1 "GND" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0114
U 1 1 5FA59D22
P 1300 4450
F 0 "#PWR0114" H 1300 4200 50  0001 C CNN
F 1 "GND" H 1305 4277 50  0000 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 5FA5A34C
P 1300 4650
F 0 "#PWR0115" H 1300 4400 50  0001 C CNN
F 1 "GND" H 1305 4477 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "" H 1300 4650 50  0001 C CNN
	1    1300 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 5FA5A78F
P 1300 4750
F 0 "#PWR0116" H 1300 4500 50  0001 C CNN
F 1 "GND" H 1305 4577 50  0000 C CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0117
U 1 1 5FA5A8D5
P 1300 4950
F 0 "#PWR0117" H 1300 4700 50  0001 C CNN
F 1 "GND" H 1305 4777 50  0000 C CNN
F 2 "" H 1300 4950 50  0001 C CNN
F 3 "" H 1300 4950 50  0001 C CNN
	1    1300 4950
	0    -1   1    0   
$EndComp
$Sheet
S 3700 1700 850  750 
U 5FE939A9
F0 "Input-Clamp" 50
F1 "vm013-clamp.sch" 50
F2 "OUTPUT" I R 4550 2100 50 
F3 "INPUT-Composite" I L 3700 1850 50 
F4 "INPUT-Siff" I L 3700 2300 50 
$EndSheet
Wire Wire Line
	4550 2100 5000 2100
$Sheet
S 8050 1700 1050 800 
U 5FED65BF
F0 "Resyncer" 50
F1 "vm013-resync.sch" 50
F2 "INPUT" I L 8050 2100 50 
F3 "OUTPUT" I R 9100 2100 50 
$EndSheet
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
L synkie_symbols:GND #PWR?
U 1 1 5FF3B930
P 1300 5150
F 0 "#PWR?" H 1300 4900 50  0001 C CNN
F 1 "GND" H 1305 4977 50  0000 C CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	0    -1   1    0   
$EndComp
$Sheet
S 8050 2950 750  700 
U 5FF41CD7
F0 "Levelmeter" 50
F1 "vm013-levelmeter.sch" 50
F2 "INPUT" I L 8050 3300 50 
$EndSheet
Wire Wire Line
	7650 2250 7650 3300
Wire Wire Line
	7650 3300 8050 3300
Connection ~ 7650 2250
$Comp
L synkie_symbols:R R?
U 1 1 5FF83422
P 9900 2100
AR Path="/5FF83422" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FF83422" Ref="R?"  Part="1" 
F 0 "R?" V 9800 2200 50  0000 C CNN
F 1 "75" V 9900 2100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9830 2100 50  0001 C CNN
F 3 "~" H 9900 2100 50  0001 C CNN
	1    9900 2100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FF83428
P 10250 2100
AR Path="/5FF83428" Ref="J?"  Part="1" 
AR Path="/5FED65BF/5FF83428" Ref="J?"  Part="1" 
F 0 "J?" H 10168 2317 50  0000 C CNN
F 1 "MONITOR_OUT" H 10168 2226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FF8342E
P 10050 2200
AR Path="/5FF8342E" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FF8342E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10050 1950 50  0001 C CNN
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
U 1 1 5FF872E2
P 2850 1850
AR Path="/5FE939A9/5FF872E2" Ref="J?"  Part="1" 
AR Path="/5FF872E2" Ref="J?"  Part="1" 
F 0 "J?" H 2768 2067 50  0000 C CNN
F 1 "COMPOSITE-INPUT" H 2768 1976 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2850 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FF872E8
P 3050 1950
AR Path="/5FE939A9/5FF872E8" Ref="#PWR?"  Part="1" 
AR Path="/5FF872E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 1700 50  0001 C CNN
F 1 "GND" H 3055 1777 50  0000 C CNN
F 2 "" H 3050 1950 50  0001 C CNN
F 3 "" H 3050 1950 50  0001 C CNN
	1    3050 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 1850 3700 1850
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FFA0DE1
P 2850 2300
AR Path="/5FE939A9/5FFA0DE1" Ref="J?"  Part="1" 
AR Path="/5FFA0DE1" Ref="J?"  Part="1" 
F 0 "J?" H 2768 2517 50  0000 C CNN
F 1 "SIFF-INPUT" H 2768 2426 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2850 2300 50  0001 C CNN
F 3 "~" H 2850 2300 50  0001 C CNN
	1    2850 2300
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FFA0DEB
P 3050 2400
AR Path="/5FE939A9/5FFA0DEB" Ref="#PWR?"  Part="1" 
AR Path="/5FFA0DEB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 2150 50  0001 C CNN
F 1 "GND" H 3055 2227 50  0000 C CNN
F 2 "" H 3050 2400 50  0001 C CNN
F 3 "" H 3050 2400 50  0001 C CNN
	1    3050 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2300 3700 2300
Wire Wire Line
	1300 2100 950  2100
Wire Wire Line
	950  2200 1800 2200
Wire Wire Line
	950  2300 1300 2300
Text Label 1050 2100 1    50   ~ 0
supply+
Text Label 1050 2300 3    50   ~ 0
supply-
$Comp
L synkie_symbols:Conn_01x03 J?
U 1 1 5FFAA1E9
P 800 950
F 0 "J?" H 718 625 50  0000 C CNN
F 1 "Controller-Power" H 718 716 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 800 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	-1   0    0    -1  
$EndComp
Text Label 1000 850  0    50   ~ 0
supply+
Text Label 1000 1050 0    50   ~ 0
supply-
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FFAB279
P 1000 950
F 0 "#PWR?" H 1000 700 50  0001 C CNN
F 1 "GND" H 1005 777 50  0000 C CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1000 950 50  0001 C CNN
	1    1000 950 
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FFAD027
P 1700 850
AR Path="/5FE939A9/5FFAD027" Ref="J?"  Part="1" 
AR Path="/5FFAD027" Ref="J?"  Part="1" 
F 0 "J?" H 1618 1067 50  0000 C CNN
F 1 "Monitor-Power" H 1618 976 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1700 850 50  0001 C CNN
F 3 "~" H 1700 850 50  0001 C CNN
	1    1700 850 
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FFAE2A0
P 1900 950
F 0 "#PWR?" H 1900 700 50  0001 C CNN
F 1 "GND" H 1905 777 50  0000 C CNN
F 2 "" H 1900 950 50  0001 C CNN
F 3 "" H 1900 950 50  0001 C CNN
	1    1900 950 
	0    -1   1    0   
$EndComp
Text Label 1900 850  0    50   ~ 0
supply+
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FFAF0FE
P 8200 4300
AR Path="/5FFAF0FE" Ref="J?"  Part="1" 
AR Path="/5FED65BF/5FFAF0FE" Ref="J?"  Part="1" 
F 0 "J?" H 8118 4517 50  0000 C CNN
F 1 "OUT-TO-MIXER" H 8118 4426 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8200 4300 50  0001 C CNN
F 3 "~" H 8200 4300 50  0001 C CNN
	1    8200 4300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FFAF6E0
P 7850 4300
AR Path="/5FFAF6E0" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FFAF6E0" Ref="R?"  Part="1" 
F 0 "R?" V 7750 4400 50  0000 C CNN
F 1 "75" V 7850 4300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 4300 50  0001 C CNN
F 3 "~" H 7850 4300 50  0001 C CNN
	1    7850 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3300 7650 4300
Wire Wire Line
	7650 4300 7700 4300
Connection ~ 7650 3300
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FFB0DFF
P 8000 4400
AR Path="/5FFB0DFF" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FFB0DFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 4150 50  0001 C CNN
F 1 "GND" H 8005 4227 50  0000 C CNN
F 2 "" H 8000 4400 50  0001 C CNN
F 3 "" H 8000 4400 50  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FFB2324
P 8200 5000
F 0 "J?" H 8280 4992 50  0000 L CNN
F 1 "FRONT-PANEL" H 8280 4901 50  0000 L CNN
F 2 "" H 8200 5000 50  0001 C CNN
F 3 "~" H 8200 5000 50  0001 C CNN
	1    8200 5000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FFB69D6
P 7850 4900
AR Path="/5FFB69D6" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FFB69D6" Ref="R?"  Part="1" 
F 0 "R?" V 7750 5000 50  0000 C CNN
F 1 "75" V 7850 4900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 4900 50  0001 C CNN
F 3 "~" H 7850 4900 50  0001 C CNN
	1    7850 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4300 7650 4900
Wire Wire Line
	7650 4900 7700 4900
Connection ~ 7650 4300
Text GLabel 7400 5000 0    50   Input ~ 0
COMPA-OUT
Text GLabel 7400 5100 0    50   Input ~ 0
BIAS-IN
Text GLabel 7400 5200 0    50   Input ~ 0
SCALE-IN
Wire Wire Line
	8000 5000 7400 5000
Wire Wire Line
	7400 5100 8000 5100
Wire Wire Line
	7400 5200 8000 5200
$EndSCHEMATC
