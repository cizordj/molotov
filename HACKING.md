# Code guidelines for Molotov project

This project follows the [GNU Coding standards](https://www.gnu.org/prep/standards/standards.html#Command_002dLine-Interfaces) for command-line applications.

In order to keep the code nice and clean we have a few requirements you'll need to stick to in order to get your patch accepted.

## Code style

Our tabs contains 4 spaces to prevent shell misinterpretation.

Do not use VIM automatic indentation such as *gg=G* as it breaks all code indentation.

Use K&R alternative style for the braces.

### Function naming

Functions' names must have at least one verb and one noun, furthermore they must be camel case. Example:

    formatChosenDevice(){
      # foo_bar
    }

### Sub Function naming

Sub functions must be lower case in order to avoid getting more attention than the parent function.

    sub_function(){
        # foo_bar
    }

### Variables naming

Variables' name must be UPPERCASE and separated by underline in case of multiple words.

    VARIABLE="value"
    VARIABLE_WITH_ANOTHER_VALUE="another value"

When referencing a variable you must to use quotes like this:

    mount "$ISO_FILE" "$ISO_MOUNTPOINT"
    rmdir "$TARGET_DIRECTORY"

It also applies to sub-function calls:
    
    MODULES="$(find_specific_modules)"

Feel free to define constants and strings inside your functions, but please make sure these names are available and not being used by another function.

### Reading order

Always put your functions close to each other to avoid unnecessary scroll on the source code. The top of the source code must have the functions declarations and the bottom must have the function calls. Example:

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

This way the user can see what the program does rather than how it does
### Comments

Please do not write comments inside the code, nor comment out pieces of code. Your functions' name must be enough to express your feelings and if you can't do that then you shouldn't be here.

Commented-out codes are the worst thing ever, we don't know if we can remove them or if they will be used later. Please don't write Fix-mes or To-dos in the source code, instead, open an issue on GitHub or fork it.

### Verbosity

Since our project follows the Unix philosophy it tries not to print anything in the standard output, thus, it passes a **--quiet** parameter to every program it uses to make it less wordy.
All possible errors must be handled before the beggining of the process and the programms' behavior must be predictable, that's one of the reasons why we make it silent.

If you need to print anything in the standard output please use the **printOut** function, it will direct the message to the right place depending on whether verbose flag is set or not. This function does not break lines, you have to tell it explicitly to do so.

    printOut "I am a custom message\n"

For printing error messages or warnings you can use the **printErr** function.

    printErr "I am a warning message\n"

This function does not obey the verbose flag.
