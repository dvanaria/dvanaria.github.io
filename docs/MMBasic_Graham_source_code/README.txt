This is the source to MMBasic.

It is split into a number of directories:
   MMBasic is the core of the interpreter.
   Maximite is the hardware aspects of MMBasic running on the Maximite family (Maximite/UBW32/DuinoMite) hardware.
   DOS contains the version of MMBasic running on Windows XP or later (including Windows 7)
   PIC32-Generic contains a minimal version of MMBasic intended to be the base for porting the language to a new platform
   In the future other directories will hold the code for other hardware platforms (ARM, etc).

If you want to compile for the Maximite family you should install MPLAB and the C32 compiler then change directories
to Maximite\MPLAB and double click on the project file (.mcp) that suits the exact flavour of the Maximite that you 
want to build for.

For other platforms change into the appropriate directory and read the README file there.



Go to http://mmbasic.com for updates and licensing

Copyright 2011-2013 Geoff Graham - http://mmbasic.com
This file and modified versions of this file are supplied to specific individuals under the following provisions:

- It may be used for personal use only and may not be distributed or copied without written permission.

- Object files (.o and .hex files) generated using this file (modified or not) are for personal use only and may not be 
  distributed without written permission.

- This file is provided in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
