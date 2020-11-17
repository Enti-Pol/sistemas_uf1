#!/bin/bash

echo "Ejercicio de bucles"

for variable in archivo_vacio patatafrita README.md bucles.sh condiciones.sh ejemplo.sh mesa columna; do
	if [ -e $variable ]; then
		echo -e "\e[0;32mEl archivo $variable existe"
	else
		echo -e "\e[1;31mEl archivo $variable no existe"
	fi
done
