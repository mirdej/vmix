EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
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
L synkie_symbols:ATtiny85-20SU U502
U 1 1 5FF4463A
P 5850 2650
F 0 "U502" H 4951 2696 50  0000 R CNN
F 1 "ATtiny85-20SU" H 4951 2605 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 5850 2650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5850 2650 50  0001 C CNN
	1    5850 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0506
U 1 1 5FF45742
P 5850 3250
F 0 "#PWR0506" H 5850 3000 50  0001 C CNN
F 1 "GND" H 5855 3077 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0503
U 1 1 5FF465C2
P 5850 2050
F 0 "#PWR0503" H 5850 1900 50  0001 C CNN
F 1 "VCC" H 5867 2223 50  0000 C CNN
F 2 "" H 5850 2050 50  0001 C CNN
F 3 "" H 5850 2050 50  0001 C CNN
	1    5850 2050
	-1   0    0    -1  
$EndComp
$Comp
L Anyma_Library:AnymaISP U503
U 1 1 5FF475BD
P 6650 4500
F 0 "U503" H 6978 4696 50  0000 L CNN
F 1 "AnymaISP" H 6978 4605 50  0000 L CNN
F 2 "anyma_footprints:Pinhead_SMD_6" H 6650 4500 50  0001 C CNN
F 3 "" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0508
U 1 1 5FF48123
P 6550 4100
F 0 "#PWR0508" H 6550 3850 50  0001 C CNN
F 1 "GND" V 6555 3972 50  0000 R CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0510
U 1 1 5FF48972
P 6550 4200
F 0 "#PWR0510" H 6550 4050 50  0001 C CNN
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
Text Label 4600 2550 2    50   ~ 0
sck
Wire Wire Line
	5250 2550 4750 2550
Wire Wire Line
	5250 2450 4600 2450
Wire Wire Line
	5250 2350 4900 2350
Text Label 4600 2350 2    50   ~ 0
mosi
Text Label 4600 2450 2    50   ~ 0
miso
Text Label 5250 2850 2    50   ~ 0
reset
$Comp
L synkie_symbols:Opamp_Dual_Generic U501
U 1 1 5FF4DE22
P 2700 2300
F 0 "U501" H 2700 2667 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 2700 2576 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2700 2300 50  0001 C CNN
F 3 "~" H 2700 2300 50  0001 C CNN
	1    2700 2300
	1    0    0    -1  
$EndComp
Text HLabel 2400 3000 0    50   Input ~ 0
INPUT
$Comp
L synkie_symbols:Opamp_Dual_Generic U501
U 2 1 5FF4F096
P 2700 3100
F 0 "U501" H 2850 2950 50  0000 C CNN
F 1 "Opamp_Dual_Generic" H 2750 2750 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2700 3100 50  0001 C CNN
F 3 "~" H 2700 3100 50  0001 C CNN
	2    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U501
U 3 1 5FF4FC2B
P 2300 5200
F 0 "U501" H 2258 5246 50  0000 L CNN
F 1 "Opamp_Dual_Generic" H 2258 5155 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2300 5200 50  0001 C CNN
F 3 "~" H 2300 5200 50  0001 C CNN
	3    2300 5200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C505
U 1 1 5FF505CF
P 2100 4900
F 0 "C505" V 1871 4900 50  0000 C CNN
F 1 "100n" V 1962 4900 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2100 4900 50  0001 C CNN
F 3 "~" H 2100 4900 50  0001 C CNN
	1    2100 4900
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C506
U 1 1 5FF50DE6
P 2100 5500
F 0 "C506" V 1871 5500 50  0000 C CNN
F 1 "100n" V 1962 5500 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2100 5500 50  0001 C CNN
F 3 "~" H 2100 5500 50  0001 C CNN
	1    2100 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0513
U 1 1 5FF51353
P 2000 5200
F 0 "#PWR0513" H 2000 4950 50  0001 C CNN
F 1 "GND" V 2005 5072 50  0000 R CNN
F 2 "" H 2000 5200 50  0001 C CNN
F 3 "" H 2000 5200 50  0001 C CNN
	1    2000 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4900 2000 5200
Connection ~ 2000 5200
Wire Wire Line
	2000 5200 2000 5500
$Comp
L synkie_symbols:+5V #PWR0512
U 1 1 5FF52A44
P 2200 4900
F 0 "#PWR0512" H 2200 4750 50  0001 C CNN
F 1 "+5V" H 2215 5073 50  0000 C CNN
F 2 "" H 2200 4900 50  0001 C CNN
F 3 "" H 2200 4900 50  0001 C CNN
	1    2200 4900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0514
U 1 1 5FF537EE
P 2200 5500
F 0 "#PWR0514" H 2200 5600 50  0001 C CNN
F 1 "-5V" H 2215 5673 50  0000 C CNN
F 2 "" H 2200 5500 50  0001 C CNN
F 3 "" H 2200 5500 50  0001 C CNN
	1    2200 5500
	-1   0    0    1   
$EndComp
Connection ~ 2200 5500
$Comp
L synkie_symbols:+5V #PWR0515
U 1 1 5FF549BB
P 2500 6400
F 0 "#PWR0515" H 2500 6250 50  0001 C CNN
F 1 "+5V" V 2515 6528 50  0000 L CNN
F 2 "" H 2500 6400 50  0001 C CNN
F 3 "" H 2500 6400 50  0001 C CNN
	1    2500 6400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Ferrite_Bead FB501
U 1 1 5FF550A8
P 2650 6400
F 0 "FB501" V 2376 6400 50  0000 C CNN
F 1 "Ferrit(flash levelmeter first)" V 2467 6400 50  0000 C CNN
F 2 "synkie_footprints:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6400
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0516
U 1 1 5FF56087
P 2800 6400
F 0 "#PWR0516" H 2800 6250 50  0001 C CNN
F 1 "VCC" V 2817 6528 50  0000 L CNN
F 2 "" H 2800 6400 50  0001 C CNN
F 3 "" H 2800 6400 50  0001 C CNN
	1    2800 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3200 2400 3400
Wire Wire Line
	2400 3400 3000 3400
Wire Wire Line
	3000 3400 3000 3100
Connection ~ 3000 3100
$Comp
L synkie_symbols:C_Small C503
U 1 1 5FF5F297
P 3450 3200
F 0 "C503" H 3542 3246 50  0000 L CNN
F 1 "C_Small" H 3542 3155 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 3200 50  0001 C CNN
F 3 "~" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3100 3450 3100
$Comp
L power:GND #PWR0507
U 1 1 5FF60022
P 3450 3300
F 0 "#PWR0507" H 3450 3050 50  0001 C CNN
F 1 "GND" H 3455 3127 50  0000 C CNN
F 2 "" H 3450 3300 50  0001 C CNN
F 3 "" H 3450 3300 50  0001 C CNN
	1    3450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3100 4500 2750
Wire Wire Line
	4500 2750 5250 2750
$Comp
L synkie_symbols:R R505
U 1 1 5FF62756
P 2700 2650
F 0 "R505" V 2600 2750 50  0000 C CNN
F 1 "3k3" V 2700 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2630 2650 50  0001 C CNN
F 3 "~" H 2700 2650 50  0001 C CNN
	1    2700 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3100 3000 2800
$Comp
L synkie_symbols:R R507
U 1 1 5FF6426B
P 3150 3100
F 0 "R507" V 3050 3200 50  0000 C CNN
F 1 "3k3" V 3150 3100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 3100 50  0001 C CNN
F 3 "~" H 3150 3100 50  0001 C CNN
	1    3150 3100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R504
U 1 1 5FF6572A
P 2250 2400
F 0 "R504" V 2150 2500 50  0000 C CNN
F 1 "3k3" V 2250 2400 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 2400 50  0001 C CNN
F 3 "~" H 2250 2400 50  0001 C CNN
	1    2250 2400
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R503
U 1 1 5FF659EA
P 3150 2300
F 0 "R503" V 3050 2400 50  0000 C CNN
F 1 "3k3" V 3150 2300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R501
U 1 1 5FF6634F
P 2250 2200
F 0 "R501" V 2150 2300 50  0000 C CNN
F 1 "3k3" V 2250 2200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 2200 50  0001 C CNN
F 3 "~" H 2250 2200 50  0001 C CNN
	1    2250 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2800 2100 2400
Wire Wire Line
	2100 2800 3000 2800
Wire Wire Line
	2550 2650 2400 2650
Wire Wire Line
	2400 2650 2400 2400
Connection ~ 2400 2400
Wire Wire Line
	3000 2650 3000 2300
Wire Wire Line
	2850 2650 3000 2650
Connection ~ 3000 2300
$Comp
L power:GND #PWR0504
U 1 1 5FF68605
P 2100 2200
F 0 "#PWR0504" H 2100 1950 50  0001 C CNN
F 1 "GND" V 2105 2072 50  0000 R CNN
F 2 "" H 2100 2200 50  0001 C CNN
F 3 "" H 2100 2200 50  0001 C CNN
	1    2100 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2300 3450 2300
Wire Wire Line
	3450 2300 3450 2650
$Comp
L synkie_symbols:C_Small C502
U 1 1 5FF6B4CC
P 3450 2750
F 0 "C502" H 3542 2796 50  0000 L CNN
F 1 "C_Small" H 3542 2705 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3450 2750 50  0001 C CNN
F 3 "~" H 3450 2750 50  0001 C CNN
	1    3450 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0505
U 1 1 5FF6B8F4
P 3450 2850
F 0 "#PWR0505" H 3450 2600 50  0001 C CNN
F 1 "GND" H 3455 2677 50  0000 C CNN
F 2 "" H 3450 2850 50  0001 C CNN
F 3 "" H 3450 2850 50  0001 C CNN
	1    3450 2850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R502
U 1 1 5FF6D4AB
P 4900 2200
F 0 "R502" V 4800 2300 50  0000 C CNN
F 1 "300" V 4900 2200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 2200 50  0001 C CNN
F 3 "~" H 4900 2200 50  0001 C CNN
	1    4900 2200
	-1   0    0    1   
$EndComp
Connection ~ 4900 2350
Wire Wire Line
	4900 2350 4600 2350
$Comp
L power:VCC #PWR0501
U 1 1 5FF743CB
P 5950 1200
F 0 "#PWR0501" H 5950 1050 50  0001 C CNN
F 1 "VCC" H 5967 1373 50  0000 C CNN
F 2 "" H 5950 1200 50  0001 C CNN
F 3 "" H 5950 1200 50  0001 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C501
U 1 1 5FF743D5
P 5950 1300
F 0 "C501" H 6042 1346 50  0000 L CNN
F 1 "100n" H 6042 1255 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5950 1300 50  0001 C CNN
F 3 "~" H 5950 1300 50  0001 C CNN
	1    5950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0502
U 1 1 5FF743DF
P 5950 1400
F 0 "#PWR0502" H 5950 1150 50  0001 C CNN
F 1 "GND" H 5955 1227 50  0000 C CNN
F 2 "" H 5950 1400 50  0001 C CNN
F 3 "" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
Text GLabel 3200 1150 0    50   Input ~ 0
vsync
Wire Wire Line
	3200 1150 4750 1150
Wire Wire Line
	4750 1150 4750 2550
Connection ~ 4750 2550
Wire Wire Line
	4750 2550 4600 2550
Connection ~ 2200 4900
$Comp
L synkie_symbols:R R506
U 1 1 5FD2660F
P 4100 2650
F 0 "R506" V 4000 2750 50  0000 C CNN
F 1 "75" V 4100 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 2650 50  0001 C CNN
F 3 "~" H 4100 2650 50  0001 C CNN
	1    4100 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2650 5250 2650
Wire Wire Line
	3950 2650 3450 2650
Connection ~ 3450 2650
$Comp
L synkie_symbols:R R508
U 1 1 5FD284EF
P 4100 3100
F 0 "R508" V 4000 3200 50  0000 C CNN
F 1 "75" V 4100 3100 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 3100 50  0001 C CNN
F 3 "~" H 4100 3100 50  0001 C CNN
	1    4100 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3100 4250 3100
Wire Wire Line
	3950 3100 3450 3100
Connection ~ 3450 3100
Text GLabel 4900 1800 2    50   Input ~ 0
pixels
Wire Wire Line
	4900 2050 4900 1800
$EndSCHEMATC
