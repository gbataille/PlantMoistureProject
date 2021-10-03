#include <Adafruit_seesaw.h>
#include <Arduino.h>
#include <RH_RF95.h>

Adafruit_seesaw ss;

RH_RF95 rf95(12, 6);
int packetCounter = 0;
long timeSinceLastPacket = 0;
float frequency = 868;

void setup() {
  delay(2000);
  SerialUSB.begin(115200);

  while (!SerialUSB)
    ; // wait for serial to be plugged in

  SerialUSB.println("seesaw Soil Sensor example!");

  if (!ss.begin(0x36)) {
    SerialUSB.println("ERROR! seesaw not found");
    while (1)
      ;
  } else {
    SerialUSB.print("seesaw started! version: ");
    SerialUSB.println(ss.getVersion(), HEX);
  }

  if (rf95.init() == false) {
    SerialUSB.println("Radio Init Failed - Freezing");
    while (1)
      ;
  } else {
    SerialUSB.println("Receiver up!");
  }

  rf95.setFrequency(frequency);

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter
  // pin, then you can set transmitter powers from 5 to 23 dBm:
  // rf95.setTxPower(14, false);
}

void loop() {
  float tempC = ss.getTemp();
  uint16_t capread = ss.touchRead(0);

  SerialUSB.print("Temperature: ");
  SerialUSB.print(tempC);
  SerialUSB.println("*C");
  SerialUSB.print("Capacitive: ");
  SerialUSB.println(capread);

  // if (rf95.available()) {
  //   SerialUSB.println("RF95 available");
  //   // Should be a message for us now
  //   uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
  //   uint8_t len = sizeof(buf);
  //
  //   if (rf95.recv(buf, &len)) {
  //     timeSinceLastPacket = millis(); // Timestamp this packet
  //
  //     SerialUSB.print("Got message: ");
  //     SerialUSB.print((char *)buf);
  //     // SerialUSB.print(" RSSI: ");
  //     // SerialUSB.print(rf95.lastRssi(), DEC);
  //     SerialUSB.println();
  //
  //     // Send a reply
  //     uint8_t toSend[] = "Hello Back!";
  //     rf95.send(toSend, sizeof(toSend));
  //     rf95.waitPacketSent();
  //     SerialUSB.println("Sent a reply");
  //   } else {
  //     SerialUSB.println("Recieve failed");
  //   }
  // }
  uint8_t toSend[] = {uint8_t(capread >> 8), uint8_t(capread)};
  rf95.send(toSend, sizeof(toSend));
  rf95.waitPacketSent();
  SerialUSB.println("Sent data : " + String(toSend[0]) + ", " +
                    String(toSend[1]));

  delay(1000);
}
