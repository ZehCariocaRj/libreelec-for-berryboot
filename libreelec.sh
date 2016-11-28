#!/bin/bash

URL="http://releases.libreelec.tv/LibreELEC-RPi2.arm-7.90.008.img.gz"
IMAGEFILE="LibreELEC*.img"

# create berryboot image
echo ""
echo "#### DOWNLOAD OS IMAGE ####"
sudo wget $URL
echo ""
echo "#### DECOMPRESSING... ####"
sudo gunzip LibreELEC*.gz
echo ""
echo "#### MOUNTING PARTITION ####"
sudo losetup -f -P $IMAGEFILE
sudo mount /dev/loop0p1 /mnt
sudo unsquashfs /mnt/SYSTEM
sudo umount /mnt
sudo losetup -d /dev/loop0
echo ""
echo "#### UNMOUNTING PARTITION ####"
echo ""
echo "#### CREATING BERRYBOOT IMAGE ####"
sudo mksquashfs squashfs-root/ $IMAGEFILE-berryboot.img -comp lzo -e lib/modules var/cache/apt/archives
sudo rm -rf squashfs-root
echo ""
echo "#### DONE! IMAGE READY ####"
echo ""
