#!/bin/bash

# Run ./systemd-be-gone.sh, reboot, then run ./systemd-be-gone.sh purge

if [[ $1 == "" ]] ; then
  # Add the nosystemd repo
  echo -e "deb http://angband.pl/debian/ nosystemd-buster main" > /etc/apt/sources.list.d/nosystemd.list
  echo -e 'Package: *\nPin: origin angband.pl\nPin-Priority: 1100\n' > /etc/apt/preferences.d/nosystemd
  echo -e 'Package: libsystemd0\nPin: version *\nPin-Priority: 500\n' >> /etc/apt/preferences.d/nosystemd
  echo -e 'Package: *systemd*\nPin: release *\nPin-Priority: -1\n' >> /etc/apt/preferences.d/nosystemd
  wget -qO - https://angband.pl/deb/archive.html | apt-key add -

  # Install sysvinit
  apt-get update -y
  apt-get install sysvinit-core sysvinit-utils -y
  cp /usr/share/sysvinit/inittab /etc/inittab
elif [[ $1 == "purge" ]] ; then
  apt-get purge -y "systemd*"
else
  printf "Unrecognised option: $1.\n"
fi
