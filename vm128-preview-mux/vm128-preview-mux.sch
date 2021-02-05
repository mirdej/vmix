EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
P 6500 7300
F 0 "J104" H 6528 7326 50  0000 L CNN
F 1 "gnd" H 6528 7235 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6500 7300 50  0001 C CNN
F 3 "~" H 6500 7300 50  0001 C CNN
	1    6500 7300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0111
U 1 1 5F795277
P 6300 7300
F 0 "#PWR0111" H 6300 7050 50  0001 C CNN
F 1 "GND" H 6305 7127 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-14800 5500 -14800 -9700
Wire Wire Line
	-14800 -9700 -13300 -9700
$Comp
L synkie_symbols:Conn_01x03 J103
U 1 1 5DCAB59D
P 1050 1250
F 0 "J103" H 968 925 50  0000 C CNN
F 1 "Power" H 968 1016 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1050 1250 50  0001 C CNN
F 3 "~" H 1050 1250 50  0001 C CNN
	1    1050 1250
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0101
U 1 1 5DCB58DB
P 1650 800
F 0 "#PWR0101" H 1650 650 50  0001 C CNN
F 1 "+5V" H 1650 950 50  0000 C CNN
F 2 "" H 1650 800 50  0001 C CNN
F 3 "" H 1650 800 50  0001 C CNN
	1    1650 800 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 800  1650 1150
Connection ~ 1650 1150
Connection ~ 1650 1350
Wire Wire Line
	1650 1650 1650 1350
Wire Wire Line
	1850 1250 1950 1250
$Comp
L synkie_symbols:-5V #PWR0105
U 1 1 5DCB6075
P 1650 1650
F 0 "#PWR0105" H 1650 1750 50  0001 C CNN
F 1 "-5V" H 1650 1800 50  0000 C CNN
F 2 "" H 1650 1650 50  0001 C CNN
F 3 "" H 1650 1650 50  0001 C CNN
	1    1650 1650
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0103
U 1 1 5DCB53A6
P 1950 1250
F 0 "#PWR0103" H 1950 1000 50  0001 C CNN
F 1 "GND" H 1955 1077 50  0000 C CNN
F 2 "" H 1950 1250 50  0001 C CNN
F 3 "" H 1950 1250 50  0001 C CNN
	1    1950 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 1850 1350
Connection ~ 1850 1250
Wire Wire Line
	1850 1150 1850 1250
$Comp
L synkie_symbols:CP_Small C102
U 1 1 5DCB0A0D
P 1750 1350
F 0 "C102" V 1600 1350 50  0000 C CNN
F 1 "10u" V 1500 1350 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1750 1350 50  0001 C CNN
F 3 "~" H 1750 1350 50  0001 C CNN
	1    1750 1350
	0    1    -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB101
U 1 1 5DCAC6DA
P 1500 1150
F 0 "FB101" V 1226 1150 50  0000 C CNN
F 1 "330u" V 1317 1150 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 1150 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB102
U 1 1 5DCAD10D
P 1500 1350
F 0 "FB102" V 1650 1350 50  0000 C CNN
F 1 "330u" V 1750 1350 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 1350 50  0001 C CNN
F 3 "~" H 1500 1350 50  0001 C CNN
	1    1500 1350
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:CP_Small C101
U 1 1 5DCABC45
P 1750 1150
F 0 "C101" V 1525 1150 50  0000 C CNN
F 1 "10u" V 1616 1150 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1750 1150 50  0001 C CNN
F 3 "~" H 1750 1150 50  0001 C CNN
	1    1750 1150
	0    -1   1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J105
U 1 1 5FA506A0
P 950 2800
F 0 "J105" H 1030 2792 50  0000 L CNN
F 1 "SYNC-BUS" H 1030 2701 50  0000 L CNN
F 2 "synkie_footprints:IDC-Header_2x05_P2.54mm_Vertical" H 950 2800 50  0001 C CNN
F 3 "~" H 950 2800 50  0001 C CNN
	1    950  2800
	-1   0    0    -1  
$EndComp
Text GLabel 1150 2500 2    50   Input ~ 0
hsync
Text GLabel 1150 2700 2    50   Input ~ 0
porch
Text GLabel 1150 3200 2    50   Input ~ 0
vsync
Text Label 1350 1150 1    50   ~ 0
supply+
Text Label 1350 1350 3    50   ~ 0
supply-
Wire Wire Line
	1250 1150 1350 1150
Wire Wire Line
	1250 1350 1350 1350
$Comp
L synkie_symbols:GND #PWR0135
U 1 1 60210B40
P 1250 1250
F 0 "#PWR0135" H 1250 1000 50  0001 C CNN
F 1 "GND" H 1255 1077 50  0000 C CNN
F 2 "" H 1250 1250 50  0001 C CNN
F 3 "" H 1250 1250 50  0001 C CNN
	1    1250 1250
	0    -1   1    0   
$EndComp
Text GLabel 1150 2900 2    50   Input ~ 0
synkietxt
Text GLabel 1150 3000 2    50   Input ~ 0
synkietxt_enable
Wire Wire Line
	1150 2400 1900 2400
Wire Wire Line
	1900 3300 1150 3300
Wire Wire Line
	1150 3100 1900 3100
Connection ~ 1900 3100
Wire Wire Line
	1900 3100 1900 3300
Wire Wire Line
	1150 2800 1900 2800
Connection ~ 1900 2800
Wire Wire Line
	1900 2800 1900 3100
Wire Wire Line
	1150 2600 1900 2600
Wire Wire Line
	1900 2400 1900 2600
Connection ~ 1900 2600
Wire Wire Line
	1900 2600 1900 2800
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 603C1636
P 2300 3300
F 0 "JP2" H 2300 3512 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2300 3421 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2300 3300 50  0001 C CNN
F 3 "~" H 2300 3300 50  0001 C CNN
	1    2300 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 3300 2200 3300
$Comp
L synkie_symbols:GND #PWR0126
U 1 1 603C1641
P 2400 3300
F 0 "#PWR0126" H 2400 3050 50  0001 C CNN
F 1 "GND" H 2405 3127 50  0000 C CNN
F 2 "" H 2400 3300 50  0001 C CNN
F 3 "" H 2400 3300 50  0001 C CNN
	1    2400 3300
	-1   0    0    -1  
$EndComp
Connection ~ 1900 3300
$Sheet
S 9550 1950 1050 800 
U 5FED65BF
F0 "Resyncer" 50
F1 "vm128-resync.sch" 50
F2 "INPUT" I L 9550 2150 50 
F3 "OUTPUT" I R 10600 2350 50 
F4 "GENLOCK" I L 9550 2550 50 
$EndSheet
$Comp
L 4xxx:4051 U2
U 1 1 601E96ED
P 8500 2750
F 0 "U2" H 8200 3500 50  0000 L CNN
F 1 "4051" H 8250 2000 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 8500 2750 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 8500 2750 50  0001 C CNN
	1    8500 2750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0102
U 1 1 601EBC21
P 8500 1850
F 0 "#PWR0102" H 8500 1700 50  0001 C CNN
F 1 "+5V" H 8500 2000 50  0000 C CNN
F 2 "" H 8500 1850 50  0001 C CNN
F 3 "" H 8500 1850 50  0001 C CNN
	1    8500 1850
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0104
U 1 1 601EC495
P 8600 3650
F 0 "#PWR0104" H 8600 3750 50  0001 C CNN
F 1 "-5V" H 8600 3800 50  0000 C CNN
F 2 "" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0106
U 1 1 601ECBBA
P 8500 3650
F 0 "#PWR0106" H 8500 3400 50  0001 C CNN
F 1 "GND" H 8505 3477 50  0000 C CNN
F 2 "" H 8500 3650 50  0001 C CNN
F 3 "" H 8500 3650 50  0001 C CNN
	1    8500 3650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0107
U 1 1 601ED38B
P 9100 2650
F 0 "#PWR0107" H 9100 2500 50  0001 C CNN
F 1 "+5V" H 9100 2800 50  0000 C CNN
F 2 "" H 9100 2650 50  0001 C CNN
F 3 "" H 9100 2650 50  0001 C CNN
	1    9100 2650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 601EF162
P 9100 2800
F 0 "C1" H 9215 2846 50  0000 L CNN
F 1 "100n" H 9215 2755 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 2650 50  0001 C CNN
F 3 "~" H 9100 2800 50  0001 C CNN
	1    9100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 601EF644
P 9100 3100
F 0 "C2" H 9215 3146 50  0000 L CNN
F 1 "100n" H 9215 3055 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 2950 50  0001 C CNN
F 3 "~" H 9100 3100 50  0001 C CNN
	1    9100 3100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0108
U 1 1 601EFA7A
P 9100 3250
F 0 "#PWR0108" H 9100 3350 50  0001 C CNN
F 1 "-5V" H 9100 3400 50  0000 C CNN
F 2 "" H 9100 3250 50  0001 C CNN
F 3 "" H 9100 3250 50  0001 C CNN
	1    9100 3250
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0109
U 1 1 601EFE68
P 9100 2950
F 0 "#PWR0109" H 9100 2700 50  0001 C CNN
F 1 "GND" H 9105 2777 50  0000 C CNN
F 2 "" H 9100 2950 50  0001 C CNN
F 3 "" H 9100 2950 50  0001 C CNN
	1    9100 2950
	0    1    -1   0   
$EndComp
Connection ~ 9100 2950
Text Label 8000 3150 2    50   ~ 0
mux1
Text Label 8000 3250 2    50   ~ 0
mux2
$Comp
L synkie_symbols:GND #PWR0110
U 1 1 601F0A4D
P 8000 3050
F 0 "#PWR0110" H 8000 2800 50  0001 C CNN
F 1 "GND" H 8005 2877 50  0000 C CNN
F 2 "" H 8000 3050 50  0001 C CNN
F 3 "" H 8000 3050 50  0001 C CNN
	1    8000 3050
	0    1    -1   0   
$EndComp
Text Label 8000 3350 2    50   ~ 0
mux3
$Comp
L synkie_symbols:UMCC J5
U 1 1 601F1B49
P 1400 3950
F 0 "J5" H 1642 4237 60  0000 C CNN
F 1 "UMCC" H 1642 4131 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1800 3790 60  0001 C CNN
F 3 "" H 1400 3950 60  0000 C CNN
	1    1400 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 601F50C9
P 1500 4150
F 0 "JP1" H 1850 3950 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1900 4000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1500 4150 50  0001 C CNN
F 3 "~" H 1500 4150 50  0001 C CNN
	1    1500 4150
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0112
U 1 1 601F50D3
P 1600 4150
F 0 "#PWR0112" H 1600 3900 50  0001 C CNN
F 1 "GND" H 1605 3977 50  0000 C CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "" H 1600 4150 50  0001 C CNN
	1    1600 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 4050 1400 4150
Connection ~ 1400 4150
Text Label 1400 3950 0    50   ~ 0
afl1
$Comp
L synkie_symbols:UMCC J8
U 1 1 601F7F32
P 1400 4750
F 0 "J8" H 1642 5037 60  0000 C CNN
F 1 "UMCC" H 1642 4931 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1800 4590 60  0001 C CNN
F 3 "" H 1400 4750 60  0000 C CNN
	1    1400 4750
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 601F7F3C
P 1500 4950
F 0 "JP5" H 1850 4750 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1900 4800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1500 4950 50  0001 C CNN
F 3 "~" H 1500 4950 50  0001 C CNN
	1    1500 4950
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0113
U 1 1 601F7F46
P 1600 4950
F 0 "#PWR0113" H 1600 4700 50  0001 C CNN
F 1 "GND" H 1605 4777 50  0000 C CNN
F 2 "" H 1600 4950 50  0001 C CNN
F 3 "" H 1600 4950 50  0001 C CNN
	1    1600 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 4850 1400 4950
Connection ~ 1400 4950
Text Label 1400 4750 0    50   ~ 0
afl2
$Comp
L synkie_symbols:UMCC J11
U 1 1 601FB4C5
P 1400 5550
F 0 "J11" H 1642 5837 60  0000 C CNN
F 1 "UMCC" H 1642 5731 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1800 5390 60  0001 C CNN
F 3 "" H 1400 5550 60  0000 C CNN
	1    1400 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP8
U 1 1 601FB4CF
P 1500 5750
F 0 "JP8" H 1850 5550 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1900 5600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1500 5750 50  0001 C CNN
F 3 "~" H 1500 5750 50  0001 C CNN
	1    1500 5750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0114
U 1 1 601FB4D9
P 1600 5750
F 0 "#PWR0114" H 1600 5500 50  0001 C CNN
F 1 "GND" H 1605 5577 50  0000 C CNN
F 2 "" H 1600 5750 50  0001 C CNN
F 3 "" H 1600 5750 50  0001 C CNN
	1    1600 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 5650 1400 5750
Connection ~ 1400 5750
Text Label 1400 5550 0    50   ~ 0
afl3
$Comp
L synkie_symbols:UMCC J14
U 1 1 601FB4E6
P 1400 6350
F 0 "J14" H 1642 6637 60  0000 C CNN
F 1 "UMCC" H 1642 6531 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 1800 6190 60  0001 C CNN
F 3 "" H 1400 6350 60  0000 C CNN
	1    1400 6350
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP11
U 1 1 601FB4F0
P 1500 6550
F 0 "JP11" H 1850 6350 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1900 6400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 1500 6550 50  0001 C CNN
F 3 "~" H 1500 6550 50  0001 C CNN
	1    1500 6550
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0115
U 1 1 601FB4FA
P 1600 6550
F 0 "#PWR0115" H 1600 6300 50  0001 C CNN
F 1 "GND" H 1605 6377 50  0000 C CNN
F 2 "" H 1600 6550 50  0001 C CNN
F 3 "" H 1600 6550 50  0001 C CNN
	1    1600 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 6450 1400 6550
Connection ~ 1400 6550
Text Label 1400 6350 0    50   ~ 0
afl4
$Comp
L synkie_symbols:UMCC J6
U 1 1 601FF873
P 2400 3950
F 0 "J6" H 2642 4237 60  0000 C CNN
F 1 "UMCC" H 2642 4131 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 2800 3790 60  0001 C CNN
F 3 "" H 2400 3950 60  0000 C CNN
	1    2400 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 601FF87D
P 2500 4150
F 0 "JP3" H 2850 3950 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2900 4000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2500 4150 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
	1    2500 4150
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0116
U 1 1 601FF887
P 2600 4150
F 0 "#PWR0116" H 2600 3900 50  0001 C CNN
F 1 "GND" H 2605 3977 50  0000 C CNN
F 2 "" H 2600 4150 50  0001 C CNN
F 3 "" H 2600 4150 50  0001 C CNN
	1    2600 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 4050 2400 4150
Connection ~ 2400 4150
Text Label 2400 3950 0    50   ~ 0
pfl1
$Comp
L synkie_symbols:UMCC J9
U 1 1 601FF894
P 2400 4750
F 0 "J9" H 2642 5037 60  0000 C CNN
F 1 "UMCC" H 2642 4931 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 2800 4590 60  0001 C CNN
F 3 "" H 2400 4750 60  0000 C CNN
	1    2400 4750
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 601FF89E
P 2500 4950
F 0 "JP6" H 2850 4750 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2900 4800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2500 4950 50  0001 C CNN
F 3 "~" H 2500 4950 50  0001 C CNN
	1    2500 4950
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0117
U 1 1 601FF8A8
P 2600 4950
F 0 "#PWR0117" H 2600 4700 50  0001 C CNN
F 1 "GND" H 2605 4777 50  0000 C CNN
F 2 "" H 2600 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 4850 2400 4950
Connection ~ 2400 4950
Text Label 2400 4750 0    50   ~ 0
pfl2
$Comp
L synkie_symbols:UMCC J12
U 1 1 601FF8B5
P 2400 5550
F 0 "J12" H 2642 5837 60  0000 C CNN
F 1 "UMCC" H 2642 5731 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 2800 5390 60  0001 C CNN
F 3 "" H 2400 5550 60  0000 C CNN
	1    2400 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP9
U 1 1 601FF8BF
P 2500 5750
F 0 "JP9" H 2850 5550 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2900 5600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2500 5750 50  0001 C CNN
F 3 "~" H 2500 5750 50  0001 C CNN
	1    2500 5750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0118
U 1 1 601FF8C9
P 2600 5750
F 0 "#PWR0118" H 2600 5500 50  0001 C CNN
F 1 "GND" H 2605 5577 50  0000 C CNN
F 2 "" H 2600 5750 50  0001 C CNN
F 3 "" H 2600 5750 50  0001 C CNN
	1    2600 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 5650 2400 5750
Connection ~ 2400 5750
Text Label 2400 5550 0    50   ~ 0
pfl3
$Comp
L synkie_symbols:UMCC J15
U 1 1 601FF8D6
P 2400 6350
F 0 "J15" H 2642 6637 60  0000 C CNN
F 1 "UMCC" H 2642 6531 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 2800 6190 60  0001 C CNN
F 3 "" H 2400 6350 60  0000 C CNN
	1    2400 6350
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP12
U 1 1 601FF8E0
P 2500 6550
F 0 "JP12" H 2850 6350 50  0000 C CNN
F 1 "Jumper_NC_Small" H 2900 6400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2500 6550 50  0001 C CNN
F 3 "~" H 2500 6550 50  0001 C CNN
	1    2500 6550
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0119
U 1 1 601FF8EA
P 2600 6550
F 0 "#PWR0119" H 2600 6300 50  0001 C CNN
F 1 "GND" H 2605 6377 50  0000 C CNN
F 2 "" H 2600 6550 50  0001 C CNN
F 3 "" H 2600 6550 50  0001 C CNN
	1    2600 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 6450 2400 6550
Connection ~ 2400 6550
Text Label 2400 6350 0    50   ~ 0
pfl4
$Comp
L synkie_symbols:UMCC J7
U 1 1 602073C9
P 3400 3950
F 0 "J7" H 3642 4237 60  0000 C CNN
F 1 "UMCC" H 3642 4131 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3800 3790 60  0001 C CNN
F 3 "" H 3400 3950 60  0000 C CNN
	1    3400 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 602073D3
P 3500 4150
F 0 "JP4" H 3850 3950 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3900 4000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3500 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0120
U 1 1 602073DD
P 3600 4150
F 0 "#PWR0120" H 3600 3900 50  0001 C CNN
F 1 "GND" H 3605 3977 50  0000 C CNN
F 2 "" H 3600 4150 50  0001 C CNN
F 3 "" H 3600 4150 50  0001 C CNN
	1    3600 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 4050 3400 4150
Connection ~ 3400 4150
Text Label 3400 3950 0    50   ~ 0
burst1
$Comp
L synkie_symbols:UMCC J10
U 1 1 602073EA
P 3400 4750
F 0 "J10" H 3642 5037 60  0000 C CNN
F 1 "UMCC" H 3642 4931 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3800 4590 60  0001 C CNN
F 3 "" H 3400 4750 60  0000 C CNN
	1    3400 4750
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 602073F4
P 3500 4950
F 0 "JP7" H 3850 4750 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3900 4800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3500 4950 50  0001 C CNN
F 3 "~" H 3500 4950 50  0001 C CNN
	1    3500 4950
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0121
U 1 1 602073FE
P 3600 4950
F 0 "#PWR0121" H 3600 4700 50  0001 C CNN
F 1 "GND" H 3605 4777 50  0000 C CNN
F 2 "" H 3600 4950 50  0001 C CNN
F 3 "" H 3600 4950 50  0001 C CNN
	1    3600 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 4850 3400 4950
Connection ~ 3400 4950
Text Label 3400 4750 0    50   ~ 0
burst2
$Comp
L synkie_symbols:UMCC J13
U 1 1 6020740B
P 3400 5550
F 0 "J13" H 3642 5837 60  0000 C CNN
F 1 "UMCC" H 3642 5731 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3800 5390 60  0001 C CNN
F 3 "" H 3400 5550 60  0000 C CNN
	1    3400 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP10
U 1 1 60207415
P 3500 5750
F 0 "JP10" H 3850 5550 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3900 5600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3500 5750 50  0001 C CNN
F 3 "~" H 3500 5750 50  0001 C CNN
	1    3500 5750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0122
U 1 1 6020741F
P 3600 5750
F 0 "#PWR0122" H 3600 5500 50  0001 C CNN
F 1 "GND" H 3605 5577 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 5650 3400 5750
Connection ~ 3400 5750
Text Label 3400 5550 0    50   ~ 0
burst3
$Comp
L synkie_symbols:UMCC J16
U 1 1 6020742C
P 3400 6350
F 0 "J16" H 3642 6637 60  0000 C CNN
F 1 "UMCC" H 3642 6531 60  0000 C CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 3800 6190 60  0001 C CNN
F 3 "" H 3400 6350 60  0000 C CNN
	1    3400 6350
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP13
U 1 1 60207436
P 3500 6550
F 0 "JP13" H 3850 6350 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3900 6400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3500 6550 50  0001 C CNN
F 3 "~" H 3500 6550 50  0001 C CNN
	1    3500 6550
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0124
U 1 1 60207440
P 3600 6550
F 0 "#PWR0124" H 3600 6300 50  0001 C CNN
F 1 "GND" H 3605 6377 50  0000 C CNN
F 2 "" H 3600 6550 50  0001 C CNN
F 3 "" H 3600 6550 50  0001 C CNN
	1    3600 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 6450 3400 6550
Connection ~ 3400 6550
Text Label 3400 6350 0    50   ~ 0
burst4
Text Label 8000 2550 2    50   ~ 0
afl1
Text Label 8000 2650 2    50   ~ 0
afl2
Text Label 8000 2750 2    50   ~ 0
afl3
Text Label 8000 2850 2    50   ~ 0
afl4
Text Label 8000 2150 2    50   ~ 0
pfl1
Text Label 8000 2250 2    50   ~ 0
pfl2
Text Label 8000 2350 2    50   ~ 0
pfl3
Text Label 8000 2450 2    50   ~ 0
pfl4
$Comp
L 4xxx:4051 U4
U 1 1 60213720
P 8550 5100
F 0 "U4" H 8250 5850 50  0000 L CNN
F 1 "4051" H 8300 4350 50  0000 L CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 8550 5100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 8550 5100 50  0001 C CNN
	1    8550 5100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0125
U 1 1 6021372A
P 8550 4200
F 0 "#PWR0125" H 8550 4050 50  0001 C CNN
F 1 "+5V" H 8550 4350 50  0000 C CNN
F 2 "" H 8550 4200 50  0001 C CNN
F 3 "" H 8550 4200 50  0001 C CNN
	1    8550 4200
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0127
U 1 1 60213734
P 8650 6000
F 0 "#PWR0127" H 8650 6100 50  0001 C CNN
F 1 "-5V" H 8650 6150 50  0000 C CNN
F 2 "" H 8650 6000 50  0001 C CNN
F 3 "" H 8650 6000 50  0001 C CNN
	1    8650 6000
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0128
U 1 1 6021373E
P 8550 6000
F 0 "#PWR0128" H 8550 5750 50  0001 C CNN
F 1 "GND" H 8555 5827 50  0000 C CNN
F 2 "" H 8550 6000 50  0001 C CNN
F 3 "" H 8550 6000 50  0001 C CNN
	1    8550 6000
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0129
U 1 1 60213748
P 9150 5000
F 0 "#PWR0129" H 9150 4850 50  0001 C CNN
F 1 "+5V" H 9150 5150 50  0000 C CNN
F 2 "" H 9150 5000 50  0001 C CNN
F 3 "" H 9150 5000 50  0001 C CNN
	1    9150 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60213752
P 9150 5150
F 0 "C3" H 9265 5196 50  0000 L CNN
F 1 "100n" H 9265 5105 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9188 5000 50  0001 C CNN
F 3 "~" H 9150 5150 50  0001 C CNN
	1    9150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6021375C
P 9150 5450
F 0 "C4" H 9265 5496 50  0000 L CNN
F 1 "100n" H 9265 5405 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9188 5300 50  0001 C CNN
F 3 "~" H 9150 5450 50  0001 C CNN
	1    9150 5450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0130
U 1 1 60213766
P 9150 5600
F 0 "#PWR0130" H 9150 5700 50  0001 C CNN
F 1 "-5V" H 9150 5750 50  0000 C CNN
F 2 "" H 9150 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0131
U 1 1 60213770
P 9150 5300
F 0 "#PWR0131" H 9150 5050 50  0001 C CNN
F 1 "GND" H 9155 5127 50  0000 C CNN
F 2 "" H 9150 5300 50  0001 C CNN
F 3 "" H 9150 5300 50  0001 C CNN
	1    9150 5300
	0    1    -1   0   
$EndComp
Connection ~ 9150 5300
Text Label 8050 5500 2    50   ~ 0
mux1
Text Label 8050 5600 2    50   ~ 0
mux2
$Comp
L synkie_symbols:GND #PWR0132
U 1 1 6021377D
P 8050 5400
F 0 "#PWR0132" H 8050 5150 50  0001 C CNN
F 1 "GND" H 8055 5227 50  0000 C CNN
F 2 "" H 8050 5400 50  0001 C CNN
F 3 "" H 8050 5400 50  0001 C CNN
	1    8050 5400
	0    1    -1   0   
$EndComp
Text Label 8050 5700 2    50   ~ 0
mux3
Text Label 8050 4500 2    50   ~ 0
burst1
Text Label 8050 4600 2    50   ~ 0
burst2
Text Label 8050 4700 2    50   ~ 0
burst3
Text Label 8050 4800 2    50   ~ 0
burst4
Text Label 8050 4900 2    50   ~ 0
burst1
Text Label 8050 5000 2    50   ~ 0
burst2
Text Label 8050 5100 2    50   ~ 0
burst3
Text Label 8050 5200 2    50   ~ 0
burst4
Wire Wire Line
	9050 4500 9450 4500
Wire Wire Line
	9450 4500 9450 2550
Wire Wire Line
	9450 2550 9550 2550
Wire Wire Line
	9550 2150 9000 2150
$Comp
L synkie_symbols:MAX4392 U1
U 1 1 60226A68
P 4900 1450
F 0 "U1" H 4900 1817 50  0000 C CNN
F 1 "MAX4392" H 4900 1726 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4900 1450 50  0001 C CNN
F 3 "~" H 4900 1450 50  0001 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 2 1 60227939
P 4900 2050
F 0 "U1" H 4900 2417 50  0000 C CNN
F 1 "MAX4392" H 4900 2326 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4900 2050 50  0001 C CNN
F 3 "~" H 4900 2050 50  0001 C CNN
	2    4900 2050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 3 1 60228B52
P 5100 7100
F 0 "U1" H 5058 7146 50  0000 L CNN
F 1 "MAX4392" H 5058 7055 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5100 7100 50  0001 C CNN
F 3 "~" H 5100 7100 50  0001 C CNN
	3    5100 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6022A55A
P 4850 6800
F 0 "C5" V 5102 6800 50  0000 C CNN
F 1 "C" V 5011 6800 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4888 6650 50  0001 C CNN
F 3 "~" H 4850 6800 50  0001 C CNN
	1    4850 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 6022AF22
P 4850 7400
F 0 "C7" V 5102 7400 50  0000 C CNN
F 1 "C" V 5011 7400 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4888 7250 50  0001 C CNN
F 3 "~" H 4850 7400 50  0001 C CNN
	1    4850 7400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0137
U 1 1 6022B65B
P 4700 6800
F 0 "#PWR0137" H 4700 6550 50  0001 C CNN
F 1 "GND" H 4705 6627 50  0000 C CNN
F 2 "" H 4700 6800 50  0001 C CNN
F 3 "" H 4700 6800 50  0001 C CNN
	1    4700 6800
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0138
U 1 1 6022BA7C
P 4700 7400
F 0 "#PWR0138" H 4700 7150 50  0001 C CNN
F 1 "GND" H 4705 7227 50  0000 C CNN
F 2 "" H 4700 7400 50  0001 C CNN
F 3 "" H 4700 7400 50  0001 C CNN
	1    4700 7400
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0139
U 1 1 6022BEBF
P 5000 6800
F 0 "#PWR0139" H 5000 6650 50  0001 C CNN
F 1 "+5V" H 5000 6950 50  0000 C CNN
F 2 "" H 5000 6800 50  0001 C CNN
F 3 "" H 5000 6800 50  0001 C CNN
	1    5000 6800
	-1   0    0    -1  
$EndComp
Connection ~ 5000 6800
$Comp
L synkie_symbols:-5V #PWR0140
U 1 1 6022C372
P 5000 7400
F 0 "#PWR0140" H 5000 7500 50  0001 C CNN
F 1 "-5V" H 5000 7550 50  0000 C CNN
F 2 "" H 5000 7400 50  0001 C CNN
F 3 "" H 5000 7400 50  0001 C CNN
	1    5000 7400
	1    0    0    1   
$EndComp
Connection ~ 5000 7400
Wire Wire Line
	4600 1550 4600 1700
Wire Wire Line
	4600 1700 5200 1700
Wire Wire Line
	5200 1700 5200 1450
Wire Wire Line
	4600 2150 4600 2300
Wire Wire Line
	4600 2300 5200 2300
Wire Wire Line
	5200 2300 5200 2050
Text Label 4600 1350 2    50   ~ 0
afl1
Text Label 4600 1950 2    50   ~ 0
afl2
$Comp
L Device:R R1
U 1 1 6022F475
P 5350 1450
F 0 "R1" V 5143 1450 50  0000 C CNN
F 1 "75" V 5234 1450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 1450 50  0001 C CNN
F 3 "~" H 5350 1450 50  0001 C CNN
	1    5350 1450
	0    1    1    0   
$EndComp
Connection ~ 5200 1450
$Comp
L Device:R R2
U 1 1 6022F8EF
P 5350 2050
F 0 "R2" V 5143 2050 50  0000 C CNN
F 1 "75" V 5234 2050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 2050 50  0001 C CNN
F 3 "~" H 5350 2050 50  0001 C CNN
	1    5350 2050
	0    1    1    0   
$EndComp
Connection ~ 5200 2050
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 6023054B
P 5650 1450
F 0 "J1" H 5730 1492 50  0000 L CNN
F 1 "out" H 5730 1401 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5650 1450 50  0001 C CNN
F 3 "~" H 5650 1450 50  0001 C CNN
	1    5650 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 60230AA2
P 5700 2050
F 0 "J2" H 5780 2092 50  0000 L CNN
F 1 "out" H 5780 2001 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5700 2050 50  0001 C CNN
F 3 "~" H 5700 2050 50  0001 C CNN
	1    5700 2050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U3
U 1 1 60231807
P 4850 2800
F 0 "U3" H 4850 3167 50  0000 C CNN
F 1 "MAX4392" H 4850 3076 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4850 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U3
U 2 1 60231811
P 4850 3400
F 0 "U3" H 4850 3767 50  0000 C CNN
F 1 "MAX4392" H 4850 3676 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4850 3400 50  0001 C CNN
F 3 "~" H 4850 3400 50  0001 C CNN
	2    4850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2900 4550 3050
Wire Wire Line
	4550 3050 5150 3050
Wire Wire Line
	5150 3050 5150 2800
Wire Wire Line
	4550 3500 4550 3650
Wire Wire Line
	4550 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3400
Text Label 4550 2700 2    50   ~ 0
afl3
Text Label 4550 3300 2    50   ~ 0
afl4
$Comp
L Device:R R3
U 1 1 60231823
P 5300 2800
F 0 "R3" V 5093 2800 50  0000 C CNN
F 1 "75" V 5184 2800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 2800 50  0001 C CNN
F 3 "~" H 5300 2800 50  0001 C CNN
	1    5300 2800
	0    1    1    0   
$EndComp
Connection ~ 5150 2800
$Comp
L Device:R R4
U 1 1 6023182E
P 5300 3400
F 0 "R4" V 5093 3400 50  0000 C CNN
F 1 "75" V 5184 3400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	0    1    1    0   
$EndComp
Connection ~ 5150 3400
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 60231839
P 5600 2800
F 0 "J3" H 5680 2842 50  0000 L CNN
F 1 "out" H 5680 2751 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5600 2800 50  0001 C CNN
F 3 "~" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60231843
P 5650 3400
F 0 "J4" H 5730 3442 50  0000 L CNN
F 1 "out" H 5730 3351 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 5650 3400 50  0001 C CNN
F 3 "~" H 5650 3400 50  0001 C CNN
	1    5650 3400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U3
U 3 1 6023465D
P 5900 7150
F 0 "U3" H 5858 7196 50  0000 L CNN
F 1 "MAX4392" H 5858 7105 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 7150 50  0001 C CNN
F 3 "~" H 5900 7150 50  0001 C CNN
	3    5900 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60234667
P 5650 6850
F 0 "C6" V 5902 6850 50  0000 C CNN
F 1 "C" V 5811 6850 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5688 6700 50  0001 C CNN
F 3 "~" H 5650 6850 50  0001 C CNN
	1    5650 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 60234671
P 5650 7450
F 0 "C8" V 5902 7450 50  0000 C CNN
F 1 "C" V 5811 7450 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5688 7300 50  0001 C CNN
F 3 "~" H 5650 7450 50  0001 C CNN
	1    5650 7450
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0141
U 1 1 6023467B
P 5500 6850
F 0 "#PWR0141" H 5500 6600 50  0001 C CNN
F 1 "GND" H 5505 6677 50  0000 C CNN
F 2 "" H 5500 6850 50  0001 C CNN
F 3 "" H 5500 6850 50  0001 C CNN
	1    5500 6850
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0142
U 1 1 60234685
P 5500 7450
F 0 "#PWR0142" H 5500 7200 50  0001 C CNN
F 1 "GND" H 5505 7277 50  0000 C CNN
F 2 "" H 5500 7450 50  0001 C CNN
F 3 "" H 5500 7450 50  0001 C CNN
	1    5500 7450
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR0143
U 1 1 6023468F
P 5800 6850
F 0 "#PWR0143" H 5800 6700 50  0001 C CNN
F 1 "+5V" H 5800 7000 50  0000 C CNN
F 2 "" H 5800 6850 50  0001 C CNN
F 3 "" H 5800 6850 50  0001 C CNN
	1    5800 6850
	-1   0    0    -1  
$EndComp
Connection ~ 5800 6850
$Comp
L synkie_symbols:-5V #PWR0144
U 1 1 6023469A
P 5800 7450
F 0 "#PWR0144" H 5800 7550 50  0001 C CNN
F 1 "-5V" H 5800 7600 50  0000 C CNN
F 2 "" H 5800 7450 50  0001 C CNN
F 3 "" H 5800 7450 50  0001 C CNN
	1    5800 7450
	1    0    0    1   
$EndComp
Connection ~ 5800 7450
$EndSCHEMATC
