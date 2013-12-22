#!/bin/bash

echo "Installing bemug's .vimrc.."

#Symlink
if [ -L ~/.vimrc ]
then
	echo "Removing old symbolic link"
	rm -f ~/.vimrc
#File
elif [ -f ~/.vimrc ]
then
	echo ".vimrc already exists, backuping in .vimrc.bak"
	mv ~/.vimrc ~/.vimrc.bak
fi

ln -s $(pwd)/.vimrc ~/.vimrc
cp -r .vim ~/.vim
echo "Done!"
