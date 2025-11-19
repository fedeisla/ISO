#!/bin/bash
# Primer parámetro: nombre del archivo a crear
# Segundo parámetro: 1 si querés abrirlo con nano

touch "$1"
chmod +x "$1"

if [ "$2" -eq 1 ]; then
    nano "$1"
fi
