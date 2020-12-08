EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	8150 1100 3800 1100
Wire Notes Line
	8150 3600 8150 1100
Text Notes 7900 3550 0    50   ~ 0
video
$Comp
L synkie_symbols:R R1
U 1 1 5F29A28B
P 7150 2500
AR Path="/5FA6FAA9/5F29A28B" Ref="R1"  Part="1" 
AR Path="/5FA6A4E8/5F29A28B" Ref="R21"  Part="1" 
AR Path="/5FA97FCE/5F29A28B" Ref="R41"  Part="1" 
AR Path="/5FA999AE/5F29A28B" Ref="R59"  Part="1" 
AR Path="/5FA8FC53/5F29A28B" Ref="R105"  Part="1" 
AR Path="/5FA9040E/5F29A28B" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5F29A28B" Ref="R205"  Part="1" 
AR Path="/5FA81498/5F29A28B" Ref="R36"  Part="1" 
AR Path="/5F29A28B" Ref="R?"  Part="1" 
AR Path="/5FA7E734/5F29A28B" Ref="R305"  Part="1" 
AR Path="/5FA82020/5F29A28B" Ref="R405"  Part="1" 
AR Path="/5FA8A96F/5F29A28B" Ref="R505"  Part="1" 
F 0 "R1" V 6943 2500 50  0000 C CNN
F 1 "(560)" V 7034 2500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 2500 50  0001 C CNN
F 3 "~" H 7150 2500 50  0001 C CNN
	1    7150 2500
	0    -1   1    0   
$EndComp
Wire Wire Line
	7300 2500 7300 2250
Wire Wire Line
	6900 2500 6950 2500
$Comp
L synkie_symbols:R R3
U 1 1 5F2A4E42
P 7150 2800
AR Path="/5FA6FAA9/5F2A4E42" Ref="R3"  Part="1" 
AR Path="/5FA6A4E8/5F2A4E42" Ref="R24"  Part="1" 
AR Path="/5FA97FCE/5F2A4E42" Ref="R44"  Part="1" 
AR Path="/5FA999AE/5F2A4E42" Ref="R62"  Part="1" 
AR Path="/5FA8FC53/5F2A4E42" Ref="R108"  Part="1" 
AR Path="/5FA9040E/5F2A4E42" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5F2A4E42" Ref="R208"  Part="1" 
AR Path="/5FA81498/5F2A4E42" Ref="R39"  Part="1" 
AR Path="/5F2A4E42" Ref="R?"  Part="1" 
AR Path="/5FA7E734/5F2A4E42" Ref="R308"  Part="1" 
AR Path="/5FA82020/5F2A4E42" Ref="R408"  Part="1" 
AR Path="/5FA8A96F/5F2A4E42" Ref="R508"  Part="1" 
F 0 "R3" V 6943 2800 50  0000 C CNN
F 1 "(75)" V 7034 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7080 2800 50  0001 C CNN
F 3 "~" H 7150 2800 50  0001 C CNN
	1    7150 2800
	0    -1   1    0   
$EndComp
Wire Wire Line
	6950 2800 7000 2800
Connection ~ 6950 2500
Wire Wire Line
	6950 2500 7000 2500
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5F2BB73C
P 7500 2800
AR Path="/5FA6FAA9/5F2BB73C" Ref="J2"  Part="1" 
AR Path="/5FA6A4E8/5F2BB73C" Ref="J3"  Part="1" 
AR Path="/5FA97FCE/5F2BB73C" Ref="J4"  Part="1" 
AR Path="/5FA999AE/5F2BB73C" Ref="J6"  Part="1" 
AR Path="/5FA8FC53/5F2BB73C" Ref="J101"  Part="1" 
AR Path="/5FA9040E/5F2BB73C" Ref="J?"  Part="1" 
AR Path="/5FA7B673/5F2BB73C" Ref="J201"  Part="1" 
AR Path="/5FA81498/5F2BB73C" Ref="J31"  Part="1" 
AR Path="/5F2BB73C" Ref="J?"  Part="1" 
AR Path="/5FA7E734/5F2BB73C" Ref="J301"  Part="1" 
AR Path="/5FA82020/5F2BB73C" Ref="J401"  Part="1" 
AR Path="/5FA8A96F/5F2BB73C" Ref="J501"  Part="1" 
F 0 "J2" H 7580 2792 50  0000 L CNN
F 1 "Conn_01x02" H 7580 2701 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7500 2800 50  0001 C CNN
F 3 "~" H 7500 2800 50  0001 C CNN
	1    7500 2800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0101
U 1 1 5F2BBDAC
P 7300 2900
AR Path="/5FA6FAA9/5F2BBDAC" Ref="#PWR0101"  Part="1" 
AR Path="/5FA6A4E8/5F2BBDAC" Ref="#PWR0121"  Part="1" 
AR Path="/5FA97FCE/5F2BBDAC" Ref="#PWR0146"  Part="1" 
AR Path="/5FA999AE/5F2BBDAC" Ref="#PWR0171"  Part="1" 
AR Path="/5FA8FC53/5F2BBDAC" Ref="#PWR0121"  Part="1" 
AR Path="/5FA9040E/5F2BBDAC" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/5F2BBDAC" Ref="#PWR0146"  Part="1" 
AR Path="/5FA81498/5F2BBDAC" Ref="#PWR0171"  Part="1" 
AR Path="/5F2BBDAC" Ref="#PWR?"  Part="1" 
AR Path="/5FA7E734/5F2BBDAC" Ref="#PWR0121"  Part="1" 
AR Path="/5FA82020/5F2BBDAC" Ref="#PWR0146"  Part="1" 
AR Path="/5FA8A96F/5F2BBDAC" Ref="#PWR0171"  Part="1" 
F 0 "#PWR0101" H 7300 2650 50  0001 C CNN
F 1 "GND" H 7305 2727 50  0000 C CNN
F 2 "" H 7300 2900 50  0001 C CNN
F 3 "" H 7300 2900 50  0001 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R35
U 1 1 5FA833F1
P 5900 2100
AR Path="/5FA6FAA9/5FA833F1" Ref="R35"  Part="1" 
AR Path="/5FA6A4E8/5FA833F1" Ref="R36"  Part="1" 
AR Path="/5FA97FCE/5FA833F1" Ref="R38"  Part="1" 
AR Path="/5FA999AE/5FA833F1" Ref="R56"  Part="1" 
AR Path="/5FA8FC53/5FA833F1" Ref="R102"  Part="1" 
AR Path="/5FA9040E/5FA833F1" Ref="R?"  Part="1" 
AR Path="/5FA7B673/5FA833F1" Ref="R202"  Part="1" 
AR Path="/5FA81498/5FA833F1" Ref="R32"  Part="1" 
AR Path="/5FA833F1" Ref="R?"  Part="1" 
AR Path="/5FA7E734/5FA833F1" Ref="R302"  Part="1" 
AR Path="/5FA82020/5FA833F1" Ref="R402"  Part="1" 
AR Path="/5FA8A96F/5FA833F1" Ref="R502"  Part="1" 
F 0 "R35" V 5693 2100 50  0000 C CNN
F 1 "(560)" V 5784 2100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 2100 50  0001 C CNN
F 3 "~" H 5900 2100 50  0001 C CNN
	1    5900 2100
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0122
U 1 1 5FA8481C
P 5900 1950
AR Path="/5FA6FAA9/5FA8481C" Ref="#PWR0122"  Part="1" 
AR Path="/5FA6A4E8/5FA8481C" Ref="#PWR0123"  Part="1" 
AR Path="/5FA97FCE/5FA8481C" Ref="#PWR0147"  Part="1" 
AR Path="/5FA999AE/5FA8481C" Ref="#PWR0172"  Part="1" 
AR Path="/5FA8FC53/5FA8481C" Ref="#PWR0123"  Part="1" 
AR Path="/5FA9040E/5FA8481C" Ref="#PWR?"  Part="1" 
AR Path="/5FA7B673/5FA8481C" Ref="#PWR0147"  Part="1" 
AR Path="/5FA81498/5FA8481C" Ref="#PWR0172"  Part="1" 
AR Path="/5FA8481C" Ref="#PWR?"  Part="1" 
AR Path="/5FA7E734/5FA8481C" Ref="#PWR0123"  Part="1" 
AR Path="/5FA82020/5FA8481C" Ref="#PWR0147"  Part="1" 
AR Path="/5FA8A96F/5FA8481C" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0122" H 5900 1700 50  0001 C CNN
F 1 "GND" H 5905 1777 50  0000 C CNN
F 2 "" H 5900 1950 50  0001 C CNN
F 3 "" H 5900 1950 50  0001 C CNN
	1    5900 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2250 6950 2250
$Comp
L Connector:TestPoint TP11
U 1 1 5FD0C282
P 5450 2250
AR Path="/5FA7E734/5FD0C282" Ref="TP11"  Part="1" 
AR Path="/5FA82020/5FD0C282" Ref="TP14"  Part="1" 
AR Path="/5FA8A96F/5FD0C282" Ref="TP17"  Part="1" 
AR Path="/5FA6FAA9/5FD0C282" Ref="TP20"  Part="1" 
F 0 "TP20" H 5508 2368 50  0000 L CNN
F 1 "TestPoint" H 5508 2277 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5650 2250 50  0001 C CNN
F 3 "~" H 5650 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2250 5900 2250
$Comp
L Connector:TestPoint TP12
U 1 1 5FD0D881
P 6950 2250
AR Path="/5FA7E734/5FD0D881" Ref="TP12"  Part="1" 
AR Path="/5FA82020/5FD0D881" Ref="TP15"  Part="1" 
AR Path="/5FA8A96F/5FD0D881" Ref="TP18"  Part="1" 
AR Path="/5FA6FAA9/5FD0D881" Ref="TP21"  Part="1" 
F 0 "TP21" H 7008 2368 50  0000 L CNN
F 1 "TestPoint" H 7008 2277 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7150 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    6950 2250
	1    0    0    -1  
$EndComp
Connection ~ 6950 2250
Wire Wire Line
	6950 2250 7300 2250
Wire Wire Line
	6950 2650 6950 2800
Wire Wire Line
	6950 2500 6950 2650
Connection ~ 6950 2650
$Comp
L Connector:TestPoint TP13
U 1 1 5FD0DEF7
P 6950 2650
AR Path="/5FA7E734/5FD0DEF7" Ref="TP13"  Part="1" 
AR Path="/5FA82020/5FD0DEF7" Ref="TP16"  Part="1" 
AR Path="/5FA8A96F/5FD0DEF7" Ref="TP19"  Part="1" 
AR Path="/5FA6FAA9/5FD0DEF7" Ref="TP22"  Part="1" 
F 0 "TP22" V 7145 2722 50  0000 C CNN
F 1 "TestPoint" V 7054 2722 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7150 2650 50  0001 C CNN
F 3 "~" H 7150 2650 50  0001 C CNN
	1    6950 2650
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
