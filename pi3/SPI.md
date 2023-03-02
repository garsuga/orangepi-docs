[Original Article](https://forum.armbian.com/topic/22303-connect-rc522-to-orange-pi-3-lts)

### 1. Edit `/boot/armbianEnv.txt`
```
overlays=spi-spidev1
param_spidev_spi_bus=1
```
### 2. Reboot
### 3. Test SPI
[Raspberry PI Loopback Test](https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#loopback-test)
* `wget https://raw.githubusercontent.com/raspberrypi/linux/rpi-3.10.y/Documentation/spi/spidev_test.c`
* Connect the MISO and MOSI pins
* `gcc -o spidev_test spidev_test.c`
* `sudo ./spidev_test -D /dev/spidev1.0`

Should see 
```
FF FF FF FF FF FF
40 00 00 00 00 95
FF FF FF FF FF FF
FF FF FF FF FF FF
FF FF FF FF FF FF
DE AD BE EF BA AD
F0 0D
```