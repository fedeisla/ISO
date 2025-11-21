#!/bin/bash
select opcion in $(ls | grep ".sh") Salir
do
	case $opcion in 
	"Salir")
		echo "chau"
		exit 0;;
	*) bash $opcion;;
	esac
done

