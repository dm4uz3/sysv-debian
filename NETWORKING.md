# Networking on systemd-free Debian

It's a bit different without systemd, due to dependencies, but this guide should educate you on how to use the internet on a sysvinit Debian system.  

Step one,  
## Finding your interface

This can be done using
```
$ ip a
```  
Interfaces look like `enp2s0`, `wlp3s0`, `wls1` and so on.  
Most ethernet interfaces start with "e", to connect to the internet, you just need to type one command:
```
# dhclient <interface>
```
Replace `<interface>` with your interface.  

## Wireless

This implies you have an atheros card or have the firmware files downloaded, if not, read [UPGRADING.md](UPGRADING.md) to find out how to enable non-free applications and download the firmware packages. (use [DuckDuckGo](https://duckduckgo.com))  

Make sure your card isn't blocked, use `rfkill` for that one  
```
$ man rfkill
```
for more info  

Debian can't run NetworkManager without systemd, for WiFi, we'll use the interfaces file, located in `/etc/network/interfaces`.  

Edit it, our editor now will be `nano`
```
# nano /etc/network/interfaces
```  
In here, the file should look something like this:  
```
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback
```  
Add this to the file:  
```
auto <interface>
iface <interface> inet dhcp
wpa-essid <ssid>
wpa-psk <password>
```  
Replace:  
`<interface>` with your interface  
`<ssid>` with your ssid  
`<password>` with the network's password  

Save and quit it, reboot  
```
# reboot
```
and you should be good to go.

