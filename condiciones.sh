#!/bin/bash

echo "COMPROBADOR DE EXISTENCIA DE ARCHIVOS v1.0"
echo "------------------------------------------"
echo ""
echo -n "Indica el nombre de archivo a comprobar: "

read ARCHIVO

if [ -d $ARCHIVO ]; then
	cowsay "ola k ase"
else
	echo "El archivo no existe"
fi
