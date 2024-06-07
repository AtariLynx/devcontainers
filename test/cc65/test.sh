#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "cc65" [ $(cc65 | grep "No input files") ]

# Report result
reportResults
