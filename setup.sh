#!/usr/bin/env bash
clear
echo "============== Preparing to Install Python3.6 ==================="
sleep 3
apt update && apt upgrade
apt install make -y
apt-get install python3-dev libffi-dev libssl-dev -y
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tar.xz
apt-get install xz-utils
tar -xf Python-3.6.3.tar.xz
cd Python-3.6.3
apt install gcc g++ -y
./configure
make
make install
pip3 install --upgrade pip
sleep 3
clear
echo "================== Installation of Python3.6 done ===================="