#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Se requiere al menos un parámetro de entrada"
    exit 1
fi

entrada="$1"
salida="salida.txt"

touch "$salida"

grep '^[AEIOUaeiou]' $entrada > $salida
