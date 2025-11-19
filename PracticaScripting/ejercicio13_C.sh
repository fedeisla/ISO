#!/bin/bash
# parametro 1 nombre del archivo
if [ -f "$1"  ]; 
then
	echo "$1 es un archivo"
elif [ -d "$1" ];
then
	echo "$1 es un directorio"
else
	echo "$1 no existe"
	mkdir "$1"	
fi
