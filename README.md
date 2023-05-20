# Molotov project

Create a bootable media from a Windows® iso image.

The Molotov project aims to make it easy for you to create a bootable
flash drive for Windows installation on your Linux machine.

## Usage

You got to run the script with the necessary arguments:

    ./molotov -i <ISO_IMAGE> -d <BLOCK_DEVICE>

## How to install

We don't recommend to use the versions in the master branch, these
versions are meant for developement and might not be secure for real-world
uses.

Debian:

```console
apt install molotov
```

## Package maintainers

Checkout the Debian package for an up-to-date list of dependencies.

All git tags are signed with GPG and you can find the public key
in the Debian package repository.

## How it works

It is simple too, the molotov formats the block device, puts the iso contents
in there and finally installs a boot-loader capable of booting Windows depeding
on what type of boot you have selected. Remember, molotov is a non-interactive
program, so be extremely careful when passing the block device. It won't ask
any questions.

## Known limitations

The molotov is still not capable of creating bootable drives from arm64 images
and the reason is because the
[grub-efi-arm64-bin](https://packages.debian.org/buster/grub-efi-arm64-bin)
package is not installable on 64 bits versions of Debian. This is a problem
that could be solved in just one line of code if that package was available.

# Troubleshooting
Some common problems that people find when they use Molotov

## Black screen with a blinking cursor
After using molotov to create the flash drive and booting from there, the Windows logo
shows up and then disappear leaving you with a black screen and a blinking underscore
on the left. It means that Windows is still booting in the background and it will
take from 5 to 10 minutes to show the installation screen. This is mostly a hardware
problem and is not something that molotov can fix, if you have a worn flash drive
be aware that the transfer speed will be slow and Windows may take forever to boot.
That is why I recommend you to use a 3.0 usb drive because the Windows will
boot up faster.
