#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "the number of input must be 2"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
	echo "filesdir is not a directory"
	exit 1
fi

numfiles=0
numstr=0

for file in $(find "$filesdir" -type f); do
	numfiles=$((numfiles+1))
	count=$(grep -c "$searchstr" "$file")
	numstr=$((numstr+count))
done

echo "The number of files are $numfiles and the number of matching lines are $numstr"
