# Code guidelines for Molotov project

This project follows the [GNU Coding standards](https://www.gnu.org/prep/standards/standards.html#Command_002dLine-Interfaces) for command-line applications.

In order to keep the code nice and clean we have a few requirements you'll need to stick to in order to get your patch accepted.

## Code style

Our tabs contains 4 spaces to prevent shell misinterpretation.

Do not use VIM automatic indentation such as *gg=G* as it breaks all code indentation.

Use K&R alternative style for the braces.

### Function naming

Function names must have at least one verb and one noun, besides their names must be camel case, for example:

```sh
formatChosenDevice(){
  # foo_bar
}
```

### Sub Function naming

Sub functions must be lower case in order to avoid getting more attention than the parent function.

```sh
sub_function(){
    # foo_bar
}
```

### Variable naming

Variables must be UPPERCASE and separated by underline in case of multiple words.

```sh
VARIABLE="value"
VARIABLE_WITH_ANOTHER_VALUE="another value"
```

When referencing a variable you must use quotes like this:

```sh
mount "$ISO_FILE" "$ISO_MOUNTPOINT"
rmdir "$TARGET_DIRECTORY"
```

It also applies to sub-function calls:
    
```sh
MODULES="$(find_specific_modules)"
```

Feel free to define constants and strings inside your functions,
but please make sure these names are available and not being used by
another function.

### Reading order

Always put your functions close to each other to avoid unnecessary scroll
on the source code. The top of the source code must have the functions
definitions and the bottom must have the function calls. Example:

```sh
makeDeviceBootable(){
    clean_mbr_partition(){
        # cleaning
    }
    install_extlinux(){
        # bar
    }
    copy_syslinux_modules(){
        # foo
    }

    I_AM_A_STRING="string"
    clean_mbr_partition
    install_extlinux
    copy_syslinux_modules
}
```

This way the user can read the bottom and see what the program does rather than how it does.

### Comments

Please do not write comments inside the code, nor comment out pieces of
code. Your functions' name must be enough to express your feelings and
if you can't do that then you shouldn't be here.

Commented-out codes are the worst thing ever, we don't know whether
we can remove them or not. Please don't write Fix-mes or To-dos in the
source code, instead, open an issue on Codeberg and fork it.

### Verbosity

Since this project follows the Unix philosophy it tries not to print
anything in the standard output, thus, it passes a **--quiet** parameter
to every program it uses to make it less wordy.
All possible errors must be handled before the beggining of the process
and the programms' behavior must be predictable, that's one of the
reasons why we make it silent.

If you need to print anything in the standard output please use the **printOut** function, it will direct the message to the right place depending on whether verbose flag is set or not. This function does not break lines, you have to tell it explicitly to do so.

    printOut "I am a custom message\n"

For printing error messages or warnings you can use the **printErr** function.

    printErr "I am a warning message\n"

This function does not obey the verbose flag.

## Debugging

You can use virtual machines to test whether the bootable drive is working or not.
This way you can debug molotov without needing to restart your computer and test it
on real hardware. First, you'll have to install qemu:

```console
apt install qemu-system-x86
```

Then boot into the USB drive:

```console
qemu-system-x86_64 -m 4096 -hda /dev/sdc
```

If Windows boots up then molotov is working as expected, then afterwards you can test
it on real hardware.
