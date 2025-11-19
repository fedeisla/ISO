#!/bin/bash
for ((i=1; i<= 100; i++))
do
	echo "$i su cuadrado: $(expr $i \* $i) "
done
