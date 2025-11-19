#!/bin/bash
suma=`expr $1 + $2`
multi=`expr $1 \* $2`
if [ $1 -gt $2 ]; then
resta=`expr $1 - $2`
echo "numero1 es mayor: $1"
else
resta=`expr $2 - $1`
echo "numero2 es mayor: $2"
fi  
echo " resta: $resta suma: $suma multiplicacion: $multi"

