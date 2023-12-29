#!/bin/sh
set -e

echo "Activating feature 'make_lnx'"

mkdir -p /sdk
cp make_lnx.c /sdk
cd /sdk

gcc make_lnx.c -o make_lnx && install make_lnx /usr/bin
rm /sdk/make_lnx.c