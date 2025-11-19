#!/bin/bash
# formato de parametros para el ejercicio n1,n1, operador
case $3 in
"+")
echo "suma: $(expr $1 + $2)"
;;
"x")
echo "multi: $(expr $1 \* $2)"
;;
"%")
echo "division: $(expr $1 / $2)"
;;
"-")
echo "resta: $(expr $1 - $2)"
;;
*)
echo "operador invalido"
;;
esac
