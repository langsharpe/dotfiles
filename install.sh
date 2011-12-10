#!/bin/sh
CONFIG_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/config"

for SRC_FILE in $( find $CONFIG_DIR -type f -depth 1 )
do
  echo $SRC_FILE
  DEST_FILE=~/$( basename $SRC_FILE)
  if [ ! -e $DEST_FILE ]
  then
	  ln -s $SRC_FILE $DEST_FILE
  fi
  if [ ! -h $DEST_FILE ]
  then
    echo "Error: $DEST_FILE is not a symbolic link"
  fi
done
