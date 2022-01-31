#!/bin/bash

set -e
set -x

# Download
cd /tmp/setup

mkdir /dos/drive_g/v2r 
wget -O V2RES.ZIP https://github.com/stlalpha/docker-bbs-renegade/blob/master/binaries/V2R0045D.ZIP?raw=true

sha256sum -c < sums
mv V2RES.ZIP /dos/drive_g/v2r && cd /dos/drive_g/v2r
#cp /tmp/setup/ViSiON2-RES.ZIP /dos/drive_g/v2
unzip V2RES.ZIP
rm V2RES.ZIP
#cd /dos/drive_g/v2
#unzip TOS_MENU.ZIP -d ./MENUS
#unzip MENUDATA.ZIP -d ./MENUDATA


echo 1 > /dos/numnodes   # 2 nodes by default

