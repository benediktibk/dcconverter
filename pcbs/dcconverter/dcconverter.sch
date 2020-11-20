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
F 2 "Custom:TerminalBlock_2pin_10mm" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NIGBT_CEG Q1
U 1 1 5F939778
P 2450 2050
F 0 "Q1" V 2778 2050 50  0000 C CNN
F 1 "NGTB40N120FL2WG" V 2687 2050 50  0000 C CNN
F 2 "Custom:NGTB40N120FL2WG_Vertical" H 2650 2150 50  0001 C CNN
F 3 "~" H 2450 2050 50  0001 C CNN
	1    2450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q1
U 1 1 5F93ACCE
P 2450 1500
F 0 "HS-Q1" H 2638 1539 50  0000 L CNN
F 1 "HeatsinkUpright" H 2638 1448 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 2462 1450 50  0001 C CNN
F 3 "~" H 2462 1450 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5F93C935
P 1750 1950
F 0 "F1" V 1553 1950 50  0000 C CNN
F 1 "2A" V 1644 1950 50  0000 C CNN
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
F 1 "DSS60-0045B" V 2945 2780 50  0000 L CNN
F 2 "Custom:DSS60-0045B_Vertical" H 2900 2700 50  0001 C CNN
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
F 1 "HeatsinkUpright" V 2510 2693 50  0000 C CNN
F 2 "Custom:HeatsinkUpright" H 2712 2650 50  0001 C CNN
F 3 "~" H 2712 2650 50  0001 C CNN
	1    2700 2700
	0    -1   1    0   
$EndComp
$Comp
L Custom:2phase_inductor L1
U 1 1 5F94118A
P 4000 2100
F 0 "L1" H 4025 2515 50  0000 C CNN
F 1 "RB8522-25-2M0" H 4025 2424 50  0000 C CNN
F 2 "Custom:rb8522_size5" H 4000 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1950 3550 1950
Connection ~ 2900 1950
$Comp
L Custom:CP-Device C1
U 1 1 5F94337F
P 5050 2400
F 0 "C1" H 5168 2446 50  0000 L CNN
F 1 "10mF" H 5168 2355 50  0000 L CNN
F 2 "Custom:CAPPRD1250W100D2550H5200" H 5088 2250 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
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
F 1 "1MOhm" H 5820 2155 50  0000 L CNN
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
F 1 "100kOhm" H 5820 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2800 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1950 5750 1950
Wire Wire Line
	5750 1950 5750 2050
Wire Wire Line
	5750 2350 5750 2500
Wire Wire Line
	5750 2950 5750 3100
Wire Wire Line
	5750 3100 5050 3100
Connection ~ 5050 3100
Connection ~ 5750 2500
Wire Wire Line
	5750 2500 5750 2650
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q2
U 1 1 5F94C442
P 8600 1500
F 0 "HS-Q2" H 8788 1539 50  0000 L CNN
F 1 "HeatsinkUpright" H 8788 1448 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 8612 1450 50  0001 C CNN
F 3 "~" H 8612 1450 50  0001 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F94D2E0
P 10400 1950
F 0 "J3" H 10480 1942 50  0000 L CNN
F 1 "146-8335" H 10480 1851 50  0000 L CNN
F 2 "Custom:connector_2pin_P10.6mm" H 10400 1950 50  0001 C CNN
F 3 "~" H 10400 1950 50  0001 C CNN
	1    10400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5F94E425
P 9550 1950
F 0 "F2" V 9353 1950 50  0000 C CNN
F 1 "25A" V 9444 1950 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 9480 1950 50  0001 C CNN
F 3 "~" H 9550 1950 50  0001 C CNN
	1    9550 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1950 9700 1950
Wire Wire Line
	9400 1950 8900 1950
Wire Wire Line
	10200 2050 9950 2050
Wire Wire Line
	9950 2050 9950 3100
Wire Wire Line
	2200 3100 2900 3100
Connection ~ 2200 3100
Wire Wire Line
	5550 2500 5750 2500
$Comp
L Device:R R3
U 1 1 5F9540E9
P 1800 4250
F 0 "R3" H 1870 4296 50  0000 L CNN
F 1 "10MOhm" H 1870 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 4250 50  0001 C CNN
F 3 "~" H 1800 4250 50  0001 C CNN
	1    1800 4250
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
Connection ~ 2000 4000
Wire Wire Line
	1800 5400 1800 5750
Wire Wire Line
	1800 5750 1650 5750
Wire Wire Line
	1650 3100 2200 3100
Connection ~ 1800 5750
$Comp
L Custom:FQP47P06 Q2
U 1 1 5F96B06C
P 8500 2250
F 0 "Q2" V 9067 2350 50  0000 C CNN
F 1 "FQP47P06" V 8976 2350 50  0000 C CNN
F 2 "Custom:FQP47P06_Vertical_Wide" H 8950 2200 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/6715127P" H 8950 2100 50  0001 L CNN
F 4 "Trans MOSFET P-CH 60V 47A 3-Pin TO-220" H 8950 2000 50  0001 L CNN "Description"
F 5 "4.83" H 8950 1900 50  0001 L CNN "Height"
F 6 "6715127P" H 8950 1800 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/6715127P" H 8950 1700 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 8950 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "FQP47P06" H 8950 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    8500 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5F95756A
P 1800 5250
F 0 "D2" V 1754 5330 50  0000 L CNN
F 1 "1N4751ATR" V 1845 5330 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1800 5250 50  0001 C CNN
F 3 "~" H 1800 5250 50  0001 C CNN
	1    1800 5250
	0    1    1    0   
$EndComp
$Comp
L Custom:NCP7805TG IC1
U 1 1 5F9736CA
P 3800 5150
F 0 "IC1" H 4628 5096 50  0000 L CNN
F 1 "NCP7805TG" H 4628 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4650 5250 50  0001 L CNN
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
	3800 5250 3150 5250
Wire Wire Line
	3150 5250 3150 5750
Wire Wire Line
	3800 5350 3700 5350
Wire Wire Line
	4650 1950 4650 2450
Wire Wire Line
	4650 2450 3400 2450
Wire Wire Line
	3400 2450 3400 2200
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	4500 1950 4650 1950
Wire Wire Line
	4750 2200 4750 1950
Wire Wire Line
	4750 1950 5050 1950
Wire Wire Line
	4500 2200 4750 2200
Connection ~ 5050 1950
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5F9402B4
P 2600 4650
F 0 "Q3" H 2804 4696 50  0000 L CNN
F 1 "2SK3747-1E" H 2804 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3P-3_Horizontal_TabDown" H 2800 4575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 2600 4650 50  0001 L CNN
	1    2600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5150 3350 5150
Wire Wire Line
	3350 5150 3350 4950
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-IC1
U 1 1 5F955A4D
P 4300 4900
F 0 "HS-IC1" H 4488 4939 50  0000 L CNN
F 1 "HeatsinkUpright" H 4488 4848 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 4312 4850 50  0001 C CNN
F 3 "~" H 4312 4850 50  0001 C CNN
	1    4300 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F95D53E
P 5250 4250
F 0 "R5" H 5320 4296 50  0000 L CNN
F 1 "10MOhm" H 5320 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 4250 50  0001 C CNN
F 3 "~" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5F95E67C
P 5250 4900
F 0 "D3" V 5204 4980 50  0000 L CNN
F 1 "1N5956BRLG" V 5295 4980 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 4900 50  0001 C CNN
F 3 "~" H 5250 4900 50  0001 C CNN
	1    5250 4900
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 5F95F11C
P 5250 5350
F 0 "D4" V 5204 5430 50  0000 L CNN
F 1 "1N5956BRLG" V 5295 5430 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 5350 50  0001 C CNN
F 3 "~" H 5250 5350 50  0001 C CNN
	1    5250 5350
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5F95F938
P 6150 4650
F 0 "Q4" H 6354 4696 50  0000 L CNN
F 1 "2SK3747-1E" H 6354 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3P-3_Horizontal_TabDown" H 6350 4575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6150 4650 50  0001 L CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 5250 5050
Wire Wire Line
	5250 4750 5250 4650
Wire Wire Line
	5250 4100 5250 4000
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 5250 4400
Wire Wire Line
	5250 5500 5250 5750
Wire Wire Line
	5250 5750 3150 5750
Connection ~ 5250 5750
Connection ~ 3150 5750
$Comp
L Device:R R7
U 1 1 5F9902E9
P 7200 4600
F 0 "R7" H 7270 4646 50  0000 L CNN
F 1 "220Ohm" H 7270 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 4600 50  0001 C CNN
F 3 "~" H 7200 4600 50  0001 C CNN
	1    7200 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F995593
P 7200 5150
F 0 "R8" H 7270 5196 50  0000 L CNN
F 1 "220Ohm" H 7270 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 5150 50  0001 C CNN
F 3 "~" H 7200 5150 50  0001 C CNN
	1    7200 5150
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q5
U 1 1 5F996062
P 7750 4600
F 0 "Q5" H 7940 4646 50  0000 L CNN
F 1 "TS13003CT" H 7940 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 4525 50  0001 L CIN
F 3 "" H 7750 4600 50  0001 L CNN
	1    7750 4600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q6
U 1 1 5F997615
P 7750 5150
F 0 "Q6" H 7940 5196 50  0000 L CNN
F 1 "TS13003CT" H 7940 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 5075 50  0001 L CIN
F 3 "" H 7750 5150 50  0001 L CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5750 7850 5350
Wire Wire Line
	7550 5150 7350 5150
Wire Wire Line
	7550 4600 7350 4600
Wire Wire Line
	7850 4800 7850 4950
Wire Wire Line
	6800 4600 7050 4600
Wire Wire Line
	7050 5150 6700 5150
$Comp
L Device:R R9
U 1 1 5F9A51E2
P 7850 4100
F 0 "R9" H 7920 4146 50  0000 L CNN
F 1 "1MOhm" H 7920 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 4100 50  0001 C CNN
F 3 "~" H 7850 4100 50  0001 C CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4400 7850 4350
Wire Wire Line
	7850 3700 6600 3700
Wire Wire Line
	6600 3700 6600 5000
Wire Wire Line
	7850 3700 7850 3950
$Comp
L Transistor_FET:AO3401A Q7
U 1 1 5F9AE4BA
P 9200 4150
F 0 "Q7" H 9405 4104 50  0000 L CNN
F 1 "FQP3P50" H 9405 4195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 9400 4075 50  0001 L CIN
F 3 "" H 9200 4150 50  0001 L CNN
	1    9200 4150
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q8
U 1 1 5F9B2AA6
P 9200 5050
F 0 "Q8" H 9404 5096 50  0000 L CNN
F 1 "FDP20N50" H 9404 5005 50  0000 L CNN
F 2 "Custom:FDP20N50_Horizontal_TabDown" H 9400 4975 50  0001 L CIN
F 3 "" H 9200 5050 50  0001 L CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4850 9300 4600
Wire Wire Line
	9300 3700 7850 3700
Wire Wire Line
	9300 3700 9300 3950
Connection ~ 7850 3700
Wire Wire Line
	9300 5250 9300 5750
Wire Wire Line
	9300 5750 7850 5750
Connection ~ 7850 5750
Wire Wire Line
	9000 5050 8800 5050
Wire Wire Line
	8800 5050 8800 4350
Wire Wire Line
	8800 4150 9000 4150
Wire Wire Line
	7850 4350 8800 4350
Connection ~ 7850 4350
Wire Wire Line
	7850 4350 7850 4250
Connection ~ 8800 4350
Wire Wire Line
	8800 4350 8800 4150
Wire Wire Line
	9300 4600 9950 4600
Wire Wire Line
	9950 4600 9950 3500
Wire Wire Line
	9950 3500 2450 3500
Wire Wire Line
	2450 3500 2450 2250
Connection ~ 9300 4600
Wire Wire Line
	9300 4600 9300 4350
$Comp
L Transistor_BJT:2N2219 Q10
U 1 1 5F9C6902
P 8000 2650
F 0 "Q10" H 8190 2696 50  0000 L CNN
F 1 "TS13003CT" H 8190 2605 50  0000 L CNN
F 2 "Custom:TS13003CT_wide" H 8200 2575 50  0001 L CIN
F 3 "" H 8000 2650 50  0001 L CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F9CBFA7
P 8100 2200
F 0 "R10" H 8170 2246 50  0000 L CNN
F 1 "10kOhm" H 8170 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 2200 50  0001 C CNN
F 3 "~" H 8100 2200 50  0001 C CNN
	1    8100 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F9CC960
P 7500 2650
F 0 "R11" H 7570 2696 50  0000 L CNN
F 1 "220" H 7570 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 2650 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3600 3700 5350
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FA3A804
P 1150 4350
F 0 "J4" H 1150 4600 50  0000 C CNN
F 1 "766-6604" H 1150 4500 50  0000 C CNN
F 2 "Custom:CES-102-XX-Y-S" H 1150 4350 50  0001 C CNN
F 3 "~" H 1150 4350 50  0001 C CNN
	1    1150 4350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5FA5AA03
P 1150 4850
F 0 "J5" H 1150 5100 50  0000 C CNN
F 1 "766-6604" H 1150 5000 50  0000 C CNN
F 2 "Custom:CES-102-XX-Y-S" H 1150 4850 50  0001 C CNN
F 3 "~" H 1150 4850 50  0001 C CNN
	1    1150 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 4350 1350 4350
Connection ~ 1650 4350
Wire Wire Line
	1650 4350 1650 4850
Wire Wire Line
	1650 4850 1350 4850
Connection ~ 1650 4850
Wire Wire Line
	1650 4850 1650 5750
Wire Wire Line
	1450 3600 1450 4450
Wire Wire Line
	1450 4450 1350 4450
Wire Wire Line
	1450 3600 3700 3600
Wire Wire Line
	1350 4950 1450 4950
Wire Wire Line
	1450 4950 1450 4450
Connection ~ 1450 4450
Wire Wire Line
	1800 5750 2300 5750
Wire Wire Line
	5250 5750 5900 5750
Wire Wire Line
	1650 3100 1650 4350
Wire Wire Line
	2000 4000 2700 4000
Wire Wire Line
	1800 4400 1800 4650
Wire Wire Line
	2400 4650 2300 4650
Connection ~ 1800 4650
Wire Wire Line
	1800 4650 1800 5100
Wire Wire Line
	2700 4450 2700 4000
Connection ~ 2700 4000
Wire Wire Line
	2700 4000 5250 4000
Wire Wire Line
	2700 4850 2700 4950
$Comp
L Device:C C2
U 1 1 5FB5D22C
P 2300 4950
F 0 "C2" H 2415 4996 50  0000 L CNN
F 1 "10nF" H 2415 4905 50  0000 L CNN
F 2 "" H 2338 4800 50  0001 C CNN
F 3 "~" H 2300 4950 50  0001 C CNN
	1    2300 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FB5E228
P 2300 5450
F 0 "R4" H 2370 5496 50  0000 L CNN
F 1 "1MOhm" H 2370 5405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4800 2300 4650
Connection ~ 2300 4650
Wire Wire Line
	2300 4650 1800 4650
Wire Wire Line
	2300 5100 2300 5300
Wire Wire Line
	2300 5600 2300 5750
Connection ~ 2300 5750
$Comp
L Device:C C3
U 1 1 5FB6BBE2
P 2700 5300
F 0 "C3" H 2815 5346 50  0000 L CNN
F 1 "330nF" H 2815 5255 50  0000 L CNN
F 2 "" H 2738 5150 50  0001 C CNN
F 3 "~" H 2700 5300 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
Connection ~ 5750 1950
Wire Wire Line
	5750 3100 8100 3100
Connection ~ 5750 3100
Wire Wire Line
	7650 2650 7800 2650
Wire Wire Line
	8100 2850 8100 3100
Connection ~ 8100 3100
Wire Wire Line
	8100 3100 9950 3100
Wire Wire Line
	8100 2450 8100 2400
Wire Wire Line
	8500 2250 8500 2400
Wire Wire Line
	8500 2400 8100 2400
Connection ~ 8100 2400
Wire Wire Line
	8100 2400 8100 2350
Wire Wire Line
	5750 1950 8300 1950
Wire Wire Line
	8100 2050 8100 2000
Wire Wire Line
	8100 2000 6200 2000
Wire Wire Line
	6200 2000 6200 3650
Wire Wire Line
	6200 3650 3350 3650
Wire Wire Line
	3350 3650 3350 4950
Connection ~ 3350 4950
Wire Wire Line
	2700 4950 3350 4950
Wire Wire Line
	2300 5750 2700 5750
Wire Wire Line
	2700 5150 2700 4950
Connection ~ 2700 4950
Wire Wire Line
	2700 5450 2700 5750
Connection ~ 2700 5750
Wire Wire Line
	2700 5750 3150 5750
Wire Wire Line
	5250 4650 5900 4650
$Comp
L Device:C C4
U 1 1 5FBB4C92
P 5900 4950
F 0 "C4" H 6015 4996 50  0000 L CNN
F 1 "10nF" H 6015 4905 50  0000 L CNN
F 2 "" H 5938 4800 50  0001 C CNN
F 3 "~" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FBB52CA
P 5900 5400
F 0 "R6" H 5970 5446 50  0000 L CNN
F 1 "1MOhm" H 5970 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 5400 50  0001 C CNN
F 3 "~" H 5900 5400 50  0001 C CNN
	1    5900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4800 5900 4650
Connection ~ 5900 4650
Wire Wire Line
	5900 4650 5950 4650
Wire Wire Line
	5900 5100 5900 5250
Wire Wire Line
	5900 5550 5900 5750
Connection ~ 5900 5750
Wire Wire Line
	6400 5200 6400 5000
Wire Wire Line
	6400 5000 6250 5000
Wire Wire Line
	6250 5000 6250 4850
Wire Wire Line
	6250 4450 6250 4000
Wire Wire Line
	6250 4000 5250 4000
Connection ~ 5250 4000
Wire Wire Line
	5900 5750 6400 5750
$Comp
L Device:C C5
U 1 1 5FBAF070
P 6400 5350
F 0 "C5" H 6515 5396 50  0000 L CNN
F 1 "330nF" H 6515 5305 50  0000 L CNN
F 2 "" H 6438 5200 50  0001 C CNN
F 3 "~" H 6400 5350 50  0001 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5500 6400 5750
Connection ~ 6400 5750
Wire Wire Line
	6400 5750 7850 5750
Wire Wire Line
	6600 5000 6400 5000
Connection ~ 6400 5000
$EndSCHEMATC
