EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title "vMIX20-Levelmeter"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Anyma_Library:AnymaISP U7
U 1 1 5FF475BD
P 6650 4500
F 0 "U7" H 6978 4696 50  0000 L CNN
F 1 "AnymaISP" H 6978 4605 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x06_P2.54mm_Vertical" H 6650 4500 50  0001 C CNN
F 3 "" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5FF48123
P 6550 4100
F 0 "#PWR0146" H 6550 3850 50  0001 C CNN
F 1 "GND" V 6555 3972 50  0000 R CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0147
U 1 1 5FF48972
P 6550 4200
F 0 "#PWR0147" H 6550 4050 50  0001 C CNN
F 1 "VCC" V 6568 4327 50  0000 L CNN
F 2 "" H 6550 4200 50  0001 C CNN
F 3 "" H 6550 4200 50  0001 C CNN
	1    6550 4200
	0    -1   -1   0   
$EndComp
Text Label 6550 4300 2    50   ~ 0
reset
Text Label 6550 4400 2    50   ~ 0
sck
Text Label 6550 4500 2    50   ~ 0
miso
Text Label 6550 4600 2    50   ~ 0
mosi
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5FF6F89C
P 5300 1300
F 0 "J1" H 5380 1342 50  0000 L CNN
F 1 "pixels" H 5380 1251 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5300 1300 50  0001 C CNN
F 3 "~" H 5300 1300 50  0001 C CNN
	1    5300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1300 4900 1300
$Comp
L power:GND #PWR0158
U 1 1 5FF723D8
P 5100 1400
F 0 "#PWR0158" H 5100 1150 50  0001 C CNN
F 1 "GND" H 5105 1227 50  0000 C CNN
F 2 "" H 5100 1400 50  0001 C CNN
F 3 "" H 5100 1400 50  0001 C CNN
	1    5100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0159
U 1 1 5FF7350D
P 5100 1200
F 0 "#PWR0159" H 5100 1050 50  0001 C CNN
F 1 "VCC" H 5117 1373 50  0000 C CNN
F 2 "" H 5100 1200 50  0001 C CNN
F 3 "" H 5100 1200 50  0001 C CNN
	1    5100 1200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5FC3E4C8
P 5300 1300
F 0 "J2" H 5380 1342 50  0000 L CNN
F 1 "pixels" H 5380 1251 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5300 1300 50  0001 C CNN
F 3 "~" H 5300 1300 50  0001 C CNN
	1    5300 1300
	1    0    0    -1  
$EndComp
Connection ~ 5100 1200
Connection ~ 5100 1300
Connection ~ 5100 1400
$Comp
L Anyma_Library:AnymaISP U1
U 1 1 5FC3EBB7
P 6650 4500
F 0 "U1" H 6978 4696 50  0000 L CNN
F 1 "AnymaISP" H 6978 4605 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x06_P2.54mm_Vertical" H 6650 4500 50  0001 C CNN
F 3 "" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
Connection ~ 6550 4100
Connection ~ 6550 4200
$EndSCHEMATC
