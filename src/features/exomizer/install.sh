#!/bin/sh
set -e

echo "Activating feature 'exomizer'"

mkdir -p /sdk
cd /sdk
git clone https://bitbucket.org/magli143/exomizer.git

cd /sdk/exomizer/src
make && install exomizer /usr/bin
rm -r /sdk/exomizer