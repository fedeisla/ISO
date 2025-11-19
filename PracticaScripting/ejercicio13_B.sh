#!/bin/bash
echo "Seleccione una opcion"
select variable in "Listar" "DondeEstoy" "QuienEsta" "Salir"
do 
	case $variable in
	"Listar")
		echo "`ls`"
	;;
	"DondeEstoy")
		echo "`pwd`" 
	;;
	"QuienEsta")
		echo "`who`"
	;;
	"Salir")
		echo "Saliendo del menu"
		break
	;;
	*)
		echo "opcion incorrecta"
	;;
	esac
done
