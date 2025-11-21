#!/bin/bash

if [ $# -eq 0 ]; then
	echo "No hay argumentos"
	exit 1
fi

var=$(who | cut -d" " -f1 | grep "$1" | wc -w)
while [ true ]; do
	if [ $var -gt 0 ]; then
		echo "el usuario $1 en el sistema"
		exit 0
	fi
	sleep 10
done


