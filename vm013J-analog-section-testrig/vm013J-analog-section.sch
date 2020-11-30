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
L Connector_Generic:Conn_01x10 J107
U 1 1 5F36B663
P 1100 3400
F 0 "J107" H 1180 3392 50  0000 L CNN
F 1 "FROM CTL" H 1180 3301 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1100 3400 50  0001 C CNN
F 3 "~" H 1100 3400 50  0001 C CNN
	1    1100 3400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J109
U 1 1 5F79495D
P 20250 4350
F 0 "J109" H 20278 4376 50  0000 L CNN
F 1 "gnd" H 20278 4285 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 20250 4350 50  0001 C CNN
F 3 "~" H 20250 4350 50  0001 C CNN
	1    20250 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0113
U 1 1 5F795277
P 20050 4350
F 0 "#PWR0113" H 20050 4100 50  0001 C CNN
F 1 "GND" H 20055 4177 50  0000 C CNN
F 2 "" H 20050 4350 50  0001 C CNN
F 3 "" H 20050 4350 50  0001 C CNN
	1    20050 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0109
U 1 1 5FACFD04
P 1300 3100
F 0 "#PWR0109" H 1300 2850 50  0001 C CNN
F 1 "GND" V 1305 2972 50  0000 R CNN
F 2 "" H 1300 3100 50  0001 C CNN
F 3 "" H 1300 3100 50  0001 C CNN
	1    1300 3100
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0110
U 1 1 5FAD03AB
P 1300 3300
F 0 "#PWR0110" H 1300 3050 50  0001 C CNN
F 1 "GND" V 1305 3172 50  0000 R CNN
F 2 "" H 1300 3300 50  0001 C CNN
F 3 "" H 1300 3300 50  0001 C CNN
	1    1300 3300
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0111
U 1 1 5FAD09CD
P 1300 3900
F 0 "#PWR0111" H 1300 3650 50  0001 C CNN
F 1 "GND" V 1305 3772 50  0000 R CNN
F 2 "" H 1300 3900 50  0001 C CNN
F 3 "" H 1300 3900 50  0001 C CNN
	1    1300 3900
	0    -1   -1   0   
$EndComp
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
L synkie_symbols:Conn_01x03 J105
U 1 1 5DCAB59D
P 750 2200
F 0 "J105" H 668 1875 50  0000 C CNN
F 1 "Power" H 668 1966 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 750 2200 50  0001 C CNN
F 3 "~" H 750 2200 50  0001 C CNN
	1    750  2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J110
U 1 1 5FA506A0
P 1100 4650
F 0 "J110" H 1180 4642 50  0000 L CNN
F 1 "SYNC-BUS" H 1180 4551 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 1100 4650 50  0001 C CNN
F 3 "~" H 1100 4650 50  0001 C CNN
	1    1100 4650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0112
U 1 1 5FA59550
P 1300 4250
F 0 "#PWR0112" H 1300 4000 50  0001 C CNN
F 1 "GND" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 5FA59D22
P 1300 4450
F 0 "#PWR0115" H 1300 4200 50  0001 C CNN
F 1 "GND" H 1305 4277 50  0000 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 5FA5A34C
P 1300 4650
F 0 "#PWR0116" H 1300 4400 50  0001 C CNN
F 1 "GND" H 1305 4477 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "" H 1300 4650 50  0001 C CNN
	1    1300 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0117
U 1 1 5FA5A78F
P 1300 4750
F 0 "#PWR0117" H 1300 4500 50  0001 C CNN
F 1 "GND" H 1305 4577 50  0000 C CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0118
U 1 1 5FA5A8D5
P 1300 4950
F 0 "#PWR0118" H 1300 4700 50  0001 C CNN
F 1 "GND" H 1305 4777 50  0000 C CNN
F 2 "" H 1300 4950 50  0001 C CNN
F 3 "" H 1300 4950 50  0001 C CNN
	1    1300 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	4550 2100 5000 2100
Text GLabel 1300 4350 2    50   Input ~ 0
hsync
Text GLabel 1300 4550 2    50   Input ~ 0
porch
Text GLabel 1300 4850 2    50   Input ~ 0
genlock
Text GLabel 1300 5050 2    50   Input ~ 0
vsync
$Comp
L synkie_symbols:GND #PWR0119
U 1 1 5FF3B930
P 1300 5150
F 0 "#PWR0119" H 1300 4900 50  0001 C CNN
F 1 "GND" H 1305 4977 50  0000 C CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J104
U 1 1 5FF83428
P 10250 2100
AR Path="/5FF83428" Ref="J104"  Part="1" 
AR Path="/5FED65BF/5FF83428" Ref="J?"  Part="1" 
F 0 "J104" H 10168 2317 50  0000 C CNN
F 1 "MONITOR_OUT" H 10168 2226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
Text Notes 10100 2500 0    50   ~ 0
to monitor
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FF872E2
P 2850 1850
AR Path="/5FE939A9/5FF872E2" Ref="J?"  Part="1" 
AR Path="/5FF872E2" Ref="J103"  Part="1" 
F 0 "J103" H 2768 2067 50  0000 C CNN
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
AR Path="/5FF872E8" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3050 1700 50  0001 C CNN
F 1 "GND" H 3055 1777 50  0000 C CNN
F 2 "" H 3050 1950 50  0001 C CNN
F 3 "" H 3050 1950 50  0001 C CNN
	1    3050 1950
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FFA0DE1
P 2850 2300
AR Path="/5FE939A9/5FFA0DE1" Ref="J?"  Part="1" 
AR Path="/5FFA0DE1" Ref="J106"  Part="1" 
F 0 "J106" H 2768 2517 50  0000 C CNN
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
AR Path="/5FFA0DEB" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3050 2150 50  0001 C CNN
F 1 "GND" H 3055 2227 50  0000 C CNN
F 2 "" H 3050 2400 50  0001 C CNN
F 3 "" H 3050 2400 50  0001 C CNN
	1    3050 2400
	0    -1   -1   0   
$EndComp
$Sheet
S 3700 1700 850  750 
U 5FE939A9
F0 "Input-Clamp" 50
F1 "vm013J-clamp.sch" 50
F2 "OUTPUT" I R 4550 2100 50 
F3 "INPUT-Composite" I L 3700 1850 50 
F4 "INPUT-Siff" I L 3700 2300 50 
$EndSheet
$Sheet
S 5000 1950 500  400 
U 5FBCB961
F0 "EQ" 50
F1 "vm013J-eq.sch" 50
F2 "INPUT" I L 5000 2100 50 
F3 "OUTPUT" I R 5500 2250 50 
$EndSheet
$Sheet
S 6200 1950 700  400 
U 5FD30D96
F0 "Scabi/Clip" 50
F1 "vm013J-scabiclip.sch" 50
F2 "INPUT" I L 6200 2100 50 
F3 "OUTPUT" I R 6900 2250 50 
$EndSheet
$Sheet
S 8050 1700 1050 800 
U 5FED65BF
F0 "Resyncer" 50
F1 "vm013J-resync.sch" 50
F2 "INPUT" I L 8050 2100 50 
F3 "OUTPUT" I R 9100 2100 50 
$EndSheet
$Sheet
S 8050 2950 750  700 
U 5FF41CD7
F0 "Levelmeter" 50
F1 "vm013J-levelmeter.sch" 50
F2 "INPUT" I L 8050 3300 50 
$EndSheet
$Comp
L synkie_symbols:Conn_01x03 J5
U 1 1 5FC641E1
P 750 2200
F 0 "J5" H 668 1875 50  0000 C CNN
F 1 "Power" H 668 1966 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 750 2200 50  0001 C CNN
F 3 "~" H 750 2200 50  0001 C CNN
	1    750  2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FC6B5A0
P 10250 2100
AR Path="/5FC6B5A0" Ref="J4"  Part="1" 
AR Path="/5FED65BF/5FC6B5A0" Ref="J?"  Part="1" 
F 0 "J4" H 10168 2317 50  0000 C CNN
F 1 "MONITOR_OUT" H 10168 2226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 10250 2100 50  0001 C CNN
F 3 "~" H 10250 2100 50  0001 C CNN
	1    10250 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FC6BBCF
P 2850 1850
AR Path="/5FE939A9/5FC6BBCF" Ref="J?"  Part="1" 
AR Path="/5FC6BBCF" Ref="J3"  Part="1" 
F 0 "J3" H 2768 2067 50  0000 C CNN
F 1 "COMPOSITE-INPUT" H 2768 1976 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2850 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	-1   0    0    -1  
$EndComp
Connection ~ 3050 1950
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FC6BFE6
P 2850 2300
AR Path="/5FE939A9/5FC6BFE6" Ref="J?"  Part="1" 
AR Path="/5FC6BFE6" Ref="J6"  Part="1" 
F 0 "J6" H 2768 2517 50  0000 C CNN
F 1 "SIFF-INPUT" H 2768 2426 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2850 2300 50  0001 C CNN
F 3 "~" H 2850 2300 50  0001 C CNN
	1    2850 2300
	-1   0    0    -1  
$EndComp
Connection ~ 3050 2400
Text GLabel 3400 3300 2    50   Input ~ 0
scale_cv
Text GLabel 4300 3300 2    50   Input ~ 0
compa_cv
Text GLabel 3650 5150 2    50   Input ~ 0
edges_bypass
Text GLabel 4900 4750 2    50   Input ~ 0
compa_bypass
Text GLabel 4900 5450 2    50   Input ~ 0
inverter_bypass
Text GLabel 3650 4450 2    50   Input ~ 0
drywet
Text GLabel 5250 3300 2    50   Input ~ 0
bias_cv
$Comp
L Connector_Generic:Conn_01x10 J7
U 1 1 5FC74EF2
P 2250 4650
F 0 "J7" H 2330 4642 50  0000 L CNN
F 1 "SYNC-BUS" H 2330 4551 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 2250 4650 50  0001 C CNN
F 3 "~" H 2250 4650 50  0001 C CNN
	1    2250 4650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0101
U 1 1 5FC74EFC
P 2450 4250
F 0 "#PWR0101" H 2450 4000 50  0001 C CNN
F 1 "GND" H 2455 4077 50  0000 C CNN
F 2 "" H 2450 4250 50  0001 C CNN
F 3 "" H 2450 4250 50  0001 C CNN
	1    2450 4250
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0102
U 1 1 5FC74F06
P 2450 4450
F 0 "#PWR0102" H 2450 4200 50  0001 C CNN
F 1 "GND" H 2455 4277 50  0000 C CNN
F 2 "" H 2450 4450 50  0001 C CNN
F 3 "" H 2450 4450 50  0001 C CNN
	1    2450 4450
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 5FC74F10
P 2450 4650
F 0 "#PWR0103" H 2450 4400 50  0001 C CNN
F 1 "GND" H 2455 4477 50  0000 C CNN
F 2 "" H 2450 4650 50  0001 C CNN
F 3 "" H 2450 4650 50  0001 C CNN
	1    2450 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0105
U 1 1 5FC74F1A
P 2450 4750
F 0 "#PWR0105" H 2450 4500 50  0001 C CNN
F 1 "GND" H 2455 4577 50  0000 C CNN
F 2 "" H 2450 4750 50  0001 C CNN
F 3 "" H 2450 4750 50  0001 C CNN
	1    2450 4750
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0106
U 1 1 5FC74F24
P 2450 4950
F 0 "#PWR0106" H 2450 4700 50  0001 C CNN
F 1 "GND" H 2455 4777 50  0000 C CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
	1    2450 4950
	0    -1   1    0   
$EndComp
Text GLabel 2450 4350 2    50   Input ~ 0
hsync
Text GLabel 2450 4550 2    50   Input ~ 0
porch
Text GLabel 2450 4850 2    50   Input ~ 0
genlock
Text GLabel 2450 5050 2    50   Input ~ 0
vsync
$Comp
L synkie_symbols:GND #PWR0108
U 1 1 5FC74F32
P 2450 5150
F 0 "#PWR0108" H 2450 4900 50  0001 C CNN
F 1 "GND" H 2455 4977 50  0000 C CNN
F 2 "" H 2450 5150 50  0001 C CNN
F 3 "" H 2450 5150 50  0001 C CNN
	1    2450 5150
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5FC78469
P 3250 3300
F 0 "RV4" H 3181 3346 50  0000 R CNN
F 1 "R_POT" H 3181 3255 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Vertical" H 3250 3300 50  0001 C CNN
F 3 "~" H 3250 3300 50  0001 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC793E1
P 3250 3450
AR Path="/5FE939A9/5FC793E1" Ref="#PWR?"  Part="1" 
AR Path="/5FC793E1" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3250 3200 50  0001 C CNN
F 1 "GND" H 3255 3277 50  0000 C CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "" H 3250 3450 50  0001 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC7A684
P 3250 3000
F 0 "R1" H 3320 3046 50  0000 L CNN
F 1 "40k" H 3320 2955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3180 3000 50  0001 C CNN
F 3 "~" H 3250 3000 50  0001 C CNN
	1    3250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5FC7AFBC
P 950 2100
F 0 "#PWR0120" H 950 1950 50  0001 C CNN
F 1 "+5V" H 965 2273 50  0000 C CNN
F 2 "" H 950 2100 50  0001 C CNN
F 3 "" H 950 2100 50  0001 C CNN
	1    950  2100
	1    0    0    -1  
$EndComp
Connection ~ 950  2100
$Comp
L power:+5V #PWR0121
U 1 1 5FC7B8CF
P 3250 2850
F 0 "#PWR0121" H 3250 2700 50  0001 C CNN
F 1 "+5V" H 3265 3023 50  0000 C CNN
F 2 "" H 3250 2850 50  0001 C CNN
F 3 "" H 3250 2850 50  0001 C CNN
	1    3250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV5
U 1 1 5FC7C1A8
P 4150 3300
F 0 "RV5" H 4081 3346 50  0000 R CNN
F 1 "R_POT" H 4081 3255 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Vertical" H 4150 3300 50  0001 C CNN
F 3 "~" H 4150 3300 50  0001 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7C1B2
P 4150 3450
AR Path="/5FE939A9/5FC7C1B2" Ref="#PWR?"  Part="1" 
AR Path="/5FC7C1B2" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 4150 3200 50  0001 C CNN
F 1 "GND" H 4155 3277 50  0000 C CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC7C1BC
P 4150 3000
F 0 "R2" H 4220 3046 50  0000 L CNN
F 1 "40k" H 4220 2955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 3000 50  0001 C CNN
F 3 "~" H 4150 3000 50  0001 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5FC7C1C6
P 4150 2850
F 0 "#PWR0123" H 4150 2700 50  0001 C CNN
F 1 "+5V" H 4165 3023 50  0000 C CNN
F 2 "" H 4150 2850 50  0001 C CNN
F 3 "" H 4150 2850 50  0001 C CNN
	1    4150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV6
U 1 1 5FC7E2C9
P 5100 3300
F 0 "RV6" H 5031 3346 50  0000 R CNN
F 1 "R_POT" H 5031 3255 50  0000 R CNN
F 2 "synkie_footprints:Potentiometer_Alps_RK09L_Single_Vertical" H 5100 3300 50  0001 C CNN
F 3 "~" H 5100 3300 50  0001 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC7E2D3
P 5100 3450
AR Path="/5FE939A9/5FC7E2D3" Ref="#PWR?"  Part="1" 
AR Path="/5FC7E2D3" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 5100 3200 50  0001 C CNN
F 1 "GND" H 5105 3277 50  0000 C CNN
F 2 "" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0001 C CNN
	1    5100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FC7E2DD
P 5100 3000
F 0 "R3" H 5170 3046 50  0000 L CNN
F 1 "40k" H 5170 2955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 3000 50  0001 C CNN
F 3 "~" H 5100 3000 50  0001 C CNN
	1    5100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5FC7E2E7
P 5100 2850
F 0 "#PWR0125" H 5100 2700 50  0001 C CNN
F 1 "+5V" H 5115 3023 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FC7FBB6
P 3550 4300
F 0 "R4" H 3620 4346 50  0000 L CNN
F 1 "4k7" H 3620 4255 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 4300 50  0001 C CNN
F 3 "~" H 3550 4300 50  0001 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4450 3550 4450
$Comp
L power:+5V #PWR0126
U 1 1 5FC80815
P 3550 4150
F 0 "#PWR0126" H 3550 4000 50  0001 C CNN
F 1 "+5V" H 3565 4323 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FC81367
P 3350 4450
F 0 "SW1" H 3350 4735 50  0000 C CNN
F 1 "SW_Push" H 3350 4644 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 3350 4650 50  0001 C CNN
F 3 "~" H 3350 4650 50  0001 C CNN
	1    3350 4450
	1    0    0    -1  
$EndComp
Connection ~ 3550 4450
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC82021
P 3150 4450
AR Path="/5FE939A9/5FC82021" Ref="#PWR?"  Part="1" 
AR Path="/5FC82021" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3150 4200 50  0001 C CNN
F 1 "GND" H 3155 4277 50  0000 C CNN
F 2 "" H 3150 4450 50  0001 C CNN
F 3 "" H 3150 4450 50  0001 C CNN
	1    3150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FC8260D
P 3550 5000
F 0 "R6" H 3620 5046 50  0000 L CNN
F 1 "4k7" H 3620 4955 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 5000 50  0001 C CNN
F 3 "~" H 3550 5000 50  0001 C CNN
	1    3550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5150 3550 5150
$Comp
L power:+5V #PWR0128
U 1 1 5FC82618
P 3550 4850
F 0 "#PWR0128" H 3550 4700 50  0001 C CNN
F 1 "+5V" H 3565 5023 50  0000 C CNN
F 2 "" H 3550 4850 50  0001 C CNN
F 3 "" H 3550 4850 50  0001 C CNN
	1    3550 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5FC82622
P 3350 5150
F 0 "SW3" H 3350 5435 50  0000 C CNN
F 1 "SW_Push" H 3350 5344 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 3350 5350 50  0001 C CNN
F 3 "~" H 3350 5350 50  0001 C CNN
	1    3350 5150
	1    0    0    -1  
$EndComp
Connection ~ 3550 5150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC8262D
P 3150 5150
AR Path="/5FE939A9/5FC8262D" Ref="#PWR?"  Part="1" 
AR Path="/5FC8262D" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3150 4900 50  0001 C CNN
F 1 "GND" H 3155 4977 50  0000 C CNN
F 2 "" H 3150 5150 50  0001 C CNN
F 3 "" H 3150 5150 50  0001 C CNN
	1    3150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FC841D9
P 4800 4600
F 0 "R5" H 4870 4646 50  0000 L CNN
F 1 "4k7" H 4870 4555 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4750 4800 4750
$Comp
L power:+5V #PWR0130
U 1 1 5FC841E4
P 4800 4450
F 0 "#PWR0130" H 4800 4300 50  0001 C CNN
F 1 "+5V" H 4815 4623 50  0000 C CNN
F 2 "" H 4800 4450 50  0001 C CNN
F 3 "" H 4800 4450 50  0001 C CNN
	1    4800 4450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5FC841EE
P 4600 4750
F 0 "SW2" H 4600 5035 50  0000 C CNN
F 1 "SW_Push" H 4600 4944 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4600 4950 50  0001 C CNN
F 3 "~" H 4600 4950 50  0001 C CNN
	1    4600 4750
	1    0    0    -1  
$EndComp
Connection ~ 4800 4750
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC841F9
P 4400 4750
AR Path="/5FE939A9/5FC841F9" Ref="#PWR?"  Part="1" 
AR Path="/5FC841F9" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 4400 4500 50  0001 C CNN
F 1 "GND" H 4405 4577 50  0000 C CNN
F 2 "" H 4400 4750 50  0001 C CNN
F 3 "" H 4400 4750 50  0001 C CNN
	1    4400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FC84204
P 4800 5300
F 0 "R7" H 4870 5346 50  0000 L CNN
F 1 "4k7" H 4870 5255 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 5300 50  0001 C CNN
F 3 "~" H 4800 5300 50  0001 C CNN
	1    4800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5450 4800 5450
$Comp
L power:+5V #PWR0132
U 1 1 5FC8420F
P 4800 5150
F 0 "#PWR0132" H 4800 5000 50  0001 C CNN
F 1 "+5V" H 4815 5323 50  0000 C CNN
F 2 "" H 4800 5150 50  0001 C CNN
F 3 "" H 4800 5150 50  0001 C CNN
	1    4800 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5FC84219
P 4600 5450
F 0 "SW4" H 4600 5735 50  0000 C CNN
F 1 "SW_Push" H 4600 5644 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4600 5650 50  0001 C CNN
F 3 "~" H 4600 5650 50  0001 C CNN
	1    4600 5450
	1    0    0    -1  
$EndComp
Connection ~ 4800 5450
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FC84224
P 4400 5450
AR Path="/5FE939A9/5FC84224" Ref="#PWR?"  Part="1" 
AR Path="/5FC84224" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4400 5200 50  0001 C CNN
F 1 "GND" H 4405 5277 50  0000 C CNN
F 2 "" H 4400 5450 50  0001 C CNN
F 3 "" H 4400 5450 50  0001 C CNN
	1    4400 5450
	1    0    0    -1  
$EndComp
$Sheet
S 1150 6950 950  600 
U 5FF12D61
F0 "Mechanicals" 50
F1 "vm013J-mechanical.sch" 50
$EndSheet
$EndSCHEMATC