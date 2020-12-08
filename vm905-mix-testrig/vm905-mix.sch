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
Text Label 7850 1600 2    50   ~ 0
cv_a
Text Label 7850 2200 2    50   ~ 0
cv_b
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
$Sheet
S 7850 2050 500  300 
U 5FA7E734
F0 "MixUnit2" 50
F1 "vm905-unit.sch" 50
F2 "DAC" I L 7850 2100 50 
F3 "CV" I L 7850 2200 50 
F4 "Input" I L 7850 2300 50 
F5 "Output" O R 8350 2200 50 
$EndSheet
$Sheet
S 7850 2700 500  300 
U 5FA82020
F0 "MixUnit3" 50
F1 "vm905-unit.sch" 50
F2 "DAC" I L 7850 2750 50 
F3 "CV" I L 7850 2850 50 
F4 "Input" I L 7850 2950 50 
F5 "Output" O R 8350 2850 50 
$EndSheet
$Sheet
S 7850 3500 500  300 
U 5FA8A96F
F0 "MixUnit4" 50
F1 "vm905-unit.sch" 50
F2 "DAC" I L 7850 3550 50 
F3 "CV" I L 7850 3650 50 
F4 "Input" I L 7850 3750 50 
F5 "Output" O R 8350 3650 50 
$EndSheet
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
L Mechanical:MountingHole_Pad H1
U 1 1 5FD1AE54
P 9800 5250
F 0 "H1" H 9900 5299 50  0000 L CNN
F 1 "MountingHole_Pad" H 9900 5208 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 9800 5250 50  0001 C CNN
F 3 "~" H 9800 5250 50  0001 C CNN
	1    9800 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 5FD1AE5E
P 9800 5350
F 0 "#PWR0187" H 9800 5100 50  0001 C CNN
F 1 "GND" H 9805 5177 50  0000 C CNN
F 2 "" H 9800 5350 50  0001 C CNN
F 3 "" H 9800 5350 50  0001 C CNN
	1    9800 5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FD1BCB2
P 9800 5900
F 0 "H3" H 9900 5949 50  0000 L CNN
F 1 "MountingHole_Pad" H 9900 5858 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 9800 5900 50  0001 C CNN
F 3 "~" H 9800 5900 50  0001 C CNN
	1    9800 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0189
U 1 1 5FD1BCBC
P 9800 6000
F 0 "#PWR0189" H 9800 5750 50  0001 C CNN
F 1 "GND" H 9805 5827 50  0000 C CNN
F 2 "" H 9800 6000 50  0001 C CNN
F 3 "" H 9800 6000 50  0001 C CNN
	1    9800 6000
	1    0    0    -1  
$EndComp
$Sheet
S 7850 1450 500  300 
U 5FA6FAA9
F0 "MixUnit" 50
F1 "vm905-unit.sch" 50
F2 "DAC" I L 7850 1500 50 
F3 "CV" I L 7850 1600 50 
F4 "Input" I L 7850 1700 50 
F5 "Output" O R 8350 1600 50 
$EndSheet
$Comp
L Connector:TestPoint TP3
U 1 1 5FCFE2C4
P 7300 5050
F 0 "TP3" V 7254 5238 50  0000 L CNN
F 1 "TestPoint" V 7345 5238 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5050 50  0001 C CNN
F 3 "~" H 7500 5050 50  0001 C CNN
	1    7300 5050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5FCFEB6E
P 7300 5200
F 0 "TP4" V 7254 5388 50  0000 L CNN
F 1 "TestPoint" V 7345 5388 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5200 50  0001 C CNN
F 3 "~" H 7500 5200 50  0001 C CNN
	1    7300 5200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5FCFEDCA
P 7300 5350
F 0 "TP5" V 7254 5538 50  0000 L CNN
F 1 "TestPoint" V 7345 5538 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5350 50  0001 C CNN
F 3 "~" H 7500 5350 50  0001 C CNN
	1    7300 5350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5FCFEDD4
P 7300 5500
F 0 "TP6" V 7254 5688 50  0000 L CNN
F 1 "TestPoint" V 7345 5688 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5500 50  0001 C CNN
F 3 "~" H 7500 5500 50  0001 C CNN
	1    7300 5500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5FCFF8DC
P 7300 5650
F 0 "TP7" V 7254 5838 50  0000 L CNN
F 1 "TestPoint" V 7345 5838 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5650 50  0001 C CNN
F 3 "~" H 7500 5650 50  0001 C CNN
	1    7300 5650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5FCFF8E6
P 7300 5800
F 0 "TP8" V 7254 5988 50  0000 L CNN
F 1 "TestPoint" V 7345 5988 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5800 50  0001 C CNN
F 3 "~" H 7500 5800 50  0001 C CNN
	1    7300 5800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5FCFF8F0
P 7300 5950
F 0 "TP9" V 7254 6138 50  0000 L CNN
F 1 "TestPoint" V 7345 6138 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 5950 50  0001 C CNN
F 3 "~" H 7500 5950 50  0001 C CNN
	1    7300 5950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5FCFF8FA
P 7300 6100
F 0 "TP10" V 7254 6288 50  0000 L CNN
F 1 "TestPoint" V 7345 6288 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 7500 6100 50  0001 C CNN
F 3 "~" H 7500 6100 50  0001 C CNN
	1    7300 6100
	0    1    1    0   
$EndComp
Text Label 7300 5050 2    50   ~ 0
input
Text Label 7300 5200 2    50   ~ 0
cv_a
Text Label 7300 5350 2    50   ~ 0
cv_b
Text Label 7300 5500 2    50   ~ 0
dac_select
Text Label 7300 5650 2    50   ~ 0
mosi
Text Label 7300 5800 2    50   ~ 0
cv_c
Text Label 7300 5950 2    50   ~ 0
cv_d
Text Label 7300 6100 2    50   ~ 0
sck
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FD09D09
P 2400 4750
F 0 "J1" H 2428 4776 50  0000 L CNN
F 1 "Conn_01x03_Female" H 2428 4685 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 2400 4750 50  0001 C CNN
F 3 "~" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5FD0AA08
P 2200 4750
F 0 "#PWR0124" H 2200 4500 50  0001 C CNN
F 1 "GND" V 2205 4622 50  0000 R CNN
F 2 "" H 2200 4750 50  0001 C CNN
F 3 "" H 2200 4750 50  0001 C CNN
	1    2200 4750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0102
U 1 1 5FD23803
P 2200 4650
F 0 "#PWR0102" H 2200 4500 50  0001 C CNN
F 1 "+5V" H 2200 4800 50  0000 C CNN
F 2 "" H 2200 4650 50  0001 C CNN
F 3 "" H 2200 4650 50  0001 C CNN
	1    2200 4650
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0103
U 1 1 5FD24151
P 2200 4850
F 0 "#PWR0103" H 2200 4950 50  0001 C CNN
F 1 "-5V" H 2200 5000 50  0000 C CNN
F 2 "" H 2200 4850 50  0001 C CNN
F 3 "" H 2200 4850 50  0001 C CNN
	1    2200 4850
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 5FD24B7F
P 5150 4050
F 0 "TP23" V 5104 4238 50  0000 L CNN
F 1 "TestPoint" V 5195 4238 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 5350 4050 50  0001 C CNN
F 3 "~" H 5350 4050 50  0001 C CNN
	1    5150 4050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 5FD24B89
P 5150 4200
F 0 "TP24" V 5104 4388 50  0000 L CNN
F 1 "TestPoint" V 5195 4388 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 5350 4200 50  0001 C CNN
F 3 "~" H 5350 4200 50  0001 C CNN
	1    5150 4200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 5FD24B93
P 5150 4350
F 0 "TP25" V 5104 4538 50  0000 L CNN
F 1 "TestPoint" V 5195 4538 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 5350 4350 50  0001 C CNN
F 3 "~" H 5350 4350 50  0001 C CNN
	1    5150 4350
	0    1    1    0   
$EndComp
Text Label 5150 4050 2    50   ~ 0
input
Text Label 5150 4200 2    50   ~ 0
cv_a
Text Label 5150 4350 2    50   ~ 0
cv_b
Text Label 5300 5450 2    50   ~ 0
dac_select
Text Label 5300 5550 2    50   ~ 0
mosi
Text Label 5150 4500 2    50   ~ 0
cv_c
Text Label 5150 4650 2    50   ~ 0
cv_d
Text Label 5300 5650 2    50   ~ 0
sck
$Comp
L Connector:TestPoint TP27
U 1 1 5FD24BBB
P 5150 4650
F 0 "TP27" V 5104 4838 50  0000 L CNN
F 1 "TestPoint" V 5195 4838 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 5350 4650 50  0001 C CNN
F 3 "~" H 5350 4650 50  0001 C CNN
	1    5150 4650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP26
U 1 1 5FD24BB1
P 5150 4500
F 0 "TP26" V 5104 4688 50  0000 L CNN
F 1 "TestPoint" V 5195 4688 50  0000 L CNN
F 2 "synkie_footprints:testpad-small" H 5350 4500 50  0001 C CNN
F 3 "~" H 5350 4500 50  0001 C CNN
	1    5150 4500
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FD28BE0
P 5500 5550
F 0 "J3" H 5472 5524 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5472 5433 50  0000 R CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5500 5550 50  0001 C CNN
F 3 "~" H 5500 5550 50  0001 C CNN
	1    5500 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FD2A0B0
P 5300 5750
F 0 "#PWR0104" H 5300 5500 50  0001 C CNN
F 1 "GND" V 5305 5622 50  0000 R CNN
F 2 "" H 5300 5750 50  0001 C CNN
F 3 "" H 5300 5750 50  0001 C CNN
	1    5300 5750
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FD312FC
P 9700 3900
F 0 "H2" H 9800 3949 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 3858 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 9700 3900 50  0001 C CNN
F 3 "~" H 9700 3900 50  0001 C CNN
	1    9700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FD31306
P 9700 4000
F 0 "#PWR0105" H 9700 3750 50  0001 C CNN
F 1 "GND" H 9705 3827 50  0000 C CNN
F 2 "" H 9700 4000 50  0001 C CNN
F 3 "" H 9700 4000 50  0001 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FD31310
P 9700 4550
F 0 "H4" H 9800 4599 50  0000 L CNN
F 1 "MountingHole_Pad" H 9800 4508 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 9700 4550 50  0001 C CNN
F 3 "~" H 9700 4550 50  0001 C CNN
	1    9700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FD3131A
P 9700 4650
F 0 "#PWR0106" H 9700 4400 50  0001 C CNN
F 1 "GND" H 9705 4477 50  0000 C CNN
F 2 "" H 9700 4650 50  0001 C CNN
F 3 "" H 9700 4650 50  0001 C CNN
	1    9700 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
