#!/bin/bash
# $1 -> extension
echo "Usuario - CantArchivos" > "reporte.txt"
for usuario in $(cut -d: -f1 /etc/passwd); do
	cantidad=$(find /home -type f -user "$usuario" -name "*.$1" 2>/dev/null | wc -l)
	if [ "$cantidad" -gt 0 ]; then
		echo "$usuario   $cantidad" >> "reporte.txt"
	fi
done




