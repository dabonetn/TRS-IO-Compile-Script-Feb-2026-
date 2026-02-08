#!/bin/bash
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 -y
sudo apt-get install z80asm sdcc sdcc-libraries -y
sudo mkdir -p /lib/z80/
sudo ln -s /usr/share/sdcc/lib/z80/z80.lib /lib/z80/z80.lib
sudo apt-get install python3 python3-pip python3-setuptools -y
sudo ln -s /usr/bin/python3 /usr/bin/python
mkdir ~/esp
cd ~/esp
git clone -b v4.4.7 --recursive https://github.com/espressif/esp-idf.git
cd ~/esp/esp-idf
export IDF_GITHUB_ASSETS=dl.espressif.com/github_assets
./install.sh
cd ~/esp
git clone --recursive https://github.com/apuder/TRS-IO.git
mkdir ~/esp/TRS-IO/src/esp/build
mkdir ~/esp/TRS-IO/src/esp/build/html

#uncomment the # on the line that contains the cp command for the correct version you want to compile.

#Model trs-io-m1
cp ~/esp/TRS-IO/src/esp/sdkconfig.trs-io-m1 ~/esp/TRS-IO/src/esp/build/sdkconfig
#Model trs-io-m3
#cp ~/esp/TRS-IO/src/esp/sdkconfig.trs-io-m3 ~/esp/TRS-IO/src/esp/build/sdkconfig
#Model trs-io-pp
#cp ~/esp/TRS-IO/src/esp/sdkconfig.trs-io-pp ~/esp/TRS-IO/src/esp/build/sdkconfig
#Model sdkconfig.defaults
#cp ~/esp/TRS-IO/src/esp/sdkconfig.defaults ~/esp/TRS-IO/src/esp/build/sdkconfig
#Model mini-trs
#cp ~/esp/TRS-IO/src/esp/sdkconfig.mini-trs ~/esp/TRS-IO/src/esp/build/sdkconfig
#Model trs-io
#cp ~/esp/TRS-IO/src/esp/sdkconfig.trs-io ~/esp/TRS-IO/src/esp/build/sdkconfig

cd ~/esp/TRS-IO
. $HOME/esp/esp-idf/export.sh
make clean
make all
