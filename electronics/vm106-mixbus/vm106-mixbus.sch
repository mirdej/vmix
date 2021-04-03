EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x01_Female J107
U 1 1 5F79495D
P 9000 4600
F 0 "J107" H 9028 4626 50  0000 L CNN
F 1 "gnd" H 9028 4535 50  0000 L CNN
F 2 "synkie_footprints:Solderpad_1mm" H 9000 4600 50  0001 C CNN
F 3 "~" H 9000 4600 50  0001 C CNN
	1    9000 4600
	1    0    0    -1  
$EndComp
$Comp
L synkie_symbols:GND #PWR0130
U 1 1 5F795277
P 8800 4600
F 0 "#PWR0130" H 8800 4350 50  0001 C CNN
F 1 "GND" H 8805 4427 50  0000 C CNN
F 2 "" H 8800 4600 50  0001 C CNN
F 3 "" H 8800 4600 50  0001 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	-14800 5500 -14800 -9700
Wire Wire Line
	-14800 -9700 -13300 -9700
Text GLabel 2500 2050 0    50   Input ~ 0
hsync
Text GLabel 2500 1850 0    50   Input ~ 0
porch
Text GLabel 2500 2550 0    50   Input ~ 0
genlock
Text GLabel 2500 2250 0    50   Input ~ 0
vsync
$Comp
L synkie_symbols:Card-Edge_02x20_Odd_Even J111
U 1 1 5FEB7683
P 2700 2650
F 0 "J111" H 2750 3767 50  0000 C CNN
F 1 "Card-Edge_02x20_Odd_Even" H 2750 3676 50  0000 C CNN
F 2 "Connector_PCBEdge:Samtec_MECF-20-01-L-DV-WT_2x20_P1.27mm_Polarized_Socket_Horizontal" H 2700 2650 50  0001 C CNN
F 3 "~" H 2700 2650 50  0001 C CNN
	1    2700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1750 3250 1750
Wire Wire Line
	3250 3650 3000 3650
Wire Wire Line
	3000 3550 3250 3550
Connection ~ 3250 3550
Wire Wire Line
	3250 3550 3250 3650
Wire Wire Line
	3000 3450 3250 3450
Connection ~ 3250 3450
Wire Wire Line
	3250 3450 3250 3550
Wire Wire Line
	3000 3350 3250 3350
Connection ~ 3250 3350
Wire Wire Line
	3250 3350 3250 3450
Wire Wire Line
	3000 3250 3250 3250
Connection ~ 3250 3250
Wire Wire Line
	3250 3250 3250 3350
Wire Wire Line
	3000 3150 3250 3150
Connection ~ 3250 3150
Wire Wire Line
	3250 3150 3250 3250
Wire Wire Line
	3000 3050 3250 3050
Connection ~ 3250 3050
Wire Wire Line
	3250 3050 3250 3150
Wire Wire Line
	3000 2950 3250 2950
Connection ~ 3250 2950
Wire Wire Line
	3250 2950 3250 3050
Wire Wire Line
	3000 2850 3250 2850
Connection ~ 3250 2850
Wire Wire Line
	3250 2850 3250 2950
Wire Wire Line
	3000 2750 3250 2750
Connection ~ 3250 2750
Wire Wire Line
	3250 2750 3250 2850
Wire Wire Line
	3000 2650 3250 2650
Connection ~ 3250 2650
Wire Wire Line
	3250 2650 3250 2750
Wire Wire Line
	3000 2550 3250 2550
Connection ~ 3250 2550
Wire Wire Line
	3250 2550 3250 2650
Wire Wire Line
	3000 2350 3250 2350
Connection ~ 3250 2350
Wire Wire Line
	3250 2350 3250 2550
Wire Wire Line
	3000 2250 3250 2250
Connection ~ 3250 2250
Wire Wire Line
	3250 2250 3250 2350
Wire Wire Line
	3000 2150 3250 2150
Connection ~ 3250 2150
Wire Wire Line
	3250 2150 3250 2250
Wire Wire Line
	3000 2050 3250 2050
Connection ~ 3250 2050
Wire Wire Line
	3250 2050 3250 2150
Wire Wire Line
	3000 1950 3250 1950
Connection ~ 3250 1950
Wire Wire Line
	3250 1950 3250 2050
Wire Wire Line
	3000 1850 3250 1850
Wire Wire Line
	3250 1750 3250 1850
Connection ~ 3250 1850
Wire Wire Line
	3250 1850 3250 1950
Wire Wire Line
	2500 1750 1900 1750
Wire Wire Line
	1900 1750 1900 1950
Wire Wire Line
	2500 2650 1900 2650
Wire Wire Line
	2500 2350 1900 2350
Connection ~ 1900 2350
Wire Wire Line
	1900 2350 1900 2650
Wire Wire Line
	2500 2150 1900 2150
Connection ~ 1900 2150
Wire Wire Line
	1900 2150 1900 2350
Wire Wire Line
	2500 1950 1900 1950
Connection ~ 1900 1950
Wire Wire Line
	1900 1950 1900 2150
Connection ~ 3250 3650
Text GLabel 2500 2950 0    50   Input ~ 0
out_a
Text GLabel 2500 3150 0    50   Input ~ 0
out_b
Text GLabel 2500 3350 0    50   Input ~ 0
out_c
Text GLabel 2500 3550 0    50   Input ~ 0
out_d
Wire Wire Line
	1900 3800 2800 3800
Wire Wire Line
	3250 3800 3250 3650
Connection ~ 1900 2650
Wire Wire Line
	2500 3650 1900 3650
Connection ~ 1900 3650
Wire Wire Line
	1900 3650 1900 3800
Wire Wire Line
	2500 3050 1900 3050
Wire Wire Line
	1900 2650 1900 2750
Connection ~ 1900 3050
Wire Wire Line
	1900 3050 1900 3250
Wire Wire Line
	2500 3250 1900 3250
Connection ~ 1900 3250
Wire Wire Line
	1900 3250 1900 3450
Wire Wire Line
	2500 3450 1900 3450
Connection ~ 1900 3450
Wire Wire Line
	1900 3450 1900 3650
Wire Wire Line
	2500 2850 1900 2850
Connection ~ 1900 2850
Wire Wire Line
	1900 2850 1900 3050
Wire Wire Line
	2500 2750 1900 2750
Connection ~ 1900 2750
Wire Wire Line
	1900 2750 1900 2850
$Comp
L power:GND #PWR0101
U 1 1 5FFEDD00
P 2800 3800
F 0 "#PWR0101" H 2800 3550 50  0001 C CNN
F 1 "GND" H 2805 3627 50  0000 C CNN
F 2 "" H 2800 3800 50  0001 C CNN
F 3 "" H 2800 3800 50  0001 C CNN
	1    2800 3800
	1    0    0    -1  
$EndComp
Connection ~ 2800 3800
Wire Wire Line
	2800 3800 3250 3800
Text GLabel 4250 2050 0    50   Input ~ 0
hsync
Text GLabel 4250 1850 0    50   Input ~ 0
porch
Text GLabel 4250 2550 0    50   Input ~ 0
genlock
Text GLabel 4250 2250 0    50   Input ~ 0
vsync
$Comp
L synkie_symbols:Card-Edge_02x20_Odd_Even J101
U 1 1 5FFEE439
P 4450 2650
F 0 "J101" H 4500 3767 50  0000 C CNN
F 1 "Card-Edge_02x20_Odd_Even" H 4500 3676 50  0000 C CNN
F 2 "Connector_PCBEdge:Samtec_MECF-20-01-L-DV-WT_2x20_P1.27mm_Polarized_Socket_Horizontal" H 4450 2650 50  0001 C CNN
F 3 "~" H 4450 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1750 5000 1750
Wire Wire Line
	5000 3650 4750 3650
Wire Wire Line
	4750 3550 5000 3550
Connection ~ 5000 3550
Wire Wire Line
	5000 3550 5000 3650
Wire Wire Line
	4750 3450 5000 3450
Connection ~ 5000 3450
Wire Wire Line
	5000 3450 5000 3550
Wire Wire Line
	4750 3350 5000 3350
Connection ~ 5000 3350
Wire Wire Line
	5000 3350 5000 3450
Wire Wire Line
	4750 3250 5000 3250
Connection ~ 5000 3250
Wire Wire Line
	5000 3250 5000 3350
Wire Wire Line
	4750 3150 5000 3150
Connection ~ 5000 3150
Wire Wire Line
	5000 3150 5000 3250
Wire Wire Line
	4750 3050 5000 3050
Connection ~ 5000 3050
Wire Wire Line
	5000 3050 5000 3150
Wire Wire Line
	4750 2950 5000 2950
Connection ~ 5000 2950
Wire Wire Line
	5000 2950 5000 3050
Wire Wire Line
	4750 2850 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5000 2850 5000 2950
Wire Wire Line
	4750 2750 5000 2750
Connection ~ 5000 2750
Wire Wire Line
	5000 2750 5000 2850
Wire Wire Line
	4750 2650 5000 2650
Connection ~ 5000 2650
Wire Wire Line
	5000 2650 5000 2750
Wire Wire Line
	4750 2550 5000 2550
Connection ~ 5000 2550
Wire Wire Line
	5000 2550 5000 2650
Wire Wire Line
	4750 2350 5000 2350
Connection ~ 5000 2350
Wire Wire Line
	5000 2350 5000 2550
Wire Wire Line
	4750 2250 5000 2250
Connection ~ 5000 2250
Wire Wire Line
	5000 2250 5000 2350
Wire Wire Line
	4750 2150 5000 2150
Connection ~ 5000 2150
Wire Wire Line
	5000 2150 5000 2250
Wire Wire Line
	4750 2050 5000 2050
Connection ~ 5000 2050
Wire Wire Line
	5000 2050 5000 2150
Wire Wire Line
	4750 1950 5000 1950
Connection ~ 5000 1950
Wire Wire Line
	5000 1950 5000 2050
Wire Wire Line
	4750 1850 5000 1850
Wire Wire Line
	5000 1750 5000 1850
Connection ~ 5000 1850
Wire Wire Line
	5000 1850 5000 1950
Wire Wire Line
	4250 1750 3650 1750
Wire Wire Line
	3650 1750 3650 1950
Wire Wire Line
	4250 2650 3650 2650
Wire Wire Line
	4250 2350 3650 2350
Connection ~ 3650 2350
Wire Wire Line
	3650 2350 3650 2650
Wire Wire Line
	4250 2150 3650 2150
Connection ~ 3650 2150
Wire Wire Line
	3650 2150 3650 2350
Wire Wire Line
	4250 1950 3650 1950
Connection ~ 3650 1950
Wire Wire Line
	3650 1950 3650 2150
Connection ~ 5000 3650
Text GLabel 4250 2950 0    50   Input ~ 0
out_a
Text GLabel 4250 3150 0    50   Input ~ 0
out_b
Text GLabel 4250 3350 0    50   Input ~ 0
out_c
Text GLabel 4250 3550 0    50   Input ~ 0
out_d
Wire Wire Line
	3650 3800 4550 3800
Wire Wire Line
	5000 3800 5000 3650
Connection ~ 3650 2650
Wire Wire Line
	4250 3650 3650 3650
Connection ~ 3650 3650
Wire Wire Line
	3650 3650 3650 3800
Wire Wire Line
	4250 3050 3650 3050
Wire Wire Line
	3650 2650 3650 2750
Connection ~ 3650 3050
Wire Wire Line
	3650 3050 3650 3250
Wire Wire Line
	4250 3250 3650 3250
Connection ~ 3650 3250
Wire Wire Line
	3650 3250 3650 3450
Wire Wire Line
	4250 3450 3650 3450
Connection ~ 3650 3450
Wire Wire Line
	3650 3450 3650 3650
Wire Wire Line
	4250 2850 3650 2850
Connection ~ 3650 2850
Wire Wire Line
	3650 2850 3650 3050
Wire Wire Line
	4250 2750 3650 2750
Connection ~ 3650 2750
Wire Wire Line
	3650 2750 3650 2850
$Comp
L power:GND #PWR0102
U 1 1 5FFEE4A0
P 4550 3800
F 0 "#PWR0102" H 4550 3550 50  0001 C CNN
F 1 "GND" H 4555 3627 50  0000 C CNN
F 2 "" H 4550 3800 50  0001 C CNN
F 3 "" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
Connection ~ 4550 3800
Wire Wire Line
	4550 3800 5000 3800
Text GLabel 5900 2050 0    50   Input ~ 0
hsync
Text GLabel 5900 1850 0    50   Input ~ 0
porch
Text GLabel 5900 2550 0    50   Input ~ 0
genlock
Text GLabel 5900 2250 0    50   Input ~ 0
vsync
$Comp
L synkie_symbols:Card-Edge_02x20_Odd_Even J102
U 1 1 5FFF5310
P 6100 2650
F 0 "J102" H 6150 3767 50  0000 C CNN
F 1 "Card-Edge_02x20_Odd_Even" H 6150 3676 50  0000 C CNN
F 2 "Connector_PCBEdge:Samtec_MECF-20-01-L-DV-WT_2x20_P1.27mm_Polarized_Socket_Horizontal" H 6100 2650 50  0001 C CNN
F 3 "~" H 6100 2650 50  0001 C CNN
	1    6100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1750 6650 1750
Wire Wire Line
	6650 3650 6400 3650
Wire Wire Line
	6400 3550 6650 3550
Connection ~ 6650 3550
Wire Wire Line
	6650 3550 6650 3650
Wire Wire Line
	6400 3450 6650 3450
Connection ~ 6650 3450
Wire Wire Line
	6650 3450 6650 3550
Wire Wire Line
	6400 3350 6650 3350
Connection ~ 6650 3350
Wire Wire Line
	6650 3350 6650 3450
Wire Wire Line
	6400 3250 6650 3250
Connection ~ 6650 3250
Wire Wire Line
	6650 3250 6650 3350
Wire Wire Line
	6400 3150 6650 3150
Connection ~ 6650 3150
Wire Wire Line
	6650 3150 6650 3250
Wire Wire Line
	6400 3050 6650 3050
Connection ~ 6650 3050
Wire Wire Line
	6650 3050 6650 3150
Wire Wire Line
	6400 2950 6650 2950
Connection ~ 6650 2950
Wire Wire Line
	6650 2950 6650 3050
Wire Wire Line
	6400 2850 6650 2850
Connection ~ 6650 2850
Wire Wire Line
	6650 2850 6650 2950
Wire Wire Line
	6400 2750 6650 2750
Connection ~ 6650 2750
Wire Wire Line
	6650 2750 6650 2850
Wire Wire Line
	6400 2650 6650 2650
Connection ~ 6650 2650
Wire Wire Line
	6650 2650 6650 2750
Wire Wire Line
	6400 2550 6650 2550
Connection ~ 6650 2550
Wire Wire Line
	6650 2550 6650 2650
Wire Wire Line
	6400 2350 6650 2350
Connection ~ 6650 2350
Wire Wire Line
	6650 2350 6650 2550
Wire Wire Line
	6400 2250 6650 2250
Connection ~ 6650 2250
Wire Wire Line
	6650 2250 6650 2350
Wire Wire Line
	6400 2150 6650 2150
Connection ~ 6650 2150
Wire Wire Line
	6650 2150 6650 2250
Wire Wire Line
	6400 2050 6650 2050
Connection ~ 6650 2050
Wire Wire Line
	6650 2050 6650 2150
Wire Wire Line
	6400 1950 6650 1950
Connection ~ 6650 1950
Wire Wire Line
	6650 1950 6650 2050
Wire Wire Line
	6400 1850 6650 1850
Wire Wire Line
	6650 1750 6650 1850
Connection ~ 6650 1850
Wire Wire Line
	6650 1850 6650 1950
Wire Wire Line
	5900 1750 5300 1750
Wire Wire Line
	5300 1750 5300 1950
Wire Wire Line
	5900 2650 5300 2650
Wire Wire Line
	5900 2350 5300 2350
Connection ~ 5300 2350
Wire Wire Line
	5300 2350 5300 2650
Wire Wire Line
	5900 2150 5300 2150
Connection ~ 5300 2150
Wire Wire Line
	5300 2150 5300 2350
Wire Wire Line
	5900 1950 5300 1950
Connection ~ 5300 1950
Wire Wire Line
	5300 1950 5300 2150
Connection ~ 6650 3650
Text GLabel 5900 2950 0    50   Input ~ 0
out_a
Text GLabel 5900 3150 0    50   Input ~ 0
out_b
Text GLabel 5900 3350 0    50   Input ~ 0
out_c
Text GLabel 5900 3550 0    50   Input ~ 0
out_d
Wire Wire Line
	5300 3800 6200 3800
Wire Wire Line
	6650 3800 6650 3650
Connection ~ 5300 2650
Wire Wire Line
	5900 3650 5300 3650
Connection ~ 5300 3650
Wire Wire Line
	5300 3650 5300 3800
Wire Wire Line
	5900 3050 5300 3050
Wire Wire Line
	5300 2650 5300 2750
Connection ~ 5300 3050
Wire Wire Line
	5300 3050 5300 3250
Wire Wire Line
	5900 3250 5300 3250
Connection ~ 5300 3250
Wire Wire Line
	5300 3250 5300 3450
Wire Wire Line
	5900 3450 5300 3450
Connection ~ 5300 3450
Wire Wire Line
	5300 3450 5300 3650
Wire Wire Line
	5900 2850 5300 2850
Connection ~ 5300 2850
Wire Wire Line
	5300 2850 5300 3050
Wire Wire Line
	5900 2750 5300 2750
Connection ~ 5300 2750
Wire Wire Line
	5300 2750 5300 2850
$Comp
L power:GND #PWR0103
U 1 1 5FFF5377
P 6200 3800
F 0 "#PWR0103" H 6200 3550 50  0001 C CNN
F 1 "GND" H 6205 3627 50  0000 C CNN
F 2 "" H 6200 3800 50  0001 C CNN
F 3 "" H 6200 3800 50  0001 C CNN
	1    6200 3800
	1    0    0    -1  
$EndComp
Connection ~ 6200 3800
Wire Wire Line
	6200 3800 6650 3800
Text GLabel 3250 5100 0    50   Input ~ 0
hsync
Text GLabel 3250 4900 0    50   Input ~ 0
porch
Text GLabel 3250 5500 0    50   Input ~ 0
genlock
Text GLabel 3250 5300 0    50   Input ~ 0
vsync
Text GLabel 3250 5700 0    50   Input ~ 0
out_a
Text GLabel 3250 5900 0    50   Input ~ 0
out_b
Text GLabel 3250 6100 0    50   Input ~ 0
out_c
Text GLabel 3250 6300 0    50   Input ~ 0
out_d
$Comp
L Connector_Generic:Conn_01x17 J103
U 1 1 60046D94
P 3450 5600
F 0 "J103" H 3530 5642 50  0000 L CNN
F 1 "Conn_01x17" H 3530 5551 50  0000 L CNN
F 2 "anyma_footprints:17pin-smd" H 3450 5600 50  0001 C CNN
F 3 "~" H 3450 5600 50  0001 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6004911D
P 3250 4800
F 0 "#PWR0104" H 3250 4550 50  0001 C CNN
F 1 "GND" V 3255 4672 50  0000 R CNN
F 2 "" H 3250 4800 50  0001 C CNN
F 3 "" H 3250 4800 50  0001 C CNN
	1    3250 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 600495F3
P 3250 5000
F 0 "#PWR0105" H 3250 4750 50  0001 C CNN
F 1 "GND" V 3255 4872 50  0000 R CNN
F 2 "" H 3250 5000 50  0001 C CNN
F 3 "" H 3250 5000 50  0001 C CNN
	1    3250 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 600498DC
P 3250 5200
F 0 "#PWR0106" H 3250 4950 50  0001 C CNN
F 1 "GND" V 3255 5072 50  0000 R CNN
F 2 "" H 3250 5200 50  0001 C CNN
F 3 "" H 3250 5200 50  0001 C CNN
	1    3250 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60049A4F
P 3250 5400
F 0 "#PWR0107" H 3250 5150 50  0001 C CNN
F 1 "GND" V 3255 5272 50  0000 R CNN
F 2 "" H 3250 5400 50  0001 C CNN
F 3 "" H 3250 5400 50  0001 C CNN
	1    3250 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60049BD3
P 3250 5600
F 0 "#PWR0108" H 3250 5350 50  0001 C CNN
F 1 "GND" V 3255 5472 50  0000 R CNN
F 2 "" H 3250 5600 50  0001 C CNN
F 3 "" H 3250 5600 50  0001 C CNN
	1    3250 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 60049E23
P 3250 5800
F 0 "#PWR0109" H 3250 5550 50  0001 C CNN
F 1 "GND" V 3255 5672 50  0000 R CNN
F 2 "" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0001 C CNN
	1    3250 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6004A12E
P 3250 6000
F 0 "#PWR0110" H 3250 5750 50  0001 C CNN
F 1 "GND" V 3255 5872 50  0000 R CNN
F 2 "" H 3250 6000 50  0001 C CNN
F 3 "" H 3250 6000 50  0001 C CNN
	1    3250 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6004A428
P 3250 6200
F 0 "#PWR0111" H 3250 5950 50  0001 C CNN
F 1 "GND" V 3255 6072 50  0000 R CNN
F 2 "" H 3250 6200 50  0001 C CNN
F 3 "" H 3250 6200 50  0001 C CNN
	1    3250 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6004A898
P 3250 6400
F 0 "#PWR0112" H 3250 6150 50  0001 C CNN
F 1 "GND" V 3255 6272 50  0000 R CNN
F 2 "" H 3250 6400 50  0001 C CNN
F 3 "" H 3250 6400 50  0001 C CNN
	1    3250 6400
	0    1    1    0   
$EndComp
Text GLabel 5050 5100 0    50   Input ~ 0
hsync
Text GLabel 5050 4900 0    50   Input ~ 0
porch
Text GLabel 5050 5500 0    50   Input ~ 0
genlock
Text GLabel 5050 5300 0    50   Input ~ 0
vsync
Text GLabel 5050 5700 0    50   Input ~ 0
out_a
Text GLabel 5050 5900 0    50   Input ~ 0
out_b
Text GLabel 5050 6100 0    50   Input ~ 0
out_c
Text GLabel 5050 6300 0    50   Input ~ 0
out_d
$Comp
L Connector_Generic:Conn_01x17 J104
U 1 1 6004CB99
P 5250 5600
F 0 "J104" H 5330 5642 50  0000 L CNN
F 1 "Conn_01x17" H 5330 5551 50  0000 L CNN
F 2 "anyma_footprints:17pin-smd" H 5250 5600 50  0001 C CNN
F 3 "~" H 5250 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6004CBA3
P 5050 4800
F 0 "#PWR0113" H 5050 4550 50  0001 C CNN
F 1 "GND" V 5055 4672 50  0000 R CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6004CBAD
P 5050 5000
F 0 "#PWR0114" H 5050 4750 50  0001 C CNN
F 1 "GND" V 5055 4872 50  0000 R CNN
F 2 "" H 5050 5000 50  0001 C CNN
F 3 "" H 5050 5000 50  0001 C CNN
	1    5050 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6004CBB7
P 5050 5200
F 0 "#PWR0115" H 5050 4950 50  0001 C CNN
F 1 "GND" V 5055 5072 50  0000 R CNN
F 2 "" H 5050 5200 50  0001 C CNN
F 3 "" H 5050 5200 50  0001 C CNN
	1    5050 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6004CBC1
P 5050 5400
F 0 "#PWR0116" H 5050 5150 50  0001 C CNN
F 1 "GND" V 5055 5272 50  0000 R CNN
F 2 "" H 5050 5400 50  0001 C CNN
F 3 "" H 5050 5400 50  0001 C CNN
	1    5050 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6004CBCB
P 5050 5600
F 0 "#PWR0117" H 5050 5350 50  0001 C CNN
F 1 "GND" V 5055 5472 50  0000 R CNN
F 2 "" H 5050 5600 50  0001 C CNN
F 3 "" H 5050 5600 50  0001 C CNN
	1    5050 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6004CBD5
P 5050 5800
F 0 "#PWR0118" H 5050 5550 50  0001 C CNN
F 1 "GND" V 5055 5672 50  0000 R CNN
F 2 "" H 5050 5800 50  0001 C CNN
F 3 "" H 5050 5800 50  0001 C CNN
	1    5050 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6004CBDF
P 5050 6000
F 0 "#PWR0119" H 5050 5750 50  0001 C CNN
F 1 "GND" V 5055 5872 50  0000 R CNN
F 2 "" H 5050 6000 50  0001 C CNN
F 3 "" H 5050 6000 50  0001 C CNN
	1    5050 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6004CBE9
P 5050 6200
F 0 "#PWR0120" H 5050 5950 50  0001 C CNN
F 1 "GND" V 5055 6072 50  0000 R CNN
F 2 "" H 5050 6200 50  0001 C CNN
F 3 "" H 5050 6200 50  0001 C CNN
	1    5050 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6004CBF3
P 5050 6400
F 0 "#PWR0121" H 5050 6150 50  0001 C CNN
F 1 "GND" V 5055 6272 50  0000 R CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "" H 5050 6400 50  0001 C CNN
	1    5050 6400
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H101
U 1 1 6007E2C7
P 8750 1800
F 0 "H101" H 8850 1849 50  0000 L CNN
F 1 "MountingHole_Pad" H 8850 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 8750 1800 50  0001 C CNN
F 3 "~" H 8750 1800 50  0001 C CNN
	1    8750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6007E539
P 8750 1900
F 0 "#PWR0122" H 8750 1650 50  0001 C CNN
F 1 "GND" H 8755 1727 50  0000 C CNN
F 2 "" H 8750 1900 50  0001 C CNN
F 3 "" H 8750 1900 50  0001 C CNN
	1    8750 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H102
U 1 1 6007ED41
P 9200 1800
F 0 "H102" H 9300 1849 50  0000 L CNN
F 1 "MountingHole_Pad" H 9300 1758 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9200 1800 50  0001 C CNN
F 3 "~" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6007ED4B
P 9200 1900
F 0 "#PWR0123" H 9200 1650 50  0001 C CNN
F 1 "GND" H 9205 1727 50  0000 C CNN
F 2 "" H 9200 1900 50  0001 C CNN
F 3 "" H 9200 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H103
U 1 1 60087852
P 8750 2400
F 0 "H103" H 8850 2449 50  0000 L CNN
F 1 "MountingHole_Pad" H 8850 2358 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 8750 2400 50  0001 C CNN
F 3 "~" H 8750 2400 50  0001 C CNN
	1    8750 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6008785C
P 8750 2500
F 0 "#PWR0124" H 8750 2250 50  0001 C CNN
F 1 "GND" H 8755 2327 50  0000 C CNN
F 2 "" H 8750 2500 50  0001 C CNN
F 3 "" H 8750 2500 50  0001 C CNN
	1    8750 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H104
U 1 1 60087866
P 9200 2400
F 0 "H104" H 9300 2449 50  0000 L CNN
F 1 "MountingHole_Pad" H 9300 2358 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9200 2400 50  0001 C CNN
F 3 "~" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 60087870
P 9200 2500
F 0 "#PWR0125" H 9200 2250 50  0001 C CNN
F 1 "GND" H 9205 2327 50  0000 C CNN
F 2 "" H 9200 2500 50  0001 C CNN
F 3 "" H 9200 2500 50  0001 C CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
