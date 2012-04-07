#!/bin/sh
CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/config"

# Synlink in every file/directory in the config dir
for SRC_FILE in $( find $CONFIG_DIR -maxdepth 1 -and \( -type f -or -type d \) )
do
  DEST_FILE=~/$( basename $SRC_FILE)
  # Careful not to overwrite anything that already exists
  if [ ! -e $DEST_FILE ]
  then
	  ln -s $SRC_FILE $DEST_FILE
  fi
  if [ ! -h $DEST_FILE ]
  then
    echo "Error: $DEST_FILE is not a symbolic link"
  fi
done

# Install vundle
if [ ! -e ~/.vundle/vundle ]
then
  git clone https://github.com/gmarik/vundle.git ~/.vundle/vundle
fi
