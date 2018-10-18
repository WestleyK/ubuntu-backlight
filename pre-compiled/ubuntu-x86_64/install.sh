#!/bin/sh
# Created by: Westley K
# email: westleyk@nym.hush.com
# Date: Oct 17, 2018
# version-1.0.0
# https://github.com/WestleyK/ubuntu-backlight
#
# MIT License
#

URL="https://github.com/WestleyK/ubuntu-backlight/raw/master/pre-compiled/ubuntu-x86_64/ubuntu-backlight"
SCRIPT_NAME="ubuntu-backligt"

wget $URL
chmod +x $SCRIPT_NAME

echo
echo "Dowload complete!"
echo
echo "To finish the install, do:"
echo
echo "$ sudo mv $SCRIPT_NAME /usr/local/bin/"

#
# End install.sh
#
