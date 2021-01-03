EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6500 1450 950  850 
U 5FF0D8C6
F0 "Sheet5FF0D8C5" 50
F1 "vm124-buttons.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x04_Female J101
U 1 1 5FFA3F6E
P 4500 2400
F 0 "J101" H 4528 2376 50  0000 L CNN
F 1 "Display" H 4528 2285 50  0000 L CNN
F 2 "synkie_footprints:Bangood-OLED-128x32" H 4500 2400 50  0001 C CNN
F 3 "~" H 4500 2400 50  0001 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder SW101
U 1 1 60004CFC
P 4650 3750
F 0 "SW101" H 4880 3796 50  0000 L CNN
F 1 "Rotary_Encoder" H 4880 3705 50  0000 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E_Vertical_H20mm" H 4500 3910 50  0001 C CNN
F 3 "~" H 4650 4010 50  0001 C CNN
	1    4650 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J102
U 1 1 5FFA2BEB
P 2000 3100
F 0 "J102" H 2080 3092 50  0000 L CNN
F 1 "To-CPU" H 2080 3001 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 2000 3100 50  0001 C CNN
F 3 "~" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
Text GLabel 1800 3100 0    50   Input ~ 0
data
Text GLabel 1800 3000 0    50   Input ~ 0
clk
Text GLabel 1800 3200 0    50   Input ~ 0
cs
$Comp
L power:VCC #PWR0101
U 1 1 5FFC93D2
P 1800 2400
F 0 "#PWR0101" H 1800 2250 50  0001 C CNN
F 1 "VCC" H 1817 2573 50  0000 C CNN
F 2 "" H 1800 2400 50  0001 C CNN
F 3 "" H 1800 2400 50  0001 C CNN
	1    1800 2400
	1    0    0    -1  
$EndComp
Text GLabel 1800 2800 0    50   Input ~ 0
pix
$Comp
L power:GND #PWR0102
U 1 1 5FFCA0A3
P 4350 3750
F 0 "#PWR0102" H 4350 3500 50  0001 C CNN
F 1 "GND" V 4355 3622 50  0000 R CNN
F 2 "" H 4350 3750 50  0001 C CNN
F 3 "" H 4350 3750 50  0001 C CNN
	1    4350 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FFCAD3C
P 1800 2900
F 0 "#PWR0103" H 1800 2650 50  0001 C CNN
F 1 "GND" V 1805 2772 50  0000 R CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	0    1    1    0   
$EndComp
Text Label 4350 3650 2    50   ~ 0
enc_a
Text Label 4350 3850 2    50   ~ 0
enc_b
Text Label 3300 4150 2    50   ~ 0
enc_a
$Comp
L Device:C C102
U 1 1 5FFCC11B
P 3300 4300
F 0 "C102" H 3415 4346 50  0000 L CNN
F 1 "100n" H 3415 4255 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3338 4150 50  0001 C CNN
F 3 "~" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FFCC6A8
P 3300 4450
F 0 "#PWR0104" H 3300 4200 50  0001 C CNN
F 1 "GND" H 3305 4277 50  0000 C CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "" H 3300 4450 50  0001 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
Text Label 3750 4150 2    50   ~ 0
enc_b
$Comp
L Device:C C103
U 1 1 5FFCD2CB
P 3750 4300
F 0 "C103" H 3865 4346 50  0000 L CNN
F 1 "100n" H 3865 4255 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 4150 50  0001 C CNN
F 3 "~" H 3750 4300 50  0001 C CNN
	1    3750 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FFCD8BF
P 3750 4450
F 0 "#PWR0105" H 3750 4200 50  0001 C CNN
F 1 "GND" H 3755 4277 50  0000 C CNN
F 2 "" H 3750 4450 50  0001 C CNN
F 3 "" H 3750 4450 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
Text Label 1800 3300 2    50   ~ 0
enc_a
Text Label 1800 3400 2    50   ~ 0
enc_b
Text Label 1800 3500 2    50   ~ 0
sda
Text Label 1800 3600 2    50   ~ 0
scl
$Comp
L power:GND #PWR0106
U 1 1 5FFCF3F3
P 4300 2300
F 0 "#PWR0106" H 4300 2050 50  0001 C CNN
F 1 "GND" V 4305 2172 50  0000 R CNN
F 2 "" H 4300 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0001 C CNN
	1    4300 2300
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5FFCFC20
P 4300 2400
F 0 "#PWR0107" H 4300 2250 50  0001 C CNN
F 1 "VCC" V 4318 2527 50  0000 L CNN
F 2 "" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5FFD14FA
P 1800 2550
F 0 "FB101" H 1937 2596 50  0000 L CNN
F 1 "Ferrite_Bead" H 1937 2505 50  0000 L CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 2550 50  0001 C CNN
F 3 "~" H 1800 2550 50  0001 C CNN
	1    1800 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5FFD268C
P 2750 1150
F 0 "#PWR0108" H 2750 1000 50  0001 C CNN
F 1 "VCC" H 2767 1323 50  0000 C CNN
F 2 "" H 2750 1150 50  0001 C CNN
F 3 "" H 2750 1150 50  0001 C CNN
	1    2750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C101
U 1 1 5FFD2B22
P 2750 1300
F 0 "C101" H 2868 1346 50  0000 L CNN
F 1 "CP" H 2868 1255 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2788 1150 50  0001 C CNN
F 3 "~" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FFD2FFD
P 2750 1450
F 0 "#PWR0109" H 2750 1200 50  0001 C CNN
F 1 "GND" H 2755 1277 50  0000 C CNN
F 2 "" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
Text Label 4300 2500 2    50   ~ 0
scl
Text Label 4300 2600 2    50   ~ 0
sda
$Comp
L Mechanical:MountingHole H102
U 1 1 6004490E
P 7050 4150
F 0 "H102" H 7150 4196 50  0000 L CNN
F 1 "MountingHole" H 7150 4105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 7050 4150 50  0001 C CNN
F 3 "~" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H104
U 1 1 60044A1F
P 7050 4450
F 0 "H104" H 7150 4496 50  0000 L CNN
F 1 "MountingHole" H 7150 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 7050 4450 50  0001 C CNN
F 3 "~" H 7050 4450 50  0001 C CNN
	1    7050 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H101
U 1 1 60044E6D
P 7900 4100
F 0 "H101" H 8000 4146 50  0000 L CNN
F 1 "MountingHole" H 8000 4055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 7900 4100 50  0001 C CNN
F 3 "~" H 7900 4100 50  0001 C CNN
	1    7900 4100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H103
U 1 1 60044E77
P 7900 4400
F 0 "H103" H 8000 4446 50  0000 L CNN
F 1 "MountingHole" H 8000 4355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 7900 4400 50  0001 C CNN
F 3 "~" H 7900 4400 50  0001 C CNN
	1    7900 4400
	1    0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO U101
U 1 1 6010B6B8
P 1800 5400
F 0 "U101" H 1878 5521 50  0000 L CNN
F 1 "LOGO" H 1878 5430 50  0000 L CNN
F 2 "anyma_footprints:logo_anyma" H 1800 5400 50  0001 C CNN
F 3 "" H 1800 5400 50  0001 C CNN
	1    1800 5400
	1    0    0    -1  
$EndComp
$Comp
L Anyma_Library:LOGO U102
U 1 1 6010C329
P 1800 5750
F 0 "U102" H 1878 5871 50  0000 L CNN
F 1 "LOGO" H 1878 5780 50  0000 L CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 1800 5750 50  0001 C CNN
F 3 "" H 1800 5750 50  0001 C CNN
	1    1800 5750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
