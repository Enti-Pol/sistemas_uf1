#!/bin/bash

echo "Ejercicio Bucles y MD5"

for var in `ls *.mp4`; do
	echo "------------------------"
	VIDEO=`file $var | grep Media`
	if [ "$VIDEO" != "" ]; then
		md5sum $var | cut -d " " -f 1
	fi
done
