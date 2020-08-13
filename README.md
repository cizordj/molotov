### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Only CSM boot is supported by now.

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

## How to install

For convenience for some users, there is a .deb package in the [releases' page](https://github.com/cizordj/molotov/wiki), which requires all necessary dependencies.

<<<<<<< HEAD
Read the [wiki](https://github.com/cizordj/molotov/wiki) for more information.
=======
For Debian users use this command:

    # apt-get install mount util-linux fdisk ntfs-3g rsync extlinux syslinux-common

Or download the Debian package in the releases' page.

## Help wanted
>>>>>>> e24262b971d74e1c974f171953be28ea8a0e25b5

This project needs people to package it for Debian and Fedora, if you are interested please contact me.
