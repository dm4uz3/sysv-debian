# !!! Important !!!
You can now get the sysvinit Debian ISO, which sets up everything for you during the install, this repo will still stay up for manual sysvinit installation or maintenence of a sysvinit Debian install in general.  

### Download the ISO from here: 
[https://goo.gl/9oAECv](https://goo.gl/9oAECv)  (kinda outdated probably not a good idea but you do you)

And verify your hashes, kids: `2bcf30c1652e6117f353a2835ee9b8f50a78acf63bb7a97a56a479b20bdd7396` (sha256sum) 

Anyway, here's the original README:  

# sysv-debian

## Intro

Debian is a really good distro, but if stop jobs and bad code annoy you, you will find that it having systemd is annoying.  
Most people will say that Debian is systemd-dependent. That is a lie, this guide will run you through the process of installing `sysvinit` on Debian stretch or buster.  

## Files in the repo
 
`script.sh` - The main script that strips away systemd  
`LICENSE` - Repo's licenses  
`UPGRADING.md` - A guide on upgrading Debian and how its mirrors work in general  
`NETWORKING.md` - A guide on connecting to the internet using Debian with sysvinit  
`README.md` - This file, explaining what is in the repo  
`SUDO.md` - A guide on getting sudo to work  
`SYSVINIT.md` - A guide to strip away systemd  

## Typographical conventions

`this` is how package names and components will be presented  
```
this
```
is how commands will be represented
```
$ <command>
```
means that the `<command>` should be ran as a regular user  
```
# <command>
```
means that the `<command>` should be ran as root  
(please read the `SUDO.md` file if you don't know what i just said)  

### Source
[http://without-systemd.org/wiki/index.php/Debian_Stretch](http://without-systemd.org/wiki/index.php/Debian_Stretch)

