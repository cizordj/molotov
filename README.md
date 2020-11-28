### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Both legacy and UEFI boot are supported

## How to install

It is recommended to use the versions available in the releases page, theses versions are stable enough for normal usage. Do not pick the binary directly from this as it contains bugs and it's not well tested.

Dependencies:

    dash mount util-linux fdisk ntfs-3g dosfstools grub2-common grub-efi-amd64-bin

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

