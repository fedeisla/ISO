#!/bin/bash
# parametros $1 es la ruta del directorio
# $2 -a -> renombra al final del arch
# $2 -b -> renombra al principio del arch
# $3 lo que se quiere cambiar
recorrerDirectorio()
{
	for i in $(ls);
	do
		if [ ! -f "$i" ]; then
	 	     continue
 		fi

		if [ "$2" = "-a" ]; then
		    mv "$i" "$i$3"
		else
		    mv "$i" "$3$i"
		fi
	done
}


if [ ! -d "$1" ]; then
	echo "no es un directorio"
	exit 1
fi
cd "$1"
case "$2" in
"-a"|"-b")
	recorrerDirectorio "$1" "$2" "$3"
	;;
*)
	echo "no se ingreso opcion"
;;
esac

