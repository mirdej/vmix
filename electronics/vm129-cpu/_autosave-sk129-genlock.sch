EESchema Schematic File Version 5
EELAYER 36 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 1250 4100
Connection ~ 1350 3800
Connection ~ 1350 4400
Connection ~ 1700 3050
Connection ~ 2150 3050
Connection ~ 3550 4050
Connection ~ 3650 3150
Connection ~ 3650 3400
Connection ~ 5350 2850
Connection ~ 5350 3150
Connection ~ 5600 3950
Connection ~ 6800 1650
Connection ~ 7350 4050
Connection ~ 8350 3450
Connection ~ 8600 3250
Connection ~ 8700 4150
Connection ~ 9100 4900
Connection ~ 9250 3100
Connection ~ 9300 4000
Connection ~ 9350 2900
Connection ~ 9350 3100
Connection ~ 9400 4000
Wire Wire Line
	1250 3800 1350 3800
Wire Wire Line
	1250 4100 1250 4000
Wire Wire Line
	1250 4200 1250 4100
Wire Wire Line
	1250 4400 1350 4400
Wire Wire Line
	1350 3800 1450 3800
Wire Wire Line
	1350 4400 1450 4400
Wire Wire Line
	1450 3050 1700 3050
Wire Wire Line
	1700 2550 1450 2550
Wire Wire Line
	1700 3050 1700 2550
Wire Wire Line
	2000 3050 2150 3050
Wire Wire Line
	2150 3050 2750 3050
Wire Wire Line
	3050 3250 3050 3400
Wire Wire Line
	3050 3400 3650 3400
Wire Wire Line
	3550 4050 3200 4050
Wire Wire Line
	3550 4050 4000 4050
Wire Wire Line
	3650 3150 3650 3400
Wire Wire Line
	3650 3400 3650 3950
Wire Wire Line
	3700 3950 3650 3950
Wire Wire Line
	5050 3150 3650 3150
Wire Wire Line
	5350 1550 6200 1550
Wire Wire Line
	5350 2850 5350 1550
Wire Wire Line
	5350 2850 5350 3150
Wire Wire Line
	5650 3150 6250 3150
Wire Wire Line
	5800 2200 5800 3550
Wire Wire Line
	5800 3550 6250 3550
Wire Wire Line
	6200 1950 6200 1750
Wire Wire Line
	6250 2850 5350 2850
Wire Wire Line
	6800 1650 6800 1950
Wire Wire Line
	6800 1650 7000 1650
Wire Wire Line
	6800 1950 6200 1950
Wire Wire Line
	7250 3150 7750 3150
Wire Wire Line
	7250 3450 8350 3450
Wire Wire Line
	7750 2200 5800 2200
Wire Wire Line
	7750 3150 7750 2200
Wire Wire Line
	7750 4050 7350 4050
Wire Wire Line
	8350 2850 8650 2850
Wire Wire Line
	8350 3450 8350 2850
Wire Wire Line
	8350 3750 8350 3450
Wire Wire Line
	8600 3100 8650 3100
Wire Wire Line
	8600 3250 8600 3100
Wire Wire Line
	8650 2850 8650 2900
Wire Wire Line
	8700 3750 8350 3750
Wire Wire Line
	8700 3950 8700 4150
Wire Wire Line
	8800 3250 8600 3250
Wire Wire Line
	8850 4150 8700 4150
Wire Wire Line
	9250 3000 9250 3100
Wire Wire Line
	9250 3100 9250 3250
Wire Wire Line
	9250 3250 9100 3250
Wire Wire Line
	9300 4000 9300 3850
Wire Wire Line
	9300 4150 9150 4150
Wire Wire Line
	9300 4150 9300 4000
Wire Wire Line
	9350 2450 9350 2900
Wire Wire Line
	9350 2900 9350 3100
Wire Wire Line
	9350 3100 9250 3100
Wire Wire Line
	9350 3450 9350 3100
Wire Wire Line
	9400 4000 9300 4000
Wire Wire Line
	9400 4600 9400 4000
Wire Wire Line
	10100 2900 9350 2900
Wire Wire Line
	10100 3450 9350 3450
Wire Wire Line
	10100 4000 9400 4000
Wire Wire Line
	10100 4600 9400 4600
Wire Wire Line
	10200 2450 9350 2450
Text Label 1600 3050 3    50   ~ 0
genlock_in
Text Label 2350 3800 2    50   ~ 0
genlock_in
Text Label 6250 3450 2    50   ~ 0
synctip
Text Label 6550 2200 0    50   ~ 0
burst_only
Text Label 7750 4050 0    50   ~ 0
synctip
Text GLabel 5000 3850 2    50   Input ~ 0
hsync
Text GLabel 5000 3950 2    50   Input ~ 0
vsync
Text GLabel 5000 4050 2    50   Input ~ 0
porch
Text GLabel 5000 4150 2    50   Input ~ 0
oddeven
Text GLabel 6250 3850 0    50   Input ~ 0
porch
Text GLabel 6250 3950 0    50   Input ~ 0
porch
Text GLabel 6250 4050 0    50   Input ~ 0
hsync
Text GLabel 7000 1650 2    50   Input ~ 0
clamped_genlock
$Comp
L synkie_symbols:+5V #PWR072
U 1 1 6030768C
P 1350 3800
F 0 "#PWR072" H 1350 3650 50  0001 C CNN
F 1 "+5V" H 1350 3950 50  0000 C CNN
F 2 "" H 1350 3800 50  0001 C CNN
F 3 "" H 1350 3800 50  0001 C CNN
	1    1350 3800
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:-5V #PWR085
U 1 1 60307695
P 1350 4400
F 0 "#PWR085" H 1350 4500 50  0001 C CNN
F 1 "-5V" H 1350 4550 50  0000 C CNN
F 2 "" H 1350 4400 50  0001 C CNN
F 3 "" H 1350 4400 50  0001 C CNN
	1    1350 4400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR057
U 1 1 60307711
P 2150 2750
F 0 "#PWR057" H 2150 2600 50  0001 C CNN
F 1 "+5V" H 2165 2923 50  0000 C CNN
F 2 "" H 2150 2750 50  0001 C CNN
F 3 "" H 2150 2750 50  0001 C CNN
	1    2150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR064
U 1 1 6030770B
P 2150 3350
F 0 "#PWR064" H 2150 3450 50  0001 C CNN
F 1 "-5V" H 2165 3523 50  0000 C CNN
F 2 "" H 2150 3350 50  0001 C CNN
F 3 "" H 2150 3350 50  0001 C CNN
	1    2150 3350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR087
U 1 1 603076C6
P 4150 4550
F 0 "#PWR087" H 4150 4400 50  0001 C CNN
F 1 "+5V" H 4165 4723 50  0000 C CNN
F 2 "" H 4150 4550 50  0001 C CNN
F 3 "" H 4150 4550 50  0001 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR067
U 1 1 603076CC
P 4500 3650
F 0 "#PWR067" H 4500 3500 50  0001 C CNN
F 1 "+5V" H 4600 3650 50  0000 C CNN
F 2 "" H 4500 3650 50  0001 C CNN
F 3 "" H 4500 3650 50  0001 C CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
$Comp
L nime2020-library:+5V #PWR068
U 1 1 6030774A
P 5600 3650
F 0 "#PWR068" H 5600 3500 50  0001 C CNN
F 1 "+5V" H 5615 3823 50  0000 C CNN
F 2 "" H 5600 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR078
U 1 1 60307763
P 5600 4250
F 0 "#PWR078" H 5600 4350 50  0001 C CNN
F 1 "-5V" H 5615 4423 50  0000 C CNN
F 2 "" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 4250
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR055
U 1 1 60307744
P 6750 2550
F 0 "#PWR055" H 6750 2400 50  0001 C CNN
F 1 "+5V" H 6765 2723 50  0000 C CNN
F 2 "" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR083
U 1 1 60307738
P 6850 4350
F 0 "#PWR083" H 6850 4450 50  0001 C CNN
F 1 "-5V" H 6865 4523 50  0000 C CNN
F 2 "" H 6850 4350 50  0001 C CNN
F 3 "" H 6850 4350 50  0001 C CNN
	1    6850 4350
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR084
U 1 1 6030777D
P 7350 4350
F 0 "#PWR084" H 7350 4450 50  0001 C CNN
F 1 "-5V" H 7365 4523 50  0000 C CNN
F 2 "" H 7350 4350 50  0001 C CNN
F 3 "" H 7350 4350 50  0001 C CNN
	1    7350 4350
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR089
U 1 1 60307805
P 8250 4650
F 0 "#PWR089" H 8250 4500 50  0001 C CNN
F 1 "+5V" H 8265 4823 50  0000 C CNN
F 2 "" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR095
U 1 1 603077FF
P 8250 5250
F 0 "#PWR095" H 8250 5350 50  0001 C CNN
F 1 "-5V" H 8265 5423 50  0000 C CNN
F 2 "" H 8250 5250 50  0001 C CNN
F 3 "" H 8250 5250 50  0001 C CNN
	1    8250 5250
	-1   0    0    1   
$EndComp
$Comp
L nime2020-library:+5V #PWR088
U 1 1 6030780B
P 9100 4600
F 0 "#PWR088" H 9100 4450 50  0001 C CNN
F 1 "+5V" H 9115 4773 50  0000 C CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR094
U 1 1 6030781D
P 9100 5200
F 0 "#PWR094" H 9100 5300 50  0001 C CNN
F 1 "-5V" H 9115 5373 50  0000 C CNN
F 2 "" H 9100 5200 50  0001 C CNN
F 3 "" H 9100 5200 50  0001 C CNN
	1    9100 5200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR056
U 1 1 603076AA
P 1250 2750
F 0 "#PWR056" H 1250 2500 50  0001 C CNN
F 1 "GND" H 1255 2577 50  0000 C CNN
F 2 "" H 1250 2750 50  0001 C CNN
F 3 "" H 1250 2750 50  0001 C CNN
	1    1250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 60307726
P 1250 3250
F 0 "#PWR062" H 1250 3000 50  0001 C CNN
F 1 "GND" H 1255 3077 50  0000 C CNN
F 2 "" H 1250 3250 50  0001 C CNN
F 3 "" H 1250 3250 50  0001 C CNN
	1    1250 3250
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR074
U 1 1 60307683
P 1250 4100
F 0 "#PWR074" H 1250 3850 50  0001 C CNN
F 1 "GND" H 1255 3927 50  0001 C CNN
F 2 "" H 1250 4100 50  0001 C CNN
F 3 "" H 1250 4100 50  0001 C CNN
	1    1250 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR076
U 1 1 6030788C
P 2350 4200
F 0 "#PWR076" H 2350 3950 50  0001 C CNN
F 1 "GND" H 2355 4027 50  0000 C CNN
F 2 "" H 2350 4200 50  0001 C CNN
F 3 "" H 2350 4200 50  0001 C CNN
	1    2350 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 603076D3
P 3200 4350
F 0 "#PWR079" H 3200 4100 50  0001 C CNN
F 1 "GND" H 3205 4177 50  0001 C CNN
F 2 "" H 3200 4350 50  0001 C CNN
F 3 "" H 3200 4350 50  0001 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 603076D9
P 3550 4350
F 0 "#PWR080" H 3550 4100 50  0001 C CNN
F 1 "GND" H 3555 4177 50  0001 C CNN
F 2 "" H 3550 4350 50  0001 C CNN
F 3 "" H 3550 4350 50  0001 C CNN
	1    3550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR092
U 1 1 603076BA
P 4150 4850
F 0 "#PWR092" H 4150 4600 50  0001 C CNN
F 1 "GND" H 4155 4677 50  0001 C CNN
F 2 "" H 4150 4850 50  0001 C CNN
F 3 "" H 4150 4850 50  0001 C CNN
	1    4150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR081
U 1 1 603076EB
P 4500 4350
F 0 "#PWR081" H 4500 4100 50  0001 C CNN
F 1 "GND" H 4505 4177 50  0001 C CNN
F 2 "" H 4500 4350 50  0001 C CNN
F 3 "" H 4500 4350 50  0001 C CNN
	1    4500 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 60307756
P 5600 3950
F 0 "#PWR073" H 5600 3700 50  0001 C CNN
F 1 "GND" V 5605 3822 50  0000 R CNN
F 2 "" H 5600 3950 50  0001 C CNN
F 3 "" H 5600 3950 50  0001 C CNN
	1    5600 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR059
U 1 1 60307838
P 6250 2950
F 0 "#PWR059" H 6250 2700 50  0001 C CNN
F 1 "GND" H 6255 2777 50  0000 C CNN
F 2 "" H 6250 2950 50  0001 C CNN
F 3 "" H 6250 2950 50  0001 C CNN
	1    6250 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR063
U 1 1 60307846
P 6250 3250
F 0 "#PWR063" H 6250 3000 50  0001 C CNN
F 1 "GND" H 6255 3077 50  0000 C CNN
F 2 "" H 6250 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR070
U 1 1 6030778D
P 6250 3750
F 0 "#PWR070" H 6250 3500 50  0001 C CNN
F 1 "GND" V 6255 3622 50  0000 R CNN
F 2 "" H 6250 3750 50  0001 C CNN
F 3 "" H 6250 3750 50  0001 C CNN
	1    6250 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR082
U 1 1 6030773E
P 6750 4350
F 0 "#PWR082" H 6750 4100 50  0001 C CNN
F 1 "GND" H 6755 4177 50  0000 C CNN
F 2 "" H 6750 4350 50  0001 C CNN
F 3 "" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR058
U 1 1 60307832
P 7250 2850
F 0 "#PWR058" H 7250 2600 50  0001 C CNN
F 1 "GND" H 7255 2677 50  0000 C CNN
F 2 "" H 7250 2850 50  0001 C CNN
F 3 "" H 7250 2850 50  0001 C CNN
	1    7250 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR071
U 1 1 60307777
P 7350 3750
F 0 "#PWR071" H 7350 3500 50  0001 C CNN
F 1 "GND" H 7355 3577 50  0000 C CNN
F 2 "" H 7350 3750 50  0001 C CNN
F 3 "" H 7350 3750 50  0001 C CNN
	1    7350 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR065
U 1 1 6030785B
P 8600 3550
F 0 "#PWR065" H 8600 3300 50  0001 C CNN
F 1 "GND" V 8605 3422 50  0000 R CNN
F 2 "" H 8600 3550 50  0001 C CNN
F 3 "" H 8600 3550 50  0001 C CNN
	1    8600 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR086
U 1 1 60307879
P 8700 4450
F 0 "#PWR086" H 8700 4200 50  0001 C CNN
F 1 "GND" V 8705 4322 50  0000 R CNN
F 2 "" H 8700 4450 50  0001 C CNN
F 3 "" H 8700 4450 50  0001 C CNN
	1    8700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR093
U 1 1 60307823
P 9100 4900
F 0 "#PWR093" H 9100 4650 50  0001 C CNN
F 1 "GND" V 9105 4772 50  0000 R CNN
F 2 "" H 9100 4900 50  0001 C CNN
F 3 "" H 9100 4900 50  0001 C CNN
	1    9100 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR060
U 1 1 603077DE
P 10100 3000
F 0 "#PWR060" H 10100 2750 50  0001 C CNN
F 1 "GND" V 10105 2872 50  0000 R CNN
F 2 "" H 10100 3000 50  0001 C CNN
F 3 "" H 10100 3000 50  0001 C CNN
	1    10100 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR061
U 1 1 603077D8
P 10100 3100
F 0 "#PWR061" H 10100 2850 50  0001 C CNN
F 1 "GND" V 10105 2972 50  0000 R CNN
F 2 "" H 10100 3100 50  0001 C CNN
F 3 "" H 10100 3100 50  0001 C CNN
	1    10100 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 603077D2
P 10100 3550
F 0 "#PWR066" H 10100 3300 50  0001 C CNN
F 1 "GND" V 10105 3422 50  0000 R CNN
F 2 "" H 10100 3550 50  0001 C CNN
F 3 "" H 10100 3550 50  0001 C CNN
	1    10100 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR069
U 1 1 603077CC
P 10100 3650
F 0 "#PWR069" H 10100 3400 50  0001 C CNN
F 1 "GND" V 10105 3522 50  0000 R CNN
F 2 "" H 10100 3650 50  0001 C CNN
F 3 "" H 10100 3650 50  0001 C CNN
	1    10100 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR075
U 1 1 603077C6
P 10100 4100
F 0 "#PWR075" H 10100 3850 50  0001 C CNN
F 1 "GND" V 10105 3972 50  0000 R CNN
F 2 "" H 10100 4100 50  0001 C CNN
F 3 "" H 10100 4100 50  0001 C CNN
	1    10100 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR077
U 1 1 603077C0
P 10100 4200
F 0 "#PWR077" H 10100 3950 50  0001 C CNN
F 1 "GND" V 10105 4072 50  0000 R CNN
F 2 "" H 10100 4200 50  0001 C CNN
F 3 "" H 10100 4200 50  0001 C CNN
	1    10100 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR090
U 1 1 603077BA
P 10100 4700
F 0 "#PWR090" H 10100 4450 50  0001 C CNN
F 1 "GND" V 10105 4572 50  0000 R CNN
F 2 "" H 10100 4700 50  0001 C CNN
F 3 "" H 10100 4700 50  0001 C CNN
	1    10100 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR091
U 1 1 603077B4
P 10100 4800
F 0 "#PWR091" H 10100 4550 50  0001 C CNN
F 1 "GND" V 10105 4672 50  0000 R CNN
F 2 "" H 10100 4800 50  0001 C CNN
F 3 "" H 10100 4800 50  0001 C CNN
	1    10100 4800
	0    1    1    0   
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U8
U 3 1 6030767A
P 1550 4100
F 0 "U8" H 1550 4350 50  0000 L CNN
F 1 "LMH6643" H 1550 4250 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 1550 4100 50  0001 C CNN
F 3 "~" H 1550 4100 50  0001 C CNN
	3    1550 4100
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U9
U 3 1 603077F9
P 8350 4950
F 0 "U9" H 8308 4996 50  0000 L CNN
F 1 "MAX4392" H 8308 4905 50  0000 L CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8350 4950 50  0001 C CNN
F 3 "~" H 8350 4950 50  0001 C CNN
	3    8350 4950
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:C_Small C10
U 1 1 603076A1
P 1250 3900
F 0 "C10" V 1350 3900 50  0000 C CNN
F 1 "100n" V 1112 3900 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1250 3900 50  0001 C CNN
F 3 "~" H 1250 3900 50  0001 C CNN
	1    1250 3900
	-1   0    0    1   
$EndComp
$Comp
L synkie_symbols:C_Small C14
U 1 1 6030769B
P 1250 4300
F 0 "C14" V 1350 4300 50  0000 C CNN
F 1 "100n" V 1112 4300 50  0001 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R30
U 1 1 6030771F
P 1850 3050
F 0 "R30" V 2057 3050 50  0000 C CNN
F 1 "75" V 1966 3050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 3050 50  0001 C CNN
F 3 "~" H 1850 3050 50  0001 C CNN
	1    1850 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 60307886
P 2350 4050
F 0 "R35" H 2420 4096 50  0000 L CNN
F 1 "75" H 2420 4005 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 4050 50  0001 C CNN
F 3 "~" H 2350 4050 50  0001 C CNN
	1    2350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 60307705
P 2900 3050
F 0 "R31" V 3107 3050 50  0000 C CNN
F 1 "75" V 3016 3050 50  0000 C CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R37
U 1 1 603076E5
P 3200 4200
F 0 "R37" H 3270 4246 50  0000 L CNN
F 1 "680k" H 3270 4155 50  0000 L CNN
F 2 "synkie_footprints:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 4200 50  0001 C CNN
F 3 "~" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 60307771
P 7350 3900
F 0 "R34" H 7280 3854 50  0000 R CNN
F 1 "150" H 7280 3945 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7280 3900 50  0001 C CNN
F 3 "~" H 7350 3900 50  0001 C CNN
	1    7350 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R38
U 1 1 6030776B
P 7350 4200
F 0 "R38" H 7280 4154 50  0000 R CNN
F 1 "4k7" H 7280 4245 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7280 4200 50  0001 C CNN
F 3 "~" H 7350 4200 50  0001 C CNN
	1    7350 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R33
U 1 1 60307855
P 8600 3400
F 0 "R33" H 8530 3354 50  0000 R CNN
F 1 "200" H 8530 3445 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8530 3400 50  0001 C CNN
F 3 "~" H 8600 3400 50  0001 C CNN
	1    8600 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R39
U 1 1 60307872
P 8700 4300
F 0 "R39" H 8630 4254 50  0000 R CNN
F 1 "200" H 8630 4345 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8630 4300 50  0001 C CNN
F 3 "~" H 8700 4300 50  0001 C CNN
	1    8700 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R32
U 1 1 60307861
P 8950 3250
F 0 "R32" H 8880 3204 50  0000 R CNN
F 1 "200" H 8880 3295 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8880 3250 50  0001 C CNN
F 3 "~" H 8950 3250 50  0001 C CNN
	1    8950 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R36
U 1 1 6030786A
P 9000 4150
F 0 "R36" H 8930 4104 50  0000 R CNN
F 1 "200" H 8930 4195 50  0000 R CNN
F 2 "synkie_footprints:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8930 4150 50  0001 C CNN
F 3 "~" H 9000 4150 50  0001 C CNN
	1    9000 4150
	0    -1   -1   0   
$EndComp
$Comp
L synkie_symbols:Conn_01x01 J11
U 1 1 6030772C
P 10400 2450
F 0 "J11" H 10318 2225 50  0000 C CNN
F 1 "GENLOCK" H 10318 2316 50  0000 C CNN
F 2 "synkie_footprints:Solderpad_1mm" H 10400 2450 50  0001 C CNN
F 3 "~" H 10400 2450 50  0001 C CNN
	1    10400 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 60307880
P 2550 3800
F 0 "J16" H 2630 3792 50  0000 L CNN
F 1 "Conn_01x02" H 2630 3701 50  0000 L CNN
F 2 "synkie_footprints:PinHeader_1x02_P2.54mm_Vertical" H 2550 3800 50  0001 C CNN
F 3 "~" H 2550 3800 50  0001 C CNN
	1    2550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 603076DF
P 3550 4200
F 0 "C13" H 3665 4246 50  0000 L CNN
F 1 "100n" H 3665 4155 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3588 4050 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 603076F1
P 3850 3950
F 0 "C11" V 3598 3950 50  0000 C CNN
F 1 "100n" V 3689 3950 50  0000 C CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 3800 50  0001 C CNN
F 3 "~" H 3850 3950 50  0001 C CNN
	1    3850 3950
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 603076C0
P 4150 4700
F 0 "C15" H 4265 4746 50  0000 L CNN
F 1 "100n" H 4265 4655 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 4550 50  0001 C CNN
F 3 "~" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6039E35D
P 5200 3150
F 0 "C7" H 5315 3196 50  0000 L CNN
F 1 "1u" H 5315 3105 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5238 3000 50  0001 C CNN
F 3 "~" H 5200 3150 50  0001 C CNN
	1    5200 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 6030783E
P 5500 3150
F 0 "C8" H 5615 3196 50  0000 L CNN
F 1 "1u" H 5615 3105 50  0000 L CNN
F 2 "synkie_footprints:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5538 3000 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
	1    5500 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 60307750
P 5600 3800
F 0 "C9" H 5715 3846 50  0000 L CNN
F 1 "100n" H 5715 3755 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5638 3650 50  0001 C CNN
F 3 "~" H 5600 3800 50  0001 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6030775C
P 5600 4100
F 0 "C12" H 5715 4146 50  0000 L CNN
F 1 "100n" H 5715 4055 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5638 3950 50  0001 C CNN
F 3 "~" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 60307811
P 9100 4750
F 0 "C16" H 9215 4796 50  0000 L CNN
F 1 "100n" H 9215 4705 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 4600 50  0001 C CNN
F 3 "~" H 9100 4750 50  0001 C CNN
	1    9100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 60307817
P 9100 5050
F 0 "C17" H 9215 5096 50  0000 L CNN
F 1 "100n" H 9215 5005 50  0000 L CNN
F 2 "synkie_footprints:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 4900 50  0001 C CNN
F 3 "~" H 9100 5050 50  0001 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:BAT54S D2
U 1 1 60307718
P 2150 3050
F 0 "D2" V 2196 2972 50  0000 R CNN
F 1 "BAT54S" V 2105 2972 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2225 3175 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 2030 3050 50  0001 C CNN
	1    2150 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_Coaxial J12
U 1 1 6030766E
P 1250 2550
F 0 "J12" H 1178 2788 50  0000 C CNN
F 1 "Conn_Coaxial" H 1178 2697 50  0000 C CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 1250 2550 50  0001 C CNN
F 3 " ~" H 1250 2550 50  0001 C CNN
	1    1250 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J14
U 1 1 60307674
P 1250 3050
F 0 "J14" H 1178 3288 50  0000 C CNN
F 1 "Conn_Coaxial" H 1178 3197 50  0000 C CNN
F 2 "synkie_footprints:BNC_MOLEX_0731000080_Horizontal" H 1250 3050 50  0001 C CNN
F 3 " ~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	-1   0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J13
U 1 1 6030779C
P 10100 2900
F 0 "J13" H 10628 2853 60  0000 L CNN
F 1 "UMCC" H 10628 2747 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10500 2740 60  0001 C CNN
F 3 "" H 10100 2900 60  0000 C CNN
	1    10100 2900
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J15
U 1 1 603077A2
P 10100 3450
F 0 "J15" H 10628 3403 60  0000 L CNN
F 1 "UMCC" H 10628 3297 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10500 3290 60  0001 C CNN
F 3 "" H 10100 3450 60  0000 C CNN
	1    10100 3450
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J17
U 1 1 603077A8
P 10100 4000
F 0 "J17" H 10628 3953 60  0000 L CNN
F 1 "UMCC" H 10628 3847 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10500 3840 60  0001 C CNN
F 3 "" H 10100 4000 60  0000 C CNN
	1    10100 4000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:UMCC J18
U 1 1 603077AE
P 10100 4600
F 0 "J18" H 10628 4553 60  0000 L CNN
F 1 "UMCC" H 10628 4447 60  0000 L CNN
F 2 "synkie_footprints:TE_UMCC_2337019-1" H 10500 4440 60  0001 C CNN
F 3 "" H 10100 4600 60  0000 C CNN
	1    10100 4600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U8
U 1 1 603076FE
P 3350 3150
F 0 "U8" H 3350 3517 50  0000 C CNN
F 1 "LMH6643" H 3350 3426 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 3350 3150 50  0001 C CNN
F 3 "~" H 3350 3150 50  0001 C CNN
	1    3350 3150
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:Opamp_Dual_Generic U8
U 2 1 60307892
P 6500 1650
F 0 "U8" H 6500 2017 50  0000 C CNN
F 1 "LMH6643" H 6500 1926 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 6500 1650 50  0001 C CNN
F 3 "~" H 6500 1650 50  0001 C CNN
	2    6500 1650
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U9
U 1 1 60307787
P 8950 3000
F 0 "U9" H 8950 3367 50  0000 C CNN
F 1 "MAX4392" H 8950 3276 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 8950 3000 50  0001 C CNN
F 3 "~" H 8950 3000 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:MAX4392 U9
U 2 1 603077F3
P 9000 3850
F 0 "U9" H 9000 4217 50  0000 C CNN
F 1 "MAX4392" H 9000 4126 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 9000 3850 50  0001 C CNN
F 3 "~" H 9000 3850 50  0001 C CNN
	2    9000 3850
	1    0    0    -1  
$EndComp
$Comp
L Video:LM1881 U11
U 1 1 603076F7
P 4500 4050
F 0 "U11" H 4150 4300 50  0000 C CNN
F 1 "LM1881" H 4750 3800 50  0000 C CNN
F 2 "synkie_footprints:SOIC-8_3.9x4.9mm_P1.27mm" H 4500 4050 50  0001 C CNN
F 3 "" H 4500 4050 50  0001 C CNN
	1    4500 4050
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4053 U10
U 1 1 60307732
P 6750 3450
F 0 "U10" H 6900 4250 50  0000 C CNN
F 1 "4053" H 6750 4440 50  0000 C CNN
F 2 "synkie_footprints:SOIC-16_3.9x9.9mm_P1.27mm" H 6750 3450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4051bms-52bms-53bms.pdf" H 6750 3450 50  0001 C CNN
	1    6750 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC