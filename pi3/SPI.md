[Original Article](https://forum.armbian.com/topic/22303-connect-rc522-to-orange-pi-3-lts)

1. Edit `/boot/armbianEnv.txt`
```
overlays=spi-spidev1
param_spidev_spi_bus=1
```
2. Reboot
