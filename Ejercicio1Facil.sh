#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Se requiere al menos tres parametros"
    exit 1
fi

param1="$1"
param2="$2"
param3="$3"

if [ "$param1" == "$param2" ] && [ "$param2" == "$param3" ]; then
    echo "las tres son iguales"
fi

if [ "$param1" == "$param3" ] && [ "$param1" != "$param2" ]; then
    echo "son iguales primera y tercera"
fi

if [ "$param2" == "$param3" ] && [ "$param2" != "$param1" ]; then
    echo "son iguales segunda y tercera"
fi

if [ "$param1" == "$param2" ] && [ "$param1" != "$param3" ]; then
    echo "son iguales primera y segunda"
fi

if [ "$param1" != "$param2" ] && [ "$param1" != "$param3" ] && [ "$param2" != "$param3" ]; then
    echo "las tres son distintas"
fi

