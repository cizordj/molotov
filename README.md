### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Only CSM boot is supported by now.

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

## How to install

To make life easier for some users I made a Debian package in the [releases' page](https://github.com/cizordj/molotov/wiki) which requires all necessary dependencies before installing. If you still wish to use the version in this repository, then here are the dependencies.

    mount util-linux fdisk ntfs-3g rsync extlinux syslinux-common

For more information please read the Wiki
