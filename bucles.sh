#!/bin/bash

echo "Ejercicio de bucles"

for variable in `ls`; do
	if [ -e $variable ]; then
		echo "El archivo $variable existe"
	else
		echo "El archivo $variable no existe"
	fi
done
