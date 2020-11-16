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
F 1 "HeatsinkUpright" H 2638 1448 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 2462 1450 50  0001 C CNN
F 3 "~" H 2462 1450 50  0001 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5F93B3A3
P 1150 3700
F 0 "J2" H 1068 4117 50  0000 C CNN
F 1 "766-6629" H 1068 4026 50  0000 C CNN
F 2 "Custom:CES-106-XX-Y-S" H 1150 3700 50  0001 C CNN
F 3 "~" H 1150 3700 50  0001 C CNN
	1    1150 3700
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
F 1 "769-0587" H 4025 2424 50  0000 C CNN
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
F 1 "845-4749" H 5168 2355 50  0000 L CNN
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
F 1 "HeatsinkUpright" H 6988 1448 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 6812 1450 50  0001 C CNN
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
F 2 "Custom:connector_2pin_P10.6mm" H 8600 1950 50  0001 C CNN
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
Connection ~ 2200 3100
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
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 2388 5100 50  0001 C CNN
F 3 "~" H 2350 5250 50  0001 C CNN
	1    2350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1650 3500
Wire Wire Line
	2350 5400 2350 5750
Wire Wire Line
	2350 5750 1800 5750
Connection ~ 1800 5750
$Comp
L Custom:FQP47P06 Q2
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
	3150 5750 2350 5750
Connection ~ 2350 5750
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
P 2250 4650
F 0 "Q3" H 2454 4696 50  0000 L CNN
F 1 "2SK3747-1E" H 2454 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3P-3_Horizontal_TabDown" H 2450 4575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 2250 4650 50  0001 L CNN
	1    2250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4400 1800 4650
Wire Wire Line
	2350 4450 2350 4400
Wire Wire Line
	2350 4850 2350 4950
Wire Wire Line
	2050 4650 1800 4650
Connection ~ 1800 4650
Wire Wire Line
	1800 4650 1800 5100
Wire Wire Line
	3800 5150 3350 5150
Wire Wire Line
	3350 5150 3350 4950
Wire Wire Line
	3350 4950 2700 4950
Connection ~ 2350 4950
Wire Wire Line
	2350 4950 2350 5100
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
F 1 "10M" H 5320 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 4250 50  0001 C CNN
F 3 "~" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F95DE2D
P 5950 4250
F 0 "R6" H 6020 4296 50  0000 L CNN
F 1 "707-8546" H 6020 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 4250 50  0001 C CNN
F 3 "~" H 5950 4250 50  0001 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5F95E67C
P 5250 4900
F 0 "D3" V 5204 4980 50  0000 L CNN
F 1 "800-8872" V 5295 4980 50  0000 L CNN
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
F 1 "800-8872" V 5295 5430 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 5350 50  0001 C CNN
F 3 "~" H 5250 5350 50  0001 C CNN
	1    5250 5350
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5F95F938
P 5850 4650
F 0 "Q4" H 6054 4696 50  0000 L CNN
F 1 "2SK3747-1E" H 6054 4605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-3P-3_Horizontal_TabDown" H 6050 4575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5850 4650 50  0001 L CNN
	1    5850 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F960C40
P 5950 5200
F 0 "C4" H 6065 5246 50  0000 L CNN
F 1 "711-2096" H 6065 5155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 5988 5050 50  0001 C CNN
F 3 "~" H 5950 5200 50  0001 C CNN
	1    5950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 5250 5050
Wire Wire Line
	5250 4750 5250 4650
Wire Wire Line
	5950 4000 5950 4100
Wire Wire Line
	5250 4100 5250 4000
Wire Wire Line
	5250 4000 5950 4000
Wire Wire Line
	5950 4400 5950 4450
Wire Wire Line
	5650 4650 5250 4650
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 5250 4400
Wire Wire Line
	5950 4850 5950 5000
Wire Wire Line
	5950 5350 5950 5750
Wire Wire Line
	5950 5750 5250 5750
Wire Wire Line
	5250 5500 5250 5750
Wire Wire Line
	5250 4000 2350 4000
Connection ~ 5250 4000
Connection ~ 2350 4000
Wire Wire Line
	5250 5750 3150 5750
Connection ~ 5250 5750
Connection ~ 3150 5750
$Comp
L Device:R R7
U 1 1 5F9902E9
P 7200 4600
F 0 "R7" H 7270 4646 50  0000 L CNN
F 1 "220" H 7270 4555 50  0000 L CNN
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
F 1 "220" H 7270 5105 50  0000 L CNN
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
F 1 "398-433" H 7940 4555 50  0000 L CNN
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
F 1 "398-433" H 7940 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 5075 50  0001 L CIN
F 3 "" H 7750 5150 50  0001 L CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5750 7850 5750
Wire Wire Line
	7850 5750 7850 5350
Connection ~ 5950 5750
Wire Wire Line
	7550 5150 7350 5150
Wire Wire Line
	7550 4600 7350 4600
Wire Wire Line
	7850 4800 7850 4950
Wire Wire Line
	6800 3800 6800 4600
Wire Wire Line
	6800 4600 7050 4600
Wire Wire Line
	7050 5150 6700 5150
Wire Wire Line
	6700 5150 6700 3900
$Comp
L Device:R R9
U 1 1 5F9A51E2
P 7850 4100
F 0 "R9" H 7920 4146 50  0000 L CNN
F 1 "1k" H 7920 4055 50  0000 L CNN
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
	6600 5000 5950 5000
Wire Wire Line
	7850 3700 7850 3950
Connection ~ 5950 5000
Wire Wire Line
	5950 5000 5950 5050
$Comp
L Transistor_FET:AO3401A Q7
U 1 1 5F9AE4BA
P 9200 4150
F 0 "Q7" H 9405 4104 50  0000 L CNN
F 1 "671-5118" H 9405 4195 50  0000 L CNN
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
F 1 "671-4809" H 9404 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 9400 4975 50  0001 L CIN
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
P 2600 7300
F 0 "Q10" H 2790 7346 50  0000 L CNN
F 1 "398-433" H 2790 7255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 7225 50  0001 L CIN
F 3 "" H 2600 7300 50  0001 L CNN
	1    2600 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F9CBFA7
P 2700 6650
F 0 "R10" H 2770 6696 50  0000 L CNN
F 1 "10k" H 2770 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 6650 50  0001 C CNN
F 3 "~" H 2700 6650 50  0001 C CNN
	1    2700 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F9CC960
P 2050 7300
F 0 "R11" H 2120 7346 50  0000 L CNN
F 1 "220" H 2120 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1980 7300 50  0001 C CNN
F 3 "~" H 2050 7300 50  0001 C CNN
	1    2050 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 6500 2700 4950
Connection ~ 2700 4950
Wire Wire Line
	2700 4950 2350 4950
Wire Wire Line
	2700 7100 2700 6950
Wire Wire Line
	2700 7500 2700 7650
Wire Wire Line
	2700 7650 3150 7650
Wire Wire Line
	3150 7650 3150 5750
Wire Wire Line
	2400 7300 2200 7300
Wire Wire Line
	1900 7300 1550 7300
Wire Wire Line
	1550 7300 1550 4000
Wire Wire Line
	6700 2250 6700 3400
Wire Wire Line
	3050 3400 3050 6950
Wire Wire Line
	3050 6950 2700 6950
Wire Wire Line
	3050 3400 6700 3400
Connection ~ 2700 6950
Wire Wire Line
	2700 6950 2700 6800
Connection ~ 1650 3500
Wire Wire Line
	1650 3500 1650 4350
Wire Wire Line
	3700 3600 3700 5350
Wire Wire Line
	5550 2500 5550 3700
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
Wire Wire Line
	1350 3500 1650 3500
Wire Wire Line
	1350 3600 1450 3600
Wire Wire Line
	1350 3700 5550 3700
Wire Wire Line
	1350 3800 6800 3800
Wire Wire Line
	1350 3900 6700 3900
Wire Wire Line
	1350 4000 1550 4000
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
Connection ~ 1450 3600
Wire Wire Line
	1450 3600 3700 3600
Wire Wire Line
	1350 4950 1450 4950
Wire Wire Line
	1450 4950 1450 4450
Connection ~ 1450 4450
$EndSCHEMATC
