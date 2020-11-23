EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FD5C97F
P 8150 3050
AR Path="/5FD5C97F" Ref="U?"  Part="1" 
AR Path="/5FD30D96/5FD5C97F" Ref="U?"  Part="1" 
F 0 "U?" H 8100 3050 50  0000 C CNN
F 1 "LMH6643" H 8250 2850 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8150 3050 50  0001 C CNN
F 3 "~" H 8150 3050 50  0001 C CNN
	1    8150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3150 7850 3350
Wire Wire Line
	7850 3350 8450 3350
Wire Wire Line
	8450 3350 8450 3050
$Comp
L Switch:SW_SPST SW?
U 1 1 5FD5C989
P 8350 1950
AR Path="/5FD5C989" Ref="SW?"  Part="1" 
AR Path="/5FD30D96/5FD5C989" Ref="SW?"  Part="1" 
F 0 "SW?" V 8304 2048 50  0000 L CNN
F 1 "HIGH_CLIP" V 8395 2048 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 8350 1950 50  0001 C CNN
F 3 "~" H 8350 1950 50  0001 C CNN
	1    8350 1950
	-1   0    0    1   
$EndComp
Connection ~ 8750 3050
Wire Wire Line
	8750 3050 9250 3050
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FD5C991
P 9550 3150
AR Path="/5FD5C991" Ref="U?"  Part="2" 
AR Path="/5FD30D96/5FD5C991" Ref="U?"  Part="2" 
F 0 "U?" H 9500 3150 50  0000 C CNN
F 1 "LMH6643" H 9650 3000 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9550 3150 50  0001 C CNN
F 3 "~" H 9550 3150 50  0001 C CNN
	2    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5FD5C998
P 9150 4300
AR Path="/5FD5C998" Ref="SW?"  Part="1" 
AR Path="/5FD30D96/5FD5C998" Ref="SW?"  Part="1" 
F 0 "SW?" H 9150 4200 50  0000 L CNN
F 1 "LOW_CLIP" H 9000 4400 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 9150 4300 50  0001 C CNN
F 3 "~" H 9150 4300 50  0001 C CNN
	1    9150 4300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5C99F
P 3850 5750
AR Path="/5FD5C99F" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5C99F" Ref="C?"  Part="1" 
F 0 "C?" H 3965 5796 50  0000 L CNN
F 1 "100n" H 3965 5705 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 5600 50  0001 C CNN
F 3 "~" H 3850 5750 50  0001 C CNN
	1    3850 5750
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FD5C9A5
P 3850 6050
AR Path="/5FD5C9A5" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FD5C9A5" Ref="C?"  Part="1" 
F 0 "C?" H 3965 6096 50  0000 L CNN
F 1 "100n" H 3965 6005 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 5900 50  0001 C CNN
F 3 "~" H 3850 6050 50  0001 C CNN
	1    3850 6050
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5C9AB
P 4050 5600
AR Path="/5FD5C9AB" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9AB" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 4050 5450 50  0001 C CNN
F 1 "+5V" H 4065 5773 50  0000 C CNN
F 2 "" H 4050 5600 50  0001 C CNN
F 3 "" H 4050 5600 50  0001 C CNN
	1    4050 5600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5C9B1
P 4050 6200
AR Path="/5FD5C9B1" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9B1" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 4050 6300 50  0001 C CNN
F 1 "-5V" H 4065 6373 50  0000 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "" H 4050 6200 50  0001 C CNN
	1    4050 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 6200 3850 6200
Wire Wire Line
	4050 5600 3850 5600
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5C9B9
P 3850 5900
AR Path="/5FD5C9B9" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9B9" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 3850 5650 50  0001 C CNN
F 1 "GND" H 3855 5727 50  0000 C CNN
F 2 "" H 3850 5900 50  0001 C CNN
F 3 "" H 3850 5900 50  0001 C CNN
	1    3850 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 3250 9250 3500
Wire Wire Line
	9250 3500 9850 3500
Wire Wire Line
	9850 3500 9850 3150
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FD5C9C3
P 4150 5900
AR Path="/5FD5C9C3" Ref="U?"  Part="3" 
AR Path="/5FD30D96/5FD5C9C3" Ref="U?"  Part="3" 
F 0 "U?" H 4108 5946 50  0000 L CNN
F 1 "LMH6643" H 4200 5400 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4150 5900 50  0001 C CNN
F 3 "~" H 4150 5900 50  0001 C CNN
	3    4150 5900
	1    0    0    -1  
$EndComp
Connection ~ 4050 6200
Connection ~ 4050 5600
$Comp
L synkie_symbols:PMBT3906YS Q?
U 1 1 5FD5C9CB
P 8000 1950
AR Path="/5FD5C9CB" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5C9CB" Ref="Q?"  Part="1" 
F 0 "Q?" H 8050 1950 50  0000 L CNN
F 1 "PMBT3906YS" H 8138 1995 50  0001 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 7900 1975 50  0001 C CNN
F 3 "" H 7900 1975 50  0001 C CNN
	1    8000 1950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 2 1 5FD5C9D1
P 8700 1950
AR Path="/5FD5C9D1" Ref="Q?"  Part="2" 
AR Path="/5FD30D96/5FD5C9D1" Ref="Q?"  Part="2" 
F 0 "Q?" H 8838 1996 50  0000 L CNN
F 1 "PMBT3906YS" H 8838 1905 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 8600 1975 50  0001 C CNN
F 3 "" H 8600 1975 50  0001 C CNN
	2    8700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2150 7950 2150
$Comp
L synkie_symbols:R R?
U 1 1 5FD5C9DB
P 7950 2300
AR Path="/5FD5C9DB" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5C9DB" Ref="R?"  Part="1" 
F 0 "R?" V 8050 2250 50  0000 L CNN
F 1 "5k6" V 7950 2250 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 2300 50  0001 C CNN
F 3 "~" H 7950 2300 50  0001 C CNN
	1    7950 2300
	1    0    0    -1  
$EndComp
Connection ~ 7950 2150
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5C9E2
P 9150 1750
AR Path="/5FD5C9E2" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9E2" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 9150 1850 50  0001 C CNN
F 1 "-5V" H 9165 1923 50  0000 C CNN
F 2 "" H 9150 1750 50  0001 C CNN
F 3 "" H 9150 1750 50  0001 C CNN
	1    9150 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 1750 9150 1750
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5C9E9
P 7950 2450
AR Path="/5FD5C9E9" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9E9" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 7950 2550 50  0001 C CNN
F 1 "-5V" H 7965 2623 50  0000 C CNN
F 2 "" H 7950 2450 50  0001 C CNN
F 3 "" H 7950 2450 50  0001 C CNN
	1    7950 2450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:D D?
U 1 1 5FD5C9EF
P 7550 2250
AR Path="/5FD5C9EF" Ref="D?"  Part="1" 
AR Path="/5FD30D96/5FD5C9EF" Ref="D?"  Part="1" 
F 0 "D?" V 7596 2171 50  0000 R CNN
F 1 "D" V 7505 2171 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 7550 2250 50  0001 C CNN
F 3 "~" H 7550 2250 50  0001 C CNN
	1    7550 2250
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5C9F5
P 7550 2400
AR Path="/5FD5C9F5" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5C9F5" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 7550 2150 50  0001 C CNN
F 1 "GND" H 7555 2227 50  0000 C CNN
F 2 "" H 7550 2400 50  0001 C CNN
F 3 "" H 7550 2400 50  0001 C CNN
	1    7550 2400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5C9FB
P 7550 1950
AR Path="/5FD5C9FB" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5C9FB" Ref="R?"  Part="1" 
F 0 "R?" V 7650 1900 50  0000 L CNN
F 1 "120" V 7550 1850 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 1950 50  0001 C CNN
F 3 "~" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CA01
P 7550 1800
AR Path="/5FD5CA01" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA01" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 7550 1650 50  0001 C CNN
F 1 "+5V" H 7565 1973 50  0000 C CNN
F 2 "" H 7550 1800 50  0001 C CNN
F 3 "" H 7550 1800 50  0001 C CNN
	1    7550 1800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA07
P 8600 3050
AR Path="/5FD5CA07" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA07" Ref="R?"  Part="1" 
F 0 "R?" V 8500 3050 50  0000 C CNN
F 1 "330" V 8600 3050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 3050 50  0001 C CNN
F 3 "~" H 8600 3050 50  0001 C CNN
	1    8600 3050
	0    1    1    0   
$EndComp
Connection ~ 8450 3050
$Comp
L synkie_symbols:PEMX1 Q?
U 1 1 5FD5CA0E
P 8800 4300
AR Path="/5FD5CA0E" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5CA0E" Ref="Q?"  Part="1" 
F 0 "Q?" H 8938 4254 50  0000 L CNN
F 1 "PEMX1" H 8938 4345 50  0000 L CNN
F 2 "synkie_footprints:SOT-666" H 8700 4325 50  0001 C CNN
F 3 "" H 8700 4325 50  0001 C CNN
	1    8800 4300
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PEMX1 Q?
U 2 1 5FD5CA14
P 9550 4300
AR Path="/5FD5CA14" Ref="Q?"  Part="2" 
AR Path="/5FD30D96/5FD5CA14" Ref="Q?"  Part="2" 
F 0 "Q?" H 9688 4346 50  0000 L CNN
F 1 "PEMX1" H 9688 4255 50  0000 L CNN
F 2 "synkie_footprints:SOT-666" H 9450 4325 50  0001 C CNN
F 3 "" H 9450 4325 50  0001 C CNN
	2    9550 4300
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA1A
P 9600 3950
AR Path="/5FD5CA1A" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA1A" Ref="R?"  Part="1" 
F 0 "R?" V 9700 3900 50  0000 L CNN
F 1 "47k" V 9600 3850 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 3950 50  0001 C CNN
F 3 "~" H 9600 3950 50  0001 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CA20
P 9600 3800
AR Path="/5FD5CA20" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA20" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 9600 3650 50  0001 C CNN
F 1 "+5V" H 9615 3973 50  0000 C CNN
F 2 "" H 9600 3800 50  0001 C CNN
F 3 "" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4500 8350 4500
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CA29
P 8350 4500
AR Path="/5FD5CA29" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA29" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 8350 4350 50  0001 C CNN
F 1 "+5V" H 8365 4673 50  0000 C CNN
F 2 "" H 8350 4500 50  0001 C CNN
F 3 "" H 8350 4500 50  0001 C CNN
	1    8350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4100 9400 4100
Connection ~ 9600 4100
$Comp
L synkie_symbols:D D?
U 1 1 5FD5CA33
P 9400 4450
AR Path="/5FD5CA33" Ref="D?"  Part="1" 
AR Path="/5FD30D96/5FD5CA33" Ref="D?"  Part="1" 
F 0 "D?" V 9600 4300 50  0000 L CNN
F 1 "BAT54" H 9500 4200 50  0000 L CNN
F 2 "synkie_footprints:D_SOT-23_ANK" H 9400 4450 50  0001 C CNN
F 3 "~" H 9400 4450 50  0001 C CNN
	1    9400 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4500 9600 4600
Wire Wire Line
	9600 4600 9400 4600
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CA3B
P 9600 4600
AR Path="/5FD5CA3B" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA3B" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 9600 4350 50  0001 C CNN
F 1 "GND" H 9605 4427 50  0000 C CNN
F 2 "" H 9600 4600 50  0001 C CNN
F 3 "" H 9600 4600 50  0001 C CNN
	1    9600 4600
	1    0    0    -1  
$EndComp
Connection ~ 9600 4600
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA48
P 1500 1800
AR Path="/5FD5CA48" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA48" Ref="R?"  Part="1" 
F 0 "R?" H 1750 1900 50  0000 R CNN
F 1 "47k" V 1500 1850 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 1800 50  0001 C CNN
F 3 "~" H 1500 1800 50  0001 C CNN
	1    1500 1800
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA4E
P 1650 1650
AR Path="/5FD5CA4E" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA4E" Ref="R?"  Part="1" 
F 0 "R?" V 1750 1650 50  0000 C CNN
F 1 "100" V 1650 1650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 1650 50  0001 C CNN
F 3 "~" H 1650 1650 50  0001 C CNN
	1    1650 1650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CA55
P 1500 1950
AR Path="/5FD5CA55" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA55" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 1500 1700 50  0001 C CNN
F 1 "GND" H 1505 1777 50  0000 C CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:BAT54S D?
U 1 1 5FD5CA5B
P 1850 1650
AR Path="/5FD5CA5B" Ref="D?"  Part="1" 
AR Path="/5FD30D96/5FD5CA5B" Ref="D?"  Part="1" 
F 0 "D?" V 1700 1400 50  0000 L CNN
F 1 "BAT54S" V 1600 1350 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 1925 1775 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1730 1650 50  0001 C CNN
	1    1850 1650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CA61
P 1850 1400
AR Path="/5FD5CA61" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA61" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 1850 1250 50  0001 C CNN
F 1 "+5V" H 1865 1573 50  0000 C CNN
F 2 "" H 1850 1400 50  0001 C CNN
F 3 "" H 1850 1400 50  0001 C CNN
	1    1850 1400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CA67
P 1850 1950
AR Path="/5FD5CA67" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CA67" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 1850 2050 50  0001 C CNN
F 1 "-5V" H 1865 2123 50  0000 C CNN
F 2 "" H 1850 1950 50  0001 C CNN
F 3 "" H 1850 1950 50  0001 C CNN
	1    1850 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 1400 1850 1350
Wire Wire Line
	1800 1650 1850 1650
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA6F
P 2200 1650
AR Path="/5FD5CA6F" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA6F" Ref="R?"  Part="1" 
F 0 "R?" V 2300 1650 50  0000 C CNN
F 1 "10k" V 2200 1650 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2130 1650 50  0001 C CNN
F 3 "~" H 2200 1650 50  0001 C CNN
	1    2200 1650
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA75
P 2100 2500
AR Path="/5FD5CA75" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA75" Ref="R?"  Part="1" 
F 0 "R?" V 2200 2550 50  0000 C CNN
F 1 "5.1k" V 2100 2500 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 1650 1850 1650
Connection ~ 1850 1650
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CA7D
P 3600 2750
AR Path="/5FD5CA7D" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CA7D" Ref="R?"  Part="1" 
F 0 "R?" V 3700 2750 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CA83" Ref="R?"  Part="1" 
F 0 "R?" V 3450 2750 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CA89" Ref="R?"  Part="1" 
F 0 "R?" V 3450 2250 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CA8F" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 3600 3000 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CA9A" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 3200 1850 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CAA1" Ref="Q?"  Part="1" 
F 0 "Q?" H 3688 2046 50  0000 L CNN
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
AR Path="/5FD30D96/5FD5CAA8" Ref="#PWR0171"  Part="1" 
F 0 "#PWR0171" H 3600 1300 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CAAE" Ref="U?"  Part="2" 
F 0 "U?" H 2950 2250 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CAB4" Ref="R?"  Part="1" 
F 0 "R?" V 3050 1650 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CABA" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 2600 1900 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CAC5" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 2400 2900 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CACB" Ref="R?"  Part="1" 
F 0 "R?" V 2500 2650 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CAD2" Ref="R?"  Part="1" 
F 0 "R?" V 3500 1650 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CADC" Ref="U?"  Part="1" 
F 0 "U?" H 5150 2900 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CAE2" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 5500 3350 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CAE8" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 5500 1550 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CAEE" Ref="C?"  Part="1" 
F 0 "C?" V 5750 1900 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CAF4" Ref="C?"  Part="1" 
F 0 "C?" V 5650 2900 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CAFA" Ref="C?"  Part="1" 
F 0 "C?" V 5650 1900 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CB00" Ref="C?"  Part="1" 
F 0 "C?" V 5650 3050 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CB07" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 5850 1850 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CB0D" Ref="#PWR0177"  Part="1" 
F 0 "#PWR0177" H 5850 3000 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CB2A" Ref="R?"  Part="1" 
F 0 "R?" V 6000 2550 50  0000 R CNN
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
AR Path="/5FD30D96/5FD5CB30" Ref="R?"  Part="1" 
F 0 "R?" V 6400 2950 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CB36" Ref="#PWR0178"  Part="1" 
F 0 "#PWR0178" H 6300 2350 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CB3F" Ref="R?"  Part="1" 
F 0 "R?" V 6200 2550 50  0000 R CNN
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
AR Path="/5FD30D96/5FD5CB4A" Ref="R?"  Part="1" 
F 0 "R?" V 4800 2150 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CB50" Ref="#PWR0179"  Part="1" 
F 0 "#PWR0179" H 4550 2250 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CB56" Ref="R?"  Part="1" 
F 0 "R?" V 4800 2300 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CB62" Ref="R?"  Part="1" 
F 0 "R?" V 4450 3000 50  0000 R CNN
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
AR Path="/5FD30D96/5FD5CB68" Ref="#PWR0180"  Part="1" 
F 0 "#PWR0180" H 4550 2950 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CB75" Ref="R?"  Part="1" 
F 0 "R?" V 4850 2950 50  0000 C CNN
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
Text Notes 2250 1400 0    50   ~ 0
Bias section
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CB87
P 1700 3700
AR Path="/5FD5CB87" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CB87" Ref="R?"  Part="1" 
F 0 "R?" V 1600 3800 50  0000 R CNN
F 1 "47k" V 1700 3750 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 3700 50  0001 C CNN
F 3 "~" H 1700 3700 50  0001 C CNN
	1    1700 3700
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CB8E
P 1700 3850
AR Path="/5FD5CB8E" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB8E" Ref="#PWR0181"  Part="1" 
F 0 "#PWR0181" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1705 3677 50  0000 C CNN
F 2 "" H 1700 3850 50  0001 C CNN
F 3 "" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:BAT54S D?
U 1 1 5FD5CB94
P 2050 3550
AR Path="/5FD5CB94" Ref="D?"  Part="1" 
AR Path="/5FD30D96/5FD5CB94" Ref="D?"  Part="1" 
F 0 "D?" V 1800 3350 50  0000 L CNN
F 1 "BAT54S" V 2250 3250 50  0000 L CNN
F 2 "synkie_footprints:SOT-23" H 2125 3675 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1930 3550 50  0001 C CNN
	1    2050 3550
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FD5CB9A
P 2050 3250
AR Path="/5FD5CB9A" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CB9A" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0182" H 2050 3100 50  0001 C CNN
F 1 "+5V" H 2065 3423 50  0000 C CNN
F 2 "" H 2050 3250 50  0001 C CNN
F 3 "" H 2050 3250 50  0001 C CNN
	1    2050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3200 2050 3250
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CBA1
P 2450 3550
AR Path="/5FD5CBA1" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CBA1" Ref="R?"  Part="1" 
F 0 "R?" V 2350 3600 50  0000 C CNN
F 1 "100k" V 2450 3550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 3550 50  0001 C CNN
F 3 "~" H 2450 3550 50  0001 C CNN
	1    2450 3550
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FD5CBA7
P 3150 5850
AR Path="/5FD5CBA7" Ref="U?"  Part="3" 
AR Path="/5FD30D96/5FD5CBA7" Ref="U?"  Part="3" 
F 0 "U?" H 3200 6000 50  0000 C CNN
F 1 "LMH6643" H 3250 5700 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3150 5850 50  0001 C CNN
F 3 "~" H 3150 5850 50  0001 C CNN
	3    3150 5850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FD5CBAD
P 3000 3450
AR Path="/5FD5CBAD" Ref="U?"  Part="1" 
AR Path="/5FD30D96/5FD5CBAD" Ref="U?"  Part="1" 
F 0 "U?" H 2958 3496 50  0000 L CNN
F 1 "LMH6643" H 2958 3405 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3000 3450 50  0001 C CNN
F 3 "~" H 3000 3450 50  0001 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3550 2700 3550
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FD5CBB4
P 2600 3350
AR Path="/5FD5CBB4" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CBB4" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0183" H 2600 3100 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CBC2" Ref="#PWR0184"  Part="1" 
F 0 "#PWR0184" H 3050 5300 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CBC8" Ref="#PWR0185"  Part="1" 
F 0 "#PWR0185" H 3050 6350 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CBCE" Ref="C?"  Part="1" 
F 0 "C?" V 2850 6100 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CBD4" Ref="C?"  Part="1" 
F 0 "C?" V 2850 5400 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CBDA" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 2750 6000 50  0001 C CNN
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
Wire Wire Line
	2000 3550 2050 3550
Wire Wire Line
	2300 3550 2050 3550
Connection ~ 2050 3550
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CBF1
P 1850 3550
AR Path="/5FD5CBF1" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CBF1" Ref="R?"  Part="1" 
F 0 "R?" V 1950 3550 50  0000 C CNN
F 1 "100" V 1850 3550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 3550 50  0001 C CNN
F 3 "~" H 1850 3550 50  0001 C CNN
	1    1850 3550
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 2 1 5FD5CBF7
P 3550 3450
AR Path="/5FD5CBF7" Ref="Q?"  Part="2" 
AR Path="/5FD30D96/5FD5CBF7" Ref="Q?"  Part="2" 
F 0 "Q?" H 3688 3404 50  0000 L CNN
F 1 "PMBT3906YS" H 3688 3495 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3450 3475 50  0001 C CNN
F 3 "" H 3450 3475 50  0001 C CNN
	2    3550 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 3550 2700 3800
$Comp
L synkie_symbols:R R?
U 1 1 5FD5CBFE
P 3500 4000
AR Path="/5FD5CBFE" Ref="R?"  Part="1" 
AR Path="/5FD30D96/5FD5CBFE" Ref="R?"  Part="1" 
F 0 "R?" V 3400 4050 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CC05" Ref="#PWR0187"  Part="1" 
F 0 "#PWR0187" H 3500 4300 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CC0B" Ref="R?"  Part="1" 
F 0 "R?" V 3250 4150 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CC12" Ref="#PWR0188"  Part="1" 
F 0 "#PWR0188" H 3750 3000 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CC19" Ref="R?"  Part="1" 
F 0 "R?" V 2900 3800 50  0000 C CNN
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
AR Path="/5FD30D96/5FD5CC24" Ref="Q?"  Part="1" 
F 0 "Q?" H 3688 2446 50  0000 L CNN
F 1 "BC847" H 3688 2355 50  0000 L CNN
F 2 "synkie_footprints:SOT-23_BEC" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 1 1 5FD5CC2A
P 3450 4350
AR Path="/5FD5CC2A" Ref="Q?"  Part="1" 
AR Path="/5FD30D96/5FD5CC2A" Ref="Q?"  Part="1" 
F 0 "Q?" H 3588 4304 50  0000 L CNN
F 1 "PMBT3906YS" H 3588 4395 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3350 4375 50  0001 C CNN
F 3 "" H 3350 4375 50  0001 C CNN
	1    3450 4350
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
AR Path="/5FD30D96/5FD5CC3A" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 3500 3700 50  0001 C CNN
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
AR Path="/5FD30D96/5FD5CC41" Ref="R?"  Part="1" 
F 0 "R?" V 4450 2750 50  0000 C CNN
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
Connection ~ 2050 3250
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FD5CC57
P 2050 3850
AR Path="/5FD5CC57" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FD5CC57" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 2050 3950 50  0001 C CNN
F 1 "-5V" H 2065 4023 50  0000 C CNN
F 2 "" H 2050 3850 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	3600 3700 4950 3700
Wire Wire Line
	4950 3050 4950 3700
Text Notes 1200 1150 0    50   ~ 0
SCALE-BIAS
Wire Wire Line
	7550 2100 7750 2100
Wire Wire Line
	7750 2100 7750 1750
Wire Wire Line
	7750 1750 7950 1750
Connection ~ 7550 2100
Text Notes 7000 1650 0    50   ~ 0
CLIPPER
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
AR Path="/5FD30D96/5FD5CBBC" Ref="R?"  Part="1" 
F 0 "R?" V 2450 4150 50  0000 C CNN
F 1 "100k" V 2550 4150 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 4150 50  0001 C CNN
F 3 "~" H 2550 4150 50  0001 C CNN
	1    2550 4150
	0    -1   -1   0   
$EndComp
Text HLabel 1450 3000 0    50   Input ~ 0
INPUT
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FD911B2
P 7000 2750
AR Path="/5FD911B2" Ref="J?"  Part="1" 
AR Path="/5FD30D96/5FD911B2" Ref="J?"  Part="1" 
F 0 "J?" H 7028 2776 50  0000 L CNN
F 1 "SCABI_OUT" H 7050 2700 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 7000 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5FD911B8
P 2950 2950
AR Path="/5FD911B8" Ref="J?"  Part="1" 
AR Path="/5FD30D96/5FD911B8" Ref="J?"  Part="1" 
F 0 "J?" H 2978 2976 50  0000 L CNN
F 1 "SCABI_IN" H 2978 2885 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 2950 2950 50  0001 C CNN
F 3 "~" H 2950 2950 50  0001 C CNN
	1    2950 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2150 8150 1950
Connection ~ 8150 1950
Wire Wire Line
	8750 2150 8750 3050
Wire Wire Line
	8750 3050 8750 4100
Wire Wire Line
	9400 4300 9400 4100
Connection ~ 9400 4300
Wire Wire Line
	9350 4300 9400 4300
Text HLabel 9850 3150 2    50   Input ~ 0
OUTPUT
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FE0E9B7
P 2150 5600
AR Path="/5FE0E9B7" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FE0E9B7" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 2150 5450 50  0001 C CNN
F 1 "+5V" H 2165 5773 50  0000 C CNN
F 2 "" H 2150 5600 50  0001 C CNN
F 3 "" H 2150 5600 50  0001 C CNN
	1    2150 5600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FE0E9BD
P 2150 5750
AR Path="/5FE0E9BD" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FE0E9BD" Ref="C?"  Part="1" 
F 0 "C?" H 2268 5796 50  0000 L CNN
F 1 "10u" H 2268 5705 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2188 5600 50  0001 C CNN
F 3 "~" H 2150 5750 50  0001 C CNN
	1    2150 5750
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:CP_Small C?
U 1 1 5FE0E9C3
P 2150 6050
AR Path="/5FE0E9C3" Ref="C?"  Part="1" 
AR Path="/5FD30D96/5FE0E9C3" Ref="C?"  Part="1" 
F 0 "C?" H 2268 6096 50  0000 L CNN
F 1 "10u" H 2268 6005 50  0000 L CNN
F 2 "synkie_footprints:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 2188 5900 50  0001 C CNN
F 3 "~" H 2150 6050 50  0001 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FE0E9C9
P 2150 6200
AR Path="/5FE0E9C9" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FE0E9C9" Ref="#PWR0192"  Part="1" 
F 0 "#PWR0192" H 2150 6300 50  0001 C CNN
F 1 "-5V" H 2165 6373 50  0000 C CNN
F 2 "" H 2150 6200 50  0001 C CNN
F 3 "" H 2150 6200 50  0001 C CNN
	1    2150 6200
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FE0E9CF
P 2150 5900
AR Path="/5FE0E9CF" Ref="#PWR?"  Part="1" 
AR Path="/5FD30D96/5FE0E9CF" Ref="#PWR0193"  Part="1" 
F 0 "#PWR0193" H 2150 5650 50  0001 C CNN
F 1 "GND" V 2155 5772 50  0000 R CNN
F 2 "" H 2150 5900 50  0001 C CNN
F 3 "" H 2150 5900 50  0001 C CNN
	1    2150 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3150 2250 3000
Wire Wire Line
	2250 3000 1450 3000
Wire Wire Line
	4200 3150 4200 2750
Wire Wire Line
	2250 3150 2950 3150
Text Label 4200 2750 2    50   ~ 0
scabi_in
Text GLabel 1250 1650 0    50   Input ~ 0
BIAS-IN
Text GLabel 1350 3550 0    50   Input ~ 0
SCALE-IN
Wire Wire Line
	1250 1650 1500 1650
Connection ~ 1500 1650
Wire Wire Line
	1700 3550 1350 3550
Connection ~ 1700 3550
Connection ~ 2950 3150
Wire Wire Line
	2950 3150 4200 3150
Wire Wire Line
	6450 2950 7000 2950
Connection ~ 7000 2950
Wire Wire Line
	7000 2950 7850 2950
Text Label 7350 2950 0    50   ~ 0
scabi-out
$EndSCHEMATC
