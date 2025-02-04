#!/bin/bash

FILESDIR=$1
SEARCHSTR=$2

echo "$FILESDIR"
echo "$SEARCHSTR"

if [ $# -ne 2 ];
then
	echo "arguements incomplete"
	exit 1
fi

if [ ! -d $FILESDIR ];
then
	echo "invalid directory"
	exit 1
fi

X=$(find $FILESDIR -type f|wc -l)
Y=$(grep -r $SEARCHSTR $FILESDIR|wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
