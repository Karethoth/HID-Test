EESchema Schematic File Version 4
EELAYER 29 0
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
L MCU_Microchip_ATmega:ATmega644-20PU U1
U 1 1 5E5C99A8
P 2900 5450
F 0 "U1" H 2900 5550 50  0000 C CNN
F 1 "ATmega644-20PU" H 2900 5450 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 2900 5450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2593.pdf" H 2900 5450 50  0001 C CNN
	1    2900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5E5CD25F
P 1750 4150
F 0 "Y1" H 1750 4300 50  0000 C CNN
F 1 "20MHz" H 1750 4000 50  0000 C CNN
F 2 "" H 1750 4150 50  0001 C CNN
F 3 "~" H 1750 4150 50  0001 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E5D5B6E
P 1900 4450
F 0 "C3" H 2015 4496 50  0000 L CNN
F 1 "15p" H 2015 4405 50  0000 L CNN
F 2 "" H 1938 4300 50  0001 C CNN
F 3 "~" H 1900 4450 50  0001 C CNN
	1    1900 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E5D9DE9
P 1600 4450
F 0 "C2" H 1322 4496 50  0000 L CNN
F 1 "15p" H 1321 4405 50  0000 L CNN
F 2 "" H 1638 4300 50  0001 C CNN
F 3 "~" H 1600 4450 50  0001 C CNN
	1    1600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4150 1600 3950
Wire Wire Line
	1600 3950 2300 3950
Wire Wire Line
	1600 4300 1600 4150
Connection ~ 1600 4150
Wire Wire Line
	1900 4300 1900 4150
Connection ~ 1900 4150
$Comp
L power:GND #PWR?
U 1 1 5E5E4C54
P 2900 7450
F 0 "#PWR?" H 2900 7200 50  0001 C CNN
F 1 "GND" H 2905 7277 50  0000 C CNN
F 2 "" H 2900 7450 50  0001 C CNN
F 3 "" H 2900 7450 50  0001 C CNN
	1    2900 7450
	1    0    0    -1  
$EndComp
Text Label 7350 7500 0    50   Italic 10
HID_TEST
Text Label 8150 7650 0    50   Italic 10
2020-03-02
$Comp
L power:GND #PWR?
U 1 1 5E5F3FAC
P 950 2650
F 0 "#PWR?" H 950 2400 50  0001 C CNN
F 1 "GND" H 955 2477 50  0000 C CNN
F 2 "" H 950 2650 50  0001 C CNN
F 3 "" H 950 2650 50  0001 C CNN
	1    950  2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E6187C4
P 2900 2700
F 0 "#PWR?" H 2900 2550 50  0001 C CNN
F 1 "+5V" H 2915 2873 50  0000 C CNN
F 2 "" H 2900 2700 50  0001 C CNN
F 3 "" H 2900 2700 50  0001 C CNN
	1    2900 2700
	1    0    0    -1  
$EndComp
Text GLabel 3650 4650 2    50   Input ~ 0
USB_D+
Wire Wire Line
	1350 1450 1350 900 
Connection ~ 950  2050
Wire Wire Line
	950  2050 850  2050
Wire Wire Line
	1250 1450 1350 1450
$Comp
L Connector:USB_B_Micro J1
U 1 1 5E5E5D7F
P 950 1650
F 0 "J1" H 1007 2117 50  0000 C CNN
F 1 "USB_B_Micro" H 1007 2026 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "~" H 1100 1600 50  0001 C CNN
	1    950  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2650 950  2450
Wire Wire Line
	950  2450 950  2050
Connection ~ 950  2450
Wire Wire Line
	1250 1650 1500 1650
Wire Wire Line
	1500 1650 1500 2050
$Comp
L Device:D_Zener_ALT D1
U 1 1 5E60E4EF
P 1500 2200
F 0 "D1" V 1454 2279 50  0000 L CNN
F 1 "3v6" V 1545 2279 50  0000 L CNN
F 2 "" H 1500 2200 50  0001 C CNN
F 3 "~" H 1500 2200 50  0001 C CNN
	1    1500 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2350 1500 2450
Wire Wire Line
	1500 2450 950  2450
$Comp
L power:+5V #PWR?
U 1 1 5E5F4A37
P 1850 750
F 0 "#PWR?" H 1850 600 50  0001 C CNN
F 1 "+5V" H 1865 923 50  0000 C CNN
F 2 "" H 1850 750 50  0001 C CNN
F 3 "" H 1850 750 50  0001 C CNN
	1    1850 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E619138
P 2550 3100
F 0 "C4" H 2665 3146 50  0000 L CNN
F 1 "100n" H 2665 3055 50  0000 L CNN
F 2 "" H 2588 2950 50  0001 C CNN
F 3 "~" H 2550 3100 50  0001 C CNN
	1    2550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E620D48
P 2550 3250
F 0 "#PWR?" H 2550 3000 50  0001 C CNN
F 1 "GND" H 2555 3077 50  0000 C CNN
F 2 "" H 2550 3250 50  0001 C CNN
F 3 "" H 2550 3250 50  0001 C CNN
	1    2550 3250
	1    0    0    -1  
$EndComp
Connection ~ 1850 1750
Connection ~ 1850 1950
Wire Wire Line
	1850 1950 1850 1750
Wire Wire Line
	1850 1950 1850 2050
Wire Wire Line
	1950 1950 1850 1950
Wire Wire Line
	2250 1950 2350 1950
Wire Wire Line
	2250 1650 2350 1650
Text GLabel 2350 1950 2    50   Input ~ 0
USB_D-
Text GLabel 2350 1650 2    50   Input ~ 0
USB_D+
Wire Wire Line
	1850 2450 1500 2450
Wire Wire Line
	1850 2350 1850 2450
$Comp
L Device:D_Zener_ALT D2
U 1 1 5E60FA60
P 1850 2200
F 0 "D2" V 1804 2279 50  0000 L CNN
F 1 "3v6" V 1895 2279 50  0000 L CNN
F 2 "" H 1850 2200 50  0001 C CNN
F 3 "~" H 1850 2200 50  0001 C CNN
	1    1850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 1750 1250 1750
Wire Wire Line
	1850 1350 1850 1750
$Comp
L Device:R R3
U 1 1 5E5FB6A1
P 2100 1950
F 0 "R3" V 1900 1950 50  0000 C CNN
F 1 "100" V 2000 1950 50  0000 C CNN
F 2 "" V 2030 1950 50  0001 C CNN
F 3 "~" H 2100 1950 50  0001 C CNN
	1    2100 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E5FAA66
P 2100 1650
F 0 "R2" V 1893 1650 50  0000 C CNN
F 1 "100" V 1984 1650 50  0000 C CNN
F 2 "" V 2030 1650 50  0001 C CNN
F 3 "~" H 2100 1650 50  0001 C CNN
	1    2100 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E5F688B
P 1850 1200
F 0 "R1" H 1920 1246 50  0000 L CNN
F 1 "1k5" H 1920 1155 50  0000 L CNN
F 2 "" V 1780 1200 50  0001 C CNN
F 3 "~" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1650 1950 1650
Connection ~ 1500 1650
Connection ~ 1500 2450
$Comp
L power:GND #PWR?
U 1 1 5E640B8F
P 1500 1350
F 0 "#PWR?" H 1500 1100 50  0001 C CNN
F 1 "GND" H 1505 1177 50  0000 C CNN
F 2 "" H 1500 1350 50  0001 C CNN
F 3 "" H 1500 1350 50  0001 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E63AB27
P 1500 1200
F 0 "C1" H 1618 1246 50  0000 L CNN
F 1 "4u7" H 1618 1155 50  0000 L CNN
F 2 "" H 1538 1050 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 750  1850 900 
Wire Wire Line
	1350 900  1500 900 
Connection ~ 1850 900 
Wire Wire Line
	1850 900  1850 1050
Wire Wire Line
	1500 900  1500 1050
Connection ~ 1500 900 
Wire Wire Line
	1500 900  1850 900 
Wire Wire Line
	2900 2700 2900 2800
Wire Wire Line
	2550 2950 2550 2800
Wire Wire Line
	2550 2800 2900 2800
Connection ~ 2900 2800
Wire Wire Line
	2900 2800 2900 3450
Text GLabel 3650 4750 2    50   Input ~ 0
USB_D-
Wire Wire Line
	3650 4650 3500 4650
$Comp
L Device:L L1
U 1 1 5E64AEDD
P 3000 3100
F 0 "L1" H 3052 3146 50  0000 L CNN
F 1 "10u" H 3052 3055 50  0000 L CNN
F 2 "" H 3000 3100 50  0001 C CNN
F 3 "~" H 3000 3100 50  0001 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2800 3000 2800
Wire Wire Line
	3000 2800 3000 2950
Wire Wire Line
	3000 3250 3000 3450
Text Notes 2650 4450 0    50   Italic 0
Ground Plane
Wire Notes Line
	2200 2700 3200 2700
Wire Notes Line
	3200 2700 3200 4500
Wire Notes Line
	2200 4500 3200 4500
Wire Notes Line
	2200 2700 2200 4500
$Comp
L Device:R R4
U 1 1 5E6581D0
P 1850 3000
F 0 "R4" H 1920 3046 50  0000 L CNN
F 1 "10k" H 1920 2955 50  0000 L CNN
F 2 "" V 1780 3000 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2800 2550 2800
Connection ~ 2550 2800
$Comp
L Switch:SW_Push SW1
U 1 1 5E663A43
P 1650 3450
F 0 "SW1" V 1700 3850 50  0000 R CNN
F 1 "SW_Push" V 1600 3850 50  0000 R CNN
F 2 "" H 1650 3650 50  0001 C CNN
F 3 "~" H 1650 3650 50  0001 C CNN
	1    1650 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5E666692
P 1850 3450
F 0 "C5" H 1965 3496 50  0000 L CNN
F 1 "100n" H 1965 3405 50  0000 L CNN
F 2 "" H 1888 3300 50  0001 C CNN
F 3 "~" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E5D472C
P 1250 4900
F 0 "#PWR?" H 1250 4650 50  0001 C CNN
F 1 "GND" H 1255 4727 50  0000 C CNN
F 2 "" H 1250 4900 50  0001 C CNN
F 3 "" H 1250 4900 50  0001 C CNN
	1    1250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 1900 4150
Connection ~ 1650 3650
Wire Wire Line
	1650 3650 1250 3650
Wire Wire Line
	1850 3600 1850 3650
Wire Wire Line
	1850 3650 1650 3650
Wire Wire Line
	1850 2850 1850 2800
Wire Wire Line
	1650 3250 1850 3250
Wire Wire Line
	1850 3250 1850 3300
Wire Wire Line
	1850 3250 1850 3150
Connection ~ 1850 3250
Wire Wire Line
	1850 3250 2300 3250
Wire Wire Line
	2300 3250 2300 3750
Wire Wire Line
	1900 4600 1900 4700
Wire Wire Line
	1900 4700 1600 4700
Wire Wire Line
	1250 4700 1250 4900
Wire Wire Line
	1600 4600 1600 4700
Connection ~ 1600 4700
Wire Wire Line
	1600 4700 1250 4700
Wire Wire Line
	1250 3650 1250 4700
Connection ~ 1250 4700
Wire Wire Line
	5700 1750 5700 1700
$Comp
L power:GND #PWR?
U 1 1 5E5E6FF9
P 5700 2200
F 0 "#PWR?" H 5700 1950 50  0001 C CNN
F 1 "GND" H 5705 2027 50  0000 C CNN
F 2 "" H 5700 2200 50  0001 C CNN
F 3 "" H 5700 2200 50  0001 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2150 5700 2200
$Comp
L Device:R R?
U 1 1 5E5E86DC
P 5700 1500
F 0 "R?" H 5770 1546 50  0000 L CNN
F 1 "5k?" H 5770 1455 50  0000 L CNN
F 2 "" V 5630 1500 50  0001 C CNN
F 3 "~" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
Connection ~ 5700 1700
Wire Wire Line
	5700 1700 5700 1650
Wire Wire Line
	5700 1700 6100 1700
Wire Wire Line
	6100 1600 5950 1600
Wire Wire Line
	5950 1600 5950 1100
Wire Wire Line
	5950 1100 6100 1100
Wire Wire Line
	5950 1100 5300 1100
Connection ~ 5950 1100
Wire Wire Line
	6100 1500 6050 1500
Wire Wire Line
	6050 1500 6050 1000
Wire Wire Line
	6050 1000 6100 1000
Wire Wire Line
	6050 1000 5300 1000
Connection ~ 6050 1000
Wire Wire Line
	5700 1350 5700 850 
Wire Wire Line
	5700 850  6100 850 
$Comp
L power:+5V #PWR?
U 1 1 5E606532
P 5700 750
F 0 "#PWR?" H 5700 600 50  0001 C CNN
F 1 "+5V" H 5715 923 50  0000 C CNN
F 2 "" H 5700 750 50  0001 C CNN
F 3 "" H 5700 750 50  0001 C CNN
	1    5700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 750  5700 850 
Connection ~ 5700 850 
Wire Wire Line
	5300 1200 5400 1200
Wire Wire Line
	5400 1350 5400 1200
Connection ~ 5400 1200
Wire Wire Line
	5400 1200 6100 1200
Wire Wire Line
	5400 1650 5400 1950
Wire Wire Line
	3650 4750 3500 4750
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J2
U 1 1 5E6726A9
P 3700 4050
F 0 "J2" H 3750 4450 50  0000 C CNN
F 1 "2x8 Connector" V 3750 4000 50  0000 C CNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "~" H 3700 4050 50  0001 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
Text GLabel 4000 4850 2    50   Input ~ 0
Matrix_0b
Text GLabel 4000 4950 2    50   Input ~ 0
Matrix_1b
Text GLabel 4000 5050 2    50   Input ~ 0
Matrix_2b
Wire Wire Line
	4000 4950 3500 4950
Wire Wire Line
	3500 5050 4000 5050
Wire Wire Line
	6950 2150 5700 2150
Connection ~ 5700 2150
$Comp
L custom_parts:CD4555BE U2
U 1 1 5E5D1E6A
P 6500 1350
F 0 "U2" H 6500 2075 50  0000 C CNN
F 1 "CD4555BE" H 6500 1984 50  0000 C CNN
F 2 "" H 6450 1650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/cd4555b.pdf" H 6450 1650 50  0001 C CNN
	1    6500 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E608808
P 5400 1500
F 0 "R?" H 5470 1546 50  0000 L CNN
F 1 "10k?" H 5470 1455 50  0000 L CNN
F 2 "" V 5330 1500 50  0001 C CNN
F 3 "~" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E5DFF2D
P 5600 1950
F 0 "Q1" H 5790 1996 50  0000 L CNN
F 1 "2N3904" H 5790 1905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5800 1875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 1950 50  0001 L CNN
	1    5600 1950
	1    0    0    -1  
$EndComp
Text GLabel 5300 1200 0    50   Input ~ 0
Matrix_2b
Text GLabel 5300 1100 0    50   Input ~ 0
Matrix_1b
Text GLabel 5300 1000 0    50   Input ~ 0
Matrix_0b
Wire Wire Line
	4000 4850 3500 4850
Wire Wire Line
	9200 1750 9200 1700
$Comp
L power:GND #PWR?
U 1 1 5E7667BD
P 9200 2200
F 0 "#PWR?" H 9200 1950 50  0001 C CNN
F 1 "GND" H 9205 2027 50  0000 C CNN
F 2 "" H 9200 2200 50  0001 C CNN
F 3 "" H 9200 2200 50  0001 C CNN
	1    9200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2150 9200 2200
$Comp
L Device:R R?
U 1 1 5E7667C4
P 9200 1500
F 0 "R?" H 9270 1546 50  0000 L CNN
F 1 "5k?" H 9270 1455 50  0000 L CNN
F 2 "" V 9130 1500 50  0001 C CNN
F 3 "~" H 9200 1500 50  0001 C CNN
	1    9200 1500
	1    0    0    -1  
$EndComp
Connection ~ 9200 1700
Wire Wire Line
	9200 1700 9200 1650
Wire Wire Line
	9200 1700 9600 1700
Wire Wire Line
	9600 1600 9450 1600
Wire Wire Line
	9450 1600 9450 1100
Wire Wire Line
	9450 1100 9600 1100
Wire Wire Line
	9450 1100 8800 1100
Connection ~ 9450 1100
Wire Wire Line
	9600 1500 9550 1500
Wire Wire Line
	9550 1500 9550 1000
Wire Wire Line
	9550 1000 9600 1000
Wire Wire Line
	9550 1000 8800 1000
Connection ~ 9550 1000
Wire Wire Line
	9200 1350 9200 850 
Wire Wire Line
	9200 850  9600 850 
$Comp
L power:+5V #PWR?
U 1 1 5E7667D9
P 9200 750
F 0 "#PWR?" H 9200 600 50  0001 C CNN
F 1 "+5V" H 9215 923 50  0000 C CNN
F 2 "" H 9200 750 50  0001 C CNN
F 3 "" H 9200 750 50  0001 C CNN
	1    9200 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 750  9200 850 
Connection ~ 9200 850 
Wire Wire Line
	8800 1200 8900 1200
Wire Wire Line
	8900 1350 8900 1200
Connection ~ 8900 1200
Wire Wire Line
	8900 1200 9600 1200
Wire Wire Line
	8900 1650 8900 1950
Wire Wire Line
	10450 2150 9200 2150
Connection ~ 9200 2150
$Comp
L custom_parts:CD4555BE U3
U 1 1 5E7667E8
P 10000 1350
F 0 "U3" H 10000 2075 50  0000 C CNN
F 1 "CD4555BE" H 10000 1984 50  0000 C CNN
F 2 "" H 9950 1650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/cd4555b.pdf" H 9950 1650 50  0001 C CNN
	1    10000 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E7667EE
P 8900 1500
F 0 "R?" H 8970 1546 50  0000 L CNN
F 1 "10k?" H 8970 1455 50  0000 L CNN
F 2 "" V 8830 1500 50  0001 C CNN
F 3 "~" H 8900 1500 50  0001 C CNN
	1    8900 1500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E7667F4
P 9100 1950
F 0 "Q2" H 9290 1996 50  0000 L CNN
F 1 "2N3904" H 9290 1905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9300 1875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9100 1950 50  0001 L CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
Text GLabel 8800 1200 0    50   Input ~ 0
Matrix_5b
Text GLabel 8800 1100 0    50   Input ~ 0
Matrix_4b
Text GLabel 8800 1000 0    50   Input ~ 0
Matrix_3b
Text GLabel 4000 5150 2    50   Input ~ 0
Matrix_3b
Text GLabel 4000 5250 2    50   Input ~ 0
Matrix_4b
Text GLabel 4000 5350 2    50   Input ~ 0
Matrix_5b
Wire Wire Line
	6950 2150 6950 850 
Wire Wire Line
	6950 850  6900 850 
Wire Wire Line
	10400 850  10450 850 
Wire Wire Line
	10450 850  10450 2150
Wire Wire Line
	3500 5150 3950 5150
Wire Wire Line
	4000 5250 3900 5250
Wire Wire Line
	3500 5350 3850 5350
Wire Wire Line
	6900 1000 7000 1000
Wire Wire Line
	6900 1100 7050 1100
Wire Wire Line
	6900 1200 7100 1200
Wire Wire Line
	6900 1300 7150 1300
Wire Wire Line
	6900 1500 7200 1500
Wire Wire Line
	7200 1500 7200 2250
Wire Wire Line
	6900 1600 7250 1600
Wire Wire Line
	7250 1600 7250 2250
Wire Wire Line
	6900 1700 7300 1700
Wire Wire Line
	7300 1700 7300 2250
Wire Wire Line
	6900 1800 7350 1800
Wire Wire Line
	7350 1800 7350 2250
Wire Wire Line
	10400 1000 10500 1000
Wire Wire Line
	10500 1000 10500 2250
Wire Wire Line
	10400 1100 10550 1100
Wire Wire Line
	10550 1100 10550 2250
Wire Wire Line
	10400 1200 10600 1200
Wire Wire Line
	10600 1200 10600 2250
Wire Wire Line
	10400 1300 10650 1300
Wire Wire Line
	10650 1300 10650 2250
Wire Wire Line
	10400 1500 10700 1500
Wire Wire Line
	10700 1500 10700 2250
Wire Wire Line
	10400 1600 10750 1600
Wire Wire Line
	10750 1600 10750 2250
Wire Wire Line
	10400 1700 10800 1700
Wire Wire Line
	10800 1700 10800 2250
Wire Wire Line
	10400 1800 10850 1800
Wire Wire Line
	10850 1800 10850 2250
Wire Wire Line
	3000 2800 4000 2800
Wire Wire Line
	4000 2800 4000 3750
Connection ~ 3000 2800
Connection ~ 4000 3750
Wire Wire Line
	4000 3750 4000 3850
Connection ~ 4000 3850
Wire Wire Line
	4000 3850 4000 3950
Connection ~ 4000 3950
Wire Wire Line
	4000 3950 4000 4050
Connection ~ 4000 4050
Wire Wire Line
	4000 4050 4000 4150
Connection ~ 4000 4150
Wire Wire Line
	4000 4150 4000 4250
Connection ~ 4000 4250
Wire Wire Line
	4000 4250 4000 4350
Connection ~ 4000 4350
Wire Wire Line
	4000 4350 4000 4450
Wire Notes Line
	3450 2700 4100 2700
Wire Notes Line
	4100 2700 4100 3550
Wire Notes Line
	4100 3550 3450 3550
Wire Notes Line
	3450 3550 3450 2700
Text Notes 3500 3000 0    50   Italic 0
TODO:\n- Protection
Text Notes 7000 6650 0    50   ~ 0
- Missing parts ordered
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J3
U 1 1 5E8073C7
P 3800 1100
F 0 "J3" H 3850 1417 50  0000 C CNN
F 1 "Prog" H 3850 1326 50  0000 C CNN
F 2 "" H 3800 1100 50  0001 C CNN
F 3 "~" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E81F428
P 4200 850
F 0 "#PWR?" H 4200 700 50  0001 C CNN
F 1 "+5V" H 4215 1023 50  0000 C CNN
F 2 "" H 4200 850 50  0001 C CNN
F 3 "" H 4200 850 50  0001 C CNN
	1    4200 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8258A8
P 4200 1350
F 0 "#PWR?" H 4200 1100 50  0001 C CNN
F 1 "GND" H 4205 1177 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1200 4200 1200
Wire Wire Line
	4200 1200 4200 1350
Wire Wire Line
	4100 1000 4200 1000
Wire Wire Line
	4200 1000 4200 850 
Text GLabel 4200 1100 2    50   Input ~ 0
Prog_MOSI
Wire Wire Line
	4100 1100 4200 1100
Text GLabel 3500 1000 0    50   Input ~ 0
Prog_MISO
Text GLabel 3500 1100 0    50   Input ~ 0
Prog_SCK
Text GLabel 3500 1200 0    50   Input ~ 0
Prog_RST
Wire Wire Line
	3600 1000 3500 1000
Wire Wire Line
	3500 1100 3600 1100
Wire Wire Line
	3600 1200 3500 1200
Wire Wire Line
	1250 3250 1650 3250
Connection ~ 1650 3250
Text GLabel 1250 3250 0    50   Input ~ 0
Prog_RST
Text GLabel 4150 5650 2    50   Input ~ 0
Prog_SCK
Wire Wire Line
	4150 5650 3850 5650
Wire Wire Line
	3850 5650 3850 5350
Connection ~ 3850 5350
Wire Wire Line
	3850 5350 4000 5350
Text GLabel 4150 5450 2    50   Input ~ 0
Prog_MOSI
Text GLabel 4150 5550 2    50   Input ~ 0
Prog_MISO
Wire Wire Line
	3950 5150 3950 5450
Wire Wire Line
	3950 5450 4150 5450
Connection ~ 3950 5150
Wire Wire Line
	3950 5150 4000 5150
Wire Wire Line
	4150 5550 3900 5550
Wire Wire Line
	3900 5550 3900 5250
Connection ~ 3900 5250
Wire Wire Line
	3900 5250 3500 5250
Connection ~ 9450 5950
Wire Wire Line
	9050 5950 9450 5950
Connection ~ 8900 5950
Wire Wire Line
	8500 5950 8900 5950
Connection ~ 8350 5950
Wire Wire Line
	7950 5950 8350 5950
Wire Wire Line
	7800 5950 7800 6050
Connection ~ 7800 5950
Wire Wire Line
	7400 5950 7800 5950
Wire Wire Line
	9450 5100 9450 5950
Wire Wire Line
	8900 5100 8900 5950
Wire Wire Line
	8350 5100 8350 5950
Wire Wire Line
	7800 5100 7800 5950
Wire Wire Line
	8500 5250 7950 5250
Connection ~ 8500 5250
Wire Wire Line
	7950 5250 7400 5250
Connection ~ 7950 5250
Connection ~ 7400 5250
Wire Wire Line
	9050 5250 8500 5250
$Comp
L Switch:SW_Push SW25
U 1 1 5EC1BD7B
P 9050 5450
F 0 "SW25" V 9004 5598 50  0000 L CNN
F 1 "Btn" V 9095 5598 50  0000 L CNN
F 2 "" H 9050 5650 50  0001 C CNN
F 3 "~" H 9050 5650 50  0001 C CNN
	1    9050 5450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D25
U 1 1 5EC1BD75
P 9050 5800
F 0 "D25" V 9096 5721 50  0000 R CNN
F 1 "1N4153" V 9005 5721 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9050 5625 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 9050 5800 50  0001 C CNN
	1    9050 5800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW24
U 1 1 5EC1BD6F
P 8500 5450
F 0 "SW24" V 8454 5598 50  0000 L CNN
F 1 "Btn" V 8545 5598 50  0000 L CNN
F 2 "" H 8500 5650 50  0001 C CNN
F 3 "~" H 8500 5650 50  0001 C CNN
	1    8500 5450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D24
U 1 1 5EC1BD69
P 8500 5800
F 0 "D24" V 8546 5721 50  0000 R CNN
F 1 "1N4153" V 8455 5721 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8500 5625 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 8500 5800 50  0001 C CNN
	1    8500 5800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW23
U 1 1 5EC1BD63
P 7950 5450
F 0 "SW23" V 7904 5598 50  0000 L CNN
F 1 "Btn" V 7995 5598 50  0000 L CNN
F 2 "" H 7950 5650 50  0001 C CNN
F 3 "~" H 7950 5650 50  0001 C CNN
	1    7950 5450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D23
U 1 1 5EC1BD5D
P 7950 5800
F 0 "D23" V 7996 5721 50  0000 R CNN
F 1 "1N4153" V 7905 5721 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7950 5625 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7950 5800 50  0001 C CNN
	1    7950 5800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW22
U 1 1 5EC1BD57
P 7400 5450
F 0 "SW22" V 7354 5598 50  0000 L CNN
F 1 "Btn" V 7445 5598 50  0000 L CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "~" H 7400 5650 50  0001 C CNN
	1    7400 5450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D22
U 1 1 5EC1BD51
P 7400 5800
F 0 "D22" V 7446 5721 50  0000 R CNN
F 1 "1N4153" V 7355 5721 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7400 5625 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7400 5800 50  0001 C CNN
	1    7400 5800
	0    -1   -1   0   
$EndComp
Connection ~ 8900 5100
Wire Wire Line
	8900 4250 8900 5100
Connection ~ 8900 4250
Wire Wire Line
	8500 4250 8900 4250
Wire Wire Line
	8900 3400 8900 4250
Connection ~ 8350 5100
Connection ~ 8350 4250
Wire Wire Line
	8350 4250 8350 5100
Wire Wire Line
	7400 5100 7800 5100
Wire Wire Line
	7800 4250 7800 5100
Connection ~ 7800 4250
Wire Wire Line
	7400 4250 7800 4250
Connection ~ 7800 5100
Wire Wire Line
	7800 3400 7800 4250
Wire Wire Line
	7400 4400 7950 4400
Connection ~ 9450 5100
Wire Wire Line
	9450 4250 9450 5100
Connection ~ 8500 4400
Wire Wire Line
	9050 4400 8500 4400
Wire Wire Line
	9050 5100 9450 5100
$Comp
L Switch:SW_Push SW21
U 1 1 5EB1F649
P 9050 4600
F 0 "SW21" V 9004 4748 50  0000 L CNN
F 1 "Btn" V 9095 4748 50  0000 L CNN
F 2 "" H 9050 4800 50  0001 C CNN
F 3 "~" H 9050 4800 50  0001 C CNN
	1    9050 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D21
U 1 1 5EB1F643
P 9050 4950
F 0 "D21" V 9096 4871 50  0000 R CNN
F 1 "1N4153" V 9005 4871 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9050 4775 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 9050 4950 50  0001 C CNN
	1    9050 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 5100 8900 5100
Wire Wire Line
	7950 5100 8350 5100
Wire Wire Line
	7950 4400 8500 4400
Connection ~ 7950 4400
Connection ~ 7400 4400
$Comp
L Switch:SW_Push SW20
U 1 1 5EB1F635
P 8500 4600
F 0 "SW20" V 8454 4748 50  0000 L CNN
F 1 "Btn" V 8545 4748 50  0000 L CNN
F 2 "" H 8500 4800 50  0001 C CNN
F 3 "~" H 8500 4800 50  0001 C CNN
	1    8500 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D20
U 1 1 5EB1F62F
P 8500 4950
F 0 "D20" V 8546 4871 50  0000 R CNN
F 1 "1N4153" V 8455 4871 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8500 4775 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 8500 4950 50  0001 C CNN
	1    8500 4950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW19
U 1 1 5EB1F629
P 7950 4600
F 0 "SW19" V 7904 4748 50  0000 L CNN
F 1 "Btn" V 7995 4748 50  0000 L CNN
F 2 "" H 7950 4800 50  0001 C CNN
F 3 "~" H 7950 4800 50  0001 C CNN
	1    7950 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D19
U 1 1 5EB1F623
P 7950 4950
F 0 "D19" V 7996 4871 50  0000 R CNN
F 1 "1N4153" V 7905 4871 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7950 4775 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7950 4950 50  0001 C CNN
	1    7950 4950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW18
U 1 1 5EB1F61D
P 7400 4600
F 0 "SW18" V 7354 4748 50  0000 L CNN
F 1 "Btn" V 7445 4748 50  0000 L CNN
F 2 "" H 7400 4800 50  0001 C CNN
F 3 "~" H 7400 4800 50  0001 C CNN
	1    7400 4600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D18
U 1 1 5EB1F617
P 7400 4950
F 0 "D18" V 7446 4871 50  0000 R CNN
F 1 "1N4153" V 7355 4871 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7400 4775 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7400 4950 50  0001 C CNN
	1    7400 4950
	0    -1   -1   0   
$EndComp
Connection ~ 9450 4250
Wire Wire Line
	9450 3400 9450 4250
Wire Wire Line
	8350 3400 8350 4250
Connection ~ 8500 3550
Wire Wire Line
	9050 3550 8500 3550
Wire Wire Line
	9050 4250 9450 4250
$Comp
L Switch:SW_Push SW17
U 1 1 5EAC9501
P 9050 3750
F 0 "SW17" V 9004 3898 50  0000 L CNN
F 1 "Btn" V 9095 3898 50  0000 L CNN
F 2 "" H 9050 3950 50  0001 C CNN
F 3 "~" H 9050 3950 50  0001 C CNN
	1    9050 3750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D17
U 1 1 5EAC94FB
P 9050 4100
F 0 "D17" V 9096 4021 50  0000 R CNN
F 1 "1N4153" V 9005 4021 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9050 3925 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 9050 4100 50  0001 C CNN
	1    9050 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3550 7950 3550
Wire Wire Line
	7950 4250 8350 4250
Wire Wire Line
	7950 3550 8500 3550
Connection ~ 7950 3550
Connection ~ 7400 3550
$Comp
L Switch:SW_Push SW16
U 1 1 5EAC94EA
P 8500 3750
F 0 "SW16" V 8454 3898 50  0000 L CNN
F 1 "Btn" V 8545 3898 50  0000 L CNN
F 2 "" H 8500 3950 50  0001 C CNN
F 3 "~" H 8500 3950 50  0001 C CNN
	1    8500 3750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D16
U 1 1 5EAC94E4
P 8500 4100
F 0 "D16" V 8546 4021 50  0000 R CNN
F 1 "1N4153" V 8455 4021 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8500 3925 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 8500 4100 50  0001 C CNN
	1    8500 4100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW15
U 1 1 5EAC94DE
P 7950 3750
F 0 "SW15" V 7904 3898 50  0000 L CNN
F 1 "Btn" V 7995 3898 50  0000 L CNN
F 2 "" H 7950 3950 50  0001 C CNN
F 3 "~" H 7950 3950 50  0001 C CNN
	1    7950 3750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D15
U 1 1 5EAC94D8
P 7950 4100
F 0 "D15" V 7996 4021 50  0000 R CNN
F 1 "1N4153" V 7905 4021 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7950 3925 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7950 4100 50  0001 C CNN
	1    7950 4100
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW14
U 1 1 5EAC94D2
P 7400 3750
F 0 "SW14" V 7354 3898 50  0000 L CNN
F 1 "Btn" V 7445 3898 50  0000 L CNN
F 2 "" H 7400 3950 50  0001 C CNN
F 3 "~" H 7400 3950 50  0001 C CNN
	1    7400 3750
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D14
U 1 1 5EAC94CC
P 7400 4100
F 0 "D14" V 7446 4021 50  0000 R CNN
F 1 "1N4153" V 7355 4021 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7400 3925 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7400 4100 50  0001 C CNN
	1    7400 4100
	0    -1   -1   0   
$EndComp
Connection ~ 8500 2700
Wire Wire Line
	9050 2700 8500 2700
Wire Wire Line
	9050 3400 9450 3400
$Comp
L Switch:SW_Push SW13
U 1 1 5EAB03D3
P 9050 2900
F 0 "SW13" V 9004 3048 50  0000 L CNN
F 1 "Btn" V 9095 3048 50  0000 L CNN
F 2 "" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 2900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D13
U 1 1 5EAB03CD
P 9050 3250
F 0 "D13" V 9096 3171 50  0000 R CNN
F 1 "1N4153" V 9005 3171 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9050 3075 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 9050 3250 50  0001 C CNN
	1    9050 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2700 7950 2700
Wire Wire Line
	8500 3400 8900 3400
Wire Wire Line
	7950 3400 8350 3400
Wire Wire Line
	7400 3400 7800 3400
Wire Wire Line
	7950 2700 8500 2700
Connection ~ 7950 2700
Connection ~ 7400 2700
$Comp
L Switch:SW_Push SW12
U 1 1 5EA453AA
P 8500 2900
F 0 "SW12" V 8454 3048 50  0000 L CNN
F 1 "Btn" V 8545 3048 50  0000 L CNN
F 2 "" H 8500 3100 50  0001 C CNN
F 3 "~" H 8500 3100 50  0001 C CNN
	1    8500 2900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D12
U 1 1 5EA453A4
P 8500 3250
F 0 "D12" V 8546 3171 50  0000 R CNN
F 1 "1N4153" V 8455 3171 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8500 3075 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 8500 3250 50  0001 C CNN
	1    8500 3250
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW11
U 1 1 5EA3D8D2
P 7950 2900
F 0 "SW11" V 7904 3048 50  0000 L CNN
F 1 "Btn" V 7995 3048 50  0000 L CNN
F 2 "" H 7950 3100 50  0001 C CNN
F 3 "~" H 7950 3100 50  0001 C CNN
	1    7950 2900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D11
U 1 1 5EA3D8CC
P 7950 3250
F 0 "D11" V 7996 3171 50  0000 R CNN
F 1 "1N4153" V 7905 3171 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7950 3075 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7950 3250 50  0001 C CNN
	1    7950 3250
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW10
U 1 1 5EA31BC4
P 7400 2900
F 0 "SW10" V 7354 3048 50  0000 L CNN
F 1 "Btn" V 7445 3048 50  0000 L CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
	1    7400 2900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4151 D10
U 1 1 5EA22450
P 7400 3250
F 0 "D10" V 7446 3171 50  0000 R CNN
F 1 "1N4153" V 7355 3171 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7400 3075 50  0001 C CNN
F 3 "http://www.microsemi.com/document-portal/doc_view/11580-lds-0239" H 7400 3250 50  0001 C CNN
	1    7400 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 1000 7000 2700
Wire Wire Line
	7050 1100 7050 3550
Wire Wire Line
	7100 1200 7100 4400
Wire Wire Line
	7150 1300 7150 5250
Wire Wire Line
	7800 6050 6050 6050
Wire Wire Line
	8350 6150 6050 6150
Wire Wire Line
	8350 5950 8350 6150
Wire Wire Line
	8900 6250 6050 6250
Wire Wire Line
	8900 5950 8900 6250
Wire Wire Line
	9450 6350 6050 6350
Wire Wire Line
	9450 5950 9450 6350
Wire Wire Line
	7000 2700 7400 2700
Wire Wire Line
	7050 3550 7400 3550
Wire Wire Line
	7100 4400 7400 4400
Wire Wire Line
	7150 5250 7400 5250
$EndSCHEMATC
