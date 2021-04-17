#!/bin/bash

echo 'Xpad PowerA patch installer'
echo '##################################'
echo 'Device will automatically reboot!'
echo 'Installing driver for:'
lsusb | grep 'Xbox'

echo 'Removing existing install'
sudo rmmod xpad
sudo dkms remove -m xpad -v 0.4 --all
sudo rm -rf /usr/src/xpad-*

echo 'Installing...'
sudo cp -r src/ /usr/src/xpad-0.4
sudo dkms install -m xpad -v 0.4
sudo modprobe xpad
sudo reboot
