g#!/bin/bash

set -e
set -x

# Download
cd /tmp/setup

mkdir /dos/drive_g/v2
wget -O ViSiON2-RES.ZIP https://github.com/stlalpha/docker-bbs-renegade/blob/master/binaries/V2R004D.ZIP?raw=true

sha256sum -c < sums

cd /dos/drive_g

unzip /tmp/setup/ViSiON2-RES.ZIP
rm /tmp/setup/ViSiON2-RES.ZIP
#cd /dos/drive_g/v2
#unzip TOS_MENU.ZIP -d ./MENUS
#unzip MENUDATA.ZIP -d ./MENUDATA


echo 1 > /dos/numnodes   # 2 nodes by default

