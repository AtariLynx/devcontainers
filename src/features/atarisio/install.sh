#!/bin/sh
set -e

echo "Activating feature 'AtariSIO'"
SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://github.com/HiassofT/AtariSIO.git

cd AtariSIO/tools
make -f Makefile.posix 
install adir ataricom dir2atr /usr/bin
rm -r ${SOURCE_DIR}/AtariSIO