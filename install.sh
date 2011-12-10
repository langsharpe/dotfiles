#!/bin/sh
CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/config"
echo $CONFIG_DIR

for file in ".vimrc" ".zshrc"
do
	ln -s $CONFIG_DIR/$file ~/
done
