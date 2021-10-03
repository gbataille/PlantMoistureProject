EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Plant Moisture Sensor"
Date "2021-08-22"
Rev "V01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: GuyInTheShell"
$EndDescr
$Comp
L Sparkfun:ProRF,LoRa,MCU U?
U 1 1 6142FF04
P 5050 3350
F 0 "U?" H 5025 4281 50  0000 C CNN
F 1 "ProRF,LoRa,MCU" H 5025 4190 50  0000 C CNN
F 2 "" H 4850 3400 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/assets/e/0/6/6/5/SamProRF_Graphical_Datasheet_Updated.pdf" H 4850 3400 50  0001 C CNN
F 4 "Sparkfun" H 4850 3350 50  0001 C CNN "Manufacturer"
F 5 "WRL-15836" H 4850 3350 50  0001 C CNN "ManufacturerRef"
F 6 "Distrelec" H 4850 3350 50  0001 C CNN "Vendor"
F 7 "301-78-280" H 4850 3350 50  0001 C CNN "VendorRef"
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L Sparkfun:SoilMoistureSensor U?
U 1 1 61433F96
P 5050 5050
F 0 "U?" H 5328 5129 50  0000 L CNN
F 1 "SoilMoistureSensor" H 5328 5038 50  0000 L CNN
F 2 "" H 5000 5500 50  0001 C CNN
F 3 "https://www.distrelec.ch/Web/Downloads/_t/ds/SEN-17731_eng_tds.pdf" H 5000 5500 50  0001 C CNN
F 4 "Distrelec" H 5050 5050 50  0001 C CNN "Vendor"
F 5 "302-16-207" H 5050 5050 50  0001 C CNN "VendorRef"
F 6 "Sparkfun" H 5050 5050 50  0001 C CNN "Manufacture"
F 7 "SEN-17731" H 5050 5050 50  0001 C CNN "ManufacturerRef"
	1    5050 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:Antenna AE?
U 1 1 61435101
P 6450 3800
F 0 "AE?" V 6404 3930 50  0000 L CNN
F 1 "Antenna" V 6495 3930 50  0000 L CNN
F 2 "" H 6450 3800 50  0001 C CNN
F 3 "https://www.distrelec.ch/Web/Downloads/_t/ds/Molex_2111400100_eng_tds.pdf" H 6450 3800 50  0001 C CNN
F 4 "Distrelec" H 6450 3800 50  0001 C CNN "Vendor"
F 5 "301-62-593" H 6450 3800 50  0001 C CNN "VendorRef"
F 6 "Molex" H 6450 3800 50  0001 C CNN "Manufacturer"
F 7 "211140-0100" H 6450 3800 50  0001 C CNN "ManufacturerRef"
	1    6450 3800
	0    1    1    0   
$EndComp
$Comp
L Device:Solar_Cell SC?
U 1 1 612C379B
P 5200 2050
F 0 "SC?" H 5308 2146 50  0000 L CNN
F 1 "Solar_Cell" H 5308 2055 50  0000 L CNN
F 2 "" V 5200 2110 50  0001 C CNN
F 3 "https://www.distrelec.ch/Web/Downloads/_t/ds/PIS-0569_eng_tds.pdf" V 5200 2110 50  0001 C CNN
F 4 "Distrelec" H 5200 2050 50  0001 C CNN "Vendor"
F 5 "301-63-356" H 5200 2050 50  0001 C CNN "VendorRef"
F 6 "Pi Supply" H 5200 2050 50  0001 C CNN "Manufacturer"
F 7 "PIS-0569" H 5200 2050 50  0001 C CNN "ManufacturerRef"
	1    5200 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
