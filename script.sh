#!/bin/bash

if [[ $1 == "" ]] ; then
  echo "Debian systemd removal"
  echo "This script is made for two Debian branches"
  echo "1) Debian stable (stretch)"
  echo "2) Debian testing (buster)"
  echo -n "Your choice: "
  read -n 1 BRANCH
  if [[ $BRANCH == "1" ]]; then
      echo -e "deb http://angband.pl/debian/ nosystemd-stretch main" > /etc/apt/sources.list.d/nosystemd.list
  elif [[ $BRANCH == "2" ]]; then
      echo -e "deb http://angband.pl/debian/ nosystemd-buster main" > /etc/apt/sources.list.d/nosystemd.list
  else
      echo "${BRANCH} isn't a valid branch."
      exit 1
  fi
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
