EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
Wire Wire Line
	2350 7100 2350 7050
Wire Wire Line
	2350 7050 2450 7050
Wire Wire Line
	2650 7050 2650 7100
Wire Wire Line
	2450 7100 2450 7050
Connection ~ 2450 7050
Wire Wire Line
	2450 7050 2550 7050
Wire Wire Line
	2550 7100 2550 7050
Connection ~ 2550 7050
Wire Wire Line
	2550 7050 2650 7050
$Comp
L power:+3.3V #PWR?
U 1 1 604572AC
P 2350 7000
F 0 "#PWR?" H 2350 6850 50  0001 C CNN
F 1 "+3.3V" H 2350 7150 50  0000 C CNN
F 2 "" H 2350 7000 50  0001 C CNN
F 3 "" H 2350 7000 50  0001 C CNN
	1    2350 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7000 2350 7050
Connection ~ 2350 7050
$Comp
L power:+3.3V #PWR?
U 1 1 60457F71
P 4100 8700
F 0 "#PWR?" H 4100 8550 50  0001 C CNN
F 1 "+3.3V" H 4115 8873 50  0000 C CNN
F 2 "" H 4100 8700 50  0001 C CNN
F 3 "" H 4100 8700 50  0001 C CNN
	1    4100 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 8750 4400 8750
Connection ~ 4400 8750
Wire Wire Line
	4400 8750 4100 8750
Wire Wire Line
	4100 8950 4400 8950
Connection ~ 4400 8950
Wire Wire Line
	4400 8950 4700 8950
$Comp
L Device:C_Small C?
U 1 1 604596DF
P 4400 8850
F 0 "C?" H 4350 9000 50  0000 L CNN
F 1 "100nF" H 4250 8700 50  0000 L CNN
F 2 "" H 4400 8850 50  0001 C CNN
F 3 "~" H 4400 8850 50  0001 C CNN
	1    4400 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6045B21F
P 5000 8850
F 0 "C?" H 5100 8900 50  0000 L CNN
F 1 "100nF" H 5050 8800 50  0000 L CNN
F 2 "" H 5000 8850 50  0001 C CNN
F 3 "~" H 5000 8850 50  0001 C CNN
	1    5000 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 8750 5000 8750
Connection ~ 4700 8750
Wire Wire Line
	4700 8950 5000 8950
Connection ~ 4700 8950
$Comp
L Device:C_Small C?
U 1 1 60459BA0
P 4700 8850
F 0 "C?" H 4650 9000 50  0000 L CNN
F 1 "100nF" H 4550 8700 50  0000 L CNN
F 2 "" H 4700 8850 50  0001 C CNN
F 3 "~" H 4700 8850 50  0001 C CNN
	1    4700 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 8950 5000 9000
Connection ~ 5000 8950
Wire Wire Line
	4100 8750 4100 8700
Connection ~ 4100 8750
$Comp
L Device:C_Small C?
U 1 1 6045881E
P 4100 8850
F 0 "C?" H 3850 8900 50  0000 L CNN
F 1 "100nF" H 3800 8800 50  0000 L CNN
F 2 "" H 4100 8850 50  0001 C CNN
F 3 "~" H 4100 8850 50  0001 C CNN
	1    4100 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 604841F1
P 1900 7050
F 0 "L?" V 2050 7050 50  0000 C CNN
F 1 "10uH" V 1950 7050 50  0000 C CNN
F 2 "" H 1900 7050 50  0001 C CNN
F 3 "~" H 1900 7050 50  0001 C CNN
	1    1900 7050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60486195
P 4300 9500
F 0 "C?" H 4350 9550 50  0000 L CNN
F 1 "10uF" H 4350 9450 50  0000 L CNN
F 2 "" H 4300 9500 50  0001 C CNN
F 3 "~" H 4300 9500 50  0001 C CNN
	1    4300 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7050 3350 7000
Wire Wire Line
	3350 7250 3350 7300
$Comp
L power:+3.3V #PWR?
U 1 1 60489D8D
P 3350 7000
F 0 "#PWR?" H 3350 6850 50  0001 C CNN
F 1 "+3.3V" H 3365 7173 50  0000 C CNN
F 2 "" H 3350 7000 50  0001 C CNN
F 3 "" H 3350 7000 50  0001 C CNN
	1    3350 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60489366
P 3350 7300
F 0 "#PWR?" H 3350 7050 50  0001 C CNN
F 1 "GND" H 3355 7127 50  0000 C CNN
F 2 "" H 3350 7300 50  0001 C CNN
F 3 "" H 3350 7300 50  0001 C CNN
	1    3350 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60487903
P 3350 7150
F 0 "C?" H 3400 7200 50  0000 L CNN
F 1 "100nF" H 3400 7100 50  0000 L CNN
F 2 "" H 3350 7150 50  0001 C CNN
F 3 "~" H 3350 7150 50  0001 C CNN
	1    3350 7150
	1    0    0    -1  
$EndComp
Connection ~ 3350 7050
$Comp
L Device:C_Small C?
U 1 1 6048CD6A
P 4650 9500
F 0 "C?" H 4700 9550 50  0000 L CNN
F 1 "1uF" H 4700 9450 50  0000 L CNN
F 2 "" H 4650 9500 50  0001 C CNN
F 3 "~" H 4650 9500 50  0001 C CNN
	1    4650 9500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6048D153
P 5000 9500
F 0 "C?" H 5050 9600 50  0000 L CNN
F 1 "100nF" H 5050 9450 50  0000 L CNN
F 2 "" H 5000 9500 50  0001 C CNN
F 3 "~" H 5000 9500 50  0001 C CNN
	1    5000 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 9400 4650 9400
Connection ~ 4650 9400
Wire Wire Line
	4650 9400 5000 9400
$Comp
L power:GND #PWR?
U 1 1 6048FD85
P 5000 9600
F 0 "#PWR?" H 5000 9350 50  0001 C CNN
F 1 "GND" H 5005 9427 50  0000 C CNN
F 2 "" H 5000 9600 50  0001 C CNN
F 3 "" H 5000 9600 50  0001 C CNN
	1    5000 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6045DBBF
P 5000 9000
F 0 "#PWR?" H 5000 8750 50  0001 C CNN
F 1 "GND" H 5005 8827 50  0000 C CNN
F 2 "" H 5000 9000 50  0001 C CNN
F 3 "" H 5000 9000 50  0001 C CNN
	1    5000 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 604954FE
P 1300 10350
F 0 "R?" H 1400 10300 50  0000 C CNN
F 1 "10K" H 1400 10400 50  0000 C CNN
F 2 "" H 1300 10350 50  0001 C CNN
F 3 "~" H 1300 10350 50  0001 C CNN
	1    1300 10350
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 604969A6
P 1300 10200
F 0 "#PWR?" H 1300 10050 50  0001 C CNN
F 1 "+3.3V" H 1250 10350 50  0000 C CNN
F 2 "" H 1300 10200 50  0001 C CNN
F 3 "" H 1300 10200 50  0001 C CNN
	1    1300 10200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60497A9E
P 1300 10650
F 0 "C?" H 1150 10700 50  0000 L CNN
F 1 "100nF" H 1000 10600 50  0000 L CNN
F 2 "" H 1300 10650 50  0001 C CNN
F 3 "~" H 1300 10650 50  0001 C CNN
	1    1300 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 10550 1300 10500
$Comp
L power:GND #PWR?
U 1 1 6049D269
P 1300 10800
F 0 "#PWR?" H 1300 10550 50  0001 C CNN
F 1 "GND" H 1305 10627 50  0000 C CNN
F 2 "" H 1300 10800 50  0001 C CNN
F 3 "" H 1300 10800 50  0001 C CNN
	1    1300 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 10250 1300 10200
$Comp
L MCU_Microchip_SAMD:ATSAMD51J19A-A U?
U 1 1 6044C757
P 2450 8900
F 0 "U?" V 2550 8950 50  0000 C CNN
F 1 "ATSAMD51J19A-A" V 2450 8950 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 2450 8900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001507E.pdf" H 2450 8900 50  0001 C CNN
	1    2450 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 10750 1300 10800
NoConn ~ 2550 10700
Text Notes 4400 10600 2    50   ~ 0
What do I do with GNDANA? \nNo information on the schematic.
$Comp
L Device:Crystal Y?
U 1 1 604A92C0
P 4550 8050
F 0 "Y?" H 4550 8318 50  0000 C CNN
F 1 "32.768" H 4550 8227 50  0000 C CNN
F 2 "" H 4550 8050 50  0001 C CNN
F 3 "~" H 4550 8050 50  0001 C CNN
	1    4550 8050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 604AD9ED
P 4350 8150
F 0 "C?" H 4200 8200 50  0000 L CNN
F 1 "22pF" H 4100 8100 50  0000 L CNN
F 2 "" H 4350 8150 50  0001 C CNN
F 3 "~" H 4350 8150 50  0001 C CNN
	1    4350 8150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 604AE318
P 4750 8150
F 0 "C?" H 4800 8200 50  0000 L CNN
F 1 "22pF" H 4800 8100 50  0000 L CNN
F 2 "" H 4750 8150 50  0001 C CNN
F 3 "~" H 4750 8150 50  0001 C CNN
	1    4750 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 8050 4700 8050
Wire Wire Line
	4350 8050 4400 8050
Wire Wire Line
	4350 8250 4350 8300
Wire Wire Line
	4350 8300 4550 8300
Wire Wire Line
	4750 8300 4750 8250
Wire Wire Line
	4550 8300 4550 8350
Connection ~ 4550 8300
Wire Wire Line
	4550 8300 4750 8300
$Comp
L power:GND #PWR?
U 1 1 604B1E17
P 4550 8350
F 0 "#PWR?" H 4550 8100 50  0001 C CNN
F 1 "GND" H 4555 8177 50  0000 C CNN
F 2 "" H 4550 8350 50  0001 C CNN
F 3 "" H 4550 8350 50  0001 C CNN
	1    4550 8350
	1    0    0    -1  
$EndComp
Text GLabel 4750 8000 1    50   Input ~ 0
X_1
Text GLabel 4350 8000 1    50   Input ~ 0
X_2
Text GLabel 1750 7500 0    50   Input ~ 0
X_1
Text GLabel 1750 7600 0    50   Input ~ 0
X_2
Wire Wire Line
	4750 8050 4750 8000
Connection ~ 4750 8050
Wire Wire Line
	4350 8050 4350 8000
Connection ~ 4350 8050
$Comp
L 2758:2758 D?
U 1 1 604B8C68
P 11150 10850
F 0 "D?" H 11150 11317 50  0000 C CNN
F 1 "Neopixel" H 11150 11226 50  0000 C CNN
F 2 "SOL320P540X170-4N" H 11150 10850 50  0001 L BNN
F 3 "" H 11150 10850 50  0001 L BNN
F 4 "1.7 mm" H 11150 10850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "IPC 7351B" H 11150 10850 50  0001 L BNN "STANDARD"
F 6 "01" H 11150 10850 50  0001 L BNN "PARTREV"
F 7 "Adafruit Industries" H 11150 10850 50  0001 L BNN "MANUFACTURER"
	1    11150 10850
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 604C0D2F
P 1550 1850
F 0 "J?" H 1200 2600 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1600 2700 50  0001 C CNN
F 2 "" H 1700 1850 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1700 1850 50  0001 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:USBLC6-2P6 U?
U 1 1 604C5607
P 3250 2650
F 0 "U?" H 3000 3000 50  0000 C CNN
F 1 "USBLC6-2P6" H 3550 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-666" H 3250 2150 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 3450 3000 50  0001 C CNN
	1    3250 2650
	1    0    0    -1  
$EndComp
NoConn ~ 2150 2350
NoConn ~ 2150 2450
$Comp
L Device:R_Small R?
U 1 1 604C999E
P 1400 2800
F 0 "R?" V 1300 2800 50  0000 C CNN
F 1 "1M" V 1500 2800 50  0000 C CNN
F 2 "" H 1400 2800 50  0001 C CNN
F 3 "~" H 1400 2800 50  0001 C CNN
	1    1400 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 2750 1250 2800
Wire Wire Line
	1250 2800 1300 2800
Wire Wire Line
	1550 2750 1550 2800
Wire Wire Line
	1550 2800 1500 2800
Connection ~ 1550 2800
$Comp
L power:GND #PWR?
U 1 1 604CDE60
P 1550 3150
F 0 "#PWR?" H 1550 2900 50  0001 C CNN
F 1 "GND" H 1555 2977 50  0000 C CNN
F 2 "" H 1550 3150 50  0001 C CNN
F 3 "" H 1550 3150 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2050 2250 2050
Wire Wire Line
	2250 2050 2250 1950
Wire Wire Line
	2250 1950 2150 1950
Wire Wire Line
	2150 1750 2250 1750
Wire Wire Line
	2250 1750 2250 1850
Wire Wire Line
	2250 1850 2150 1850
Wire Wire Line
	2250 1950 2850 1950
Connection ~ 2250 1950
Wire Wire Line
	2850 2550 2850 2750
Wire Wire Line
	2250 1850 3650 1850
Connection ~ 2250 1850
Wire Wire Line
	3650 2550 3650 2750
Wire Wire Line
	3250 3050 3250 3150
$Comp
L power:GND #PWR?
U 1 1 604D60FE
P 3250 3150
F 0 "#PWR?" H 3250 2900 50  0001 C CNN
F 1 "GND" H 3255 2977 50  0000 C CNN
F 2 "" H 3250 3150 50  0001 C CNN
F 3 "" H 3250 3150 50  0001 C CNN
	1    3250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2250 3250 2200
$Comp
L power:+5V #PWR?
U 1 1 604DEA47
P 3250 2200
F 0 "#PWR?" H 3250 2050 50  0001 C CNN
F 1 "+5V" H 3265 2373 50  0000 C CNN
F 2 "" H 3250 2200 50  0001 C CNN
F 3 "" H 3250 2200 50  0001 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 604DF5E4
P 2550 1200
F 0 "#PWR?" H 2550 1050 50  0001 C CNN
F 1 "+5V" H 2565 1373 50  0000 C CNN
F 2 "" H 2550 1200 50  0001 C CNN
F 3 "" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2550 2850 1950
Connection ~ 2850 2550
Wire Wire Line
	3650 1850 3650 2550
Connection ~ 3650 2550
Wire Wire Line
	2850 1950 3800 1950
Connection ~ 2850 1950
Wire Wire Line
	3650 1850 3800 1850
Connection ~ 3650 1850
Text GLabel 3800 1950 2    50   Input ~ 0
USB_D+
Text GLabel 3800 1850 2    50   Input ~ 0
USB_D-
$Comp
L Device:R_Small R?
U 1 1 604ED7F3
P 2350 1450
F 0 "R?" H 2450 1500 50  0000 C CNN
F 1 "5.1k" H 2450 1400 50  0000 C CNN
F 2 "" H 2350 1450 50  0001 C CNN
F 3 "~" H 2350 1450 50  0001 C CNN
	1    2350 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 604EE80C
P 2350 1550
F 0 "R?" H 2450 1500 50  0000 C CNN
F 1 "5.1k" H 2450 1600 50  0000 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "~" H 2350 1550 50  0001 C CNN
	1    2350 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1550 2550 1550
Wire Wire Line
	2550 1550 2550 1450
Wire Wire Line
	2550 1450 2450 1450
Wire Wire Line
	2550 1550 2550 1600
Connection ~ 2550 1550
$Comp
L power:GND #PWR?
U 1 1 604FAC14
P 2550 1600
F 0 "#PWR?" H 2550 1350 50  0001 C CNN
F 1 "GND" H 2555 1427 50  0000 C CNN
F 2 "" H 2550 1600 50  0001 C CNN
F 3 "" H 2550 1600 50  0001 C CNN
	1    2550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1550 2250 1550
Wire Wire Line
	2150 1450 2250 1450
Text GLabel 1750 10000 0    50   Input ~ 0
USB_D+
Text GLabel 1750 9900 0    50   Input ~ 0
USB_D-
$Comp
L AP63300WU-7:AP63300WU-7 U?
U 1 1 6050740E
P 1950 4200
F 0 "U?" H 1950 4100 50  0000 C CNN
F 1 "AP63300WU-7" H 1950 4000 50  0000 C CNN
F 2 "SOT95P280X100-6N" H 1950 4200 50  0001 L BNN
F 3 "" H 1950 4200 50  0001 L BNN
F 4 "2020-04-24" H 1950 4200 50  0001 L BNN "PARTREV"
F 5 "Manufacturer Recommendations" H 1950 4200 50  0001 L BNN "STANDARD"
F 6 "1.00mm" H 1950 4200 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "DIODES" H 1950 4200 50  0001 L BNN "MANUFACTURER"
	1    1950 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 6050A994
P 2850 4100
F 0 "L?" V 3000 4100 50  0000 C CNN
F 1 "6.8uH" V 2900 4100 50  0000 C CNN
F 2 "" H 2850 4100 50  0001 C CNN
F 3 "~" H 2850 4100 50  0001 C CNN
	1    2850 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605105BA
P 2600 4000
F 0 "C?" H 2550 4250 50  0000 L CNN
F 1 "100nF" H 2500 4150 50  0000 L CNN
F 2 "" H 2600 4000 50  0001 C CNN
F 3 "~" H 2600 4000 50  0001 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3900 2600 3900
Wire Wire Line
	2450 4100 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2600 4100 2750 4100
$Comp
L Device:C_Small C?
U 1 1 60519CB5
P 3100 4200
F 0 "C?" H 2950 4250 50  0000 L CNN
F 1 "47pF" H 2850 4150 50  0000 L CNN
F 2 "" H 3100 4200 50  0001 C CNN
F 3 "~" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4100 3100 4100
Wire Wire Line
	2450 4300 3100 4300
Connection ~ 3100 4300
Connection ~ 3100 4100
$Comp
L Device:C_Small C?
U 1 1 6052BEB8
P 1300 4200
F 0 "C?" H 1150 4250 50  0000 L CNN
F 1 "10uF" H 1050 4150 50  0000 L CNN
F 2 "" H 1300 4200 50  0001 C CNN
F 3 "~" H 1300 4200 50  0001 C CNN
	1    1300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4100 1400 4100
Wire Wire Line
	1400 4100 1400 3900
Wire Wire Line
	1400 3900 1450 3900
Connection ~ 1400 3900
Wire Wire Line
	1300 3900 1400 3900
Wire Wire Line
	1300 3900 1300 4100
Wire Wire Line
	1300 4300 1300 4850
$Comp
L Device:R_Small R?
U 1 1 60547F68
P 3350 4200
F 0 "R?" H 3450 4250 50  0000 C CNN
F 1 "158k" H 3500 4150 50  0000 C CNN
F 2 "" H 3350 4200 50  0001 C CNN
F 3 "~" H 3350 4200 50  0001 C CNN
	1    3350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4100 3350 4100
Wire Wire Line
	3100 4300 3350 4300
$Comp
L Device:R_Small R?
U 1 1 6054ED0E
P 3350 4400
F 0 "R?" H 3450 4450 50  0000 C CNN
F 1 "30.1k" H 3500 4350 50  0000 C CNN
F 2 "" H 3350 4400 50  0001 C CNN
F 3 "~" H 3350 4400 50  0001 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
Connection ~ 3350 4300
Wire Wire Line
	3350 4850 3350 4500
Wire Wire Line
	1950 4800 1950 4850
$Comp
L power:GND #PWR?
U 1 1 60555E19
P 2650 4850
F 0 "#PWR?" H 2650 4600 50  0001 C CNN
F 1 "GND" H 2655 4677 50  0000 C CNN
F 2 "" H 2650 4850 50  0001 C CNN
F 3 "" H 2650 4850 50  0001 C CNN
	1    2650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2800 1550 3150
Wire Wire Line
	3350 4100 3700 4100
Connection ~ 3350 4100
$Comp
L power:+5V #PWR?
U 1 1 60568889
P 4100 3850
F 0 "#PWR?" H 4100 3700 50  0001 C CNN
F 1 "+5V" H 4115 4023 50  0000 C CNN
F 2 "" H 4100 3850 50  0001 C CNN
F 3 "" H 4100 3850 50  0001 C CNN
	1    4100 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60569CFE
P 3900 4200
F 0 "C?" H 3850 4450 50  0000 L CNN
F 1 "22uF" H 3800 4350 50  0000 L CNN
F 2 "" H 3900 4200 50  0001 C CNN
F 3 "~" H 3900 4200 50  0001 C CNN
	1    3900 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6056C260
P 3700 4200
F 0 "C?" H 3650 4450 50  0000 L CNN
F 1 "22uF" H 3550 4350 50  0000 L CNN
F 2 "" H 3700 4200 50  0001 C CNN
F 3 "~" H 3700 4200 50  0001 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
Connection ~ 3700 4100
Wire Wire Line
	3700 4100 3900 4100
Connection ~ 3900 4100
Wire Wire Line
	3900 4100 4100 4100
Wire Wire Line
	3700 4300 3700 4850
Wire Wire Line
	3900 4300 3900 4850
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 605AA620
P 2950 5400
F 0 "U?" H 2950 5642 50  0000 C CNN
F 1 "AZ1117-3.3" H 2950 5551 50  0000 C CNN
F 2 "" H 2950 5650 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 2950 5400 50  0001 C CNN
	1    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605ABB4F
P 2550 5500
F 0 "C?" H 2400 5550 50  0000 L CNN
F 1 "1uF" H 2350 5450 50  0000 L CNN
F 2 "" H 2550 5500 50  0001 C CNN
F 3 "~" H 2550 5500 50  0001 C CNN
	1    2550 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605AC5FB
P 3350 5500
F 0 "C?" H 3200 5450 50  0000 L CNN
F 1 "1uF" H 3150 5550 50  0000 L CNN
F 2 "" H 3350 5500 50  0001 C CNN
F 3 "~" H 3350 5500 50  0001 C CNN
	1    3350 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 5600 2550 5750
Wire Wire Line
	2550 5750 2950 5750
Wire Wire Line
	3350 5750 3350 5600
Wire Wire Line
	3350 5400 3250 5400
Wire Wire Line
	2550 5400 2650 5400
Wire Wire Line
	2950 5700 2950 5750
Connection ~ 2950 5750
Wire Wire Line
	2950 5750 3350 5750
Wire Wire Line
	2950 5750 2950 5800
$Comp
L power:GND #PWR?
U 1 1 605BEFC6
P 2950 5800
F 0 "#PWR?" H 2950 5550 50  0001 C CNN
F 1 "GND" H 2955 5627 50  0000 C CNN
F 2 "" H 2950 5800 50  0001 C CNN
F 3 "" H 2950 5800 50  0001 C CNN
	1    2950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5400 3600 5400
Connection ~ 3350 5400
$Comp
L Device:D_Schottky D?
U 1 1 605C73A4
P 2250 5400
F 0 "D?" H 2250 5275 50  0000 C CNN
F 1 "D_Schottky" H 2250 5274 50  0001 C CNN
F 2 "" H 2250 5400 50  0001 C CNN
F 3 "~" H 2250 5400 50  0001 C CNN
	1    2250 5400
	-1   0    0    1   
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 605CCB08
P 1950 5350
F 0 "#PWR?" H 1950 5200 50  0001 C CNN
F 1 "VBUS" H 1965 5523 50  0000 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5400 2550 5400
Connection ~ 2550 5400
Wire Wire Line
	1950 5400 2100 5400
$Comp
L power:+3.3V #PWR?
U 1 1 605D5948
P 3600 5350
F 0 "#PWR?" H 3600 5200 50  0001 C CNN
F 1 "+3.3V" H 3615 5523 50  0000 C CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5350 3600 5400
Wire Wire Line
	1950 5350 1950 5400
Wire Notes Line
	4500 6050 4500 800 
Wire Notes Line
	950  800  950  6050
Text Notes 1000 1000 0    118  ~ 0
USB Input\n
Text Notes 1000 4000 0    118  ~ 0
5V Supply\n\n\n
Text Notes 1000 5850 0    118  ~ 0
3V Supply\n\n\n\n
Wire Notes Line
	950  6050 4500 6050
Wire Notes Line
	950  5100 4500 5100
Wire Notes Line
	950  3450 4500 3450
Wire Notes Line
	950  800  4500 800 
Wire Wire Line
	2450 10700 2450 10750
Wire Wire Line
	1750 10500 1300 10500
Wire Wire Line
	1300 10450 1300 10500
Connection ~ 1300 10500
$Comp
L power:GND #PWR?
U 1 1 604A38E8
P 2450 10750
F 0 "#PWR?" H 2450 10500 50  0001 C CNN
F 1 "GND" H 2455 10577 50  0000 C CNN
F 2 "" H 2450 10750 50  0001 C CNN
F 3 "" H 2450 10750 50  0001 C CNN
	1    2450 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7050 2850 7100
Wire Wire Line
	2850 7050 3350 7050
$Comp
L power:VBUS #PWR?
U 1 1 606E9040
P 1300 3850
F 0 "#PWR?" H 1300 3700 50  0001 C CNN
F 1 "VBUS" H 1315 4023 50  0000 C CNN
F 2 "" H 1300 3850 50  0001 C CNN
F 3 "" H 1300 3850 50  0001 C CNN
	1    1300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 606E993C
P 2550 5350
F 0 "#PWR?" H 2550 5200 50  0001 C CNN
F 1 "+5V" H 2565 5523 50  0000 C CNN
F 2 "" H 2550 5350 50  0001 C CNN
F 3 "" H 2550 5350 50  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5400 2550 5350
Wire Wire Line
	1300 3850 1300 3900
Connection ~ 1300 3900
Wire Wire Line
	4100 3850 4100 4100
Wire Wire Line
	3900 4850 3700 4850
Connection ~ 1950 4850
Wire Wire Line
	1950 4850 1300 4850
Connection ~ 3350 4850
Connection ~ 3700 4850
Wire Wire Line
	3700 4850 3350 4850
Connection ~ 2650 4850
Wire Wire Line
	2650 4850 1950 4850
Wire Wire Line
	2650 4850 3350 4850
Wire Wire Line
	1750 7050 1300 7050
Text Label 1300 7050 0    50   ~ 0
VDDCORE_C
Connection ~ 5000 9600
Wire Wire Line
	4300 9600 4650 9600
Connection ~ 4650 9600
Wire Wire Line
	4650 9600 5000 9600
Wire Wire Line
	2000 7050 2050 7050
Wire Wire Line
	2050 7050 2050 7100
Wire Wire Line
	2150 7100 2150 6950
Wire Wire Line
	1750 7050 1750 6950
Wire Wire Line
	1800 7050 1750 7050
Connection ~ 1750 7050
Wire Wire Line
	1750 6950 2150 6950
Wire Wire Line
	4300 9400 3800 9400
Connection ~ 4300 9400
Text Label 3800 9400 0    50   ~ 0
VDDCORE_C
$Comp
L Device:Fuse F?
U 1 1 60837C51
P 2350 1250
F 0 "F?" V 2153 1250 50  0000 C CNN
F 1 "Fuse" V 2244 1250 50  0000 C CNN
F 2 "" V 2280 1250 50  0001 C CNN
F 3 "~" H 2350 1250 50  0001 C CNN
	1    2350 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 1250 2200 1250
Wire Wire Line
	2500 1250 2550 1250
Wire Wire Line
	2550 1250 2550 1200
Wire Notes Line
	1000 6500 1000 11000
Wire Notes Line
	1000 11000 5500 11000
Wire Notes Line
	5500 11000 5500 6500
Wire Notes Line
	5500 6500 1000 6500
Text Notes 1000 6700 0    118  ~ 0
Processor\n
$EndSCHEMATC
