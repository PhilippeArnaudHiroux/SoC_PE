# SoC

## MAX31723
- Temperatuur sensor (-55°C - 125°C)
- Communicatie over SPI (Serial pheripheral interface)
- Pins 
	* 1: SS (Y18) &rarr; Moet hoog staan als er communicatie plaats moet vinden.
	* 2: MOSI (Y19) &rarr; Serial-data input voor IC.
	* 3: MISO (Y16) &rarr; Serial-data output voor IC.
	* 4: SCK (Y17) &rarr; Serial clock.
	* 5: GND
	* 6: VCC &rarr; 3.3V

## MAX14840E
- RS-485 transmitter
- Communicatie over UART
- Pins J1
	* 1: RE (streepje boven RE) (W14) &rarr; Ingang voor ontvanger inschakelen, deze actief-laag pin maakt de half-duplex-ontvanger mogelijk.
	* 2: DI (Y14) &rarr; Driver Input. Deze pin draagt de zender gegevens van de UART van de het pmod-systeem. Zender naar een aangesloten ontvanger.
	* 3: RO (T11) &rarr; Ontvanger output. Deze pin draagt de half-duplex ontvangen data over aan de pmod UART ontvanger.
	* 4: DE (T10) &rarr; Driver output eneble input. Deze actief hoge pin zet de half-duplex zender aan.
	* 5: GND
	* 6: VCC &rarr; 3.3V
- pins J2
	* 1: RS485-A &rarr; noninverting RS-485 signaal
	* 2: RS485-B &rarr; inverting RS-485 signaal
- Half duplex &rarr; Communicatie over 1 kanaal. De zender en de ontvanger gebruiken hetzelfde kanaal om de beurt om te zenden en te ontvangen. Bij dit bordje gaat dit maximaal tot 10MBps.

## Neopixel RGB Matrix (8x8)
- Pins j1
	* 1: V+ &rarr; VCC
	* 2: IN (V7) &rarr; Data pin om elke RGB aan te kunnen spreken.
	* 3: V- &rarr; GND

## VL53L5CX
- Kan verschillende objecten op verschillende afstanden detecteren
- Pins 
	* 1: GND
	* 2: VCC &rarr; 3.3V.
	* 3: SDA (P15) &rarr; Serial data.
	* 4: SCL (P16) &rarr; Serial clock.
	* 5: INT (W9) &rarr; Interput output.
	* 6: RST (Y7) &rarr; Reset pin, deze pin is actief hoog.
-	I²C adres is 0X29 (uitgelezen met een Arduino)
-	RAM-based Sensor

## TFT-shield
### Ambient light sensor 
- Pins 
	* 1: VCC &rarr; 3.3V
	* 2: GND
	* 3: ALS_OUT
### Display connector
1. Axi GPIO toevoegen
2. Pinnen GPIO connecteren met TFT-shield
3. De rest moet in Vitis in code gemaakt worden

<p>Er is extra informatie over het TFT-shield te vinden op Segger.</p>
