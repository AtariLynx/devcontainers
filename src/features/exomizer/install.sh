#!/bin/sh
set -e

echo "Activating feature 'exomizer'"
SOURCE_DIR=/usr/src
mkdir -p ${SOURCE_DIR}
cd ${SOURCE_DIR}
git clone https://bitbucket.org/magli143/exomizer.git

cd src
make 
install exomizer /usr/bin
rm -r ${SOURCE_DIR}/exomizer