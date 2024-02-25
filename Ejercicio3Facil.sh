#!/bin/bash

while [ "$#" -lt 1 ]; do
    echo "Se necesita al menos un parámetro"
    read -p "Introduzca al menos un parámetro: " -r input
    set -- "$input"
done

cont=$#
while [ $# -gt 0 ]; do
    if [ -d "$1" ]; then
        echo "$1 es un directorio"
    elif [ -f "$1" ]; then
        echo "$1 es un archivo"
    else
        echo "$1 no es ni archivo ni directorio"
    fi
    shift
done

echo "Se han pasado $cont argumentos"
