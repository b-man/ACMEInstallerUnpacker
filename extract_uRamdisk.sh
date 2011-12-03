#!/bin/sh

# This code was written by Brian McKenzie <mckenzba@gmail.com> and is under the terms of the BSD License.

if [ -f ./uRamdisk ]; then
	dd if=uRamdisk bs=64 skip=1 of=ramdisk.ext2.gz
	gunzip -v ramdisk.ext2.gz
	echo "ramdisk extracted, please run 'mount -o loop ramdisk.ext2 /mnt/[your mount point]' to view contents."
else
	echo "error: uRamdisk doesn't exits!"
	exit 1
fi

exit 0
