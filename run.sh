#!/bin/sh

# This code was written by Brian McKenzie <mckenzba@gmail.com> and is under the terms of the BSD License.

if [ -f ./ACMEInstaller ]; then
	echo "extracting ACMEInstaller..."
	./extract_ACME.py ACMEInstaller
	mv file0.img uImage
	mv file1.img uRamdisk
	echo "extracting ramdisk image..."
	./extract_uRamdisk.sh uRamdisk
else
	echo "error: ACMEInstaller dosn't exist!"
	exit 1
fi

exit 0
