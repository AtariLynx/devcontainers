#!/bin/sh
set -e

echo "Activiting Activating feature 'sprpck'"

mkdir -p /sdk
cd /sdk
git clone https://github.com/42Bastian/sprpck.git

echo "The effective dev container remoteUser is '$_REMOTE_USER'"
echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

echo "The effective dev container containerUser is '$_CONTAINER_USER'"
echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

cd /sdk/sprpck/src
make && install sprpck /usr/bin