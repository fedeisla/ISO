#!/bin/bash
echo "introduzca su nombre y apellido"
read nombre apellido
echo "Fecha y hora actual: "
date
echo "Su apellido y nombre es: "
echo "$nombre $apellido"
echo "Su usuario es: `whoami` "
echo "Su directorio actual es: "
echo "`pwd` "
echo "Contenido del directorio: `ls`"
echo "Espacio libre: `df -h`"
echo "ingrese la edad: "
read edad
echo "Edad: $edad"
