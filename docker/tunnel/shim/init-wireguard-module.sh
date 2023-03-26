#!/usr/bin/env bash
# shellcheck shell=dash
# Source https://github.com/linuxserver/docker-wireguard/blob/master/root/etc/s6-overlay/s6-rc.d/init-wireguard-module/run

set -e
set -o noglob

echo "Uname info: $(uname -a)"
# check for wireguard module
if ip link add dev test type wireguard; then
  echo "[INFO] Wireguard module is already active, skipping kernel header install and module compilation."
  SKIP_COMPILE="true"
  ip link del dev test
else
  echo "[INFO] Wireguard module is not active, attempting kernel header install and module compilation. If you believe that your kernel should have wireguard support already, make sure that it is activated via modprobe!"
  SKIP_COMPILE="false"
fi

# install headers if necessary
if [ "$SKIP_COMPILE" != "true" ] && [ ! -e "/lib/modules/$(uname -r)/build" ]; then
  echo "[INFO] Attempting kernel header install."
  apt-get update
  if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
    apt-get install -y \
      "linux-headers-$(uname -r)"
  elif (uname -r | grep -q 'v7+') || (uname -r | grep -q 'v7l+') || (uname -r | grep -q 'v8+'); then
    echo "[INFO] Raspbian kernel naming convention detected, attempting to install raspbian kernel headers."
    curl -s http://archive.raspberrypi.org/debian/raspberrypi.gpg.key | apt-key add -
    echo \
      "deb http://archive.raspberrypi.org/debian/ buster main\ndeb-src http://archive.raspberrypi.org/debian/ buster main" \
      > /etc/apt/sources.list.d/raspbian.list
    apt-get update
    apt-get install -y \
      raspberrypi-kernel-headers
  elif uname -v | grep -q 'Ubuntu'; then
    echo "[INFO] Ubuntu kernel detected, but likely not Jammy."
    echo "[INFO] Attempting to install kernel headers from Ubuntu Focal repo."
    if uname -m | grep -q 'x86_64'; then
      echo \
        "deb http://archive.ubuntu.com/ubuntu/ focal main restricted\ndeb-src http://archive.ubuntu.com/ubuntu/ focal main restricted\n\ndeb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted\ndeb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted" \
        > /etc/apt/sources.list.d/xenial-bionic-focal.list
    else
      echo \
      "deb http://ports.ubuntu.com/ubuntu-ports/ focal main restricted\ndeb-src http://ports.ubuntu.com/ubuntu-ports/ focal main restricted\n\ndeb http://ports.ubuntu.com/ubuntu-ports/ focal-updates main restricted\ndeb-src http://ports.ubuntu.com/ubuntu-ports/ focal-updates main restricted" \
        > /etc/apt/sources.list.d/xenial-bionic-focal.list
    fi
    apt-get update
    if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
      apt-get install -y \
        "linux-headers-$(uname -r)"
    else
      echo "[INFO] No kernel headers found in the Ubuntu Focal repo!! Trying Ubuntu Bionic."
      sed -i 's/focal/bionic/g' /etc/apt/sources.list.d/xenial-bionic-focal.list
      apt-get update
      if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
        apt-get install -y \
          "linux-headers-$(uname -r)"
      else
        echo "[INFO] No kernel headers found in the Ubuntu Bionic repo!! Trying Ubuntu Xenial."
        sed -i 's/bionic/xenial/g' /etc/apt/sources.list.d/xenial-bionic-focal.list
        apt-get update
        if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
          apt-get install -y \
            "linux-headers-$(uname -r)"
        else
          echo "[INFO] No kernel headers found in the Ubuntu repos!! Will try the headers from host (if mapped), may or may not work."
          rm -rf /etc/apt/sources.list.d/xenial-bionic-focal.list
        fi
      fi
    fi
  elif uname -v | grep -q 'Debian'; then
    echo "[INFO] Debian host detected, attempting to install kernel headers from Debian Buster repo."
    curl -s https://ftp-master.debian.org/keys/archive-key-10.asc | apt-key add -
    curl -s https://ftp-master.debian.org/keys/archive-key-10-security.asc | apt-key add -
    cat <<DUDE > /etc/apt/sources.list.d/debian.list
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
deb http://deb.debian.org/debian buster-backports main contrib non-free
deb-src http://deb.debian.org/debian buster-backports main contrib non-free
DUDE
    apt-get update
    if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
      if uname -r | grep -qs "bpo"; then
        echo "**** Backported kernel detected ****"
        apt-get install -y -t buster-backports \
          "linux-headers-$(uname -r)"
      else
        apt-get install -y \
          "linux-headers-$(uname -r)"
      fi
    else
      echo "[INFO] Attempting to install kernel headers from the Debian Stretch repo."
      curl -s https://ftp-master.debian.org/keys/archive-key-9.asc | apt-key add -
      curl -s https://ftp-master.debian.org/keys/archive-key-9-security.asc | apt-key add -
      sed -i 's/buster/stretch/g' /etc/apt/sources.list.d/debian.list
      apt-get update
      if apt-cache show "linux-headers-$(uname -r)" 2>&1 >/dev/null; then
        if uname -r | grep -qs "bpo"; then
          echo "[INFO] Backported kernel detected."
          apt-get install -y -t stretch-backports \
            "linux-headers-$(uname -r)"
        else
          apt-get install -y \
            "linux-headers-$(uname -r)"
        fi
      else
        echo "[INFO] No kernel headers found in Debian repos!! Will try the headers from host (if mapped), may or may not work."
        rm -rf /etc/apt/sources.list.d/debian.list
      fi
    fi
  else
    echo "[INFO] No kernel headers found in the Ubuntu or Debian repos!! Will try the headers from host (if mapped), may or may not work."
  fi
fi

if [ "$SKIP_COMPILE" != "true" ]; then
  if [ -e "/lib/modules/$(uname -r)/build" ]; then
    echo "[INFO] Kernel headers seem to be present, attempting to build the wireguard module."
    if [ ! -f "/lib/modules/$(uname -r)/build/certs/signing_key.pem" ]; then
      mkdir -p "/lib/modules/$(uname -r)/build/certs"
      cd "/lib/modules/$(uname -r)/build/certs"
      cat <<DUDE >> x509.genkey
[ req ]
default_bits = 4096
distinguished_name = req_distinguished_name
prompt = no
string_mask = utf8only
x509_extensions = myexts

[ req_distinguished_name ]
CN = Modules

[ myexts ]
basicConstraints=critical,CA:FALSE
keyUsage=digitalSignature
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid
DUDE
      echo "[INFO] Generating signing key."
      openssl req -new -nodes -utf8 -sha512 -days 36500 -batch -x509 -config x509.genkey -outform DER -out signing_key.x509 -keyout signing_key.pem
    fi
    cd /app
    echo "[INFO] Building the module."
    make -C wireguard-linux-compat/src -j"$(nproc)"
    make -C wireguard-linux-compat/src install
    echo "[INFO] Let's test our new module."
    ip link del dev test 2>/dev/null
    if ip link add dev test type wireguard; then
      echo "[INFO] The module is active, moving forward with setup."
      ip link del dev test
    else
      echo "[INFO] The module is not active, review the logs. Falling back to wireguard-go..."
      # mkdir /dev/net/tun for wireguard-go
      if [ ! -c /dev/net/tun ]; then
        mkdir -p /dev/net
        mknod /dev/net/tun c 10 200
        chmod 600 /dev/net/tun
      fi
    fi
  else
    echo "[INFO] Kernel headers don't seem to be available in Ubuntu, Debian and Raspbian repos, or shared from the host; therefore can't compile the module. Falling back to wireguard-go."
    # mkdir /dev/net/tun for wireguard-go
    if [ ! -c /dev/net/tun ]; then
      mkdir -p /dev/net
      mknod /dev/net/tun c 10 200
      chmod 600 /dev/net/tun
    fi
  fi
fi
