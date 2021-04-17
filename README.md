# Updated Xpad Linux Kernel Driver
Driver for the Xbox/ Xbox 360/ Xbox 360 Wireless/ Xbox One Controllers with added support for PowerA wired controllers

## Dependencies
Arch/Manjaro
```
sudo pacman -S usbutils base-devel dkms
```
Fedora
```
sudo yum -y install usbutils && sudo dnf install dkms
```
Ubuntu
```
all depends should already be installed. If not:
sudo apt install dkms
```
Other distros (build it yourself):

[gregkh/usbutils](https://github.com/gregkh/usbutils) and [dell/dkms](https://github.com/dell/dkms)

## Your model not working?
Open a new issue in this repository and send the output of the following command:
```
lsusb
```
I will add your controller ASAP! you can also add it yourself like this:
[Getting a generic XboxOne gamepad to work on Linux](https://www.reddit.com/r/linux_gaming/comments/l1ty23/getting_a_generic_xboxone_gamepad_to_work_on_linux/)

## Installation
Download the latest release from [here](https://github.com/JBGMR/xpad_powera/releases) and extract the file. Go inside the folder of the extracted file and open a terminal. To install the driver type in:
```
sudo sh install.sh
```
A reboot shouldn't be required. If, even after a reboot, your controller doesn't work, check Your model not working?" above.
## Removing
```
sudo rmmod xpad
sudo dkms remove -m xpad -v 0.4 --all
sudo rm -rf /usr/src/xpad-0.4
sudo reboot
```
