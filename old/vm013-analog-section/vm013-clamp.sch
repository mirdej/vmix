EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "vMIX20-Input Conditioning"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:R R404
U 1 1 5FEA7A0E
P 1750 2800
F 0 "R404" H 1680 2754 50  0000 R CNN
F 1 "75" H 1680 2845 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 2800 50  0001 C CNN
F 3 "~" H 1750 2800 50  0001 C CNN
	1    1750 2800
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0406
U 1 1 5FEA7A14
P 1750 2950
F 0 "#PWR0406" H 1750 2700 50  0001 C CNN
F 1 "GND" H 1755 2777 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R401
U 1 1 5FEA7A1B
P 1900 2650
F 0 "R401" V 2107 2650 50  0000 C CNN
F 1 "75" V 2016 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1830 2650 50  0001 C CNN
F 3 "~" H 1900 2650 50  0001 C CNN
	1    1900 2650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D401
U 1 1 5FEA7A22
P 2200 2650
F 0 "D401" V 2246 2572 50  0000 R CNN
F 1 "BAT54S" V 2155 2572 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2275 2775 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 2080 2650 50  0001 C CNN
	1    2200 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2650 2200 2650
$Comp
L synkie_symbols:+5V #PWR0402
U 1 1 5FEA7A29
P 2200 2350
F 0 "#PWR0402" H 2200 2200 50  0001 C CNN
F 1 "+5V" H 2215 2523 50  0000 C CNN
F 2 "" H 2200 2350 50  0001 C CNN
F 3 "" H 2200 2350 50  0001 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0407
U 1 1 5FEA7A2F
P 2200 2950
F 0 "#PWR0407" H 2200 3050 50  0001 C CNN
F 1 "-5V" H 2215 3123 50  0000 C CNN
F 2 "" H 2200 2950 50  0001 C CNN
F 3 "" H 2200 2950 50  0001 C CNN
	1    2200 2950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R402
U 1 1 5FEA7A35
P 2950 2650
F 0 "R402" V 3157 2650 50  0000 C CNN
F 1 "75" V 3066 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2650 50  0001 C CNN
F 3 "~" H 2950 2650 50  0001 C CNN
	1    2950 2650
	0    -1   -1   0   
$EndComp
Connection ~ 2200 2650
$Comp
L synkie_symbols:Opamp_Dual_Generic U401
U 1 1 5FEA7A3C
P 3400 2750
F 0 "U401" H 3400 3117 50  0000 C CNN
F 1 "LMH6643" H 3400 3026 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 2750 50  0001 C CNN
F 3 "~" H 3400 2750 50  0001 C CNN
	1    3400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2850 3100 3000
Wire Wire Line
	8000 3550 8000 3750
Wire Wire Line
	8600 3750 8600 3450
$Comp
L synkie_symbols:Opamp_Dual_Generic U401
U 2 1 5FEA7A45
P 2050 4100
F 0 "U401" H 2050 4467 50  0000 C CNN
F 1 "LMH6643" H 2050 4376 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2050 4100 50  0001 C CNN
F 3 "~" H 2050 4100 50  0001 C CNN
	2    2050 4100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0403
U 1 1 5FEA7A4B
P 5850 2400
F 0 "#PWR0403" H 5850 2150 50  0001 C CNN
F 1 "GND" H 5855 2227 50  0000 C CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR0401
U 1 1 5FEA7A51
P 5350 2100
F 0 "#PWR0401" H 5350 1950 50  0001 C CNN
F 1 "+5V" H 5365 2273 50  0000 C CNN
F 2 "" H 5350 2100 50  0001 C CNN
F 3 "" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0412
U 1 1 5FEA7A57
P 5350 3900
F 0 "#PWR0412" H 5350 3650 50  0001 C CNN
F 1 "GND" H 5355 3727 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0413
U 1 1 5FEA7A5D
P 5450 3900
F 0 "#PWR0413" H 5450 4000 50  0001 C CNN
F 1 "-5V" H 5465 4073 50  0000 C CNN
F 2 "" H 5450 3900 50  0001 C CNN
F 3 "" H 5450 3900 50  0001 C CNN
	1    5450 3900
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0409
U 1 1 5FEA7A64
P 4850 3300
F 0 "#PWR0409" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4855 3127 50  0000 C CNN
F 2 "" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR0404
U 1 1 5FEA7A6A
P 4850 2500
F 0 "#PWR0404" H 4850 2250 50  0001 C CNN
F 1 "GND" H 4855 2327 50  0000 C CNN
F 2 "" H 4850 2500 50  0001 C CNN
F 3 "" H 4850 2500 50  0001 C CNN
	1    4850 2500
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R409
U 1 1 5FEA7A70
P 8750 3450
F 0 "R409" V 8957 3450 50  0000 C CNN
F 1 "75" V 8866 3450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 3450 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	0    -1   -1   0   
$EndComp
Connection ~ 8600 3450
$Comp
L synkie_symbols:GND #PWR0408
U 1 1 5FEA7A8B
P 4850 3000
F 0 "#PWR0408" H 4850 2750 50  0001 C CNN
F 1 "GND" H 4855 2827 50  0000 C CNN
F 2 "" H 4850 3000 50  0001 C CNN
F 3 "" H 4850 3000 50  0001 C CNN
	1    4850 3000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R408
U 1 1 5FEA7A92
P 2750 4250
F 0 "R408" V 2957 4250 50  0000 C CNN
F 1 "560" V 2866 4250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2680 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
	1    2750 4250
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0411
U 1 1 5FEA7A98
P 2750 4400
F 0 "#PWR0411" H 2750 4150 50  0001 C CNN
F 1 "GND" H 2755 4227 50  0000 C CNN
F 2 "" H 2750 4400 50  0001 C CNN
F 3 "" H 2750 4400 50  0001 C CNN
	1    2750 4400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R403
U 1 1 5FEA7A9E
P 3850 2750
F 0 "R403" H 3920 2796 50  0000 L CNN
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
L Connector:TestPoint TP401
U 1 1 5FEA7AA7
P 6350 2450
F 0 "TP401" H 6408 2568 50  0000 L CNN
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
L 4xxx:4053 U402
U 1 1 5FEA7AC1
P 5350 3000
F 0 "U402" H 5150 3800 50  0000 C CNN
F 1 "4053" H 5800 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5350 3000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 5350 3000 50  0001 C CNN
	1    5350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5000 7450 4700
Wire Wire Line
	1750 4200 1750 4400
Wire Wire Line
	1750 4400 2350 4400
Wire Wire Line
	2350 4400 2350 4100
$Comp
L synkie_symbols:Opamp_Dual_Generic U403
U 2 1 5FEA7AFD
P 8300 3450
F 0 "U403" H 8300 3817 50  0000 C CNN
F 1 "LMH6643" H 8300 3726 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	2    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R405
U 1 1 5FEA7B03
P 1600 4000
F 0 "R405" V 1807 4000 50  0000 C CNN
F 1 "75" V 1716 4000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 4000 50  0001 C CNN
F 3 "~" H 1600 4000 50  0001 C CNN
	1    1600 4000
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R406
U 1 1 5FEA7B15
P 7700 3200
F 0 "R406" V 7907 3200 50  0000 C CNN
F 1 "3k3" V 7816 3200 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 4700 7550 4700
$Comp
L synkie_symbols:R R410
U 1 1 5FEA7B1D
P 7700 3500
F 0 "R410" V 7907 3500 50  0000 C CNN
F 1 "3k3" V 7816 3500 50  0000 C CNN
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
L synkie_symbols:R R411
U 1 1 5FEA7B29
P 8300 3750
F 0 "R411" V 8507 3750 50  0000 C CNN
F 1 "3k3" V 8416 3750 50  0000 C CNN
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
L synkie_symbols:R R412
U 1 1 5FEA7B31
P 8000 3900
F 0 "R412" V 8207 3900 50  0000 C CNN
F 1 "3k3" V 8116 3900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 3900 50  0001 C CNN
F 3 "~" H 8000 3900 50  0001 C CNN
	1    8000 3900
	1    0    0    -1  
$EndComp
Connection ~ 8000 3750
$Comp
L synkie_symbols:GND #PWR0414
U 1 1 5FEA7B38
P 8000 4050
F 0 "#PWR0414" H 8000 3800 50  0001 C CNN
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
L synkie_symbols:C_Small C402
U 1 1 5FEA7B48
P 2500 4100
F 0 "C402" V 2248 4100 50  0000 C CNN
F 1 "68p" V 2339 4100 50  0000 C CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2538 3950 50  0001 C CNN
F 3 "~" H 2500 4100 50  0001 C CNN
	1    2500 4100
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C401
U 1 1 5FEA7B4E
P 4300 2750
F 0 "C401" V 4048 2750 50  0000 C CNN
F 1 "1u" V 4139 2750 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4338 2600 50  0001 C CNN
F 3 "~" H 4300 2750 50  0001 C CNN
	1    4300 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4100 2750 4100
Wire Wire Line
	2400 4100 2350 4100
Connection ~ 2350 4100
Wire Wire Line
	4450 2750 4400 2750
Connection ~ 4450 2750
Wire Wire Line
	4450 2750 4450 3100
Wire Wire Line
	4000 2750 4200 2750
Text GLabel 1450 4000 0    50   Input ~ 0
genlock
Wire Wire Line
	8600 3450 8600 2850
Wire Wire Line
	8600 2850 8750 2850
Text GLabel 8750 2850 2    50   Input ~ 0
dry
Text HLabel 8900 3450 2    50   Input ~ 0
OUTPUT
Text GLabel 2750 4100 2    50   Input ~ 0
colorburst
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEB9428
P 2350 6150
AR Path="/5FEB9428" Ref="U?"  Part="3" 
AR Path="/5FE939A9/5FEB9428" Ref="U401"  Part="3" 
F 0 "U401" H 2350 6400 50  0000 L CNN
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
AR Path="/5FE939A9/5FEB9431" Ref="#PWR0421"  Part="1" 
F 0 "#PWR0421" H 2050 5900 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB943A" Ref="#PWR0418"  Part="1" 
F 0 "#PWR0418" H 2150 5700 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB9443" Ref="#PWR0424"  Part="1" 
F 0 "#PWR0424" H 2150 6550 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB9449" Ref="C406"  Part="1" 
F 0 "C406" V 2150 6350 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB944F" Ref="C403"  Part="1" 
F 0 "C403" V 2150 5950 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB9455" Ref="U403"  Part="3" 
F 0 "U403" H 3300 6400 50  0000 L CNN
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
AR Path="/5FE939A9/5FEB945E" Ref="#PWR0422"  Part="1" 
F 0 "#PWR0422" H 3000 5900 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB9467" Ref="#PWR0419"  Part="1" 
F 0 "#PWR0419" H 3100 5700 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB9470" Ref="#PWR0425"  Part="1" 
F 0 "#PWR0425" H 3100 6550 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB9476" Ref="C407"  Part="1" 
F 0 "C407" V 3100 6350 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB947C" Ref="C404"  Part="1" 
F 0 "C404" V 3100 5950 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB9485" Ref="#PWR0423"  Part="1" 
F 0 "#PWR0423" H 4300 5900 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB948B" Ref="C408"  Part="1" 
F 0 "C408" V 4400 6350 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB9491" Ref="C405"  Part="1" 
F 0 "C405" V 4400 5950 50  0000 C CNN
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
AR Path="/5FE939A9/5FEB9497" Ref="#PWR0420"  Part="1" 
F 0 "#PWR0420" H 4300 5700 50  0001 C CNN
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
AR Path="/5FE939A9/5FEB949D" Ref="#PWR0426"  Part="1" 
F 0 "#PWR0426" H 4300 6550 50  0001 C CNN
F 1 "-5V" H 4300 6600 50  0000 C CNN
F 2 "" H 4300 6450 50  0001 C CNN
F 3 "" H 4300 6450 50  0001 C CNN
	1    4300 6450
	-1   0    0    1   
$EndComp
Text GLabel 4850 3600 0    50   Input ~ 0
hsync
Text GLabel 4850 3400 0    50   Input ~ 0
porch
Text HLabel 1750 2650 0    50   Input ~ 0
INPUT-Composite
$Comp
L synkie_symbols:Opamp_Dual_Generic U403
U 1 1 5FEA7B3E
P 7150 4700
F 0 "U403" H 7150 4950 50  0000 L CNN
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
L synkie_symbols:R R414
U 1 1 5FEA7AEF
P 6200 4750
F 0 "R414" H 6130 4704 50  0000 R CNN
F 1 "10k" H 6130 4795 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 4750 50  0001 C CNN
F 3 "~" H 6200 4750 50  0001 C CNN
	1    6200 4750
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR0416
U 1 1 5FEA7AE9
P 6200 4900
F 0 "#PWR0416" H 6200 4650 50  0001 C CNN
F 1 "GND" H 6205 4727 50  0000 C CNN
F 2 "" H 6200 4900 50  0001 C CNN
F 3 "" H 6200 4900 50  0001 C CNN
	1    6200 4900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R413
U 1 1 5FEA7AE3
P 6350 4600
F 0 "R413" V 6557 4600 50  0000 C CNN
F 1 "75" V 6466 4600 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 4600 50  0001 C CNN
F 3 "~" H 6350 4600 50  0001 C CNN
	1    6350 4600
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:BAT54S D402
U 1 1 5FEA7ADD
P 6650 4600
F 0 "D402" V 6696 4522 50  0000 R CNN
F 1 "BAT54S" V 6100 4750 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6725 4725 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6530 4600 50  0001 C CNN
	1    6650 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4600 6650 4600
$Comp
L synkie_symbols:+5V #PWR0415
U 1 1 5FEA7AD6
P 6650 4300
F 0 "#PWR0415" H 6650 4150 50  0001 C CNN
F 1 "+5V" H 6665 4473 50  0000 C CNN
F 2 "" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0001 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR0417
U 1 1 5FEA7AD0
P 6650 4900
F 0 "#PWR0417" H 6650 5000 50  0001 C CNN
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
Text GLabel 4850 3500 0    50   Input ~ 0
dry~wet~
Text GLabel 6450 2450 2    50   Input ~ 0
preview_burst
Text GLabel 4350 2100 0    50   Input ~ 0
colorburst
Wire Wire Line
	4850 2700 4600 2700
Wire Wire Line
	4600 2700 4600 1950
Wire Wire Line
	4600 1950 4350 1950
Text GLabel 4350 1950 0    50   Input ~ 0
delayed_burst
Wire Wire Line
	4350 2100 4550 2100
Wire Wire Line
	4550 2100 4550 2800
Wire Wire Line
	4550 2800 4850 2800
$EndSCHEMATC
