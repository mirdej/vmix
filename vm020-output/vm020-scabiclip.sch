EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "vMIX20-Scale,Bias, Clip"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FD5C97F
P 3000 3450
AR Path="/5FD5C97F" Ref="U?"  Part="1" 
AR Path="/5FD30D96/5FD5C97F" Ref="U301"  Part="1" 
F 0 "U301" H 2950 3450 50  0000 C CNN
F 1 "LMH6643" H 3100 3250 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3000 3450 50  0001 C CNN
F 3 "~" H 3000 3450 50  0001 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA75
P 2100 2500
AR Path="/5FD5CA75" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA75" Ref="R313"  Part="1" 
F 0 "R313" V 2200 2550 50  0000 C CNN
F 1 "5.1k" V 2100 2500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA7D
P 3600 2750
AR Path="/5FD5CA7D" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA7D" Ref="R316"  Part="1" 
F 0 "R316" V 3700 2750 50  0000 C CNN
F 1 "3k3" V 3600 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 2750 50  0001 C CNN
F 3 "~" H 3600 2750 50  0001 C CNN
	1    3600 2750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA83
P 3350 2750
AR Path="/5FD5CA83" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA83" Ref="R315"  Part="1" 
F 0 "R315" V 3450 2750 50  0000 C CNN
F 1 "10k" V 3350 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA89
P 3350 2250
AR Path="/5FD5CA89" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA89" Ref="R307"  Part="1" 
F 0 "R307" V 3450 2250 50  0000 C CNN
F 1 "10k" V 3350 2250 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 2250 50  0001 C CNN
F 3 "~" H 3350 2250 50  0001 C CNN
	1    3350 2250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CA8F
P 3600 2900
AR Path="/5FD5CA8F" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA8F" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 3600 3000 50  0001 C CNN
F 1 "-5V" H 3615 3073 50  0000 C CNN
F 2 "" H 3600 2900 50  0001 C CNN
F 3 "" H 3600 2900 50  0001 C CNN
	1    3600 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	3350 2900 3600 2900
Connection ~ 3600 2900
Wire Wire Line
	3400 2400 3350 2400
Connection ~ 3350 2400
Wire Wire Line
	3350 2400 3350 2600
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CA9A
P 3200 2100
AR Path="/5FD5CA9A" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA9A" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 3200 1850 50  0001 C CNN
F 1 "GND" H 3205 1927 50  0000 C CNN
F 2 "" H 3200 2100 50  0001 C CNN
F 3 "" H 3200 2100 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2100 3350 2100
$Comp
L synkie_symbols:Trans_PNP_Generic Q?
U 1 1 5FD5CAA1
P 3550 2000
AR Path="/5FD5CAA1" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5CAA1" Ref="Q302"  Part="1" 
F 0 "Q302" H 3688 2046 50  0000 L CNN
F 1 "PNP" H 3688 1955 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2200 3600 2300
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CAA8
P 3600 1450
AR Path="/5FD5CAA8" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CAA8" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 3600 1300 50  0001 C CNN
F 1 "+5V" H 3615 1623 50  0000 C CNN
F 2 "" H 3600 1450 50  0001 C CNN
F 3 "" H 3600 1450 50  0001 C CNN
	1    3600 1450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FD5CAAE
P 3000 2000
AR Path="/5FD5CAAE" Ref="U?"  Part="2" 
AR Path="/5FD30D96/5FD5CAAE" Ref="U301"  Part="2" 
F 0 "U301" H 2950 2250 50  0000 C CNN
F 1 "LMH6643" H 2950 2350 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3000 2000 50  0001 C CNN
F 3 "~" H 3000 2000 50  0001 C CNN
	2    3000 2000
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CAB4
P 2950 1650
AR Path="/5FD5CAB4" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CAB4" Ref="R303"  Part="1" 
F 0 "R303" V 3050 1650 50  0000 C CNN
F 1 "10k" V 2950 1650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 1650 50  0001 C CNN
F 3 "~" H 2950 1650 50  0001 C CNN
	1    2950 1650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CABA
P 2600 2150
AR Path="/5FD5CABA" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CABA" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 2600 1900 50  0001 C CNN
F 1 "GND" H 2605 1977 50  0000 C CNN
F 2 "" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2150 2600 2100
Wire Wire Line
	2600 2100 2700 2100
Wire Wire Line
	3100 1650 3300 1650
Wire Wire Line
	3300 2000 3400 2000
Wire Wire Line
	2400 1900 2700 1900
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CAC5
P 2400 2800
AR Path="/5FD5CAC5" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CAC5" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 2400 2900 50  0001 C CNN
F 1 "-5V" H 2415 2973 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CACB
P 2400 2650
AR Path="/5FD5CACB" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CACB" Ref="R314"  Part="1" 
F 0 "R314" V 2500 2650 50  0000 C CNN
F 1 "15k" V 2400 2650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 2650 50  0001 C CNN
F 3 "~" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1900 2400 2500
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CAD2
P 3600 1650
AR Path="/5FD5CAD2" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CAD2" Ref="R304"  Part="1" 
F 0 "R304" V 3500 1650 50  0000 C CNN
F 1 "3k3" V 3600 1650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 1650 50  0001 C CNN
F 3 "~" H 3600 1650 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2500 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	3600 1450 3600 1500
Wire Wire Line
	3600 1750 3600 1800
$Comp
L synkie_symbols:LT1228 U?
U 1 1 5FD5CADC
P 5500 2550
AR Path="/5FD5CADC" Ref="U?"  Part="1" 
AR Path="/5FD30D96/5FD5CADC" Ref="U302"  Part="1" 
F 0 "U302" H 5150 2900 50  0000 C CNN
F 1 "LT1228" H 5250 2250 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 2850 50  0001 C CNN
F 3 "" H 5950 2850 50  0001 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CAE2
P 5500 3250
AR Path="/5FD5CAE2" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CAE2" Ref="#PWR0320"  Part="1" 
F 0 "#PWR0320" H 5500 3350 50  0001 C CNN
F 1 "-5V" H 5515 3423 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CAE8
P 5500 1700
AR Path="/5FD5CAE8" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CAE8" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 5500 1550 50  0001 C CNN
F 1 "+5V" H 5515 1873 50  0000 C CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FD5CAEE
P 5700 1800
AR Path="/5FD5CAEE" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CAEE" Ref="C301"  Part="1" 
F 0 "C301" V 5750 1900 50  0000 C CNN
F 1 "4u7" V 5800 1800 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 5700 1800 50  0001 C CNN
F 3 "~" H 5700 1800 50  0001 C CNN
	1    5700 1800
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FD5CAF4
P 5700 3000
AR Path="/5FD5CAF4" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CAF4" Ref="C303"  Part="1" 
F 0 "C303" V 5650 2900 50  0000 C CNN
F 1 "4u7" V 5566 3000 50  0000 C CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 5700 3000 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5CAFA
P 5700 2000
AR Path="/5FD5CAFA" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CAFA" Ref="C302"  Part="1" 
F 0 "C302" V 5650 1900 50  0000 C CNN
F 1 "100n" V 5800 2000 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5700 2000 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5CB00
P 5700 3150
AR Path="/5FD5CB00" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CB00" Ref="C304"  Part="1" 
F 0 "C304" V 5650 3050 50  0000 C CNN
F 1 "100n" V 5800 3150 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5700 3150 50  0001 C CNN
F 3 "~" H 5700 3150 50  0001 C CNN
	1    5700 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2900 5500 3000
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB07
P 5850 2100
AR Path="/5FD5CB07" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB07" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 5850 1850 50  0001 C CNN
F 1 "GND" H 5855 1927 50  0000 C CNN
F 2 "" H 5850 2100 50  0001 C CNN
F 3 "" H 5850 2100 50  0001 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB0D
P 5850 3250
AR Path="/5FD5CB0D" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB0D" Ref="#PWR0321"  Part="1" 
F 0 "#PWR0321" H 5850 3000 50  0001 C CNN
F 1 "GND" H 5855 3077 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2100
Wire Wire Line
	5800 1800 5850 1800
Wire Wire Line
	5850 1800 5850 2000
Connection ~ 5850 2000
Wire Wire Line
	5500 1700 5500 1800
Wire Wire Line
	5600 2000 5500 2000
Connection ~ 5500 2000
Wire Wire Line
	5500 2000 5500 2150
Wire Wire Line
	5600 1800 5500 1800
Connection ~ 5500 1800
Wire Wire Line
	5500 1800 5500 2000
Wire Wire Line
	5800 3000 5850 3000
Wire Wire Line
	5850 3000 5850 3150
Wire Wire Line
	5800 3150 5850 3150
Connection ~ 5850 3150
Wire Wire Line
	5850 3150 5850 3250
Wire Wire Line
	5600 3000 5500 3000
Connection ~ 5500 3000
Wire Wire Line
	5500 3000 5500 3150
Wire Wire Line
	5600 3150 5500 3150
Connection ~ 5500 3150
Wire Wire Line
	5500 3150 5500 3250
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB2A
P 6100 2450
AR Path="/5FD5CB2A" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB2A" Ref="R311"  Part="1" 
F 0 "R311" V 6000 2550 50  0000 R CNN
F 1 "1k" V 6100 2500 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 2450 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB30
P 6300 2950
AR Path="/5FD5CB30" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB30" Ref="R320"  Part="1" 
F 0 "R320" V 6400 2950 50  0000 C CNN
F 1 "75" V 6300 2950 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 2950 50  0001 C CNN
F 3 "~" H 6300 2950 50  0001 C CNN
	1    6300 2950
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB36
P 6300 2600
AR Path="/5FD5CB36" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB36" Ref="#PWR0314"  Part="1" 
F 0 "#PWR0314" H 6300 2350 50  0001 C CNN
F 1 "GND" H 6305 2427 50  0000 C CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2300 6100 2300
Wire Wire Line
	6000 2550 6000 2600
Wire Wire Line
	6000 2600 6100 2600
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB3F
P 6300 2450
AR Path="/5FD5CB3F" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB3F" Ref="R312"  Part="1" 
F 0 "R312" V 6200 2550 50  0000 R CNN
F 1 "100" V 6300 2500 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 2450 50  0001 C CNN
F 3 "~" H 6300 2450 50  0001 C CNN
	1    6300 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2300 6100 2300
Connection ~ 6100 2300
Wire Wire Line
	6150 2950 6100 2950
Wire Wire Line
	6100 2950 6100 2600
Connection ~ 6100 2600
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB4A
P 4750 2300
AR Path="/5FD5CB4A" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB4A" Ref="R308"  Part="1" 
F 0 "R308" V 4800 2150 50  0000 C CNN
F 1 "300" V 4750 2300 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 2300 50  0001 C CNN
F 3 "~" H 4750 2300 50  0001 C CNN
	1    4750 2300
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB50
P 4550 2500
AR Path="/5FD5CB50" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB50" Ref="#PWR0313"  Part="1" 
F 0 "#PWR0313" H 4550 2250 50  0001 C CNN
F 1 "GND" H 4555 2327 50  0000 C CNN
F 2 "" H 4550 2500 50  0001 C CNN
F 3 "" H 4550 2500 50  0001 C CNN
	1    4550 2500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB56
P 4750 2450
AR Path="/5FD5CB56" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB56" Ref="R310"  Part="1" 
F 0 "R310" V 4800 2300 50  0000 C CNN
F 1 "560" V 4750 2450 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 2450 50  0001 C CNN
F 3 "~" H 4750 2450 50  0001 C CNN
	1    4750 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2300 4550 2300
Wire Wire Line
	4550 2300 4550 2450
Wire Wire Line
	4600 2450 4550 2450
Connection ~ 4550 2450
Wire Wire Line
	4550 2450 4550 2500
Wire Wire Line
	4900 2450 5000 2450
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB62
P 4550 2950
AR Path="/5FD5CB62" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB62" Ref="R319"  Part="1" 
F 0 "R319" V 4450 3000 50  0000 R CNN
F 1 "1k" V 4550 3000 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 2950 50  0001 C CNN
F 3 "~" H 4550 2950 50  0001 C CNN
	1    4550 2950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB68
P 4550 3200
AR Path="/5FD5CB68" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB68" Ref="#PWR0317"  Part="1" 
F 0 "#PWR0317" H 4550 2950 50  0001 C CNN
F 1 "GND" H 4555 3027 50  0000 C CNN
F 2 "" H 4550 3200 50  0001 C CNN
F 3 "" H 4550 3200 50  0001 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3100 4550 3200
Wire Wire Line
	4500 2750 4550 2750
Wire Wire Line
	4550 2750 4550 2800
Wire Wire Line
	5000 2550 4650 2550
Wire Wire Line
	4650 2550 4650 2750
Wire Wire Line
	4650 2750 4550 2750
Connection ~ 4550 2750
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB75
P 4950 2900
AR Path="/5FD5CB75" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB75" Ref="R318"  Part="1" 
F 0 "R318" V 4850 2950 50  0000 C CNN
F 1 "1k" V 4950 2900 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 2900 50  0001 C CNN
F 3 "~" H 4950 2900 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2300 4950 2300
Connection ~ 4950 2300
Wire Wire Line
	4950 2300 5000 2300
Wire Wire Line
	5000 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2750
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FD5CBA7
P 3150 5850
AR Path="/5FD5CBA7" Ref="U?"  Part="3" 
AR Path="/5FD30D96/5FD5CBA7" Ref="U301"  Part="3" 
F 0 "U301" H 3200 6000 50  0000 C CNN
F 1 "LMH6643" H 3250 5700 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3150 5850 50  0001 C CNN
F 3 "~" H 3150 5850 50  0001 C CNN
	3    3150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3550 2700 3550
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CBB4
P 2600 3350
AR Path="/5FD5CBB4" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CBB4" Ref="#PWR0322"  Part="1" 
F 0 "#PWR0322" H 2600 3100 50  0001 C CNN
F 1 "GND" H 2500 3350 50  0000 C CNN
F 2 "" H 2600 3350 50  0001 C CNN
F 3 "" H 2600 3350 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3350 2600 3350
Connection ~ 2700 3550
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CBC2
P 3050 5450
AR Path="/5FD5CBC2" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CBC2" Ref="#PWR0330"  Part="1" 
F 0 "#PWR0330" H 3050 5300 50  0001 C CNN
F 1 "+5V" H 3065 5623 50  0000 C CNN
F 2 "" H 3050 5450 50  0001 C CNN
F 3 "" H 3050 5450 50  0001 C CNN
	1    3050 5450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CBC8
P 3050 6250
AR Path="/5FD5CBC8" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CBC8" Ref="#PWR0338"  Part="1" 
F 0 "#PWR0338" H 3050 6350 50  0001 C CNN
F 1 "-5V" H 3065 6423 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5CBCE
P 2900 6200
AR Path="/5FD5CBCE" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CBCE" Ref="C310"  Part="1" 
F 0 "C310" V 2850 6100 50  0000 C CNN
F 1 "100n" V 3000 6200 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2900 6200 50  0001 C CNN
F 3 "~" H 2900 6200 50  0001 C CNN
	1    2900 6200
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5CBD4
P 2900 5500
AR Path="/5FD5CBD4" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5CBD4" Ref="C305"  Part="1" 
F 0 "C305" V 2850 5400 50  0000 C CNN
F 1 "100n" V 3000 5500 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2900 5500 50  0001 C CNN
F 3 "~" H 2900 5500 50  0001 C CNN
	1    2900 5500
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CBDA
P 2750 6250
AR Path="/5FD5CBDA" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CBDA" Ref="#PWR0337"  Part="1" 
F 0 "#PWR0337" H 2750 6000 50  0001 C CNN
F 1 "GND" H 2755 6077 50  0000 C CNN
F 2 "" H 2750 6250 50  0001 C CNN
F 3 "" H 2750 6250 50  0001 C CNN
	1    2750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5450 3050 5500
Wire Wire Line
	3050 6150 3050 6200
Wire Wire Line
	3000 6200 3050 6200
Connection ~ 3050 6200
Wire Wire Line
	3050 6200 3050 6250
Wire Wire Line
	3000 5500 3050 5500
Connection ~ 3050 5500
Wire Wire Line
	3050 5500 3050 5550
Wire Wire Line
	2800 5500 2750 5500
Wire Wire Line
	2750 5500 2750 6200
Wire Wire Line
	2800 6200 2750 6200
Connection ~ 2750 6200
Wire Wire Line
	2750 6200 2750 6250
Text Notes 1850 4450 0    50   ~ 0
scale section
$Comp
L synkie_symbols:PMBT3906YS Q?
U 1 1 5FD5CBF7
P 3550 3450
AR Path="/5FD5CBF7" Ref="Q?"  Part="2" 
AR Path="/5FD30D96/5FD5CBF7" Ref="Q304"  Part="1" 
F 0 "Q304" H 3688 3404 50  0000 L CNN
F 1 "PMBT3906YS" H 3688 3495 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3450 3475 50  0001 C CNN
F 3 "" H 3450 3475 50  0001 C CNN
	1    3550 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 3550 2700 3800
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CBFE
P 3500 4000
AR Path="/5FD5CBFE" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CBFE" Ref="R327"  Part="1" 
F 0 "R327" V 3400 4050 50  0000 C CNN
F 1 "10k" V 3500 4000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 4000 50  0001 C CNN
F 3 "~" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CC05
P 3500 4550
AR Path="/5FD5CC05" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CC05" Ref="#PWR0328"  Part="1" 
F 0 "#PWR0328" H 3500 4300 50  0001 C CNN
F 1 "GND" H 3505 4377 50  0000 C CNN
F 2 "" H 3500 4550 50  0001 C CNN
F 3 "" H 3500 4550 50  0001 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CC0B
P 3150 4150
AR Path="/5FD5CC0B" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CC0B" Ref="R329"  Part="1" 
F 0 "R329" V 3250 4150 50  0000 C CNN
F 1 "4k7" V 3150 4150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 4150 50  0001 C CNN
F 3 "~" H 3150 4150 50  0001 C CNN
	1    3150 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 4150 2700 4150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CC12
P 3750 3250
AR Path="/5FD5CC12" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CC12" Ref="#PWR0319"  Part="1" 
F 0 "#PWR0319" H 3750 3000 50  0001 C CNN
F 1 "GND" H 3755 3077 50  0000 C CNN
F 2 "" H 3750 3250 50  0001 C CNN
F 3 "" H 3750 3250 50  0001 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3450 3350 3450
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CC19
P 3000 3800
AR Path="/5FD5CC19" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CC19" Ref="R325"  Part="1" 
F 0 "R325" V 2900 3800 50  0000 C CNN
F 1 "4k7" V 3000 3800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 3800 50  0001 C CNN
F 3 "~" H 3000 3800 50  0001 C CNN
	1    3000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 3800 2700 3800
Connection ~ 2700 3800
Wire Wire Line
	2700 3800 2700 4150
Wire Wire Line
	3150 3800 3350 3800
Wire Wire Line
	3350 3800 3350 3450
$Comp
L synkie_symbols:Trans_NPN_Generic Q?
U 1 1 5FD5CC24
P 3550 2400
AR Path="/5FD5CC24" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5CC24" Ref="Q303"  Part="1" 
F 0 "Q303" H 3688 2446 50  0000 L CNN
F 1 "BC847" H 3688 2355 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 2 1 5FD5CC2A
P 3450 4350
AR Path="/5FD5CC2A" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5CC2A" Ref="Q304"  Part="2" 
F 0 "Q304" H 3588 4304 50  0000 L CNN
F 1 "PMBT3906YS" H 3588 4395 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3350 4375 50  0001 C CNN
F 3 "" H 3350 4375 50  0001 C CNN
	2    3450 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	3600 3250 3600 3200
Wire Wire Line
	3600 3200 3750 3200
Wire Wire Line
	3750 3200 3750 3250
Wire Wire Line
	3400 3450 3350 3450
Connection ~ 3350 3450
Wire Wire Line
	3600 3650 3600 3700
Wire Wire Line
	3500 4550 3300 4550
Wire Wire Line
	3300 4550 3300 4350
Connection ~ 3500 4550
Wire Wire Line
	3300 4150 3500 4150
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CC3A
P 3500 3850
AR Path="/5FD5CC3A" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CC3A" Ref="#PWR0326"  Part="1" 
F 0 "#PWR0326" H 3500 3700 50  0001 C CNN
F 1 "+5V" H 3515 4023 50  0000 C CNN
F 2 "" H 3500 3850 50  0001 C CNN
F 3 "" H 3500 3850 50  0001 C CNN
	1    3500 3850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CC41
P 4350 2750
AR Path="/5FD5CC41" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CC41" Ref="R317"  Part="1" 
F 0 "R317" V 4450 2750 50  0000 C CNN
F 1 "10k" V 4350 2750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2750 50  0001 C CNN
F 3 "~" H 4350 2750 50  0001 C CNN
	1    4350 2750
	0    -1   -1   0   
$EndComp
Connection ~ 3600 1800
Connection ~ 3600 2200
Connection ~ 2400 1900
Wire Wire Line
	2350 1650 2400 1650
Wire Wire Line
	2800 1650 2400 1650
Connection ~ 2400 1650
Wire Wire Line
	2400 1650 2400 1900
Connection ~ 3300 2000
Wire Wire Line
	3300 1650 3300 2000
Wire Wire Line
	3600 2200 4950 2200
Wire Wire Line
	4950 2200 4950 2300
Connection ~ 3500 4150
Wire Wire Line
	3600 3700 4950 3700
Wire Wire Line
	4950 3050 4950 3700
Text GLabel 1950 2500 0    50   Input ~ 0
bias_cv
Text GLabel 2400 4150 0    50   Input ~ 0
scale_cv
Connection ~ 2700 4150
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CBBC
P 2550 4150
AR Path="/5FD5CBBC" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CBBC" Ref="R328"  Part="1" 
F 0 "R328" V 2450 4150 50  0000 C CNN
F 1 "100k" V 2550 4150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 4150 50  0001 C CNN
F 3 "~" H 2550 4150 50  0001 C CNN
	1    2550 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3150 4200 2750
Text Label 4200 2750 2    50   ~ 0
scabi_in
Wire Wire Line
	2950 3150 4200 3150
Wire Wire Line
	6450 2950 7000 2950
Text Label 6550 2950 0    50   ~ 0
scabi-out
Text HLabel 7050 2950 2    50   Input ~ 0
OUTPUT
Text HLabel 2950 3150 0    50   Input ~ 0
INPUT
$EndSCHEMATC
