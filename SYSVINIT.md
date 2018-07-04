# sysv-debian

Okay, to start - you need a minimal install of Debian. That means - no desktop, only the good ol' tty.  

If you have any problems connecting to the internet please check [NETWORKING.md](NETWORKING.md)

This will only work for Debian testing and stable, check out [UPGRADING.md](UPGRADING.md) for more info.  

Once you have your environment set up (internet, updates):  
Download the script with  
```
$ wget https://raw.githubusercontent.com/dm4uz3/sysv-debian/master/script.sh
```
or
```
$ curl https://raw.githubusercontent.com/dm4uz3/sysv-debian/master/script.sh > script.sh
```  
Once it's downloaded, make it executable  
```
$ chmod +x script.sh
```
Then, execute it  
```
# ./script.sh
```
It will spit out this:
```
Debian systemd removal
This script is made for two Debian branches
1) Debian stable (stretch)
2) Debian testing (buster)
Your choice: 
```
Use numbers `1` or `2` to select the `stable` or `testing` branches. Then the script will add a no-systemd repo and make you boot with sysvinit. After it's done, reboot your system:  
```
# reboot
```
Once you've rebooted, run the script again, but with one argument  
```
# ./systemd-be-gone.sh purge
```
This purges any systemd dependecies and systemd itself.  
Now, reboot the system
```
# reboot
```
Once you've rebooted, update your system
```
# apt-get update
# apt-get dist-upgrade
```
And reboot one more time.  
```
# reboot
```
After you've rebooted - you can install a DE by typing  
```
# tasksel
```

### Enjoy your systemd-free Debian!
