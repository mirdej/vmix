EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L synkie_symbols:R R?
U 1 1 5FEA7A0E
P 1750 2800
F 0 "R?" H 1680 2754 50  0000 R CNN
F 1 "75" H 1680 2845 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 2800 50  0001 C CNN
F 3 "~" H 1750 2800 50  0001 C CNN
	1    1750 2800
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0195
U 1 1 5FEA7A14
P 1750 2950
F 0 "#PWR0195" H 1750 2700 50  0001 C CNN
F 1 "GND" H 1755 2777 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7A1B
P 1900 2650
F 0 "R?" V 2107 2650 50  0000 C CNN
F 1 "75" V 2016 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1830 2650 50  0001 C CNN
F 3 "~" H 1900 2650 50  0001 C CNN
	1    1900 2650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D?
U 1 1 5FEA7A22
P 2200 2650
F 0 "D?" V 2246 2572 50  0000 R CNN
F 1 "BAT54S" V 2155 2572 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2275 2775 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 2080 2650 50  0001 C CNN
	1    2200 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2650 2200 2650
$Comp
L synkie_symbols:+5V #PWR0196
U 1 1 5FEA7A29
P 2200 2350
F 0 "#PWR0196" H 2200 2200 50  0001 C CNN
F 1 "+5V" H 2215 2523 50  0000 C CNN
F 2 "" H 2200 2350 50  0001 C CNN
F 3 "" H 2200 2350 50  0001 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0197
U 1 1 5FEA7A2F
P 2200 2950
F 0 "#PWR0197" H 2200 3050 50  0001 C CNN
F 1 "-5V" H 2215 3123 50  0000 C CNN
F 2 "" H 2200 2950 50  0001 C CNN
F 3 "" H 2200 2950 50  0001 C CNN
	1    2200 2950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7A35
P 2950 2650
F 0 "R?" V 3157 2650 50  0000 C CNN
F 1 "75" V 3066 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2650 50  0001 C CNN
F 3 "~" H 2950 2650 50  0001 C CNN
	1    2950 2650
	0    -1   -1   0   
$EndComp
Connection ~ 2200 2650
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FEA7A3C
P 3500 3300
F 0 "U?" H 3500 3667 50  0000 C CNN
F 1 "LMH6643" H 3500 3576 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3500 3300 50  0001 C CNN
F 3 "~" H 3500 3300 50  0001 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2850 3100 3000
Wire Wire Line
	8000 3550 8000 3750
Wire Wire Line
	8600 3750 8600 3450
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FEA7A45
P 3400 2750
F 0 "U?" H 3400 3117 50  0000 C CNN
F 1 "LMH6643" H 3400 3026 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 2750 50  0001 C CNN
F 3 "~" H 3400 2750 50  0001 C CNN
	2    3400 2750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0198
U 1 1 5FEA7A4B
P 5850 2400
F 0 "#PWR0198" H 5850 2150 50  0001 C CNN
F 1 "GND" H 5855 2227 50  0000 C CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0199
U 1 1 5FEA7A51
P 5350 2100
F 0 "#PWR0199" H 5350 1950 50  0001 C CNN
F 1 "+5V" H 5365 2273 50  0000 C CNN
F 2 "" H 5350 2100 50  0001 C CNN
F 3 "" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0200
U 1 1 5FEA7A57
P 5350 3900
F 0 "#PWR0200" H 5350 3650 50  0001 C CNN
F 1 "GND" H 5355 3727 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0201
U 1 1 5FEA7A5D
P 5450 3900
F 0 "#PWR0201" H 5450 4000 50  0001 C CNN
F 1 "-5V" H 5465 4073 50  0000 C CNN
F 2 "" H 5450 3900 50  0001 C CNN
F 3 "" H 5450 3900 50  0001 C CNN
	1    5450 3900
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0202
U 1 1 5FEA7A64
P 4850 3300
F 0 "#PWR0202" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4855 3127 50  0000 C CNN
F 2 "" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0203
U 1 1 5FEA7A6A
P 4850 2500
F 0 "#PWR0203" H 4850 2250 50  0001 C CNN
F 1 "GND" H 4855 2327 50  0000 C CNN
F 2 "" H 4850 2500 50  0001 C CNN
F 3 "" H 4850 2500 50  0001 C CNN
	1    4850 2500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7A70
P 8750 3450
F 0 "R?" V 8957 3450 50  0000 C CNN
F 1 "75" V 8866 3450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 3450 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	0    -1   -1   0   
$EndComp
Connection ~ 8600 3450
$Comp
L synkie_symbols:GND #PWR0204
U 1 1 5FEA7A83
P 4850 2800
F 0 "#PWR0204" H 4850 2550 50  0001 C CNN
F 1 "GND" H 4855 2627 50  0000 C CNN
F 2 "" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
	1    4850 2800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0205
U 1 1 5FEA7A8B
P 4850 3000
F 0 "#PWR0205" H 4850 2750 50  0001 C CNN
F 1 "GND" H 4855 2827 50  0000 C CNN
F 2 "" H 4850 3000 50  0001 C CNN
F 3 "" H 4850 3000 50  0001 C CNN
	1    4850 3000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7A92
P 4200 3450
F 0 "R?" V 4407 3450 50  0000 C CNN
F 1 "560" V 4316 3450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4130 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0206
U 1 1 5FEA7A98
P 4200 3600
F 0 "#PWR0206" H 4200 3350 50  0001 C CNN
F 1 "GND" H 4205 3427 50  0000 C CNN
F 2 "" H 4200 3600 50  0001 C CNN
F 3 "" H 4200 3600 50  0001 C CNN
	1    4200 3600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7A9E
P 3850 2750
F 0 "R?" H 3920 2796 50  0000 L CNN
F 1 "75" H 3920 2705 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 2750 50  0001 C CNN
F 3 "~" H 3850 2750 50  0001 C CNN
	1    3850 2750
	0    1    1    0   
$EndComp
Connection ~ 3700 2750
Wire Wire Line
	3700 2750 3700 3000
Wire Wire Line
	3100 3000 3700 3000
$Comp
L Connector:TestPoint TP?
U 1 1 5FEA7AA7
P 6350 2450
F 0 "TP?" H 6408 2568 50  0000 L CNN
F 1 "TestPoint" H 6600 2600 50  0001 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 6550 2450 50  0001 C CNN
F 3 "~" H 6550 2450 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2400 4850 2400
Wire Wire Line
	4450 3100 4850 3100
Wire Wire Line
	4200 3300 4550 3300
Wire Wire Line
	4550 3300 4550 2700
Wire Wire Line
	4550 2700 4850 2700
Connection ~ 4200 3300
Wire Wire Line
	2200 2650 2800 2650
Wire Wire Line
	5850 2700 6150 2700
Wire Wire Line
	6150 2700 6150 2450
Wire Wire Line
	6150 2450 6350 2450
Connection ~ 6350 2450
Wire Wire Line
	6350 2450 6450 2450
$Comp
L 4xxx:4053 U?
U 1 1 5FEA7AC1
P 5350 3000
F 0 "U?" H 5150 3800 50  0000 C CNN
F 1 "4053" H 5800 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5350 3000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 5350 3000 50  0001 C CNN
	1    5350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5000 7450 4700
Wire Wire Line
	3200 3400 3200 3600
Wire Wire Line
	3200 3600 3800 3600
Wire Wire Line
	3800 3600 3800 3300
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FEA7AFD
P 8300 3450
F 0 "U?" H 8300 3817 50  0000 C CNN
F 1 "LMH6643" H 8300 3726 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	2    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B03
P 3050 3200
F 0 "R?" V 3257 3200 50  0000 C CNN
F 1 "75" V 3166 3200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 3200 50  0001 C CNN
F 3 "~" H 3050 3200 50  0001 C CNN
	1    3050 3200
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B09
P 2900 3350
F 0 "R?" H 2830 3304 50  0000 R CNN
F 1 "(75)" H 2830 3395 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 3350 50  0001 C CNN
F 3 "~" H 2900 3350 50  0001 C CNN
	1    2900 3350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0210
U 1 1 5FEA7B0F
P 2900 3500
F 0 "#PWR0210" H 2900 3250 50  0001 C CNN
F 1 "GND" H 2905 3327 50  0000 C CNN
F 2 "" H 2900 3500 50  0001 C CNN
F 3 "" H 2900 3500 50  0001 C CNN
	1    2900 3500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B15
P 7700 3200
F 0 "R?" V 7907 3200 50  0000 C CNN
F 1 "3k" V 7816 3200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 4700 7550 4700
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B1D
P 7700 3500
F 0 "R?" V 7907 3500 50  0000 C CNN
F 1 "3k" V 7816 3500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 3500 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
	1    7700 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3350 7850 3350
Wire Wire Line
	7850 3350 7850 3200
Wire Wire Line
	7850 3500 7850 3350
Connection ~ 7850 3350
Wire Wire Line
	5850 3000 7550 3000
Wire Wire Line
	7550 3000 7550 3200
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B29
P 8300 3750
F 0 "R?" V 8507 3750 50  0000 C CNN
F 1 "3k" V 8416 3750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 3750 50  0001 C CNN
F 3 "~" H 8300 3750 50  0001 C CNN
	1    8300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3750 8150 3750
Wire Wire Line
	8600 3750 8450 3750
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7B31
P 8000 3900
F 0 "R?" V 8207 3900 50  0000 C CNN
F 1 "3k" V 8116 3900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 3900 50  0001 C CNN
F 3 "~" H 8000 3900 50  0001 C CNN
	1    8000 3900
	1    0    0    -1  
$EndComp
Connection ~ 8000 3750
$Comp
L synkie_symbols:GND #PWR0211
U 1 1 5FEA7B38
P 8000 4050
F 0 "#PWR0211" H 8000 3800 50  0001 C CNN
F 1 "GND" H 8005 3877 50  0000 C CNN
F 2 "" H 8000 4050 50  0001 C CNN
F 3 "" H 8000 4050 50  0001 C CNN
	1    8000 4050
	1    0    0    -1  
$EndComp
Text Label 6150 3000 0    50   ~ 0
clamped
Connection ~ 7450 4700
Wire Wire Line
	4450 2400 4450 2750
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEA7B48
P 3950 3300
F 0 "C?" V 3698 3300 50  0000 C CNN
F 1 "68p" V 3789 3300 50  0000 C CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3988 3150 50  0001 C CNN
F 3 "~" H 3950 3300 50  0001 C CNN
	1    3950 3300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEA7B4E
P 4300 2750
F 0 "C?" V 4048 2750 50  0000 C CNN
F 1 "100n" V 4139 2750 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 2600 50  0001 C CNN
F 3 "~" H 4300 2750 50  0001 C CNN
	1    4300 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3300 4200 3300
Wire Wire Line
	3850 3300 3800 3300
Connection ~ 3800 3300
Wire Wire Line
	4450 2750 4400 2750
Connection ~ 4450 2750
Wire Wire Line
	4450 2750 4450 3100
Wire Wire Line
	4000 2750 4200 2750
Text GLabel 2900 3200 0    50   Input ~ 0
genlock
Wire Wire Line
	8600 3450 8600 2850
Wire Wire Line
	8600 2850 8750 2850
Text GLabel 8750 2850 2    50   Input ~ 0
dry
Text HLabel 8900 3450 2    50   Input ~ 0
OUTPUT
Text GLabel 6450 2450 2    50   Input ~ 0
colorburst
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEB9428
P 2350 6150
AR Path="/5FEB9428" Ref="U?"  Part="3" 
AR Path="/5FE939A9/5FEB9428" Ref="U?"  Part="3" 
F 0 "U?" H 2350 6400 50  0000 L CNN
F 1 "LMH6643" H 2350 6300 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 6150 50  0001 C CNN
F 3 "~" H 2350 6150 50  0001 C CNN
	3    2350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6150 2050 6050
Wire Wire Line
	2050 6250 2050 6150
Connection ~ 2050 6150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEB9431
P 2050 6150
AR Path="/5FEB9431" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9431" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2050 5900 50  0001 C CNN
F 1 "GND" H 2055 5977 50  0001 C CNN
F 2 "" H 2050 6150 50  0001 C CNN
F 3 "" H 2050 6150 50  0001 C CNN
	1    2050 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 5850 2250 5850
Wire Wire Line
	2050 5850 2150 5850
Connection ~ 2150 5850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEB943A
P 2150 5850
AR Path="/5FEB943A" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB943A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 5700 50  0001 C CNN
F 1 "+5V" H 2150 6000 50  0000 C CNN
F 2 "" H 2150 5850 50  0001 C CNN
F 3 "" H 2150 5850 50  0001 C CNN
	1    2150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6450 2250 6450
Wire Wire Line
	2050 6450 2150 6450
Connection ~ 2150 6450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEB9443
P 2150 6450
AR Path="/5FEB9443" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9443" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 6550 50  0001 C CNN
F 1 "-5V" H 2150 6600 50  0000 C CNN
F 2 "" H 2150 6450 50  0001 C CNN
F 3 "" H 2150 6450 50  0001 C CNN
	1    2150 6450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB9449
P 2050 6350
AR Path="/5FEB9449" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB9449" Ref="C?"  Part="1" 
F 0 "C?" V 2150 6350 50  0000 C CNN
F 1 "100n" V 1912 6350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2050 6350 50  0001 C CNN
F 3 "~" H 2050 6350 50  0001 C CNN
	1    2050 6350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB944F
P 2050 5950
AR Path="/5FEB944F" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB944F" Ref="C?"  Part="1" 
F 0 "C?" V 2150 5950 50  0000 C CNN
F 1 "100n" V 1912 5950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2050 5950 50  0001 C CNN
F 3 "~" H 2050 5950 50  0001 C CNN
	1    2050 5950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEB9455
P 3300 6150
AR Path="/5FEB9455" Ref="U?"  Part="3" 
AR Path="/5FE939A9/5FEB9455" Ref="U?"  Part="3" 
F 0 "U?" H 3300 6400 50  0000 L CNN
F 1 "LMH6643" H 3300 6300 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3300 6150 50  0001 C CNN
F 3 "~" H 3300 6150 50  0001 C CNN
	3    3300 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6150 3000 6050
Wire Wire Line
	3000 6250 3000 6150
Connection ~ 3000 6150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEB945E
P 3000 6150
AR Path="/5FEB945E" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB945E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 5900 50  0001 C CNN
F 1 "GND" H 3005 5977 50  0001 C CNN
F 2 "" H 3000 6150 50  0001 C CNN
F 3 "" H 3000 6150 50  0001 C CNN
	1    3000 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 5850 3200 5850
Wire Wire Line
	3000 5850 3100 5850
Connection ~ 3100 5850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEB9467
P 3100 5850
AR Path="/5FEB9467" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9467" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 5700 50  0001 C CNN
F 1 "+5V" H 3100 6000 50  0000 C CNN
F 2 "" H 3100 5850 50  0001 C CNN
F 3 "" H 3100 5850 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6450 3200 6450
Wire Wire Line
	3000 6450 3100 6450
Connection ~ 3100 6450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEB9470
P 3100 6450
AR Path="/5FEB9470" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9470" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 6550 50  0001 C CNN
F 1 "-5V" H 3100 6600 50  0000 C CNN
F 2 "" H 3100 6450 50  0001 C CNN
F 3 "" H 3100 6450 50  0001 C CNN
	1    3100 6450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB9476
P 3000 6350
AR Path="/5FEB9476" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB9476" Ref="C?"  Part="1" 
F 0 "C?" V 3100 6350 50  0000 C CNN
F 1 "100n" V 2862 6350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 6350 50  0001 C CNN
F 3 "~" H 3000 6350 50  0001 C CNN
	1    3000 6350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB947C
P 3000 5950
AR Path="/5FEB947C" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB947C" Ref="C?"  Part="1" 
F 0 "C?" V 3100 5950 50  0000 C CNN
F 1 "100n" V 2862 5950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 5950 50  0001 C CNN
F 3 "~" H 3000 5950 50  0001 C CNN
	1    3000 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 6150 4300 6050
Wire Wire Line
	4300 6250 4300 6150
Connection ~ 4300 6150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEB9485
P 4300 6150
AR Path="/5FEB9485" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9485" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 5900 50  0001 C CNN
F 1 "GND" H 4305 5977 50  0001 C CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB948B
P 4300 6350
AR Path="/5FEB948B" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB948B" Ref="C?"  Part="1" 
F 0 "C?" V 4400 6350 50  0000 C CNN
F 1 "100n" V 4162 6350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 6350 50  0001 C CNN
F 3 "~" H 4300 6350 50  0001 C CNN
	1    4300 6350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEB9491
P 4300 5950
AR Path="/5FEB9491" Ref="C?"  Part="1" 
AR Path="/5FE939A9/5FEB9491" Ref="C?"  Part="1" 
F 0 "C?" V 4400 5950 50  0000 C CNN
F 1 "100n" V 4162 5950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4300 5950 50  0001 C CNN
F 3 "~" H 4300 5950 50  0001 C CNN
	1    4300 5950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEB9497
P 4300 5850
AR Path="/5FEB9497" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB9497" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 5700 50  0001 C CNN
F 1 "+5V" H 4300 6000 50  0000 C CNN
F 2 "" H 4300 5850 50  0001 C CNN
F 3 "" H 4300 5850 50  0001 C CNN
	1    4300 5850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEB949D
P 4300 6450
AR Path="/5FEB949D" Ref="#PWR?"  Part="1" 
AR Path="/5FE939A9/5FEB949D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 6550 50  0001 C CNN
F 1 "-5V" H 4300 6600 50  0000 C CNN
F 2 "" H 4300 6450 50  0001 C CNN
F 3 "" H 4300 6450 50  0001 C CNN
	1    4300 6450
	-1   0    0    1   
$EndComp
Text GLabel 4850 3600 0    50   Input ~ 0
hsync
Text GLabel 4850 3500 0    50   Input ~ 0
porch
Text GLabel 4850 3400 0    50   Input ~ 0
porch
Text HLabel 1750 2650 0    50   Input ~ 0
INPUT-Composite
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FEA7B3E
P 7150 4700
F 0 "U?" H 7150 4950 50  0000 L CNN
F 1 "LMH6643" H 7150 4850 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 7150 4700 50  0001 C CNN
F 3 "~" H 7150 4700 50  0001 C CNN
	1    7150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5000 7450 5000
Wire Wire Line
	6850 4800 6850 5000
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7AEF
P 6200 4750
F 0 "R?" H 6130 4704 50  0000 R CNN
F 1 "47k" H 6130 4795 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 4750 50  0001 C CNN
F 3 "~" H 6200 4750 50  0001 C CNN
	1    6200 4750
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0209
U 1 1 5FEA7AE9
P 6200 4900
F 0 "#PWR0209" H 6200 4650 50  0001 C CNN
F 1 "GND" H 6205 4727 50  0000 C CNN
F 2 "" H 6200 4900 50  0001 C CNN
F 3 "" H 6200 4900 50  0001 C CNN
	1    6200 4900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEA7AE3
P 6350 4600
F 0 "R?" V 6557 4600 50  0000 C CNN
F 1 "75" V 6466 4600 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 4600 50  0001 C CNN
F 3 "~" H 6350 4600 50  0001 C CNN
	1    6350 4600
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D?
U 1 1 5FEA7ADD
P 6650 4600
F 0 "D?" V 6696 4522 50  0000 R CNN
F 1 "BAT54S" V 6100 4750 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6725 4725 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6530 4600 50  0001 C CNN
	1    6650 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4600 6650 4600
$Comp
L synkie_symbols:+5V #PWR0208
U 1 1 5FEA7AD6
P 6650 4350
F 0 "#PWR0208" H 6650 4200 50  0001 C CNN
F 1 "+5V" H 6665 4523 50  0000 C CNN
F 2 "" H 6650 4350 50  0001 C CNN
F 3 "" H 6650 4350 50  0001 C CNN
	1    6650 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0207
U 1 1 5FEA7AD0
P 6650 4900
F 0 "#PWR0207" H 6650 5000 50  0001 C CNN
F 1 "-5V" H 6665 5073 50  0000 C CNN
F 2 "" H 6650 4900 50  0001 C CNN
F 3 "" H 6650 4900 50  0001 C CNN
	1    6650 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 4600 6650 4600
Connection ~ 6650 4600
Wire Wire Line
	7550 3500 7550 4700
Text HLabel 6200 4600 0    50   Input ~ 0
INPUT-Siff
$EndSCHEMATC
