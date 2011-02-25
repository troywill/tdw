#!/bin/bash
setterm ulcolor red
setterm -foreground red
# Puts the monitor into VESA powerdown mode.
setterm -powersave on
setterm -powersave powerdown

exit;
DESCRIPTION
       setterm writes to standard output a character string that will invoke the specified termi‐
       nal capabilities.  Where possible terminfo is consulted to find the string to  use.   Some
       options  however (marked "virtual consoles only" below) do not correspond to a terminfo(5)
       capability.  In this case, if the terminal type  is  "con"  or  "linux"  the  string  that
       invokes  the  specified  capabilities  on  the  PC Minix virtual console driver is output.
       Options that are not implemented by the terminal are ignored.

OPTIONS
       For boolean options (on or off), the default is on.

       For conciseness, an 8-color below is black, red, green, yellow, blue,  magenta,  cyan,  or
       white.

       A  16-color  is an 8-color, grey, or bright followed by red, green, yellow, blue, magenta,
       cyan, or white.

       The various color options may be set independently, at least at virtual  consoles,  though
       the results of setting multiple modes (for example, -underline and -half-bright) are hard‐
       ware-dependent.

       -term terminal_name
              Overrides the TERM environment variable.

       -reset Displays the terminal reset string, which typically  resets  the  terminal  to  its
              power on state.

       -initialize
              Displays  the  terminal  initialization string, which typically sets the terminal's
              rendering options, and other attributes to the default values.

       -cursor [on|off]
              Turns the terminal's cursor on or off.

       -repeat [on|off] (virtual consoles only)
              Turns keyboard repeat on or off.

       -appcursorkeys [on|off] (virtual consoles only)
              Sets Cursor Key Application Mode on or off. When on, ESC O A, ESC O B,  etc.   will
              be sent for the cursor keys instead of ESC [ A, ESC [ B, etc.  See the "vi and Cur‐
              sor-Keys" section of the Text-Terminal-HOWTO for how this can cause problems for vi
              users.

       -linewrap [on|off] (virtual consoles only)
              Turns automatic line-wrapping on or off.

       -default
              Sets the terminal's rendering options to the default values.

       -background 8-color|default (virtual consoles only)
              Sets the background text color.

       -ulcolor 16-color (virtual consoles only)
              Sets the color for underlined characters.

       -hbcolor 16-color (virtual consoles only)
              Sets the color for half-bright characters.

       -inversescreen [on|off] (virtual consoles only)
              Inverts the screen colors.  Foreground and background are swapped, as are underline
              and half-brightness.

       -bold [on|off]
              Turns bold (extra bright) mode on or off.  Except at a virtual console,  -bold  off
              turns off all attributes (bold, half-brightness, blink, reverse).

       -half-bright [on|off]
              Turns dim (half-brightness) mode on or off (see -hbcolor). Except at a virtual con‐
              sole, -half-bright off turns off  all  attributes  (bold,  half-brightness,  blink,
              reverse).

       -blink [on|off]
              Turns  blink mode on or off.  Except at a virtual console, -blink off turns off all
              attributes (bold, half-brightness, blink, reverse).

       -reverse [on|off]
              Turns reverse video mode on or off.  Except at  a  virtual  console,  -reverse  off
              turns off all attributes (bold, half-brightness, blink, reverse).

       -underline [on|off]
              Turns underline mode on or off (see -ulcolor).

       -store (virtual consoles only)
              Stores  the terminal's current rendering options (foreground and background colors)
              as the values to be used at reset-to-default.

       -clear [all]
              Clears the screen and "homes" the cursor, as clear(1).

       -clear rest
              Clears from the current cursor position to the end of the screen.

       -tabs [tab1 tab2 tab3 ...] (virtual consoles only)
              Sets tab stops at the given horizontal cursor positions, in the range 1-160.  With‐
              out arguments, shows the current tab stop settings.

       -clrtabs [tab1 tab2 tab3 ...] (virtual consoles only)
              Clears  tab  stops  from the given horizontal cursor positions, in the range 1-160.
              Without arguments, clears all tab stops.

       -regtabs [1-160] (virtual consoles only)
              Clears all tab stops, then sets a regular tab stop  pattern,  with  one  tab  every
              specified number of positions.  Without an argument, defaults to 8.

       -blank [0-60|force|poke] (virtual consoles only)
              Sets  the  interval of inactivity, in minutes, after which the screen will be auto‐
              matically blanked (using APM if available).  Without an argument,  gets  the  blank
              status (returns which vt was blanked or zero for unblanked vt).

              The force option keeps screen blank even if a key is pressed.

              The poke option unblank the screen.

       -dump [1-NR_CONS]
              Writes a snapshot of the given virtual console (with attributes) to the file speci‐
              fied in the -file option, overwriting its contents;  the  default  is  screen.dump.
              Without an argument, dumps the current virtual console.  Overrides -append.

       -append [1-NR_CONS]
              Like -dump, but appends to the snapshot file instead of overwriting it.  Only works
              if no -dump options are given.

       -file dumpfilename
              Sets the snapshot file name for any -dump or -append options on  the  same  command
              line.   If  this  option  is not present, the default is screen.dump in the current
              directory.

       -msg [on|off] (virtual consoles only)
              Enables or disables the sending of kernel printk() messages to the console.

       -msglevel 1-8 (virtual consoles only)
              Sets the console logging level for kernel printk() messages.  All messages strictly
              more  important  than  this  will  be printed, so a logging level of 0 has the same
              effect as -msg on and a  logging  level  of  8  will  print  all  kernel  messages.
              klogd(8) may be a more convenient interface to the logging of kernel messages.

       -powersave on|vsync
              Puts the monitor into VESA vsync suspend mode.

       -powersave hsync
              Puts the monitor into VESA hsync suspend mode.

       -powersave [off]
              Turns off monitor VESA powersaving features.

       -powerdown [0-60]
              Sets  the  VESA  powerdown interval in minutes.  Without an argument, defaults to 0
              (disable powerdown).  If the console is blanked or the monitor is in suspend  mode,
              then  the  monitor  will  go into vsync suspend mode or powerdown mode respectively
              after this period of time has elapsed.

       -blength [0-2000]
              Sets the bell duration in milliseconds.  Without an argument, defaults to 0.

       -bfreq [freqnumber]
              Sets the bell frequency in Hz.  Without an argument, defaults to 0.

SEE ALSO
       tput(1), stty(1), terminfo(5), tty(4)

BUGS
       Differences between the Minix and Linux versions are not documented.

AVAILABILITY
       The  setterm  command  is  part  of  the  util-linux-ng  package  and  is  available  from
       ftp://ftp.kernel.org/pub/linux/utils/util-linux-ng/.

Util-Linux 2.10                           7 January 2000                               SETTERM(1)
