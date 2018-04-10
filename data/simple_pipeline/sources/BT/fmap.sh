#!/bin/bash

# create or clear content of old file mapping
> FileMapping.txt

# source directory
DIR=$(pwd)

# list of all source files 
SRC=$(find $DIR -type f -regextype posix-extended -regex ".*/[^.][^/]+\.(c|cc|cpp|h|hpp)" | sort)

# index variable for source files
declare -i index=1

for f in $SRC
do
	echo "$index	$f" >> FileMapping.txt
	index+=1
done
