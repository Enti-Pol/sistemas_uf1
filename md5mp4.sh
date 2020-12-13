#!/bin/bash

echo "Ejercicio Bucles y MD5"

EXTENSION="mp3"

for ARCHIVO in `ls *.mp4`; do
	echo "-----------------------"
	VIDEO=`file $ARCHIVO | grep Media`
	echo $VIDEO
	if [ "$VIDEO" != "" ];then
		#md5sum $ARCHIVO | cut -d " " -f 1
		echo "Convirtiendo $ARCHIVO a $EXTENSION"
		sleep 4
		NOMBRE=`echo $ARCHIVO | cut -d "." -f 1`
		ffmpeg -i $ARCHIVO $NOMBRE.$EXTENSION
	fi
done
