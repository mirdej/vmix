EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L synkie_symbols:CP_Small C602
U 1 1 5FA6FE65
P 2600 4650
F 0 "C602" V 2375 4650 50  0000 C CNN
F 1 "10u" V 2466 4650 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2600 4650 50  0001 C CNN
F 3 "~" H 2600 4650 50  0001 C CNN
	1    2600 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB602
U 1 1 5DCE4D3A
P 2350 4850
F 0 "FB602" V 2500 4850 50  0000 C CNN
F 1 "330u" V 2600 4850 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4850 50  0001 C CNN
F 3 "~" H 2350 4850 50  0001 C CNN
	1    2350 4850
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB601
U 1 1 5DCE4D39
P 2350 4650
F 0 "FB601" V 2076 4650 50  0000 C CNN
F 1 "330u" V 2167 4650 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4650 50  0001 C CNN
F 3 "~" H 2350 4650 50  0001 C CNN
	1    2350 4650
	0    -1   1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0604
U 1 1 5FA6FE67
P 2900 4750
F 0 "#PWR0604" H 2900 4500 50  0001 C CNN
F 1 "GND" H 2905 4577 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "" H 2900 4750 50  0001 C CNN
	1    2900 4750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0606
U 1 1 5DCE4D3F
P 2500 5200
F 0 "#PWR0606" H 2500 5300 50  0001 C CNN
F 1 "-5V" H 2500 5350 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0601
U 1 1 5DCB58DB
P 2500 4350
F 0 "#PWR0601" H 2500 4200 50  0001 C CNN
F 1 "+5V" H 2500 4500 50  0000 C CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
	1    2500 4350
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:PWR_FLAG #FLG0601
U 1 1 5DCB666B
P 2900 4750
F 0 "#FLG0601" H 2900 4825 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 4950 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C604
U 1 1 5FA6FE66
P 2600 4850
F 0 "C604" V 2450 4850 50  0000 C CNN
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
L synkie_symbols:ADR510 U601
U 1 1 5FA6FE70
P 3450 6200
F 0 "U601" H 3678 6246 50  0000 L CNN
F 1 "ADR510" H 3678 6155 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 3000 6100 50  0001 C CNN
F 3 "" H 3000 6100 50  0001 C CNN
	1    3450 6200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX5741 U602
U 1 1 5FA6FE71
P 2550 6750
F 0 "U602" H 2150 6400 50  0000 C CNN
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
L power:+5V #PWR0609
U 1 1 5FA6FE72
P 2550 6350
F 0 "#PWR0609" H 2550 6200 50  0001 C CNN
F 1 "+5V" H 2565 6523 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6100 2450 6350
$Comp
L power:+5V #PWR0607
U 1 1 5FA6FE73
P 2450 5800
F 0 "#PWR0607" H 2450 5650 50  0001 C CNN
F 1 "+5V" H 2465 5973 50  0000 C CNN
F 2 "" H 2450 5800 50  0001 C CNN
F 3 "" H 2450 5800 50  0001 C CNN
	1    2450 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R601
U 1 1 5FA6FE74
P 2450 5950
F 0 "R601" H 2520 5996 50  0000 L CNN
F 1 "560" H 2520 5905 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 5950 50  0001 C CNN
F 3 "~" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
Connection ~ 2450 6100
Wire Wire Line
	2450 6100 3150 6100
Text Label 3050 6550 0    50   ~ 0
dac_a
Text Label 3050 6650 0    50   ~ 0
dac_b
$Comp
L power:GND #PWR0610
U 1 1 5FA8A697
P 2550 7150
F 0 "#PWR0610" H 2550 6900 50  0001 C CNN
F 1 "GND" H 2555 6977 50  0000 C CNN
F 2 "" H 2550 7150 50  0001 C CNN
F 3 "" H 2550 7150 50  0001 C CNN
	1    2550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0608
U 1 1 5FA8AEE8
P 3150 6200
F 0 "#PWR0608" H 3150 5950 50  0001 C CNN
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
Text Label 7850 2750 2    50   ~ 0
dac_c
Text Label 7850 3550 2    50   ~ 0
dac_d
$Comp
L synkie_symbols:CP_Small C601
U 1 1 5FAC0268
P 3750 4600
F 0 "C601" V 3525 4600 50  0000 C CNN
F 1 "10u" V 3616 4600 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3750 4600 50  0001 C CNN
F 3 "~" H 3750 4600 50  0001 C CNN
	1    3750 4600
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C603
U 1 1 5FAC1380
P 3750 4800
F 0 "C603" V 3525 4800 50  0000 C CNN
F 1 "10u" V 3616 4800 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 3750 4800 50  0001 C CNN
F 3 "~" H 3750 4800 50  0001 C CNN
	1    3750 4800
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0603
U 1 1 5FAC1980
P 3750 4700
F 0 "#PWR0603" H 3750 4450 50  0001 C CNN
F 1 "GND" H 3755 4527 50  0000 C CNN
F 2 "" H 3750 4700 50  0001 C CNN
F 3 "" H 3750 4700 50  0001 C CNN
	1    3750 4700
	0    1    -1   0   
$EndComp
Connection ~ 3750 4700
$Comp
L synkie_symbols:+5V #PWR0602
U 1 1 5FAC2177
P 3750 4500
F 0 "#PWR0602" H 3750 4350 50  0001 C CNN
F 1 "+5V" H 3750 4650 50  0000 C CNN
F 2 "" H 3750 4500 50  0001 C CNN
F 3 "" H 3750 4500 50  0001 C CNN
	1    3750 4500
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0605
U 1 1 5FAC27A1
P 3750 4900
F 0 "#PWR0605" H 3750 5000 50  0001 C CNN
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
F1 "vm101-mixunit.sch" 50
F2 "DAC" I L 7850 2100 50 
F3 "CV" I L 7850 2200 50 
F4 "Input" I L 7850 2300 50 
F5 "Output" O R 8350 2200 50 
$EndSheet
$Sheet
S 7850 2700 500  300 
U 5FA82020
F0 "MixUnit3" 50
F1 "vm101-mixunit.sch" 50
F2 "DAC" I L 7850 2750 50 
F3 "CV" I L 7850 2850 50 
F4 "Input" I L 7850 2950 50 
F5 "Output" O R 8350 2850 50 
$EndSheet
$Sheet
S 7850 3500 500  300 
U 5FA8A96F
F0 "MixUnit4" 50
F1 "vm101-mixunit.sch" 50
F2 "DAC" I L 7850 3550 50 
F3 "CV" I L 7850 3650 50 
F4 "Input" I L 7850 3750 50 
F5 "Output" O R 8350 3650 50 
$EndSheet
$Sheet
S 7850 1450 500  300 
U 5FA6FAA9
F0 "MixUnit1" 50
F1 "vm101-mixunit.sch" 50
F2 "DAC" I L 7850 1500 50 
F3 "CV" I L 7850 1600 50 
F4 "Input" I L 7850 1700 50 
F5 "Output" O R 8350 1600 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x03 J601
U 1 1 5FEF00D9
P 1150 6750
F 0 "J601" H 1230 6792 50  0000 L CNN
F 1 "Conn_01x03" H 1230 6701 50  0000 L CNN
F 2 "synkie_footprints:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1150 6750 50  0001 C CNN
F 3 "~" H 1150 6750 50  0001 C CNN
	1    1150 6750
	1    0    0    -1  
$EndComp
Text Label 950  6650 2    50   ~ 0
dac_select
Text Label 950  6750 2    50   ~ 0
sck
Text Label 950  6850 2    50   ~ 0
mosi
Text HLabel 7150 1700 0    50   Input ~ 0
INPUT
Wire Wire Line
	7850 1700 7150 1700
Wire Wire Line
	7150 1700 7150 2300
Wire Wire Line
	7150 3750 7850 3750
Wire Wire Line
	7850 2300 7150 2300
Connection ~ 7150 2300
Wire Wire Line
	7150 2300 7150 2950
Wire Wire Line
	7850 2950 7150 2950
Connection ~ 7150 2950
Wire Wire Line
	7150 2950 7150 3750
Text GLabel 8350 1600 2    50   Input ~ 0
out_a
Text GLabel 8350 2200 2    50   Input ~ 0
out_b
Text GLabel 8350 2850 2    50   Input ~ 0
out_c
Text GLabel 8350 3650 2    50   Input ~ 0
out_d
Text GLabel 7850 1600 0    50   Input ~ 0
cv_a
Text GLabel 7850 2200 0    50   Input ~ 0
cv_b
Text GLabel 7850 2850 0    50   Input ~ 0
cv_c
Text GLabel 7850 3650 0    50   Input ~ 0
cv_d
$EndSCHEMATC
