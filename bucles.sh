#!/bin/bash

echo "Ejercicio de bucles"

for variable in *; do
	if [ -e $variable ]; then
		echo -e "\e[0;32mEl archivo $variable existe\e[0m"
	else
		echo -e "\e[1;31mEl archivo $variable no existe\e[0m"
	fi
done
