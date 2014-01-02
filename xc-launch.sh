#!/bin/bash

# xc-launch.sh: script to launch Xcode using a RAM disk to store intermediate build products 
# written by Diego Freniche
# distributed under the MIT & Anyone But Richard Stallman Licenses ;-)

# delete /volumes/ramdisk directory (in case you've started Xcode without calling this script 1st)

rm -rf /Volumes/ramdisk

# create a 4GB RAM disk. Mounting it in /Volumes/ramdisk
# if /Volumes/ramdisk already exist, do nothing

if [[ $(mount | awk '$3 == "/Volumes/ramdisk" {print $3}') != "" ]]; then
	echo /Volumes/ramdisk is mounted
else
	diskutil erasevolume HFS+ "ramdisk" `hdiutil attach -nomount ram://8475854`
fi

open -a Xcode
