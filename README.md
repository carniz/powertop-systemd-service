# powertop-systemd-service

A [powertop](https://01.org/powertop) SystemD service with accompanying [udev](https://man7.org/linux/man-pages/man7/udev.7.html) rules that starts/stops the service when the battery charging status changes.

## Installation instructions

```
sudo apt-get --assume-yes install powertop at
sudo cp powertop.service /etc/systemd/system
sudo cp async-start-powertop /usr/local/bin
sudo cp async-stop-powertop /usr/local/bin
sudo cp power_supply.rules /etc/udev/rules.d

sudo systemctl daemon-reload
sudo chmod 755 /usr/local/bin/async-start-powertop
sudo chmod 755 /usr/local/bin/async-stop-powertop
sudo udevadm control --reload-rules
```

## Debian / Ubuntu packages
Debian/Ubuntu .deb files can be downloaded from [releases](https://github.com/carniz/powertop-systemd-service/releases/)