#!/bin/sh
# Created by: Westley K
# email: westley@sylabs.io
# Date: Sep 10, 2018
# version-1.0.0
# https://github.com/WestleyK/ubuntu-backlight
#
# MIT License
#

set -e

SCRIPT_URL="https://github.com/WestleyK/ubuntu-backlight/raw/master/pre-compiled/ubuntu/ubuntu-backlight"
SCRIPT_NAME="ubuntu-backlight"
INSTALL_PATH="/usr/local/bin/"
ARCH_VERSION="x86_64"

echo "Install script version: version-1.0.0"
echo 

ARCH_ON=` uname -m `
if [ "$ARCH_ON" != "$ARCH_VERSION" ]; then
    printf "\033[0;31mFATAL ERROR: \033[0m"
    echo "Architecture not supported!"
    echo "Supported architecture version: $ARCH_VERSION"
    echo "Your architecture version: $ARCH_ON"
    echo 
    echo "FAIL: Install failed!"
    exit 1
fi

echo "Downloading file..."
wget -O $SCRIPT_NAME $SCRIPT_URL
chmod +x $SCRIPT_NAME

echo 
echo
echo
echo "SUCCESS: install successful."
echo 
echo "########## $SCRIPT_NAME installed to the current directory  ##########"
echo
echo ">> To finish the install, do:"
echo " $ sudo mv $SCRIPT_NAME /usr/local/bin/"
exit 0

#
# End install script
#
