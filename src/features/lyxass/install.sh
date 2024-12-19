#!/bin/sh
set -e

echo "Activating feature 'lyxass'"
SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://github.com/42Bastian/lyxass.git
cd lyxass
make
install lyxass /usr/bin

rm -rf ${SOURCE_DIR}/lyxass

# cd ${SOURCE_DIR}
# git clone https://github.com/42Bastian/new_bll.git
# cd new_bll/lynxenc
# make
# install lynxenc lynxdec /usr/bin
# cd ../make_lnx
# make
# install make_lnx /usr/bin