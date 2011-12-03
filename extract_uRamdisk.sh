#!/bin/sh

# this code was written by Matteo Mattei at http://www.matteomattei.com/en/extract-u-boot-multi-file-image-in-python/

if [ -f ./uRamdisk ]; then
	dd if=uRamdisk bs=64 skip=1 of=ramdisk.ext2.gz
	gunzip -v ramdisk.ext2.gz
	echo "ramdisk extracted, please run 'mount -o loop ramdisk.ext2 /mnt/[your mount point]' to view contents."
else
	echo "error: uRamdisk doesn't exits!"
	exit 1
fi

exit 0
