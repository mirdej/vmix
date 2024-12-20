EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:GND #PWR06
U 1 1 600870AC
P 2750 1800
F 0 "#PWR06" H 2750 1550 50  0001 C CNN
F 1 "GND" V 2755 1672 50  0000 R CNN
F 2 "" H 2750 1800 50  0001 C CNN
F 3 "" H 2750 1800 50  0001 C CNN
	1    2750 1800
	0    1    1    0   
$EndComp
$Comp
L Device:CP C3
U 1 1 600898CC
P 3150 1650
F 0 "C3" H 3268 1696 50  0000 L CNN
F 1 "CP" H 3268 1605 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3188 1500 50  0001 C CNN
F 3 "~" H 3150 1650 50  0001 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 60089D9D
P 3150 1950
F 0 "C6" H 3268 1996 50  0000 L CNN
F 1 "CP" H 3268 1905 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3188 1800 50  0001 C CNN
F 3 "~" H 3150 1950 50  0001 C CNN
	1    3150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR09
U 1 1 6008A28F
P 3150 2100
F 0 "#PWR09" H 3150 2200 50  0001 C CNN
F 1 "-5V" H 3165 2273 50  0000 C CNN
F 2 "" H 3150 2100 50  0001 C CNN
F 3 "" H 3150 2100 50  0001 C CNN
	1    3150 2100
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR04
U 1 1 6008A5C6
P 3150 1500
F 0 "#PWR04" H 3150 1350 50  0001 C CNN
F 1 "+5V" H 3165 1673 50  0000 C CNN
F 2 "" H 3150 1500 50  0001 C CNN
F 3 "" H 3150 1500 50  0001 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1800 2750 1800
Connection ~ 3150 1800
$Comp
L Connector:Conn_Coaxial J2
U 1 1 6009B8AD
P 1050 2050
F 0 "J2" H 978 2288 50  0000 C CNN
F 1 "Conn_Coaxial" H 978 2197 50  0000 C CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 1050 2050 50  0001 C CNN
F 3 " ~" H 1050 2050 50  0001 C CNN
	1    1050 2050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6009E031
P 1050 2250
F 0 "#PWR011" H 1050 2000 50  0001 C CNN
F 1 "GND" H 1055 2077 50  0000 C CNN
F 2 "" H 1050 2250 50  0001 C CNN
F 3 "" H 1050 2250 50  0001 C CNN
	1    1050 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 6009E341
P 1050 1250
F 0 "J1" H 978 1488 50  0000 C CNN
F 1 "Conn_Coaxial" H 978 1397 50  0000 C CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 1050 1250 50  0001 C CNN
F 3 " ~" H 1050 1250 50  0001 C CNN
	1    1050 1250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6009F0AF
P 1050 1450
F 0 "#PWR02" H 1050 1200 50  0001 C CNN
F 1 "GND" H 1055 1277 50  0000 C CNN
F 2 "" H 1050 1450 50  0001 C CNN
F 3 "" H 1050 1450 50  0001 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
Text Label 1250 1250 0    50   ~ 0
genlock-input
Text Label 5350 3500 2    50   ~ 0
genlock-input
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 600AEE4B
P 1000 2750
F 0 "J3" H 918 2525 50  0000 C CNN
F 1 "GENLOCK IN" H 918 2616 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 1000 2750 50  0001 C CNN
F 3 "~" H 1000 2750 50  0001 C CNN
	1    1000 2750
	-1   0    0    1   
$EndComp
Text Label 1200 2750 0    50   ~ 0
genlock-input
$Comp
L 4xxx:4053 U2
U 1 1 600AFD26
P 7050 3800
F 0 "U2" H 7050 4881 50  0000 C CNN
F 1 "4053" H 7050 4790 50  0000 C CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 7050 3800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 7050 3800 50  0001 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR032
U 1 1 600B0FFA
P 7150 4700
F 0 "#PWR032" H 7150 4800 50  0001 C CNN
F 1 "-5V" H 7165 4873 50  0000 C CNN
F 2 "" H 7150 4700 50  0001 C CNN
F 3 "" H 7150 4700 50  0001 C CNN
	1    7150 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 600B1CFE
P 7050 4700
F 0 "#PWR031" H 7050 4450 50  0001 C CNN
F 1 "GND" H 7055 4527 50  0000 C CNN
F 2 "" H 7050 4700 50  0001 C CNN
F 3 "" H 7050 4700 50  0001 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
$Comp
L nime2020-library:+5V #PWR013
U 1 1 600B25C9
P 7050 2900
F 0 "#PWR013" H 7050 2750 50  0001 C CNN
F 1 "+5V" H 7065 3073 50  0000 C CNN
F 2 "" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	1    0    0    -1  
$EndComp
$Comp
L nime2020-library:+5V #PWR01
U 1 1 600B30DA
P 7150 1400
F 0 "#PWR01" H 7150 1250 50  0001 C CNN
F 1 "+5V" H 7165 1573 50  0000 C CNN
F 2 "" H 7150 1400 50  0001 C CNN
F 3 "" H 7150 1400 50  0001 C CNN
	1    7150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 600B3BC9
P 7150 1550
F 0 "C1" H 7265 1596 50  0000 L CNN
F 1 "C" H 7265 1505 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7188 1400 50  0001 C CNN
F 3 "~" H 7150 1550 50  0001 C CNN
	1    7150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 600B4439
P 7150 1700
F 0 "#PWR05" H 7150 1450 50  0001 C CNN
F 1 "GND" V 7155 1572 50  0000 R CNN
F 2 "" H 7150 1700 50  0001 C CNN
F 3 "" H 7150 1700 50  0001 C CNN
	1    7150 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 600B4838
P 7150 1850
F 0 "C4" H 7265 1896 50  0000 L CNN
F 1 "C" H 7265 1805 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7188 1700 50  0001 C CNN
F 3 "~" H 7150 1850 50  0001 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
Connection ~ 7150 1700
$Comp
L power:-5V #PWR07
U 1 1 600B4E88
P 7150 2000
F 0 "#PWR07" H 7150 2100 50  0001 C CNN
F 1 "-5V" H 7165 2173 50  0000 C CNN
F 2 "" H 7150 2000 50  0001 C CNN
F 3 "" H 7150 2000 50  0001 C CNN
	1    7150 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 600B5CC3
P 1400 6000
F 0 "J9" H 1318 6317 50  0000 C CNN
F 1 "Conn_01x04" H 1318 6226 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1400 6000 50  0001 C CNN
F 3 "~" H 1400 6000 50  0001 C CNN
	1    1400 6000
	-1   0    0    -1  
$EndComp
Text Label 1600 5900 0    50   ~ 0
hsync
Text Label 1600 6000 0    50   ~ 0
vsync
Text Label 1600 6100 0    50   ~ 0
porch
Text Label 1600 6200 0    50   ~ 0
oe
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 600B71B2
P 1450 6650
F 0 "J10" H 1368 6967 50  0000 C CNN
F 1 "Conn_01x04" H 1368 6876 50  0000 C CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1450 6650 50  0001 C CNN
F 3 "~" H 1450 6650 50  0001 C CNN
	1    1450 6650
	-1   0    0    -1  
$EndComp
Text Label 1650 6550 0    50   ~ 0
hsync
Text Label 1650 6650 0    50   ~ 0
vsync
Text Label 1650 6750 0    50   ~ 0
porch
Text Label 1650 6850 0    50   ~ 0
oe
Text Label 6550 4400 2    50   ~ 0
hsync
Text Label 6550 4200 2    50   ~ 0
porch
$Comp
L Device:R R2
U 1 1 600BB905
P 9050 2550
F 0 "R2" H 8980 2504 50  0000 R CNN
F 1 "4k7" H 8980 2595 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8980 2550 50  0001 C CNN
F 3 "~" H 9050 2550 50  0001 C CNN
	1    9050 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 600BC124
P 9050 2250
F 0 "R1" H 8980 2204 50  0000 R CNN
F 1 "150" H 8980 2295 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8980 2250 50  0001 C CNN
F 3 "~" H 9050 2250 50  0001 C CNN
	1    9050 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 600BCB4D
P 9050 2100
F 0 "#PWR010" H 9050 1850 50  0001 C CNN
F 1 "GND" H 9055 1927 50  0000 C CNN
F 2 "" H 9050 2100 50  0001 C CNN
F 3 "" H 9050 2100 50  0001 C CNN
	1    9050 2100
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR012
U 1 1 600BD426
P 9050 2700
F 0 "#PWR012" H 9050 2800 50  0001 C CNN
F 1 "-5V" H 9065 2873 50  0000 C CNN
F 2 "" H 9050 2700 50  0001 C CNN
F 3 "" H 9050 2700 50  0001 C CNN
	1    9050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 2400 9050 2400
Connection ~ 9050 2400
Text Label 9450 2400 0    50   ~ 0
synctip
Text Label 6550 3800 2    50   ~ 0
synctip
$Comp
L synkie_symbols:MAX4392 U1
U 1 1 600BF3E0
P 9250 3350
F 0 "U1" H 9250 3717 50  0000 C CNN
F 1 "MAX4392" H 9250 3626 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9250 3350 50  0001 C CNN
F 3 "~" H 9250 3350 50  0001 C CNN
	1    9250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 600C054E
P 6550 4100
F 0 "#PWR019" H 6550 3850 50  0001 C CNN
F 1 "GND" V 6555 3972 50  0000 R CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3200 8950 3250
Wire Wire Line
	9000 4100 8650 4100
Wire Wire Line
	8650 4100 8650 3800
Wire Wire Line
	8650 3200 8950 3200
Wire Wire Line
	9550 3350 9550 3450
Wire Wire Line
	8900 3600 8900 3450
Wire Wire Line
	8900 3450 8950 3450
Wire Wire Line
	9000 4300 9000 4500
Wire Wire Line
	9600 4500 9600 4350
$Comp
L synkie_symbols:UMCC J4
U 1 1 600C47BD
P 10400 3250
F 0 "J4" H 10928 3203 60  0000 L CNN
F 1 "UMCC" H 10928 3097 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10800 3090 60  0001 C CNN
F 3 "" H 10400 3250 60  0000 C CNN
	1    10400 3250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J5
U 1 1 600C5293
P 10400 3800
F 0 "J5" H 10928 3753 60  0000 L CNN
F 1 "UMCC" H 10928 3647 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10800 3640 60  0001 C CNN
F 3 "" H 10400 3800 60  0000 C CNN
	1    10400 3800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J6
U 1 1 600C5AAC
P 10400 4350
F 0 "J6" H 10928 4303 60  0000 L CNN
F 1 "UMCC" H 10928 4197 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10800 4190 60  0001 C CNN
F 3 "" H 10400 4350 60  0000 C CNN
	1    10400 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J8
U 1 1 600C5EA1
P 10400 4950
F 0 "J8" H 10928 4903 60  0000 L CNN
F 1 "UMCC" H 10928 4797 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10800 4790 60  0001 C CNN
F 3 "" H 10400 4950 60  0000 C CNN
	1    10400 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 600C661B
P 10400 5150
F 0 "#PWR036" H 10400 4900 50  0001 C CNN
F 1 "GND" V 10405 5022 50  0000 R CNN
F 2 "" H 10400 5150 50  0001 C CNN
F 3 "" H 10400 5150 50  0001 C CNN
	1    10400 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 600C6D64
P 10400 5050
F 0 "#PWR035" H 10400 4800 50  0001 C CNN
F 1 "GND" V 10405 4922 50  0000 R CNN
F 2 "" H 10400 5050 50  0001 C CNN
F 3 "" H 10400 5050 50  0001 C CNN
	1    10400 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 600C7069
P 10400 4550
F 0 "#PWR030" H 10400 4300 50  0001 C CNN
F 1 "GND" V 10405 4422 50  0000 R CNN
F 2 "" H 10400 4550 50  0001 C CNN
F 3 "" H 10400 4550 50  0001 C CNN
	1    10400 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 600C7073
P 10400 4450
F 0 "#PWR028" H 10400 4200 50  0001 C CNN
F 1 "GND" V 10405 4322 50  0000 R CNN
F 2 "" H 10400 4450 50  0001 C CNN
F 3 "" H 10400 4450 50  0001 C CNN
	1    10400 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 600C8A5E
P 10400 4000
F 0 "#PWR023" H 10400 3750 50  0001 C CNN
F 1 "GND" V 10405 3872 50  0000 R CNN
F 2 "" H 10400 4000 50  0001 C CNN
F 3 "" H 10400 4000 50  0001 C CNN
	1    10400 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 600C8A68
P 10400 3900
F 0 "#PWR021" H 10400 3650 50  0001 C CNN
F 1 "GND" V 10405 3772 50  0000 R CNN
F 2 "" H 10400 3900 50  0001 C CNN
F 3 "" H 10400 3900 50  0001 C CNN
	1    10400 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 600C8A72
P 10400 3450
F 0 "#PWR015" H 10400 3200 50  0001 C CNN
F 1 "GND" V 10405 3322 50  0000 R CNN
F 2 "" H 10400 3450 50  0001 C CNN
F 3 "" H 10400 3450 50  0001 C CNN
	1    10400 3450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 600C8A7C
P 10400 3350
F 0 "#PWR014" H 10400 3100 50  0001 C CNN
F 1 "GND" V 10405 3222 50  0000 R CNN
F 2 "" H 10400 3350 50  0001 C CNN
F 3 "" H 10400 3350 50  0001 C CNN
	1    10400 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 3250 9650 3250
Wire Wire Line
	9650 3250 9650 3450
Wire Wire Line
	9650 3450 9550 3450
Connection ~ 9550 3450
Wire Wire Line
	9550 3450 9550 3600
Wire Wire Line
	10400 3800 9650 3800
Wire Wire Line
	9650 3800 9650 3450
Connection ~ 9650 3450
Wire Wire Line
	10400 4350 9700 4350
Connection ~ 9600 4350
Wire Wire Line
	9600 4350 9600 4200
Wire Wire Line
	10400 4950 9700 4950
Wire Wire Line
	9700 4950 9700 4350
Connection ~ 9700 4350
Wire Wire Line
	9700 4350 9600 4350
$Comp
L synkie_symbols:MAX4392 U1
U 2 1 600CE285
P 9300 4200
F 0 "U1" H 9300 4567 50  0000 C CNN
F 1 "MAX4392" H 9300 4476 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9300 4200 50  0001 C CNN
F 3 "~" H 9300 4200 50  0001 C CNN
	2    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U1
U 3 1 600CF0FA
P 5750 6100
F 0 "U1" H 5708 6146 50  0000 L CNN
F 1 "MAX4392" H 5708 6055 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5750 6100 50  0001 C CNN
F 3 "~" H 5750 6100 50  0001 C CNN
	3    5750 6100
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR041
U 1 1 600CFF8E
P 5650 6400
F 0 "#PWR041" H 5650 6500 50  0001 C CNN
F 1 "-5V" H 5665 6573 50  0000 C CNN
F 2 "" H 5650 6400 50  0001 C CNN
F 3 "" H 5650 6400 50  0001 C CNN
	1    5650 6400
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR038
U 1 1 600D05EC
P 5650 5800
F 0 "#PWR038" H 5650 5650 50  0001 C CNN
F 1 "+5V" H 5665 5973 50  0000 C CNN
F 2 "" H 5650 5800 50  0001 C CNN
F 3 "" H 5650 5800 50  0001 C CNN
	1    5650 5800
	1    0    0    -1  
$EndComp
$Comp
L nime2020-library:+5V #PWR037
U 1 1 600D144F
P 6500 5750
F 0 "#PWR037" H 6500 5600 50  0001 C CNN
F 1 "+5V" H 6515 5923 50  0000 C CNN
F 2 "" H 6500 5750 50  0001 C CNN
F 3 "" H 6500 5750 50  0001 C CNN
	1    6500 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 600D1FED
P 6500 5900
F 0 "C9" H 6615 5946 50  0000 L CNN
F 1 "C" H 6615 5855 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6538 5750 50  0001 C CNN
F 3 "~" H 6500 5900 50  0001 C CNN
	1    6500 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 600D28E8
P 6500 6200
F 0 "C10" H 6615 6246 50  0000 L CNN
F 1 "C" H 6615 6155 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6538 6050 50  0001 C CNN
F 3 "~" H 6500 6200 50  0001 C CNN
	1    6500 6200
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR040
U 1 1 600D2B69
P 6500 6350
F 0 "#PWR040" H 6500 6450 50  0001 C CNN
F 1 "-5V" H 6515 6523 50  0000 C CNN
F 2 "" H 6500 6350 50  0001 C CNN
F 3 "" H 6500 6350 50  0001 C CNN
	1    6500 6350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 600D2FDF
P 6500 6050
F 0 "#PWR039" H 6500 5800 50  0001 C CNN
F 1 "GND" V 6505 5922 50  0000 R CNN
F 2 "" H 6500 6050 50  0001 C CNN
F 3 "" H 6500 6050 50  0001 C CNN
	1    6500 6050
	0    1    1    0   
$EndComp
Connection ~ 6500 6050
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 600F71A2
P 4050 6450
F 0 "J11" H 4130 6492 50  0000 L CNN
F 1 "Conn_01x03" H 4130 6401 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x03_P2.54mm_Vertical" H 4050 6450 50  0001 C CNN
F 3 "~" H 4050 6450 50  0001 C CNN
	1    4050 6450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB1
U 1 1 600F7D46
P 3850 6200
F 0 "FB1" H 3987 6246 50  0000 L CNN
F 1 "Ferrite_Bead" H 3987 6155 50  0000 L CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 6200 50  0001 C CNN
F 3 "~" H 3850 6200 50  0001 C CNN
	1    3850 6200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB2
U 1 1 600F8F29
P 3850 6700
F 0 "FB2" H 3987 6746 50  0000 L CNN
F 1 "Ferrite_Bead" H 3987 6655 50  0000 L CNN
F 2 "synkie_footprints:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 6700 50  0001 C CNN
F 3 "~" H 3850 6700 50  0001 C CNN
	1    3850 6700
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0101
U 1 1 600F93C1
P 3850 6850
F 0 "#PWR0101" H 3850 6950 50  0001 C CNN
F 1 "-5V" H 3865 7023 50  0000 C CNN
F 2 "" H 3850 6850 50  0001 C CNN
F 3 "" H 3850 6850 50  0001 C CNN
	1    3850 6850
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR0102
U 1 1 600F975C
P 3850 6050
F 0 "#PWR0102" H 3850 5900 50  0001 C CNN
F 1 "+5V" H 3865 6223 50  0000 C CNN
F 2 "" H 3850 6050 50  0001 C CNN
F 3 "" H 3850 6050 50  0001 C CNN
	1    3850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 600F9C34
P 3850 6450
F 0 "#PWR0103" H 3850 6200 50  0001 C CNN
F 1 "GND" V 3855 6322 50  0000 R CNN
F 2 "" H 3850 6450 50  0001 C CNN
F 3 "" H 3850 6450 50  0001 C CNN
	1    3850 6450
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 600A1222
P 5500 3500
F 0 "C7" H 5615 3546 50  0000 L CNN
F 1 "1u" H 5615 3455 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5538 3350 50  0001 C CNN
F 3 "~" H 5500 3500 50  0001 C CNN
	1    5500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3200 5650 3200
Wire Wire Line
	5650 3200 5650 3500
$Comp
L power:GND #PWR0104
U 1 1 600A29F7
P 7550 3200
F 0 "#PWR0104" H 7550 2950 50  0001 C CNN
F 1 "GND" H 7555 3027 50  0000 C CNN
F 2 "" H 7550 3200 50  0001 C CNN
F 3 "" H 7550 3200 50  0001 C CNN
	1    7550 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 600A34B0
P 6550 3300
F 0 "#PWR0105" H 6550 3050 50  0001 C CNN
F 1 "GND" H 6555 3127 50  0000 C CNN
F 2 "" H 6550 3300 50  0001 C CNN
F 3 "" H 6550 3300 50  0001 C CNN
	1    6550 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 600A40AA
P 5800 3500
F 0 "C8" H 5915 3546 50  0000 L CNN
F 1 "1u" H 5915 3455 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5838 3350 50  0001 C CNN
F 3 "~" H 5800 3500 50  0001 C CNN
	1    5800 3500
	0    1    1    0   
$EndComp
Connection ~ 5650 3500
Wire Wire Line
	5950 3500 6550 3500
$Comp
L power:GND #PWR0106
U 1 1 600A5234
P 6550 3600
F 0 "#PWR0106" H 6550 3350 50  0001 C CNN
F 1 "GND" H 6555 3427 50  0000 C CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3500 8050 3500
Wire Wire Line
	8050 3500 8050 2550
Wire Wire Line
	8050 2550 6100 2550
Wire Wire Line
	6100 2550 6100 3900
Wire Wire Line
	6100 3900 6550 3900
Text Label 6550 4300 2    50   ~ 0
porch
Wire Wire Line
	7550 3800 8650 3800
Connection ~ 8650 3800
Wire Wire Line
	8650 3800 8650 3200
$Comp
L Device:R R4
U 1 1 600A7CE4
P 8900 3750
F 0 "R4" H 8830 3704 50  0000 R CNN
F 1 "200" H 8830 3795 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8830 3750 50  0001 C CNN
F 3 "~" H 8900 3750 50  0001 C CNN
	1    8900 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 600A8311
P 8900 3900
F 0 "#PWR0107" H 8900 3650 50  0001 C CNN
F 1 "GND" V 8905 3772 50  0000 R CNN
F 2 "" H 8900 3900 50  0001 C CNN
F 3 "" H 8900 3900 50  0001 C CNN
	1    8900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 600A8BF4
P 9250 3600
F 0 "R3" H 9180 3554 50  0000 R CNN
F 1 "200" H 9180 3645 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9180 3600 50  0001 C CNN
F 3 "~" H 9250 3600 50  0001 C CNN
	1    9250 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 3600 9400 3600
Wire Wire Line
	9100 3600 8900 3600
Connection ~ 8900 3600
$Comp
L Device:R R5
U 1 1 600AAC5F
P 9300 4500
F 0 "R5" H 9230 4454 50  0000 R CNN
F 1 "200" H 9230 4545 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9230 4500 50  0001 C CNN
F 3 "~" H 9300 4500 50  0001 C CNN
	1    9300 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 4500 9450 4500
Wire Wire Line
	9150 4500 9000 4500
$Comp
L Device:R R6
U 1 1 600AC82A
P 9000 4650
F 0 "R6" H 8930 4604 50  0000 R CNN
F 1 "200" H 8930 4695 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8930 4650 50  0001 C CNN
F 3 "~" H 9000 4650 50  0001 C CNN
	1    9000 4650
	-1   0    0    1   
$EndComp
Connection ~ 9000 4500
$Comp
L power:GND #PWR0108
U 1 1 600ACE03
P 9000 4800
F 0 "#PWR0108" H 9000 4550 50  0001 C CNN
F 1 "GND" V 9005 4672 50  0000 R CNN
F 2 "" H 9000 4800 50  0001 C CNN
F 3 "" H 9000 4800 50  0001 C CNN
	1    9000 4800
	1    0    0    -1  
$EndComp
Text Label 1250 2050 0    50   ~ 0
genlock-input
$EndSCHEMATC
