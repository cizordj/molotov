# Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend and it works. Sooner or later we'll create a graphical interface with GTK.

Now I am pleased to announce that both BIOS and UEFI boot are supported.

## How to install

It is recommended to use the versions available in the releases page, theses versions are stable enough for normal usage. Do not pick the binary directly from this repository as it contains bugs and it's not well tested.

Debian Dependencies:

    dash mount util-linux fdisk ntfs-3g dosfstools grub2-common grub-efi-amd64-bin grub-pc-bin

## How to use

It is simple, just run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

## How it works

It is simple too, the molotov formats the block device, puts the iso contents in there and finally installs a boot-loader capable of booting Windows depeding on what type of boot you selected. Remember, molotov is a non-interactive program, so be extremely careful when passing the block device. It won't ask any questions.

## Known limitations

The molotov is still not capable of creating bootable drives from arm64 images and the reason is because the <a href="https://packages.debian.org/buster/grub-efi-arm64-bin">grub-efi-arm64-bin</a> package is not installable on 64 bits versions of Debian. This is a problem that could be solved in just one line of code if that package was available.
