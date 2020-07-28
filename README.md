### Molotov project

Create a bootable media from a Windows® 10 iso image.

The Molotov project aims to make it easy to create a bootable flash drive for Windows 10 installation. The script contained in this repository is just a backend, sooner or later we'll launch a graphical interface. Only legacy boot is supported by now.

## Dependencies
Debian bullseye

    # apt-get install syslinux-common fdisk rsync coreutils ntfs-3g

## How to use

Download the script in the source folder */src* and run with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <DEVICE>

Be careful to choose the right device for burning the image, I am not responsible for data loss.

The project is now in the ALPHA stage.
