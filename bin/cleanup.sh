#!/bin/bash

rm ~/.nanorc #Removes .nanorc file in the home directory
sed -i 's|source ~/.dotfiles/etc/bashrc_custom||g' ~/.bashrc #Removes the line in the .bashrc file
rm -rf ~/.TRASH #Removes the .TRASH directory from the home directory
