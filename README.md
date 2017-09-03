# sysv-debian

Because Debian is the best distro of them all,  
why not get rid of systemd?  

Note:  
```
$ <command>
```  
means that the command is executed as a regular user  
```
# <command>
```  
means that the command is executed as root (`sudo` or `su`)  

This script is for the `testing` branch, currently known  
as `Buster`, for instructions on updating, read the  
upgrading file on this repo.  

Okay, to start - you need a minimal install of Debian.  
That means - no desktop, only the good ol' tty.  
If you have any problems connecting to the internet  
please check the networking file.

Once you have your environment set up (internet, updates) -  
download the script

```
$ wget https://voidcat.succ.me.uk/systemd-be-gone.sh
```
or
```
$ curl https://voidcat.succ.me.uk/systemd-be-gone.sh > systemd-be-gone.sh
```
The same script is in this repo.  
Once it's downloaded, make it executable  
```
$ chmod +x systemd-be-gone.sh
```
Then, execute it  
```
# ./systemd-be-gone.sh
```
When it's done, you'll be able to reboot
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



