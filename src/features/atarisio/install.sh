#!/bin/sh
set -e

echo "Activating feature 'AtariSIO'"

mkdir -p /sdk
cd /sdk
git clone https://github.com/HiassofT/AtariSIO.git

cd /sdk/AtariSIO/tools
make -f Makefile.posix && install adir ataricom dir2atr /usr/bin
rm -r /sdk/AtariSIO