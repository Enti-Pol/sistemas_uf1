#!/bin/bash

echo "Ejercicio Bucles y MD5"

for ARCHIVO in `ls *.mp4`; do
	echo "-----------------------"
	VIDEO=`file $ARCHIVO | grep Media`
	if [ "$VIDEO" != "" ];then
		#md5sum $ARCHIVO | cut -d " " -f 1
		NOMBRE=`echo $ARCHIVO | cut -d "." -f 1`
		ffmpeg -i $ARCHIVO $NOMBRE.mkv
	fi
done
