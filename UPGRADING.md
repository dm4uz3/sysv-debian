# Upgrading Debian

First, choose your branch you want  

`stable` - mostly for servers, can be used on desktops if stability is your #1 priority  
`testing` - perfect choice for literally anything, it's stable and has new packages.  
`unstable` (aka sid) - more up to date than testing, but they allow broken dependencies  
`experimental` - not really a repo, but an another layer of software that is bleeding edge (Linux RCs, Firefox beta, etc.)  

## BIG notice for unstable (sid)
The no-systemd repo doesn't work under `unstable`(sid)  

Made your choice? Let's continue  

`stable` is what you probably have by default, make sure the ISO you have has `9.x` on it, if it's `8.x`, you chose Jessie, that's `oldstable` and a bad idea to run.  

## Upgrading from Jessie or older versions
Follow the instructions of editing the `sources.list` file below, and do an update and a dist-upgrade.  
Also - a notice for general upgrading, it's preferred that you update gradually, aka, don't do `stable -> unstable`, do `stable -> testing -> unstable`  
  

`stable` and `testing` have security updates.  

To change branches, you need to edit your `/etc/apt/sources.list` file  
```
# <editor> /etc/apt/sources.list
```
What is `<editor>`? It's your terminal editor of choice,  for beginners, I'd recommend `nano`, it's easy to understand, so  
```
# nano /etc/apt/sources.list
```
Now, the contents of the file, ultimately, they should look like this  
```
deb http://deb.debian.org/debian stretch main
deb-src http://deb.debian.org/debian stretch main

deb http://deb.debian.org/debian stretch-updates main
deb-src http://deb.debian.org/debian stretch-updates main

deb http://security.debian.org/ stretch/updates main
deb-src http://security.debian.org/ stretch/updates main
```
If you want to keep running Debian stable with free software, leave it like this, otherwise, continue reading  

## non-free  

If you need any firmware packages or non-free software, add `contrib non-free` to every line of your repos, so  
```
deb http://deb.debian.org/debian stretch main contrib non-free
deb-src http://deb.debian.org/debian stretch main contrib non-free

deb http://deb.debian.org/debian stretch-updates main contrib non-free
deb-src http://deb.debian.org/debian stretch-updates main contrib non-free

deb http://security.debian.org/ stretch/updates main contrib non-free
deb-src http://security.debian.org/stretch/updates main contrib non-free
```  
## mirrors  
Debian has quite a bit of them.  
Replace `http://deb.debian.org/debian` with your mirror of choice  
This can be  
`http://ftp.de.debian.org/debian`  
`http://ftp.uk.debian.org/debian`  
etc.  

## testing  

To use testing, your sources.list should look like this:  
```
deb http://<mirror>/debian testing main
deb-src http://<mirror>/debian testing main

deb http://security.debian.org/ testing/updates main
deb-src http://security.debian.org/ testing/updates main
```
Replace `<mirror>` with a mirror of your choice, add `contrib non-free` if needed  

## unstable

To use unstable, your sources.list should look like this:
```
deb http://<mirror>/debian unstable main
deb-src http://<mirror>/debian unstable main
```
Replace `<mirror>` with a mirror of your choice, add `contrib non-free` if needed  

## experimental

To use experimental, append this to your sources.list file:  
```
deb http://<mirror>/debian experimental main
```
And it should look like this (example: use with testing):
```
deb http://ftp.de.debian.org/debian testing main
deb-src http://ftp.de.debian.org/debian testing main

deb http://security.debian.org/ testing/updates main
deb-src http://security.debian.org/ testing/updates main

deb http://ftp.de.debian.org/debian experimental main
```
To download software using experimental use `apt-get -t experimental`  

### After all that editing...  
upgrade your system  
```
# apt-get update
# apt-get dist-upgrade
```
and, reboot  
```
# reboot
```

That's it. You're good to go.

