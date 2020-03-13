EESchema Schematic File Version 4
LIBS:hid_test-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L custom_parts:ILI9163 J?
U 1 1 5F39D5CE
P 6050 2500
AR Path="/5F39D5CE" Ref="J?"  Part="1" 
AR Path="/5F396FD6/5F39D5CE" Ref="J6"  Part="1" 
AR Path="/5F70696F/5F39D5CE" Ref="J?"  Part="1" 
F 0 "J6" H 6000 2850 50  0000 L CNN
F 1 "ILI9163" H 5900 1950 50  0000 L CNN
F 2 "hw:ILI9163_PinSocket_1x08_P2.54mm_Vertical" H 5700 2500 50  0001 C CNN
F 3 "https://www.rockbox.org/wiki/pub/Main/SonyNWZE370/ILI9163.pdf" H 5700 2500 50  0001 C CNN
	1    6050 2500
	1    0    0    -1  
$EndComp
$Comp
L custom_parts:ILI9163 J7
U 1 1 5F39D5D4
P 6050 3550
AR Path="/5F396FD6/5F39D5D4" Ref="J7"  Part="1" 
AR Path="/5F70696F/5F39D5D4" Ref="J?"  Part="1" 
F 0 "J7" H 6000 3900 50  0000 L CNN
F 1 "ILI9163" H 5900 3000 50  0000 L CNN
F 2 "hw:ILI9163_PinSocket_1x08_P2.54mm_Vertical" H 5700 3550 50  0001 C CNN
F 3 "https://www.rockbox.org/wiki/pub/Main/SonyNWZE370/ILI9163.pdf" H 5700 3550 50  0001 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2250 5550 2250
Wire Wire Line
	5550 3300 5700 3300
Wire Wire Line
	5550 1700 5550 2250
Connection ~ 5550 2250
Wire Wire Line
	5700 2350 5650 2350
Wire Wire Line
	5650 3400 5700 3400
Connection ~ 5650 3400
$Comp
L power:GND #PWR?
U 1 1 5F39D5E1
P 5650 6400
AR Path="/5F39D5E1" Ref="#PWR?"  Part="1" 
AR Path="/5F396FD6/5F39D5E1" Ref="#PWR0121"  Part="1" 
AR Path="/5F70696F/5F39D5E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 5650 6150 50  0001 C CNN
F 1 "GND" H 5655 6227 50  0000 C CNN
F 2 "" H 5650 6400 50  0001 C CNN
F 3 "" H 5650 6400 50  0001 C CNN
	1    5650 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F39D5E7
P 5550 1700
AR Path="/5F39D5E7" Ref="#PWR?"  Part="1" 
AR Path="/5F396FD6/5F39D5E7" Ref="#PWR0122"  Part="1" 
AR Path="/5F70696F/5F39D5E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 5550 1550 50  0001 C CNN
F 1 "+3V3" H 5565 1873 50  0000 C CNN
F 2 "" H 5550 1700 50  0001 C CNN
F 3 "" H 5550 1700 50  0001 C CNN
	1    5550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5700 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5550 3300
Wire Wire Line
	5550 4000 5700 4000
Connection ~ 5550 3300
Wire Wire Line
	5700 2850 5050 2850
Wire Wire Line
	5700 3900 5050 3900
Wire Wire Line
	5700 2750 5150 2750
Wire Wire Line
	5700 3800 5150 3800
Wire Wire Line
	5550 2250 5550 2950
Wire Wire Line
	5550 3300 5550 4000
Wire Wire Line
	5700 3600 5450 3600
Wire Wire Line
	5700 3500 4750 3500
Wire Wire Line
	5450 2300 5450 2550
Wire Wire Line
	5450 2550 5450 3600
Connection ~ 5450 2550
Wire Wire Line
	5450 2550 5700 2550
Wire Wire Line
	5150 3800 5150 2750
Connection ~ 5150 2750
Wire Wire Line
	5150 2750 5150 1850
Wire Wire Line
	5150 1850 4750 1850
Text GLabel 4750 2300 0    50   Input ~ 10
DISPLAY_~RST~_3v3
Text GLabel 4750 1850 0    50   Input ~ 10
SPI_SDA_3v3
Text GLabel 4750 2000 0    50   Input ~ 10
SPI_SCK_3v3
Text GLabel 4750 3500 0    50   Input ~ 10
DISPLAY_SEL_2_3v3
Wire Wire Line
	5650 3400 5650 4450
Wire Wire Line
	5650 2350 5650 3400
Wire Wire Line
	5700 2650 5250 2650
Wire Wire Line
	5250 2650 5250 1700
Wire Wire Line
	5250 1700 4750 1700
Text GLabel 4750 1700 0    50   Input ~ 10
SPI_~SS~_3v3
Wire Wire Line
	5700 3700 5250 3700
Wire Wire Line
	5250 3700 5250 2650
Connection ~ 5250 2650
$Comp
L custom_parts:ILI9163 J?
U 1 1 5F3AD0E8
P 6050 4600
AR Path="/5F3AD0E8" Ref="J?"  Part="1" 
AR Path="/5F396FD6/5F3AD0E8" Ref="J8"  Part="1" 
AR Path="/5F70696F/5F3AD0E8" Ref="J?"  Part="1" 
F 0 "J8" H 6000 4950 50  0000 L CNN
F 1 "ILI9163" H 5900 4050 50  0000 L CNN
F 2 "hw:ILI9163_PinSocket_1x08_P2.54mm_Vertical" H 5700 4600 50  0001 C CNN
F 3 "https://www.rockbox.org/wiki/pub/Main/SonyNWZE370/ILI9163.pdf" H 5700 4600 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
$Comp
L custom_parts:ILI9163 J9
U 1 1 5F3AD0EE
P 6050 5650
AR Path="/5F396FD6/5F3AD0EE" Ref="J9"  Part="1" 
AR Path="/5F70696F/5F3AD0EE" Ref="J?"  Part="1" 
F 0 "J9" H 6000 6000 50  0000 L CNN
F 1 "ILI9163" H 5900 5100 50  0000 L CNN
F 2 "hw:ILI9163_PinSocket_1x08_P2.54mm_Vertical" H 5700 5650 50  0001 C CNN
F 3 "https://www.rockbox.org/wiki/pub/Main/SonyNWZE370/ILI9163.pdf" H 5700 5650 50  0001 C CNN
	1    6050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4000 5550 4350
Wire Wire Line
	5550 5400 5700 5400
Connection ~ 5550 4000
Wire Wire Line
	5700 5500 5650 5500
Connection ~ 5650 5500
Wire Wire Line
	5650 5500 5650 6400
Wire Wire Line
	5700 5600 4800 5600
Wire Wire Line
	5450 3600 5450 4650
Wire Wire Line
	5450 4650 5700 4650
Connection ~ 5450 3600
Wire Wire Line
	5450 4650 5450 5700
Wire Wire Line
	5450 5700 5700 5700
Connection ~ 5450 4650
Wire Wire Line
	5250 3700 5250 4750
Wire Wire Line
	5250 5800 5700 5800
Connection ~ 5250 3700
Wire Wire Line
	5700 4750 5250 4750
Connection ~ 5250 4750
Wire Wire Line
	5250 4750 5250 5800
Wire Wire Line
	5150 3800 5150 4850
Wire Wire Line
	5150 5900 5700 5900
Connection ~ 5150 3800
Wire Wire Line
	5700 4850 5150 4850
Connection ~ 5150 4850
Wire Wire Line
	5150 4850 5150 5900
Wire Wire Line
	5050 3900 5050 4950
Wire Wire Line
	5050 6000 5700 6000
Wire Wire Line
	5700 4950 5050 4950
Connection ~ 5050 4950
Wire Wire Line
	5050 4950 5050 6000
Wire Wire Line
	5700 5050 5550 5050
Connection ~ 5550 5050
Wire Wire Line
	5550 5050 5550 5400
Wire Wire Line
	5700 6100 5550 6100
Wire Wire Line
	5550 6100 5550 5400
Connection ~ 5550 5400
Wire Wire Line
	5700 4350 5550 4350
Connection ~ 5550 4350
Wire Wire Line
	5550 4350 5550 5050
Wire Wire Line
	5700 4450 5650 4450
Connection ~ 5650 4450
Wire Wire Line
	5650 4450 5650 5500
Wire Wire Line
	5700 4550 4800 4550
Text GLabel 4800 4550 0    50   Input ~ 10
DISPLAY_SEL_3_3v3
Text GLabel 4800 5600 0    50   Input ~ 10
DISPLAY_SEL_4_3v3
Wire Wire Line
	5700 2450 4750 2450
Text GLabel 4750 2450 0    50   Input ~ 10
DISPLAY_SEL_1_3v3
$Comp
L Device:R R?
U 1 1 5F62FB12
P 1550 1850
AR Path="/5F62FB12" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB12" Ref="R11"  Part="1" 
AR Path="/5F70696F/5F62FB12" Ref="R?"  Part="1" 
F 0 "R11" V 1650 1800 50  0000 L CNN
F 1 "500" V 1450 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 1850 50  0001 C CNN
F 3 "~" H 1550 1850 50  0001 C CNN
	1    1550 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 1850 1400 1850
Text GLabel 1300 1850 0    50   Input ~ 10
SPI_SCK
Text GLabel 2750 1850 2    50   Output ~ 10
SPI_SCK_3v3
$Comp
L Device:R R?
U 1 1 5F62FB2D
P 1550 2300
AR Path="/5F62FB2D" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB2D" Ref="R12"  Part="1" 
AR Path="/5F70696F/5F62FB2D" Ref="R?"  Part="1" 
F 0 "R12" V 1650 2250 50  0000 L CNN
F 1 "500" V 1450 2250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 2300 50  0001 C CNN
F 3 "~" H 1550 2300 50  0001 C CNN
	1    1550 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2300 1400 2300
Text GLabel 1300 2300 0    50   Input ~ 10
SPI_SDA
$Comp
L Device:R R?
U 1 1 5F62FB46
P 1550 1400
AR Path="/5F62FB46" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB46" Ref="R10"  Part="1" 
AR Path="/5F70696F/5F62FB46" Ref="R?"  Part="1" 
F 0 "R10" V 1650 1350 50  0000 L CNN
F 1 "500" V 1450 1350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 1400 50  0001 C CNN
F 3 "~" H 1550 1400 50  0001 C CNN
	1    1550 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F62FB52
P 2550 6200
AR Path="/5F62FB52" Ref="#PWR?"  Part="1" 
AR Path="/5F396FD6/5F62FB52" Ref="#PWR0123"  Part="1" 
AR Path="/5F70696F/5F62FB52" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 2550 5950 50  0001 C CNN
F 1 "GND" V 2555 6072 50  0000 R CNN
F 2 "" H 2550 6200 50  0001 C CNN
F 3 "" H 2550 6200 50  0001 C CNN
	1    2550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1400 1400 1400
Text GLabel 1300 1400 0    50   Input ~ 10
SPI_~SS
Text GLabel 2750 2300 2    50   Output ~ 10
SPI_SDA_3v3
Text GLabel 2750 1400 2    50   Output ~ 10
SPI_~SS~_3v3
$Comp
L Device:R R?
U 1 1 5F62FB63
P 1550 3150
AR Path="/5F62FB63" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB63" Ref="R13"  Part="1" 
AR Path="/5F70696F/5F62FB63" Ref="R?"  Part="1" 
F 0 "R13" V 1650 3100 50  0000 L CNN
F 1 "500" V 1450 3100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 3150 50  0001 C CNN
F 3 "~" H 1550 3150 50  0001 C CNN
	1    1550 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3150 1400 3150
Text GLabel 1300 3150 0    50   Input ~ 10
DISPLAY_~RST~
Text GLabel 2750 3150 2    50   Output ~ 10
DISPLAY_~RST~_3v3
$Comp
L Device:R R?
U 1 1 5F62FB7E
P 1550 3600
AR Path="/5F62FB7E" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB7E" Ref="R14"  Part="1" 
AR Path="/5F70696F/5F62FB7E" Ref="R?"  Part="1" 
F 0 "R14" V 1650 3550 50  0000 L CNN
F 1 "500" V 1450 3550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 3600 50  0001 C CNN
F 3 "~" H 1550 3600 50  0001 C CNN
	1    1550 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3600 1400 3600
Text GLabel 1350 3600 0    50   Input ~ 10
DISPLAY_SEL_1
$Comp
L Device:R R?
U 1 1 5F62FB98
P 1550 4000
AR Path="/5F62FB98" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FB98" Ref="R15"  Part="1" 
AR Path="/5F70696F/5F62FB98" Ref="R?"  Part="1" 
F 0 "R15" V 1650 3950 50  0000 L CNN
F 1 "500" V 1450 3950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 4000 50  0001 C CNN
F 3 "~" H 1550 4000 50  0001 C CNN
	1    1550 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 4000 1400 4000
Text GLabel 1350 4000 0    50   Input ~ 10
DISPLAY_SEL_2
$Comp
L Device:R R?
U 1 1 5F62FBB2
P 1550 4400
AR Path="/5F62FBB2" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FBB2" Ref="R16"  Part="1" 
AR Path="/5F70696F/5F62FBB2" Ref="R?"  Part="1" 
F 0 "R16" V 1650 4350 50  0000 L CNN
F 1 "500" V 1450 4350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 4400 50  0001 C CNN
F 3 "~" H 1550 4400 50  0001 C CNN
	1    1550 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 4400 1400 4400
Text GLabel 1350 4400 0    50   Input ~ 10
DISPLAY_SEL_3
$Comp
L Device:R R?
U 1 1 5F62FBCC
P 1550 4800
AR Path="/5F62FBCC" Ref="R?"  Part="1" 
AR Path="/5F396FD6/5F62FBCC" Ref="R17"  Part="1" 
AR Path="/5F70696F/5F62FBCC" Ref="R?"  Part="1" 
F 0 "R17" V 1650 4750 50  0000 L CNN
F 1 "500" V 1450 4750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 4800 50  0001 C CNN
F 3 "~" H 1550 4800 50  0001 C CNN
	1    1550 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 4800 1400 4800
Text GLabel 1350 4800 0    50   Input ~ 10
DISPLAY_SEL_4
Text GLabel 2750 3600 2    50   Output ~ 10
DISPLAY_SEL_1_3v3
Text GLabel 2750 4000 2    50   Output ~ 10
DISPLAY_SEL_2_3v3
Wire Wire Line
	4750 2300 5450 2300
Wire Wire Line
	5050 2850 5050 2000
Wire Wire Line
	5050 2000 4750 2000
$Comp
L Device:R_Network09 RN2
U 1 1 608E4AAA
P 2150 5700
F 0 "RN2" H 1570 5654 50  0000 R CNN
F 1 "1k" H 1570 5745 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP11" V 2725 5700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2150 5700 50  0001 C CNN
	1    2150 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 5900 2550 6200
Wire Wire Line
	1700 1400 2550 1400
Wire Wire Line
	1700 1850 2450 1850
Wire Wire Line
	1700 2300 2350 2300
Wire Wire Line
	1700 3150 2250 3150
Wire Wire Line
	1700 3600 2150 3600
Wire Wire Line
	1700 4000 2050 4000
Wire Wire Line
	1700 4400 1950 4400
Wire Wire Line
	1700 4800 1850 4800
Wire Wire Line
	1850 4800 1850 5500
Connection ~ 1850 4800
Wire Wire Line
	1850 4800 2750 4800
Wire Wire Line
	1950 5500 1950 4400
Connection ~ 1950 4400
Wire Wire Line
	1950 4400 2750 4400
Wire Wire Line
	2050 5500 2050 4000
Connection ~ 2050 4000
Wire Wire Line
	2050 4000 2750 4000
Wire Wire Line
	2150 5500 2150 3600
Connection ~ 2150 3600
Wire Wire Line
	2150 3600 2750 3600
Wire Wire Line
	2250 5500 2250 3150
Connection ~ 2250 3150
Wire Wire Line
	2250 3150 2750 3150
Wire Wire Line
	2350 5500 2350 2300
Connection ~ 2350 2300
Wire Wire Line
	2350 2300 2750 2300
Wire Wire Line
	2450 5500 2450 1850
Connection ~ 2450 1850
Wire Wire Line
	2450 1850 2750 1850
Wire Wire Line
	2550 5500 2550 1400
Connection ~ 2550 1400
Wire Wire Line
	2550 1400 2750 1400
Text GLabel 2750 4800 2    50   Output ~ 10
DISPLAY_SEL_4_3v3
Text GLabel 2750 4400 2    50   Output ~ 10
DISPLAY_SEL_3_3v3
$EndSCHEMATC
