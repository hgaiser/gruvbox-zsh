#!/bin/zsh

# Inspired by https://github.com/m-ou-se/config/blob/master/shellrc.

# Set a color in the terminal palette.
# \param 1 The index in the pallete.
# \param 2 is a hexadecimal RGB color code.
function set_color {
	if [ "$TERM" = "linux" ]; then
		[ $1 -lt 16 ] && printf $'\e]P%X%s' "$1" "$2"
	else
		printf $'\e]4;%s;#%s\e\\' "$1" "$2"
	fi
}

# Set terminal colors.
set_color  0 1d2021 # black
set_color  1 cc241d # red
set_color  2 98971a # green
set_color  3 d79921 # yellow
set_color  4 458588 # blue
set_color  5 b16286 # magenta
set_color  6 689d6a # cyan
set_color  7 928374 # light grey
set_color  8 282828 # dark grey
set_color  9 fb4934 # bright red
set_color 10 b8bb26 # bright green
set_color 11 fabd2f # bright yellow
set_color 12 83a598 # bright blue
set_color 13 d3869b # bright magenta
set_color 14 8ec07c # bright cyan
set_color 15 f9f5d7 # white
# Set colors for 256
set_color 17 076678 # dark blue
set_color 22 79740e # dark green
set_color 52 9d0006 # dark red
set_color 53 8f3f71 # dark magenta
