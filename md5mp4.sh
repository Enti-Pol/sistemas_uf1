#!/bin/bash

echo "Ejercicio Bucles y MD5"

for var in `ls *.mp4`; do
	md5sum $var | cut -d " " -f 1
done
