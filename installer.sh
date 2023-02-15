#!/bin/bash

# This script will install the latest version of the Slynkk Shell on your system.

# Check if the user is root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

git clone https://github.com/SlynkkShell/Slynkk
cd Slynkk
cp slynkk /usr/bin/slynkk
chmod +x /usr/bin/slynkk
cd ..

# Remove the Slynkk directory
rm -rf Slynkk

# Check if the installation was successful
if [ -f /usr/bin/slynkk ]; then
    echo "Slynkk Shell was successfully installed!"
else
    echo "Slynkk Shell was not installed!"
fi