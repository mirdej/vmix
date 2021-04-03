EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "vMIX20-Resyncer"
Date "2020-11-23"
Rev ""
Comp "[ a n y m a ]"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4xxx:4053 U?
U 1 1 5FEF2495
P 7650 3550
AR Path="/5FEF2495" Ref="U?"  Part="1" 
AR Path="/5FED65BF/5FEF2495" Ref="U501"  Part="1" 
F 0 "U501" H 7450 4300 50  0000 C CNN
F 1 "4053" H 7850 4300 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7650 3550 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 7650 3550 50  0001 C CNN
	1    7650 3550
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FEF249D
P 2850 5500
AR Path="/5FEF249D" Ref="U?"  Part="2" 
AR Path="/5FED65BF/5FEF249D" Ref="U503"  Part="2" 
F 0 "U503" H 2850 5867 50  0000 C CNN
F 1 "LMH6643" H 2850 5776 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2850 5500 50  0001 C CNN
F 3 "~" H 2850 5500 50  0001 C CNN
	2    2850 5500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FEF24A3
P 4500 5450
AR Path="/5FEF24A3" Ref="U?"  Part="1" 
AR Path="/5FED65BF/5FEF24A3" Ref="U503"  Part="1" 
F 0 "U503" H 4500 5750 50  0000 C CNN
F 1 "LMH6643" H 4600 5650 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4500 5450 50  0001 C CNN
F 3 "~" H 4500 5450 50  0001 C CNN
	1    4500 5450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF24A9
P 2800 5800
AR Path="/5FEF24A9" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF24A9" Ref="R512"  Part="1" 
F 0 "R512" V 2800 5800 50  0000 C CNN
F 1 "220" V 2900 5800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 5800 50  0001 C CNN
F 3 "~" H 2800 5800 50  0001 C CNN
	1    2800 5800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEF24AF
P 2400 5500
AR Path="/5FEF24AF" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEF24AF" Ref="C503"  Part="1" 
F 0 "C503" H 2250 5750 50  0000 L CNN
F 1 "10p" H 2250 5650 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 5350 50  0001 C CNN
F 3 "~" H 2400 5500 50  0001 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEF24B5
P 3950 5450
AR Path="/5FEF24B5" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEF24B5" Ref="C502"  Part="1" 
F 0 "C502" H 3950 5500 50  0000 L CNN
F 1 "10p" H 3800 5350 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3988 5300 50  0001 C CNN
F 3 "~" H 3950 5450 50  0001 C CNN
	1    3950 5450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24BB
P 2400 5600
AR Path="/5FEF24BB" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24BB" Ref="#PWR0516"  Part="1" 
F 0 "#PWR0516" H 2400 5350 50  0001 C CNN
F 1 "GND" H 2405 5427 50  0001 C CNN
F 2 "" H 2400 5600 50  0001 C CNN
F 3 "" H 2400 5600 50  0001 C CNN
	1    2400 5600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24C1
P 3950 5600
AR Path="/5FEF24C1" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24C1" Ref="#PWR0517"  Part="1" 
F 0 "#PWR0517" H 3950 5350 50  0001 C CNN
F 1 "GND" H 3955 5427 50  0001 C CNN
F 2 "" H 3950 5600 50  0001 C CNN
F 3 "" H 3950 5600 50  0001 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5400 2400 5400
Wire Wire Line
	3950 5550 3950 5600
$Comp
L Device:R_POT_Dual RV?
U 1 1 5FEF24C9
P 3400 6100
AR Path="/5FEF24C9" Ref="RV?"  Part="1" 
AR Path="/5FED65BF/5FEF24C9" Ref="RV501"  Part="1" 
F 0 "RV501" H 3550 5850 50  0000 R CNN
F 1 "R_POT_Dual" H 3300 5850 50  0000 R CNN
F 2 "synkie_footprints:RK12L123" H 3650 6025 50  0001 C CNN
F 3 "~" H 3650 6025 50  0001 C CNN
	1    3400 6100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24CF
P 7650 4450
AR Path="/5FEF24CF" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24CF" Ref="#PWR0512"  Part="1" 
F 0 "#PWR0512" H 7650 4200 50  0001 C CNN
F 1 "GND" H 7655 4277 50  0000 C CNN
F 2 "" H 7650 4450 50  0001 C CNN
F 3 "" H 7650 4450 50  0001 C CNN
	1    7650 4450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF24D5
P 7750 4450
AR Path="/5FEF24D5" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24D5" Ref="#PWR0513"  Part="1" 
F 0 "#PWR0513" H 7750 4550 50  0001 C CNN
F 1 "-5V" H 7765 4623 50  0000 C CNN
F 2 "" H 7750 4450 50  0001 C CNN
F 3 "" H 7750 4450 50  0001 C CNN
	1    7750 4450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF24DB
P 7650 2650
AR Path="/5FEF24DB" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24DB" Ref="#PWR0503"  Part="1" 
F 0 "#PWR0503" H 7650 2500 50  0001 C CNN
F 1 "+5V" H 7665 2823 50  0000 C CNN
F 2 "" H 7650 2650 50  0001 C CNN
F 3 "" H 7650 2650 50  0001 C CNN
	1    7650 2650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 2 1 5FEF24E7
P 9300 3650
AR Path="/5FEF24E7" Ref="U?"  Part="2" 
AR Path="/5FED65BF/5FEF24E7" Ref="U502"  Part="2" 
F 0 "U502" H 9300 4017 50  0000 C CNN
F 1 "LMH6643" H 9300 3926 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
	2    9300 3650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF24F9
P 9300 4050
AR Path="/5FEF24F9" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF24F9" Ref="R507"  Part="1" 
F 0 "R507" V 9093 4050 50  0000 C CNN
F 1 "220" V 9184 4050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 4050 50  0001 C CNN
F 3 "~" H 9300 4050 50  0001 C CNN
	1    9300 4050
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF24FF
P 9000 4200
AR Path="/5FEF24FF" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF24FF" Ref="R509"  Part="1" 
F 0 "R509" H 8930 4154 50  0000 R CNN
F 1 "220" H 8930 4245 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 4200 50  0001 C CNN
F 3 "~" H 9000 4200 50  0001 C CNN
	1    9000 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3750 9000 4050
Wire Wire Line
	9450 4050 9600 4050
Wire Wire Line
	9600 4050 9600 3650
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2508
P 9000 4350
AR Path="/5FEF2508" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2508" Ref="#PWR0511"  Part="1" 
F 0 "#PWR0511" H 9000 4100 50  0001 C CNN
F 1 "GND" H 9005 4177 50  0000 C CNN
F 2 "" H 9000 4350 50  0001 C CNN
F 3 "" H 9000 4350 50  0001 C CNN
	1    9000 4350
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2521
P 9600 2700
AR Path="/5FEF2521" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2521" Ref="R502"  Part="1" 
F 0 "R502" V 9807 2700 50  0000 C CNN
F 1 "300" V 9716 2700 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 2700 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2527
P 9600 2550
AR Path="/5FEF2527" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2527" Ref="#PWR0502"  Part="1" 
F 0 "#PWR0502" H 9600 2300 50  0001 C CNN
F 1 "GND" H 9605 2377 50  0000 C CNN
F 2 "" H 9600 2550 50  0001 C CNN
F 3 "" H 9600 2550 50  0001 C CNN
	1    9600 2550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF252D
P 9600 3000
AR Path="/5FEF252D" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF252D" Ref="R503"  Part="1" 
F 0 "R503" V 9807 3000 50  0000 C CNN
F 1 "4k7" V 9716 3000 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 3000 50  0001 C CNN
F 3 "~" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF2533
P 9600 3150
AR Path="/5FEF2533" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2533" Ref="#PWR0506"  Part="1" 
F 0 "#PWR0506" H 9600 3250 50  0001 C CNN
F 1 "-5V" H 9615 3323 50  0000 C CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	-1   0    0    1   
$EndComp
Text Label 9900 2850 0    50   ~ 0
synctip
Connection ~ 3150 3750
Wire Wire Line
	3150 4050 3150 3750
Wire Wire Line
	2500 4050 3150 4050
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF253F
P 4150 2700
AR Path="/5FEF253F" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF253F" Ref="#PWR0504"  Part="1" 
F 0 "#PWR0504" H 4150 2800 50  0001 C CNN
F 1 "-5V" H 4150 2850 50  0000 C CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "" H 4150 2700 50  0001 C CNN
	1    4150 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2900 3800 2900
Connection ~ 3750 2900
Wire Wire Line
	3750 3150 3750 2900
Wire Wire Line
	3450 3150 3750 3150
Wire Wire Line
	3450 3100 3450 3150
$Comp
L synkie_symbols:R R?
U 1 1 5FEF254A
P 3450 3300
AR Path="/5FEF254A" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF254A" Ref="R504"  Part="1" 
F 0 "R504" H 3380 3254 50  0000 R CNN
F 1 "5k6" H 3380 3345 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 3300 50  0001 C CNN
F 3 "~" H 3450 3300 50  0001 C CNN
	1    3450 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2900 3750 2900
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEF2551
P 3450 3450
AR Path="/5FEF2551" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2551" Ref="#PWR0507"  Part="1" 
F 0 "#PWR0507" H 3450 3550 50  0001 C CNN
F 1 "-5V" H 3450 3600 50  0000 C CNN
F 2 "" H 3450 3450 50  0001 C CNN
F 3 "" H 3450 3450 50  0001 C CNN
	1    3450 3450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2557
P 3200 3050
AR Path="/5FEF2557" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2557" Ref="#PWR0505"  Part="1" 
F 0 "#PWR0505" H 3200 2800 50  0001 C CNN
F 1 "GND" H 3205 2877 50  0001 C CNN
F 2 "" H 3200 3050 50  0001 C CNN
F 3 "" H 3200 3050 50  0001 C CNN
	1    3200 3050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF255D
P 3200 2400
AR Path="/5FEF255D" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF255D" Ref="#PWR0501"  Part="1" 
F 0 "#PWR0501" H 3200 2250 50  0001 C CNN
F 1 "+5V" H 3200 2550 50  0000 C CNN
F 2 "" H 3200 2400 50  0001 C CNN
F 3 "" H 3200 2400 50  0001 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2563
P 3200 2550
AR Path="/5FEF2563" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2563" Ref="R501"  Part="1" 
F 0 "R501" H 3130 2504 50  0000 R CNN
F 1 "120" H 3130 2595 50  0000 R CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 2550 50  0001 C CNN
F 3 "~" H 3200 2550 50  0001 C CNN
	1    3200 2550
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:D D?
U 1 1 5FEF2569
P 3200 2900
AR Path="/5FEF2569" Ref="D?"  Part="1" 
AR Path="/5FED65BF/5FEF2569" Ref="D501"  Part="1" 
F 0 "D501" V 3246 2820 50  0000 R CNN
F 1 "D" V 3155 2820 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 3200 2900 50  0001 C CNN
F 3 "~" H 3200 2900 50  0001 C CNN
	1    3200 2900
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 1 1 5FEF256F
P 3500 2900
AR Path="/5FEF256F" Ref="Q?"  Part="1" 
AR Path="/5FED65BF/5FEF256F" Ref="Q501"  Part="1" 
F 0 "Q501" H 3300 2750 50  0000 L CNN
F 1 "PMBT3906YS" H 3638 2945 50  0001 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3400 2925 50  0001 C CNN
F 3 "" H 3400 2925 50  0001 C CNN
	1    3500 2900
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:PMBT3906YS Q?
U 2 1 5FEF2575
P 3950 2900
AR Path="/5FEF2575" Ref="Q?"  Part="2" 
AR Path="/5FED65BF/5FEF2575" Ref="Q501"  Part="2" 
F 0 "Q501" H 3750 3050 50  0000 L CNN
F 1 "PMBT3906YS" H 4100 2700 50  0000 L CNN
F 2 "synkie_footprints:SOT-363_SC-70-6_Handsoldering" H 3850 2925 50  0001 C CNN
F 3 "" H 3850 2925 50  0001 C CNN
	2    3950 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF257B
P 4000 4800
AR Path="/5FEF257B" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF257B" Ref="#PWR0515"  Part="1" 
F 0 "#PWR0515" H 4000 4550 50  0001 C CNN
F 1 "GND" H 4005 4627 50  0000 C CNN
F 2 "" H 4000 4800 50  0001 C CNN
F 3 "" H 4000 4800 50  0001 C CNN
	1    4000 4800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF2581
P 4000 4000
AR Path="/5FEF2581" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2581" Ref="#PWR0510"  Part="1" 
F 0 "#PWR0510" H 4000 3850 50  0001 C CNN
F 1 "+5V" H 4000 4150 50  0000 C CNN
F 2 "" H 4000 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2587
P 3300 3750
AR Path="/5FEF2587" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2587" Ref="R506"  Part="1" 
F 0 "R506" V 3093 3750 50  0000 C CNN
F 1 "300" V 3184 3750 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3750 50  0001 C CNN
F 3 "~" H 3300 3750 50  0001 C CNN
	1    3300 3750
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF258D
P 4000 4150
AR Path="/5FEF258D" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF258D" Ref="R508"  Part="1" 
F 0 "R508" H 4070 4196 50  0000 L CNN
F 1 "47k" H 4070 4105 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEF2593
P 3300 4600
AR Path="/5FEF2593" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2593" Ref="#PWR0514"  Part="1" 
F 0 "#PWR0514" H 3300 4450 50  0001 C CNN
F 1 "+5V" H 3300 4750 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PEMX1 Q?
U 2 1 5FEF2599
P 3950 4500
AR Path="/5FEF2599" Ref="Q?"  Part="2" 
AR Path="/5FED65BF/5FEF2599" Ref="Q502"  Part="2" 
F 0 "Q502" H 3750 4650 50  0000 L CNN
F 1 "PEMX1" H 4000 4500 50  0000 L CNN
F 2 "synkie_footprints:SOT-666" H 3850 4525 50  0001 C CNN
F 3 "" H 3850 4525 50  0001 C CNN
	2    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:PEMX1 Q?
U 1 1 5FEF259F
P 3500 4500
AR Path="/5FEF259F" Ref="Q?"  Part="1" 
AR Path="/5FED65BF/5FEF259F" Ref="Q502"  Part="1" 
F 0 "Q502" H 3300 4350 50  0000 L CNN
F 1 "PEMX1" H 3638 4545 50  0001 L CNN
F 2 "synkie_footprints:SOT-666" H 3400 4525 50  0001 C CNN
F 3 "" H 3400 4525 50  0001 C CNN
	1    3500 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3850 2550 3850
Wire Wire Line
	2500 4050 2500 3850
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 1 1 5FEF25A7
P 2850 3750
AR Path="/5FEF25A7" Ref="U?"  Part="1" 
AR Path="/5FED65BF/5FEF25A7" Ref="U502"  Part="1" 
F 0 "U502" H 3000 3600 50  0000 C CNN
F 1 "LMH6643" H 2950 3500 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2850 3750 50  0001 C CNN
F 3 "~" H 2850 3750 50  0001 C CNN
	1    2850 3750
	1    0    0    -1  
$EndComp
Text Label 4550 3750 0    50   ~ 0
clipper_out
Wire Wire Line
	2650 5800 2550 5800
Wire Wire Line
	2550 5600 2550 5800
Connection ~ 2550 5800
$Comp
L synkie_symbols:R R?
U 1 1 5FEF25C3
P 2200 5800
AR Path="/5FEF25C3" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF25C3" Ref="R511"  Part="1" 
F 0 "R511" V 2200 5800 50  0000 C CNN
F 1 "220" V 2300 5800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2130 5800 50  0001 C CNN
F 3 "~" H 2200 5800 50  0001 C CNN
	1    2200 5800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF25C9
P 1750 5800
AR Path="/5FEF25C9" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF25C9" Ref="R510"  Part="1" 
F 0 "R510" V 1543 5800 50  0000 C CNN
F 1 "75" V 1634 5800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 5800 50  0001 C CNN
F 3 "~" H 1750 5800 50  0001 C CNN
	1    1750 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 5800 2550 5800
Wire Wire Line
	1900 5800 1950 5800
Wire Wire Line
	3150 6000 3000 6000
Wire Wire Line
	3000 6000 3000 6200
Wire Wire Line
	3000 6200 1950 6200
Wire Wire Line
	1950 6200 1950 5800
Connection ~ 3000 6200
Connection ~ 1950 5800
Wire Wire Line
	1950 5800 2050 5800
Wire Wire Line
	3300 6300 3300 6200
Connection ~ 2400 5400
Wire Wire Line
	2000 6300 2000 5400
Wire Wire Line
	2000 5400 2400 5400
Wire Wire Line
	2000 6300 3300 6300
Wire Wire Line
	4200 5350 3950 5350
Connection ~ 4800 5450
Wire Wire Line
	3150 5800 2950 5800
Wire Wire Line
	3150 5500 3150 5800
Connection ~ 4200 5800
Wire Wire Line
	4200 5800 4150 5800
Wire Wire Line
	4200 5800 4200 5550
Wire Wire Line
	4350 5800 4200 5800
Wire Wire Line
	4800 5800 4650 5800
$Comp
L synkie_symbols:R R?
U 1 1 5FEF25E7
P 4500 5800
AR Path="/5FEF25E7" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF25E7" Ref="R514"  Part="1" 
F 0 "R514" V 4500 5800 50  0000 C CNN
F 1 "220" V 4600 5800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 5800 50  0001 C CNN
F 3 "~" H 4500 5800 50  0001 C CNN
	1    4500 5800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:R R?
U 1 1 5FEF25ED
P 4000 5800
AR Path="/5FEF25ED" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF25ED" Ref="R513"  Part="1" 
F 0 "R513" V 4000 5800 50  0000 C CNN
F 1 "220" V 4100 5800 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3930 5800 50  0001 C CNN
F 3 "~" H 4000 5800 50  0001 C CNN
	1    4000 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5450 4800 5800
Wire Wire Line
	3150 5800 3500 5800
Connection ~ 3150 5800
Wire Wire Line
	3500 6200 3500 6000
Wire Wire Line
	3500 6000 3650 6000
Wire Wire Line
	3500 6000 3500 5800
Connection ~ 3500 6000
Connection ~ 3500 5800
Wire Wire Line
	3500 5800 3850 5800
Wire Wire Line
	3800 6200 3800 5350
Wire Wire Line
	3800 5350 3950 5350
Connection ~ 3950 5350
Wire Notes Line
	1250 5050 5800 5050
Wire Notes Line
	5800 5050 5800 6450
Wire Notes Line
	5800 6450 1250 6450
Wire Notes Line
	1250 6450 1250 5050
Text Notes 1300 5150 0    50   ~ 0
PHASE-SHIFTER
Wire Wire Line
	3450 2700 3200 2700
Wire Wire Line
	3200 2700 3200 2750
Connection ~ 3200 2700
Connection ~ 3450 3150
Wire Wire Line
	4000 2700 4150 2700
Wire Wire Line
	4000 3100 4000 3750
Connection ~ 4000 3750
Wire Wire Line
	3650 4500 3750 4500
Wire Wire Line
	4000 4300 3750 4300
Wire Wire Line
	3750 4300 3750 4500
Connection ~ 3750 4500
Wire Wire Line
	3750 4500 3800 4500
Connection ~ 4000 4300
Wire Wire Line
	3450 4700 3300 4700
Wire Wire Line
	3300 4700 3300 4600
Wire Wire Line
	3450 3750 4000 3750
Wire Wire Line
	3450 4300 3450 3750
Connection ~ 3450 3750
Wire Notes Line
	1250 2150 1250 5000
Text Notes 1300 2250 0    50   ~ 0
CLIPPER
Wire Wire Line
	9150 4050 9000 4050
Connection ~ 9000 4050
Wire Wire Line
	9600 2850 9900 2850
Connection ~ 9600 2850
Wire Notes Line
	5850 2150 10450 2150
Text Notes 5900 2250 0    50   ~ 0
RESYNCER
Wire Notes Line
	5800 5000 5800 2150
Wire Notes Line
	1250 2150 5800 2150
Wire Notes Line
	1250 5000 5800 5000
Wire Notes Line
	5850 5000 10450 5000
Wire Notes Line
	10450 2150 10450 5000
Wire Notes Line
	5850 2150 5850 5000
Wire Wire Line
	1600 5800 1350 5800
$Comp
L synkie_symbols:R R?
U 1 1 5FEF2634
P 8300 3550
AR Path="/5FEF2634" Ref="R?"  Part="1" 
AR Path="/5FED65BF/5FEF2634" Ref="R505"  Part="1" 
F 0 "R505" V 8093 3550 50  0000 C CNN
F 1 "120" V 8184 3550 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 3550 50  0001 C CNN
F 3 "~" H 8300 3550 50  0001 C CNN
	1    8300 3550
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEF263A
P 8450 3650
AR Path="/5FEF263A" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEF263A" Ref="C501"  Part="1" 
F 0 "C501" H 8550 3650 50  0000 L CNN
F 1 "120p" H 8200 3550 50  0000 L CNN
F 2 "synkie_footprints:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8488 3500 50  0001 C CNN
F 3 "~" H 8450 3650 50  0001 C CNN
	1    8450 3650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF2640
P 8450 3750
AR Path="/5FEF2640" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF2640" Ref="#PWR0508"  Part="1" 
F 0 "#PWR0508" H 8450 3500 50  0001 C CNN
F 1 "GND" H 8455 3577 50  0000 C CNN
F 2 "" H 8450 3750 50  0001 C CNN
F 3 "" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3550 8450 3550
Connection ~ 8450 3550
$Comp
L synkie_symbols:D D?
U 1 1 5FEF2648
P 3750 4650
AR Path="/5FEF2648" Ref="D?"  Part="1" 
AR Path="/5FED65BF/5FEF2648" Ref="D502"  Part="1" 
F 0 "D502" V 3850 4500 50  0000 L CNN
F 1 "BAT54" V 3950 4400 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 3750 4650 50  0001 C CNN
F 3 "~" H 3750 4650 50  0001 C CNN
	1    3750 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 4800 4000 4800
Wire Wire Line
	4000 4700 4000 4800
Connection ~ 4000 4800
Wire Wire Line
	4000 3750 4550 3750
Text Notes 1650 3350 0    50   ~ 0
from vm003eq-scabi-out
Wire Wire Line
	2550 3650 2250 3650
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEFEC12
P 2150 7150
AR Path="/5FEFEC12" Ref="U?"  Part="3" 
AR Path="/5FED65BF/5FEFEC12" Ref="U502"  Part="3" 
F 0 "U502" H 2150 7400 50  0000 L CNN
F 1 "LMH6643" H 2150 7300 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 2150 7150 50  0001 C CNN
F 3 "~" H 2150 7150 50  0001 C CNN
	3    2150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7150 1850 7050
Wire Wire Line
	1850 7250 1850 7150
Connection ~ 1850 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC1B
P 1850 7150
AR Path="/5FEFEC1B" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC1B" Ref="#PWR0522"  Part="1" 
F 0 "#PWR0522" H 1850 6900 50  0001 C CNN
F 1 "GND" H 1855 6977 50  0001 C CNN
F 2 "" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0001 C CNN
	1    1850 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6850 2050 6850
Wire Wire Line
	1850 6850 1950 6850
Connection ~ 1950 6850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC24
P 1950 6850
AR Path="/5FEFEC24" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC24" Ref="#PWR0519"  Part="1" 
F 0 "#PWR0519" H 1950 6700 50  0001 C CNN
F 1 "+5V" H 1950 7000 50  0000 C CNN
F 2 "" H 1950 6850 50  0001 C CNN
F 3 "" H 1950 6850 50  0001 C CNN
	1    1950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7450 2050 7450
Wire Wire Line
	1850 7450 1950 7450
Connection ~ 1950 7450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC2D
P 1950 7450
AR Path="/5FEFEC2D" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC2D" Ref="#PWR0525"  Part="1" 
F 0 "#PWR0525" H 1950 7550 50  0001 C CNN
F 1 "-5V" H 1950 7600 50  0000 C CNN
F 2 "" H 1950 7450 50  0001 C CNN
F 3 "" H 1950 7450 50  0001 C CNN
	1    1950 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC33
P 1850 7350
AR Path="/5FEFEC33" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC33" Ref="C507"  Part="1" 
F 0 "C507" V 1950 7350 50  0000 C CNN
F 1 "100n" V 1712 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1850 7350 50  0001 C CNN
F 3 "~" H 1850 7350 50  0001 C CNN
	1    1850 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC39
P 1850 6950
AR Path="/5FEFEC39" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC39" Ref="C504"  Part="1" 
F 0 "C504" V 1950 6950 50  0000 C CNN
F 1 "100n" V 1712 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1850 6950 50  0001 C CNN
F 3 "~" H 1850 6950 50  0001 C CNN
	1    1850 6950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 7150 5450 7050
Wire Wire Line
	5450 7250 5450 7150
Connection ~ 5450 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC42
P 5450 7150
AR Path="/5FEFEC42" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC42" Ref="#PWR0523"  Part="1" 
F 0 "#PWR0523" H 5450 6900 50  0001 C CNN
F 1 "GND" H 5455 6977 50  0001 C CNN
F 2 "" H 5450 7150 50  0001 C CNN
F 3 "" H 5450 7150 50  0001 C CNN
	1    5450 7150
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC48
P 5450 7350
AR Path="/5FEFEC48" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC48" Ref="C508"  Part="1" 
F 0 "C508" V 5550 7350 50  0000 C CNN
F 1 "100n" V 5312 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 7350 50  0001 C CNN
F 3 "~" H 5450 7350 50  0001 C CNN
	1    5450 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC4E
P 5450 6950
AR Path="/5FEFEC4E" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC4E" Ref="C505"  Part="1" 
F 0 "C505" V 5550 6950 50  0000 C CNN
F 1 "100n" V 5312 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 6950 50  0001 C CNN
F 3 "~" H 5450 6950 50  0001 C CNN
	1    5450 6950
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC54
P 5450 6850
AR Path="/5FEFEC54" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC54" Ref="#PWR0520"  Part="1" 
F 0 "#PWR0520" H 5450 6700 50  0001 C CNN
F 1 "+5V" H 5450 7000 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC5A
P 5450 7450
AR Path="/5FEFEC5A" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC5A" Ref="#PWR0526"  Part="1" 
F 0 "#PWR0526" H 5450 7550 50  0001 C CNN
F 1 "-5V" H 5450 7600 50  0000 C CNN
F 2 "" H 5450 7450 50  0001 C CNN
F 3 "" H 5450 7450 50  0001 C CNN
	1    5450 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U?
U 3 1 5FEFEC60
P 6100 7150
AR Path="/5FEFEC60" Ref="U?"  Part="3" 
AR Path="/5FED65BF/5FEFEC60" Ref="U503"  Part="3" 
F 0 "U503" H 6100 7517 50  0000 C CNN
F 1 "LMH6643" H 6100 7426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6100 7150 50  0001 C CNN
F 3 "~" H 6100 7150 50  0001 C CNN
	3    6100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 7150 5900 7050
Wire Wire Line
	5900 7250 5900 7150
Connection ~ 5900 7150
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEFEC69
P 5900 7150
AR Path="/5FEFEC69" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC69" Ref="#PWR0524"  Part="1" 
F 0 "#PWR0524" H 5900 6900 50  0001 C CNN
F 1 "GND" H 5905 6977 50  0001 C CNN
F 2 "" H 5900 7150 50  0001 C CNN
F 3 "" H 5900 7150 50  0001 C CNN
	1    5900 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 6850 6100 6850
Wire Wire Line
	5900 6850 6000 6850
Connection ~ 6000 6850
$Comp
L synkie_symbols:+5V #PWR?
U 1 1 5FEFEC72
P 6000 6850
AR Path="/5FEFEC72" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC72" Ref="#PWR0521"  Part="1" 
F 0 "#PWR0521" H 6000 6700 50  0001 C CNN
F 1 "+5V" H 6000 7000 50  0000 C CNN
F 2 "" H 6000 6850 50  0001 C CNN
F 3 "" H 6000 6850 50  0001 C CNN
	1    6000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 7450 6100 7450
Wire Wire Line
	5900 7450 6000 7450
Connection ~ 6000 7450
$Comp
L synkie_symbols:-5V #PWR?
U 1 1 5FEFEC7B
P 6000 7450
AR Path="/5FEFEC7B" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEFEC7B" Ref="#PWR0527"  Part="1" 
F 0 "#PWR0527" H 6000 7550 50  0001 C CNN
F 1 "-5V" H 6000 7600 50  0000 C CNN
F 2 "" H 6000 7450 50  0001 C CNN
F 3 "" H 6000 7450 50  0001 C CNN
	1    6000 7450
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC81
P 5900 7350
AR Path="/5FEFEC81" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC81" Ref="C509"  Part="1" 
F 0 "C509" V 6000 7350 50  0000 C CNN
F 1 "100n" V 5762 7350 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5900 7350 50  0001 C CNN
F 3 "~" H 5900 7350 50  0001 C CNN
	1    5900 7350
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C?
U 1 1 5FEFEC87
P 5900 6950
AR Path="/5FEFEC87" Ref="C?"  Part="1" 
AR Path="/5FED65BF/5FEFEC87" Ref="C506"  Part="1" 
F 0 "C506" V 6000 6950 50  0000 C CNN
F 1 "100n" V 5762 6950 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5900 6950 50  0001 C CNN
F 3 "~" H 5900 6950 50  0001 C CNN
	1    5900 6950
	-1   0    0    1   
$EndComp
Text HLabel 2250 3650 0    50   Input ~ 0
INPUT
Text GLabel 1350 5800 1    50   Input ~ 0
colorburst
Text HLabel 9600 3650 2    50   Input ~ 0
OUTPUT
$Comp
L synkie_symbols:GND #PWR?
U 1 1 5FEF24E1
P 7150 3850
AR Path="/5FEF24E1" Ref="#PWR?"  Part="1" 
AR Path="/5FED65BF/5FEF24E1" Ref="#PWR0509"  Part="1" 
F 0 "#PWR0509" H 7150 3600 50  0001 C CNN
F 1 "GND" H 7155 3677 50  0001 C CNN
F 2 "" H 7150 3850 50  0001 C CNN
F 3 "" H 7150 3850 50  0001 C CNN
	1    7150 3850
	0    1    1    0   
$EndComp
Text GLabel 7150 3950 0    50   Input ~ 0
dry~wet~
Text GLabel 7150 4050 0    50   Input ~ 0
porch
Text GLabel 7150 4150 0    50   Input ~ 0
hsync
Text GLabel 7150 3050 0    49   Input ~ 0
dry
Text Label 7150 3550 2    50   ~ 0
synctip
Text Label 7150 2950 2    50   ~ 0
clipper_out
Wire Wire Line
	8150 3250 8400 3250
Text GLabel 6500 3250 0    50   Input ~ 0
preview_burst
Text GLabel 5000 5450 2    50   Input ~ 0
delayed_burst
Wire Wire Line
	8150 2950 8350 2950
Wire Wire Line
	8350 2950 8350 2350
Wire Wire Line
	8350 2350 6600 2350
Wire Wire Line
	6600 2350 6600 3350
Wire Wire Line
	6600 3350 7150 3350
Wire Wire Line
	7150 3250 6500 3250
Wire Wire Line
	8400 3250 8400 2300
Wire Wire Line
	8400 2300 6550 2300
Wire Wire Line
	6550 2300 6550 3650
Wire Wire Line
	6550 3650 7150 3650
Wire Wire Line
	4800 5450 5000 5450
$EndSCHEMATC
