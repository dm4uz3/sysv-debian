# sudo

If you're completely new - once you install Debian,  
you'll find out that `sudo` doesn't work, unless  
you know how to read and haven't put in a root password.  
![sudo](https://national-shitposting.agency/i/hbqnsm.png)  
You can either -  
-> reinstall Debian  
-> enable `sudo` manually  

## Enabling sudo manually

First, you need to have `sudo` installed  
Use
```
$ su
```
to become root (use the root's password here)  
and install `sudo` by using  
```
# apt-get update
# apt-get install -y sudo
```
Next, you'll need to enable it, type  
```
# visudo
```
and add in
```
<username>   ALL=(ALL:ALL) ALL
```
replace `<username>` with your username  

### Now sudo should work. And shame on you for not reading. 
