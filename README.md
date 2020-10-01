### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Only CSM boot is supported by now.

## How to install

It is recommended to install the versions available in the releases page, theses versions are stable enough for normal usage. Do not use the script in this repository as it contains bugs and it's not well tested.

Dependencies:

    mount util-linux fdisk ntfs-3g rsync extlinux syslinux-common

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

