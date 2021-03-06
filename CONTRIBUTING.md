## Bugs reporting

Bugs are not only problems or the library crashes, but also typos. If you
find any bug in the library, please report it at
<https://github.com/thindil/tashy/issues> or if you prefer, on mail
<thindil@laeran.pl>

### Some general hints about reporting bugs

- In "Title" field try write short but not too general description of
  problem. Good example: "The library crash when opening directory". Bad
  example: "The library crashes often."
- In body/comment field try write that much informations about problem as
  possible. In most cases more informations is better than less. General rule
  of good problem report is give enough informations which allow to reproduce
  problem by other people. It may be in form of steps which are needed for
  cause problem.

### Example of bug report:

Title: "The library crashed when trying to run Tcl script"

Body:

1. [Example of code which cause the problem]
2. [Backtrace which was generated on crash]

## Features propositions

If you want to talk/propose changes in any existing the library feature, feel
free to contact me via issues tracker or mail (addresses of both you can find
at top of this file). General rule about propositions is same as for bugs
reports - please, try write that much informations as possible. This help us
all better understand purpose of your changes.

## Code propositions

### General informations

If you want to start help in the library development, please consider starts
from something easy like fixing bugs. Before you been want to add new feature
to the library, please contact with me by issues tracker or mail, addresses
of both are at top of this file. Same as with features proposition - your code
may "collide" with my work and it this moment you may just lost time by
working on it. So it is better that we first discuss your proposition. In any
other case, fell free to fix my code.

### Coding standard

When you write your own code, feel free to use any coding standard you want.
But before you send your changes to the project, please use command `gnatpp`
which automatically format source code to project coding standard. Proper
`gnatpp` command usage (in main project directory, where *tashy.gpr* file is):

`gnatpp -P tashy.gpr`

#### Code comments formatting

The program uses [ROBODoc](https://rfsber.home.xs4all.nl/Robo/) for generating
code documentation. When you write your own code, please add proper header
documentation to it. If you use Vim/NeoVim, easiest way is to use plugin
[RoboVim](https://github.com/thindil/robovim). Example of documentation
header:

    1 -- ****f* Utils/GetRandom
    2 -- FUNCTION
    3 -- Return random number from Min to Max range
    4 -- PARAMETERS
    5 -- Min - Starting value from which generate random number
    6 -- Max - End value from which generate random number
    7 -- RESULT
    8 -- Random number between Min and Max
    9 -- SOURCE
    10 function GetRandom(Min, Max: Integer) return Integer;
    11 -- ****

1 - Documentation header. TASHY uses `-- ****[letter]* [package]/[itemname]`
format for documentation headers.

2-9 - Documentation. For all available options, please refer to ROBODoc
documentation. TASHY uses `-- ` for start all documentation lines.

10 - Source code of item.

11 - Documentation footer. TASHY uses `-- ****` for closing documentation.

How to generate the code documentation is described in main *README.md* file.

### Code submission

Preferred way to submit your code is clone repository and then open new pull
proposal at <https://github.com/thindil/tashy/compare>. But if you prefer,
you can send your code by mail too (email address is at top of this file). In
that situation, please append to your mail patch file with changes.
