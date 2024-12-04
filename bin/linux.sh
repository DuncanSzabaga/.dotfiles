#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "The OS is not Linux" > linuxsetup.log
	exit 1
fi #If the OS is not Linux, writes an error message to the log file

if [ ! -d ~/.TRASH ]; then
	mkdir ~/.TRASH
fi #If the .TRASH directory does not exist in the home directory, makes it

if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The current .nanorc file was changed to .bup_nanorc" >> linuxsetup.log
fi #If the file .nanorc exists in the home directory, renames it to .bup_nanorc

mv ~/.dotfiles/etc/.nanorc ~/.nanorc #Moves the new .nanorc to the home directory
echo "source ~/.dotfiles/etc/baschrc_custom" >> ~/.bashrc #Adds source information to end of the .bashrc file

