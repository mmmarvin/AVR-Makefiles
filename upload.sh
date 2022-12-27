avrdude -F -V -c arduino -p ATMEGA328P -P /dev/TTYACM0 -b 115200 -U flash:w:$1
