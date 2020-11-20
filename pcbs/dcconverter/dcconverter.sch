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
P 700 1200
F 0 "J1" H 618 1417 50  0000 C CNN
F 1 "190-9991" H 618 1326 50  0000 C CNN
F 2 "Custom:TerminalBlock_2pin_10mm" H 700 1200 50  0001 C CNN
F 3 "~" H 700 1200 50  0001 C CNN
	1    700  1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NIGBT_CEG Q1
U 1 1 5F939778
P 2450 1300
F 0 "Q1" V 2778 1300 50  0000 C CNN
F 1 "NGTB40N120FL2WG" V 2687 1300 50  0000 C CNN
F 2 "Custom:NGTB40N120FL2WG_Vertical" H 2650 1400 50  0001 C CNN
F 3 "~" H 2450 1300 50  0001 C CNN
	1    2450 1300
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q1
U 1 1 5F93ACCE
P 2450 750
F 0 "HS-Q1" H 2638 789 50  0000 L CNN
F 1 "HeatsinkUpright" H 2638 698 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 2462 700 50  0001 C CNN
F 3 "~" H 2462 700 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5F93C935
P 1250 1200
F 0 "F1" V 1053 1200 50  0000 C CNN
F 1 "2A" V 1144 1200 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1180 1200 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5F93DD00
P 2900 1950
F 0 "D1" V 2854 2030 50  0000 L CNN
F 1 "DSS60-0045B" V 2945 2030 50  0000 L CNN
F 2 "Custom:DSS60-0045B_Vertical" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1800 2900 1200
Wire Wire Line
	2900 1200 2650 1200
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-D1
U 1 1 5F93F452
P 2700 1950
F 0 "HS-D1" V 2419 1943 50  0000 C CNN
F 1 "HeatsinkUpright" V 2510 1943 50  0000 C CNN
F 2 "Custom:HeatsinkUpright" H 2712 1900 50  0001 C CNN
F 3 "~" H 2712 1900 50  0001 C CNN
	1    2700 1950
	0    -1   1    0   
$EndComp
$Comp
L Custom:2phase_inductor L1
U 1 1 5F94118A
P 4000 1350
F 0 "L1" H 4025 1765 50  0000 C CNN
F 1 "RB8522-25-2M0" H 4025 1674 50  0000 C CNN
F 2 "Custom:rb8522_size5" H 4000 1350 50  0001 C CNN
F 3 "~" H 4000 1350 50  0001 C CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
$Comp
L Custom:CP-Device C1
U 1 1 5F94337F
P 5050 1650
F 0 "C1" H 5168 1696 50  0000 L CNN
F 1 "10mF" H 5168 1605 50  0000 L CNN
F 2 "Custom:CAPPRD1250W100D2550H5200" H 5088 1500 50  0001 C CNN
F 3 "~" H 5050 1650 50  0001 C CNN
	1    5050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1200 5050 1500
Wire Wire Line
	5050 1800 5050 2350
Wire Wire Line
	5050 2350 2900 2350
Wire Wire Line
	2900 2350 2900 2100
Connection ~ 2900 2350
$Comp
L Device:R R1
U 1 1 5F944EB4
P 5750 1450
F 0 "R1" H 5820 1496 50  0000 L CNN
F 1 "1MOhm" H 5820 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 1450 50  0001 C CNN
F 3 "~" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F94551B
P 5750 2050
F 0 "R2" H 5820 2096 50  0000 L CNN
F 1 "100kOhm" H 5820 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2050 50  0001 C CNN
F 3 "~" H 5750 2050 50  0001 C CNN
	1    5750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1200 5750 1200
Wire Wire Line
	5750 1200 5750 1300
Wire Wire Line
	5750 1600 5750 1750
Wire Wire Line
	5750 2200 5750 2350
Wire Wire Line
	5750 2350 5050 2350
Connection ~ 5050 2350
Connection ~ 5750 1750
Wire Wire Line
	5750 1750 5750 1900
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-Q2
U 1 1 5F94C442
P 8600 750
F 0 "HS-Q2" H 8788 789 50  0000 L CNN
F 1 "HeatsinkUpright" H 8788 698 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 8612 700 50  0001 C CNN
F 3 "~" H 8612 700 50  0001 C CNN
	1    8600 750 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5F94D2E0
P 10400 1200
F 0 "J4" H 10480 1192 50  0000 L CNN
F 1 "146-8335" H 10480 1101 50  0000 L CNN
F 2 "Custom:connector_2pin_P10.6mm" H 10400 1200 50  0001 C CNN
F 3 "~" H 10400 1200 50  0001 C CNN
	1    10400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5F94E425
P 9550 1200
F 0 "F2" V 9353 1200 50  0000 C CNN
F 1 "25A" V 9444 1200 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 9480 1200 50  0001 C CNN
F 3 "~" H 9550 1200 50  0001 C CNN
	1    9550 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1200 10050 1200
Wire Wire Line
	9400 1200 8900 1200
Wire Wire Line
	10200 1300 9950 1300
Wire Wire Line
	9950 1300 9950 2350
Wire Wire Line
	5550 1750 5750 1750
$Comp
L Device:R R3
U 1 1 5F9540E9
P 1800 3500
F 0 "R3" H 1870 3546 50  0000 L CNN
F 1 "10MOhm" H 1870 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 3500 50  0001 C CNN
F 3 "~" H 1800 3500 50  0001 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 2000 3250
Wire Wire Line
	2000 3250 1800 3250
Wire Wire Line
	1800 3250 1800 3350
Wire Wire Line
	2000 1200 2250 1200
Connection ~ 2000 3250
Wire Wire Line
	1800 4650 1800 5000
Wire Wire Line
	1800 5000 1650 5000
Connection ~ 1800 5000
$Comp
L Custom:FQP47P06 Q2
U 1 1 5F96B06C
P 8500 1500
F 0 "Q2" V 9067 1600 50  0000 C CNN
F 1 "FQP47P06" V 8976 1600 50  0000 C CNN
F 2 "Custom:FQP47P06_Vertical_Wide" H 8950 1450 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/6715127P" H 8950 1350 50  0001 L CNN
F 4 "Trans MOSFET P-CH 60V 47A 3-Pin TO-220" H 8950 1250 50  0001 L CNN "Description"
F 5 "4.83" H 8950 1150 50  0001 L CNN "Height"
F 6 "6715127P" H 8950 1050 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/6715127P" H 8950 950 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 8950 850 50  0001 L CNN "Manufacturer_Name"
F 9 "FQP47P06" H 8950 750 50  0001 L CNN "Manufacturer_Part_Number"
	1    8500 1500
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5F95756A
P 1800 4500
F 0 "D2" V 1754 4580 50  0000 L CNN
F 1 "1N4751ATR" V 1845 4580 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1800 4500 50  0001 C CNN
F 3 "~" H 1800 4500 50  0001 C CNN
	1    1800 4500
	0    1    1    0   
$EndComp
$Comp
L Custom:NCP7805TG IC1
U 1 1 5F9736CA
P 3800 4400
F 0 "IC1" H 4628 4346 50  0000 L CNN
F 1 "NCP7805TG" H 4628 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4650 4500 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/7192768P" H 4650 4400 50  0001 L CNN
F 4 "Voltage Regulator 1A Positive 5V TO-220 NCP7805TG, Low Dropout Voltage Regulator, 1A 5 V, 4%, 3-Pin TO-220" H 4650 4300 50  0001 L CNN "Description"
F 5 "4.82" H 4650 4200 50  0001 L CNN "Height"
F 6 "7192768P" H 4650 4100 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/7192768P" H 4650 4000 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 4650 3900 50  0001 L CNN "Manufacturer_Name"
F 9 "NCP7805TG" H 4650 3800 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70341025" H 4650 3700 50  0001 L CNN "Allied_Number"
	1    3800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 3150 4500
Wire Wire Line
	3150 4500 3150 5000
Wire Wire Line
	3800 4600 3700 4600
Connection ~ 5050 1200
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5F9402B4
P 2600 3900
F 0 "Q3" H 2804 3946 50  0000 L CNN
F 1 "2SK3747-1E" H 2804 3855 50  0000 L CNN
F 2 "Custom:2SK3747_TabDown" H 2800 3825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 2600 3900 50  0001 L CNN
	1    2600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4400 3350 4400
Wire Wire Line
	3350 4400 3350 4200
$Comp
L Mechanical:Heatsink_Pad_2Pin HS-IC1
U 1 1 5F955A4D
P 4300 4150
F 0 "HS-IC1" H 4488 4189 50  0000 L CNN
F 1 "HeatsinkUpright" H 4488 4098 50  0000 L CNN
F 2 "Custom:HeatsinkUpright" H 4312 4100 50  0001 C CNN
F 3 "~" H 4312 4100 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F95D53E
P 5250 3500
F 0 "R5" H 5320 3546 50  0000 L CNN
F 1 "10MOhm" H 5320 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 3500 50  0001 C CNN
F 3 "~" H 5250 3500 50  0001 C CNN
	1    5250 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5F95E67C
P 5250 4150
F 0 "D3" V 5204 4230 50  0000 L CNN
F 1 "1N5956BRLG" V 5295 4230 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 4150 50  0001 C CNN
F 3 "~" H 5250 4150 50  0001 C CNN
	1    5250 4150
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 5F95F11C
P 5250 4600
F 0 "D4" V 5204 4680 50  0000 L CNN
F 1 "1N5956BRLG" V 5295 4680 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5250 4600 50  0001 C CNN
F 3 "~" H 5250 4600 50  0001 C CNN
	1    5250 4600
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5F95F938
P 6150 3900
F 0 "Q4" H 6354 3946 50  0000 L CNN
F 1 "2SK3747-1E" H 6354 3855 50  0000 L CNN
F 2 "Custom:2SK3747_TabDown" H 6350 3825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6150 3900 50  0001 L CNN
	1    6150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4450 5250 4300
Wire Wire Line
	5250 4000 5250 3900
Wire Wire Line
	5250 3350 5250 3250
Connection ~ 5250 3900
Wire Wire Line
	5250 3900 5250 3650
Wire Wire Line
	5250 4750 5250 5000
Wire Wire Line
	5250 5000 3150 5000
Connection ~ 5250 5000
Connection ~ 3150 5000
$Comp
L Device:R R7
U 1 1 5F9902E9
P 7200 3850
F 0 "R7" H 7270 3896 50  0000 L CNN
F 1 "220Ohm" H 7270 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 3850 50  0001 C CNN
F 3 "~" H 7200 3850 50  0001 C CNN
	1    7200 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F995593
P 7200 4400
F 0 "R8" H 7270 4446 50  0000 L CNN
F 1 "220Ohm" H 7270 4355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 4400 50  0001 C CNN
F 3 "~" H 7200 4400 50  0001 C CNN
	1    7200 4400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q5
U 1 1 5F996062
P 7750 3850
F 0 "Q5" H 7940 3896 50  0000 L CNN
F 1 "TS13003CT" H 7940 3805 50  0000 L CNN
F 2 "Custom:TS13003CT_wide" H 7950 3775 50  0001 L CIN
F 3 "" H 7750 3850 50  0001 L CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q6
U 1 1 5F997615
P 7750 4400
F 0 "Q6" H 7940 4446 50  0000 L CNN
F 1 "TS13003CT" H 7940 4355 50  0000 L CNN
F 2 "Custom:TS13003CT_wide" H 7950 4325 50  0001 L CIN
F 3 "" H 7750 4400 50  0001 L CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5000 7850 4600
Wire Wire Line
	7550 4400 7350 4400
Wire Wire Line
	7550 3850 7350 3850
Wire Wire Line
	7850 4050 7850 4200
Wire Wire Line
	6800 3850 7050 3850
Wire Wire Line
	7050 4400 6700 4400
$Comp
L Device:R R9
U 1 1 5F9A51E2
P 7850 3350
F 0 "R9" H 7920 3396 50  0000 L CNN
F 1 "1MOhm" H 7920 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 3350 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3650 7850 3600
Wire Wire Line
	7850 2950 6600 2950
Wire Wire Line
	6600 2950 6600 4250
Wire Wire Line
	7850 2950 7850 3200
$Comp
L Transistor_FET:AO3401A Q7
U 1 1 5F9AE4BA
P 9200 3400
F 0 "Q7" H 9405 3354 50  0000 L CNN
F 1 "FQP3P50" H 9405 3445 50  0000 L CNN
F 2 "Custom:FQP3P50_Horizontal_TabDown" H 9400 3325 50  0001 L CIN
F 3 "" H 9200 3400 50  0001 L CNN
	1    9200 3400
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7000 Q8
U 1 1 5F9B2AA6
P 9200 4300
F 0 "Q8" H 9404 4346 50  0000 L CNN
F 1 "FDP20N50" H 9404 4255 50  0000 L CNN
F 2 "Custom:FDP20N50_Horizontal_TabDown" H 9400 4225 50  0001 L CIN
F 3 "" H 9200 4300 50  0001 L CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4100 9300 3850
Wire Wire Line
	9300 2950 7850 2950
Wire Wire Line
	9300 2950 9300 3200
Connection ~ 7850 2950
Wire Wire Line
	9300 4500 9300 5000
Wire Wire Line
	9300 5000 7850 5000
Connection ~ 7850 5000
Wire Wire Line
	9000 4300 8800 4300
Wire Wire Line
	8800 4300 8800 3600
Wire Wire Line
	8800 3400 9000 3400
Wire Wire Line
	7850 3600 8800 3600
Connection ~ 7850 3600
Wire Wire Line
	7850 3600 7850 3500
Connection ~ 8800 3600
Wire Wire Line
	8800 3600 8800 3400
Wire Wire Line
	9300 3850 9950 3850
Wire Wire Line
	9950 3850 9950 2750
Wire Wire Line
	9950 2750 2450 2750
Wire Wire Line
	2450 2750 2450 1500
Connection ~ 9300 3850
Wire Wire Line
	9300 3850 9300 3600
$Comp
L Transistor_BJT:2N2219 Q10
U 1 1 5F9C6902
P 8000 1900
F 0 "Q10" H 8190 1946 50  0000 L CNN
F 1 "TS13003CT" H 8190 1855 50  0000 L CNN
F 2 "Custom:TS13003CT_wide" H 8200 1825 50  0001 L CIN
F 3 "" H 8000 1900 50  0001 L CNN
	1    8000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F9CBFA7
P 8100 1450
F 0 "R10" H 8170 1496 50  0000 L CNN
F 1 "10kOhm" H 8170 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 1450 50  0001 C CNN
F 3 "~" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F9CC960
P 7500 1900
F 0 "R11" H 7570 1946 50  0000 L CNN
F 1 "220" H 7570 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 1900 50  0001 C CNN
F 3 "~" H 7500 1900 50  0001 C CNN
	1    7500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2850 3700 4600
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5FA3A804
P 1150 3600
F 0 "J7" H 1150 3850 50  0000 C CNN
F 1 "766-6604" H 1150 3750 50  0000 C CNN
F 2 "Custom:CES-102-XX-Y-S" H 1150 3600 50  0001 C CNN
F 3 "~" H 1150 3600 50  0001 C CNN
	1    1150 3600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5FA5AA03
P 1150 4100
F 0 "J8" H 1150 4350 50  0000 C CNN
F 1 "766-6604" H 1150 4250 50  0000 C CNN
F 2 "Custom:CES-102-XX-Y-S" H 1150 4100 50  0001 C CNN
F 3 "~" H 1150 4100 50  0001 C CNN
	1    1150 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 3600 1350 3600
Connection ~ 1650 3600
Wire Wire Line
	1650 3600 1650 4100
Wire Wire Line
	1650 4100 1350 4100
Connection ~ 1650 4100
Wire Wire Line
	1450 2850 1450 3700
Wire Wire Line
	1450 3700 1350 3700
Wire Wire Line
	1450 2850 3700 2850
Wire Wire Line
	1350 4200 1450 4200
Wire Wire Line
	1450 4200 1450 3700
Connection ~ 1450 3700
Wire Wire Line
	1800 5000 2300 5000
Wire Wire Line
	5250 5000 5900 5000
Wire Wire Line
	1650 2350 1650 3600
Wire Wire Line
	2000 3250 2700 3250
Wire Wire Line
	1800 3650 1800 3900
Wire Wire Line
	2400 3900 2300 3900
Connection ~ 1800 3900
Wire Wire Line
	1800 3900 1800 4350
Wire Wire Line
	2700 3700 2700 3250
Connection ~ 2700 3250
Wire Wire Line
	2700 3250 5250 3250
Wire Wire Line
	2700 4100 2700 4200
$Comp
L Device:C C2
U 1 1 5FB5D22C
P 2300 4200
F 0 "C2" H 2415 4246 50  0000 L CNN
F 1 "10nF" H 2415 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D14.5mm_W5.0mm_P7.50mm" H 2338 4050 50  0001 C CNN
F 3 "~" H 2300 4200 50  0001 C CNN
	1    2300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FB5E228
P 2300 4700
F 0 "R4" H 2370 4746 50  0000 L CNN
F 1 "1MOhm" H 2370 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 4700 50  0001 C CNN
F 3 "~" H 2300 4700 50  0001 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4050 2300 3900
Connection ~ 2300 3900
Wire Wire Line
	2300 3900 1800 3900
Wire Wire Line
	2300 4350 2300 4550
Wire Wire Line
	2300 4850 2300 5000
Connection ~ 2300 5000
$Comp
L Device:C C3
U 1 1 5FB6BBE2
P 2700 4550
F 0 "C3" H 2815 4596 50  0000 L CNN
F 1 "1uF" H 2815 4505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2738 4400 50  0001 C CNN
F 3 "~" H 2700 4550 50  0001 C CNN
	1    2700 4550
	1    0    0    -1  
$EndComp
Connection ~ 5750 1200
Wire Wire Line
	5750 2350 8100 2350
Connection ~ 5750 2350
Wire Wire Line
	7650 1900 7800 1900
Wire Wire Line
	8100 2100 8100 2350
Connection ~ 8100 2350
Wire Wire Line
	8100 2350 9950 2350
Wire Wire Line
	8100 1700 8100 1650
Wire Wire Line
	8500 1500 8500 1650
Wire Wire Line
	8500 1650 8100 1650
Connection ~ 8100 1650
Wire Wire Line
	8100 1650 8100 1600
Wire Wire Line
	5750 1200 8300 1200
Wire Wire Line
	8100 1300 8100 1250
Wire Wire Line
	8100 1250 6200 1250
Wire Wire Line
	6200 1250 6200 2900
Wire Wire Line
	6200 2900 3350 2900
Wire Wire Line
	3350 2900 3350 4200
Connection ~ 3350 4200
Wire Wire Line
	2700 4200 3350 4200
Wire Wire Line
	2300 5000 2700 5000
Wire Wire Line
	2700 4400 2700 4200
Connection ~ 2700 4200
Wire Wire Line
	2700 4700 2700 5000
Connection ~ 2700 5000
Wire Wire Line
	2700 5000 3150 5000
Wire Wire Line
	5250 3900 5900 3900
$Comp
L Device:C C4
U 1 1 5FBB4C92
P 5900 4200
F 0 "C4" H 6015 4246 50  0000 L CNN
F 1 "10nF" H 6015 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D14.5mm_W5.0mm_P7.50mm" H 5938 4050 50  0001 C CNN
F 3 "~" H 5900 4200 50  0001 C CNN
	1    5900 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FBB52CA
P 5900 4650
F 0 "R6" H 5970 4696 50  0000 L CNN
F 1 "1MOhm" H 5970 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 4650 50  0001 C CNN
F 3 "~" H 5900 4650 50  0001 C CNN
	1    5900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4050 5900 3900
Connection ~ 5900 3900
Wire Wire Line
	5900 3900 5950 3900
Wire Wire Line
	5900 4350 5900 4500
Wire Wire Line
	5900 4800 5900 5000
Connection ~ 5900 5000
Wire Wire Line
	6400 4450 6400 4250
Wire Wire Line
	6400 4250 6250 4250
Wire Wire Line
	6250 4250 6250 4100
Wire Wire Line
	6250 3700 6250 3250
Wire Wire Line
	6250 3250 5250 3250
Connection ~ 5250 3250
Wire Wire Line
	5900 5000 6400 5000
$Comp
L Device:C C5
U 1 1 5FBAF070
P 6400 4600
F 0 "C5" H 6515 4646 50  0000 L CNN
F 1 "1uF" H 6515 4555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6438 4450 50  0001 C CNN
F 3 "~" H 6400 4600 50  0001 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4750 6400 5000
Connection ~ 6400 5000
Wire Wire Line
	6400 5000 7850 5000
Wire Wire Line
	6600 4250 6400 4250
Connection ~ 6400 4250
Wire Wire Line
	2900 1200 3350 1200
Connection ~ 2900 1200
Wire Wire Line
	3550 1450 3350 1450
Wire Wire Line
	3350 1450 3350 1200
Connection ~ 3350 1200
Wire Wire Line
	3350 1200 3550 1200
Wire Wire Line
	4500 1200 4650 1200
Wire Wire Line
	4500 1450 4650 1450
Wire Wire Line
	4650 1450 4650 1200
Connection ~ 4650 1200
Wire Wire Line
	4650 1200 5050 1200
$Comp
L Device:D D5
U 1 1 5FBA5BAB
P 1650 1200
F 0 "D5" H 1650 1417 50  0000 C CNN
F 1 "1N5408G" H 1650 1326 50  0000 C CNN
F 2 "Custom:1N5408G" H 1650 1200 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	-1   0    0    -1  
$EndComp
Connection ~ 2000 1200
Wire Wire Line
	1650 2350 1850 2350
$Comp
L Device:R R13
U 1 1 5FBBC80C
P 1850 1450
F 0 "R13" H 1920 1496 50  0000 L CNN
F 1 "10MOhm" H 1920 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 1450 50  0001 C CNN
F 3 "~" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5FBBD1DD
P 1850 2050
F 0 "R12" H 1920 2096 50  0000 L CNN
F 1 "10kOhm" H 1920 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 2050 50  0001 C CNN
F 3 "~" H 1850 2050 50  0001 C CNN
	1    1850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1600 1850 1750
Connection ~ 1650 2350
Wire Wire Line
	1200 2350 1200 1300
Wire Wire Line
	1200 2350 1650 2350
Wire Wire Line
	1400 1200 1500 1200
Wire Wire Line
	1800 1200 1850 1200
Wire Wire Line
	1850 1300 1850 1200
Connection ~ 1850 1200
Wire Wire Line
	1850 1200 2000 1200
Wire Wire Line
	1850 2200 1850 2350
Connection ~ 1850 2350
Wire Wire Line
	1850 2350 2900 2350
$Comp
L Custom:Arduino_Micro_Socket XA1
U 1 1 5FBF5E9B
P 3950 6450
F 0 "XA1" H 3950 7687 60  0000 C CNN
F 1 "Arduino_Micro_Socket" H 3950 7581 60  0000 C CNN
F 2 "Custom:Arduino_Micro_Socket" H 5750 10200 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-micro" H 5750 10200 60  0001 C CNN
	1    3950 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1750 5550 2650
Wire Wire Line
	5550 2650 800  2650
Wire Wire Line
	800  2650 800  6650
Wire Wire Line
	800  6650 2650 6650
Wire Wire Line
	1850 1750 900  1750
Wire Wire Line
	900  1750 900  6550
Wire Wire Line
	900  6550 2650 6550
Connection ~ 1850 1750
Wire Wire Line
	1850 1750 1850 1900
Wire Wire Line
	2650 6950 1650 6950
Wire Wire Line
	1650 4100 1650 5000
Connection ~ 1650 5000
Wire Wire Line
	1650 5000 1650 6950
Wire Wire Line
	1450 4200 1450 7250
Wire Wire Line
	1450 7250 2650 7250
Connection ~ 1450 4200
Wire Wire Line
	5250 6350 6700 6350
Wire Wire Line
	6700 6350 6700 4400
Wire Wire Line
	5250 6450 6800 6450
Wire Wire Line
	6800 6450 6800 3850
Wire Wire Line
	5250 6250 6900 6250
Wire Wire Line
	6900 6250 6900 1900
Wire Wire Line
	6900 1900 7350 1900
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5FC4664A
P 700 650
F 0 "J3" H 618 867 50  0000 C CNN
F 1 "Conn_01x01" H 618 776 50  0000 C CNN
F 2 "Custom:SLB4-I90" H 700 650 50  0001 C CNN
F 3 "~" H 700 650 50  0001 C CNN
	1    700  650 
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5FC46DC5
P 700 850
F 0 "J2" H 618 1067 50  0000 C CNN
F 1 "Conn_01x01" H 618 976 50  0000 C CNN
F 2 "Custom:SLB4-I90" H 700 850 50  0001 C CNN
F 3 "~" H 700 850 50  0001 C CNN
	1    700  850 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	900  850  900  1200
Connection ~ 900  1200
Wire Wire Line
	900  1200 1100 1200
Wire Wire Line
	900  1300 1000 1300
Wire Wire Line
	900  650  1000 650 
Wire Wire Line
	1000 650  1000 1300
Connection ~ 1000 1300
Wire Wire Line
	1000 1300 1200 1300
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5FC84274
P 10400 900
F 0 "J5" H 10480 942 50  0000 L CNN
F 1 "Conn_01x01" H 10480 851 50  0000 L CNN
F 2 "Custom:SLB4-I90" H 10400 900 50  0001 C CNN
F 3 "~" H 10400 900 50  0001 C CNN
	1    10400 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5FC8CBC2
P 10400 700
F 0 "J6" H 10480 742 50  0000 L CNN
F 1 "Conn_01x01" H 10480 651 50  0000 L CNN
F 2 "Custom:SLB4-I90" H 10400 700 50  0001 C CNN
F 3 "~" H 10400 700 50  0001 C CNN
	1    10400 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 700  9950 700 
Wire Wire Line
	9950 700  9950 1300
Connection ~ 9950 1300
Wire Wire Line
	10200 900  10050 900 
Wire Wire Line
	10050 900  10050 1200
Connection ~ 10050 1200
Wire Wire Line
	10050 1200 9700 1200
$EndSCHEMATC
