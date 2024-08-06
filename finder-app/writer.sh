#!/bin/sh


if [ "$#" -ne 2 ]; then
	echo "the input must be 2"
	exit 1
fi

writefile="$1"
writestr="$2"

dir=$(dirname "$writefile")

if [ ! -d "$dir" ];then 
	mkdir -p "$dir"
	if [ "$?" -ne 0 ]; then
		echo "cannot create directory"
		exit 1
	fi
fi

echo "$writestr" > "$writefile"

if [ "$?" -ne 0 ]; then
	echo "file cannot be created"
	exit 1
fi

echo "the file has been succesfully created"

exit 0
