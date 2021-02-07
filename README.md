# Updated Xpad Linux Kernel Driver
Driver for the Xbox/ Xbox 360/ Xbox 360 Wireless/ Xbox One Controllers with added support for PowerA wired controllers

# Dependencies
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
Other
[gregkh/usbutils](https://github.com/gregkh/usbutils)
[dell/dkms](https://github.com/dell/dkms)

# Your model not working?
Open a new issue in this repository and send the output of the following command:
```
lsusb
```
If 
**This driver does not support the XBox One Wireless Adapter (WiFi)**  
To get that running, see: [medusalix/xow](https://github.com/medusalix/xow)

# Installing
Download from releases and extract the file. Go inside the folder of the extracted file and open a terminal
```
sudo sh install.sh

```
# Removing
```
sudo dkms remove -m xpad -v 0.4 --all
sudo rm -rf /usr/src/xpad-0.4
```
