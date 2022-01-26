#!/bin/bash

set -e
set -x

# Download
cd /tmp/setup

mkdir /dos/drive_g/v2
wget -O ViSiON2-RES.ZIP https://github.com/stlalpha/docker-bbs-renegade/blob/master/binaries/ViSiON2-RES.ZIP?raw=true

sha256sum -c < sums

cd /dos/drive_g/v2

unzip /tmp/setup/ViSiON2-RES.ZIP
rm /tmp/setup/ViSiON2-RES.ZIP
cd /dos/drive_g/v2

mkdir NODE1
mkdir NODE2

pkunzip -d TOS_MENUS.ZIP TOS_MENUS
pkunzip -d MENUDATA.ZIP MENUDATA



echo 2 > /dos/numnodes   # 2 nodes by default


