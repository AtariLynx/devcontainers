#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "cc65" [ "$(cc65 2>&1 | grep 'No input files')" ]
check "sprpck" [ "$(sprpck | grep 'Lynx Sprite Packer Ver 2.4')" ]
checl "make_lnx" [ "$(make_lnx | grep 'Raw image to LNX image convertor V5')" ]

# Report result
reportResults
