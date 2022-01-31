g#!/bin/bash

set -e
set -x

# Download
cd /tmp/setup

mkdir /dos/drive_g/v2
wget -O V2RES.ZIP https://github.com/stlalpha/docker-bbs-renegade/blob/master/binaries/V2R0043D.ZIP?raw=true

sha256sum -c < sums
cp /tmp/setup/V2RES.ZIP /dos/drive_g/v2
cd /dos/drive_g/v2
unzip /tmp/setup/V2RES.ZIP
rm /tmp/setup/V2RES.ZIP
#cd /dos/drive_g/v2
#unzip TOS_MENU.ZIP -d ./MENUS
#unzip MENUDATA.ZIP -d ./MENUDATA


echo 1 > /dos/numnodes   # 2 nodes by default

