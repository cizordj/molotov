### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Only CSM boot is supported by now.

## How to use

Download the script in the source folder */src* and run with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

Read the [wiki](https://github.com/cizordj/molotov/wiki)

## Dependencies

For Debian users use this command:

    # apt-get install mount util-linux fdisk ntfs-3g rsync extlinux syslinux-common

Or download the Debian package in the releases' page.

## Help wanted

This project needs people to package it for Debian and Fedora, if you are interested please contact me.
