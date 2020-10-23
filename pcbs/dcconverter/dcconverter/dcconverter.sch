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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5F938BEF
P 1250 1950
F 0 "J1" H 1168 2167 50  0000 C CNN
F 1 "190-9991" H 1168 2076 50  0000 C CNN
F 2 "TerminalBlock_Dinkle:TerminalBlock_Dinkle_DT-55-B01X-02_P10.00mm" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NIGBT_CEG Q1
U 1 1 5F939778
P 2450 2050
F 0 "Q1" V 2778 2050 50  0000 C CNN
F 1 "124-8981" V 2687 2050 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 2650 2150 50  0001 C CNN
F 3 "~" H 2450 2050 50  0001 C CNN
	1    2450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q1
U 1 1 5F93ACCE
P 2450 1500
F 0 "HS-Q1" H 2638 1539 50  0000 L CNN
F 1 "893-4942" H 2638 1448 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 2462 1450 50  0001 C CNN
F 3 "~" H 2462 1450 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5F93B3A3
P 1250 3700
F 0 "J2" H 1168 4117 50  0000 C CNN
F 1 "897-0711" H 1168 4026 50  0000 C CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x06_P5.00mm_45-Degree" H 1250 3700 50  0001 C CNN
F 3 "~" H 1250 3700 50  0001 C CNN
	1    1250 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5F93C935
P 1750 1950
F 0 "F1" V 1553 1950 50  0000 C CNN
F 1 "176-9047" V 1644 1950 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1680 1950 50  0001 C CNN
F 3 "~" H 1750 1950 50  0001 C CNN
	1    1750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1950 1600 1950
Wire Wire Line
	1900 1950 2000 1950
$Comp
L Device:D_Schottky D1
U 1 1 5F93DD00
P 2900 2700
F 0 "D1" V 2854 2780 50  0000 L CNN
F 1 "192-966" V 2945 2780 50  0000 L CNN
F 2 "Diode_THT:D_DO-247_Vertical" H 2900 2700 50  0001 C CNN
F 3 "~" H 2900 2700 50  0001 C CNN
	1    2900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2550 2900 1950
Wire Wire Line
	2900 1950 2650 1950
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-D1
U 1 1 5F93F452
P 2700 2700
F 0 "HS-D1" V 2419 2693 50  0000 C CNN
F 1 "893-4942" V 2510 2693 50  0000 C CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 2712 2650 50  0001 C CNN
F 3 "~" H 2712 2650 50  0001 C CNN
	1    2700 2700
	0    -1   1    0   
$EndComp
$Comp
L dcconverter:2phase_inductor L1
U 1 1 5F94118A
P 4000 2100
F 0 "L1" H 4025 2515 50  0000 C CNN
F 1 "769-0587" H 4025 2424 50  0000 C CNN
F 2 "dcconverter:rb8522_size5" H 4000 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1950 3550 1950
Connection ~ 2900 1950
Wire Wire Line
	4650 2450 3400 2450
Wire Wire Line
	3400 2450 3400 2200
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	4650 1950 4650 2450
$Comp
L Device:CP C1
U 1 1 5F94337F
P 5050 2400
F 0 "C1" H 5168 2446 50  0000 L CNN
F 1 "845-4749" H 5168 2355 50  0000 L CNN
F 2 "SamacSys_Parts:CAPPRD1250W100D2550H5200" H 5088 2250 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1950 5050 1950
Wire Wire Line
	5050 1950 5050 2250
Wire Wire Line
	5050 2550 5050 3100
Wire Wire Line
	5050 3100 2900 3100
Wire Wire Line
	2900 3100 2900 2850
Wire Wire Line
	1450 2050 2200 2050
Wire Wire Line
	2200 2050 2200 3100
Connection ~ 2900 3100
$Comp
L Device:R R1
U 1 1 5F944EB4
P 5750 2200
F 0 "R1" H 5820 2246 50  0000 L CNN
F 1 "1M" H 5820 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
	1    5750 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F94551B
P 5750 2800
F 0 "R2" H 5820 2846 50  0000 L CNN
F 1 "100k" H 5820 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2800 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F945EBB
P 6200 2800
F 0 "C2" H 6315 2846 50  0000 L CNN
F 1 "831-2929" H 6315 2755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P7.50mm" H 6238 2650 50  0001 C CNN
F 3 "~" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1950 5750 1950
Wire Wire Line
	5750 1950 5750 2050
Connection ~ 5050 1950
Wire Wire Line
	5750 2350 5750 2500
Wire Wire Line
	5750 2950 5750 3100
Wire Wire Line
	5750 3100 5050 3100
Connection ~ 5050 3100
Wire Wire Line
	5750 3100 6200 3100
Wire Wire Line
	6200 3100 6200 2950
Connection ~ 5750 3100
Wire Wire Line
	6200 2650 6200 2500
Wire Wire Line
	6200 2500 5750 2500
Connection ~ 5750 2500
Wire Wire Line
	5750 2500 5750 2650
Connection ~ 5750 1950
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q2
U 1 1 5F94C442
P 6800 1500
F 0 "HS-Q2" H 6988 1539 50  0000 L CNN
F 1 "893-4942" H 6988 1448 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 6812 1450 50  0001 C CNN
F 3 "~" H 6812 1450 50  0001 C CNN
	1    6800 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F94D2E0
P 8600 1950
F 0 "J3" H 8680 1942 50  0000 L CNN
F 1 "146-8335" H 8680 1851 50  0000 L CNN
F 2 "dcconverter:connector_2pin_P10.6mm" H 8600 1950 50  0001 C CNN
F 3 "~" H 8600 1950 50  0001 C CNN
	1    8600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5F94E425
P 7750 1950
F 0 "F2" V 7553 1950 50  0000 C CNN
F 1 "176-9047" V 7644 1950 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 7680 1950 50  0001 C CNN
F 3 "~" H 7750 1950 50  0001 C CNN
	1    7750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1950 7900 1950
Wire Wire Line
	7600 1950 7100 1950
Wire Wire Line
	8400 2050 8150 2050
Wire Wire Line
	8150 2050 8150 3100
Wire Wire Line
	8150 3100 6200 3100
Connection ~ 6200 3100
Wire Wire Line
	2200 3100 2900 3100
Wire Wire Line
	1450 3500 2200 3500
Wire Wire Line
	2200 3500 2200 3100
Connection ~ 2200 3100
Wire Wire Line
	1450 3600 5550 3600
Wire Wire Line
	5550 3600 5550 2500
Wire Wire Line
	5550 2500 5750 2500
$Comp
L Device:R R3
U 1 1 5F9540E9
P 1800 4250
F 0 "R3" H 1870 4296 50  0000 L CNN
F 1 "10M" H 1870 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 4250 50  0001 C CNN
F 3 "~" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F9546D4
P 2350 4250
F 0 "R4" H 2420 4296 50  0000 L CNN
F 1 "707-8546" H 2420 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 4250 50  0001 C CNN
F 3 "~" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1950 2000 4000
Wire Wire Line
	2000 4000 1800 4000
Wire Wire Line
	1800 4000 1800 4100
Connection ~ 2000 1950
Wire Wire Line
	2000 1950 2250 1950
Wire Wire Line
	2350 4100 2350 4000
Wire Wire Line
	2350 4000 2000 4000
Connection ~ 2000 4000
Wire Wire Line
	1800 5400 1800 5750
Wire Wire Line
	1800 5750 1650 5750
Wire Wire Line
	1650 3100 2200 3100
$Comp
L Device:C C3
U 1 1 5F959F65
P 2350 5250
F 0 "C3" H 2465 5296 50  0000 L CNN
F 1 "711-2096" H 2465 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W5.0mm_P7.50mm" H 2388 5100 50  0001 C CNN
F 3 "~" H 2350 5250 50  0001 C CNN
	1    2350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1650 5750
Wire Wire Line
	2350 5400 2350 5750
Wire Wire Line
	2350 5750 1800 5750
Connection ~ 1800 5750
Wire Wire Line
	3150 4850 3150 5000
Wire Wire Line
	3150 5000 2350 5000
Wire Wire Line
	2350 5000 2350 5100
$Comp
L SamacSys_Parts:2SK3747-1E Q3
U 1 1 5F95F53B
P 2950 4850
F 0 "Q3" V 3288 4522 50  0000 R CNN
F 1 "2SK3747-1E" V 3197 4522 50  0000 R CNN
F 2 "TO545P570X1550X2990-3P" H 3600 4950 50  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/2SK3747-D.PDF" H 3600 4850 50  0001 L CNN
F 4 "" H 3600 4750 50  0001 L CNN "Description"
F 5 "5.7" H 3600 4650 50  0001 L CNN "Height"
F 6 "8020730" H 3600 4550 50  0001 L CNN "RS Part Number"
F 7 "https://uk.rs-online.com/web/p/products/8020730" H 3600 4450 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 3600 4350 50  0001 L CNN "Manufacturer_Name"
F 9 "2SK3747-1E" H 3600 4250 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70465741" H 3600 4150 50  0001 L CNN "Allied_Number"
	1    2950 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 4400 1800 4850
Wire Wire Line
	2950 4850 1800 4850
Connection ~ 1800 4850
Wire Wire Line
	1800 4850 1800 5100
Wire Wire Line
	3050 4950 2350 4950
Wire Wire Line
	2350 4950 2350 4400
Wire Wire Line
	3050 4850 3050 4950
$Comp
L SamacSys_Parts:FQP47P06 Q2
U 1 1 5F96B06C
P 6700 2250
F 0 "Q2" V 7267 2350 50  0000 C CNN
F 1 "FQP47P06" V 7176 2350 50  0000 C CNN
F 2 "TO254P483X1016X2261-3P" H 7150 2200 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/6715127P" H 7150 2100 50  0001 L CNN
F 4 "Trans MOSFET P-CH 60V 47A 3-Pin TO-220" H 7150 2000 50  0001 L CNN "Description"
F 5 "4.83" H 7150 1900 50  0001 L CNN "Height"
F 6 "6715127P" H 7150 1800 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/6715127P" H 7150 1700 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 7150 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "FQP47P06" H 7150 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 2250
	0    1    -1   0   
$EndComp
Wire Wire Line
	5750 1950 6500 1950
$Comp
L Device:D_Zener D2
U 1 1 5F95756A
P 1800 5250
F 0 "D2" V 1754 5330 50  0000 L CNN
F 1 "805-0094" V 1845 5330 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1800 5250 50  0001 C CNN
F 3 "~" H 1800 5250 50  0001 C CNN
	1    1800 5250
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:NCP7805TG IC1
U 1 1 5F9736CA
P 3800 5150
F 0 "IC1" H 4628 5096 50  0000 L CNN
F 1 "NCP7805TG" H 4628 5005 50  0000 L CNN
F 2 "TO254P482X997X2018-3P" H 4650 5250 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/7192768P" H 4650 5150 50  0001 L CNN
F 4 "Voltage Regulator 1A Positive 5V TO-220 NCP7805TG, Low Dropout Voltage Regulator, 1A 5 V, 4%, 3-Pin TO-220" H 4650 5050 50  0001 L CNN "Description"
F 5 "4.82" H 4650 4950 50  0001 L CNN "Height"
F 6 "7192768P" H 4650 4850 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/7192768P" H 4650 4750 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 4650 4650 50  0001 L CNN "Manufacturer_Name"
F 9 "NCP7805TG" H 4650 4550 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70341025" H 4650 4450 50  0001 L CNN "Allied_Number"
	1    3800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5150 3150 5150
Wire Wire Line
	3150 5150 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	3800 5250 3150 5250
Wire Wire Line
	3150 5250 3150 5750
Wire Wire Line
	3150 5750 2350 5750
Connection ~ 2350 5750
Wire Wire Line
	3800 5350 3700 5350
Wire Wire Line
	3700 5350 3700 3700
Wire Wire Line
	3700 3700 1450 3700
Wire Wire Line
	4500 1950 4550 1950
Wire Wire Line
	4550 1950 4550 2200
Wire Wire Line
	4550 2200 4500 2200
$EndSCHEMATC
