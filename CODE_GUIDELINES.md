# Code guidelines for Molotov project

The script tries to be POSIX-compliant and it depends only on project dependencies.

It is programmed in the functional paradigm, in other words, everyhing is a function, printing messages, arguments' handlers and even your mother is a function! Remember that when contributing with code, everything MUST be a function.

Each function must have one job and do it well, all functions must not have more than one argument or parameter, we shall avoid dyadic functions as much as we can.

The author's preferred editor is VIM, the reason is because VIM warns about the syntax errors better than any other code editor. In the end of this document you can find configuration parameters for VIM.

## Function naming

If you are not sure how to name your functions just ask yourself:

> What is my function going to do?

Then you say:

> My function will *handle arguments*.

*handleArguments()* is the perfect name! Remember, all functions' name must be *camelCase*.

## Sub Functions naming

Main functions are allowed to have subfunctions, it is even encouraged. However the function’s name must use the following pattern to avoid getting more attention than the parent function.

    sub_function(){
        do_your_stuff_here
    }

The local variables still need to follow the same pattern from the global variables.

## Variables naming

When a string is used more than four times, or used in more than one function, it is reasonable to turn it into a variable. It's not mandatory though. However, global variables and constants are defined in the main function:

    setupConstants

Variables' name must be UPPERCASE and separated by underline in case of multiple names. Example:

    VARIABLE="value"
    VARIABLE_WITH_ANOTHER_VALUE="another value"

When referencing a variable you must to use quotes like this:

    cp "$LIST_OF_FILES" "$TARGET_DIRECTORY"

This also applies to subfunction calls:
    
    cp "$(find_specific_libs)" "$TARGET_DIRECTORY"

Feel free to define constants and strings inside your own functions, but please make sure these names are available and not being used by another function.

## Braces positioning

All functions' braces must be opened this way:

    function foo(){
        bar
    }

Period.
That's that.
End of story.

## Reading order

The code is read from top to bottom, that is why we must to sort our functions this way, our project tells a story and it must be read in the right direction. Always put your functions close to each other to avoid unnecessary scroll on the source code.

## Comments

Please do not write comments inside the code, nor comment out pieces of code. Your functions' name must be enough to express your feelings and if you can't do that then you shouldn't be here.

Commented-out codes are the worst thing ever, we don't know if we can remove them or if they will be used later and please don't write FIXMEs or TODOs, instead, open an issue on Github or fork it.

## Verboseness

Our script follows the Unix philosophy: *Do one thing and do it well*. That is one of the main reasons why the project is not bloated with many features, the script is also quiet by default in order to sympathize with the Unix philosophy.

When writing code for our project remember to make all programms work quietly, except when the *--verbose* flag is set. We will define later a clean way to print messages in our programm.

## Tabs, indentation and functions size

Our tabs contains 4 spaces to prevent shell misinterpretation.

The functions' size should not be greater than 30 lines.

Do not use VIM automatic indentation (gg=G).

## Vim parameters

Sooner or later I'll post it.
