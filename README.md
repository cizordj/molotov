# Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation.

Check the website for useless information: [https://cizordj.github.io/molotov/](https://cizordj.github.io/molotov/)

## How to install

It is recommended to use the versions available in the releases page, theses versions are stable enough for normal usage. Do not pick the binary directly from this repository as it contains bugs and is not well tested.

Debian Dependencies:

    dash mount util-linux fdisk ntfs-3g dosfstools grub2-common grub-efi-amd64-bin grub-pc-bin

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

## How it works

It is simple too, the molotov formats the block device, puts the iso contents in there and finally installs a boot-loader capable of booting Windows depeding on what type of boot you selected. Remember, molotov is a non-interactive program, so be extremely careful when passing the block device. It won't ask any questions.

## Known limitations

The molotov is still not capable of creating bootable drives from arm64 images and the reason is because the
[grub-efi-arm64-bin](https://packages.debian.org/buster/grub-efi-arm64-bin) package is not installable on 64 bits versions of Debian. This is a problem that could be solved in just one line of code if that package was available.
