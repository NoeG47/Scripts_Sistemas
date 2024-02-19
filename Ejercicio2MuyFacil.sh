#!/bin/bash
if [ $# -lt 1 ]; then
    echo "se necesita 1 fichero"
    exit 1
fi

fichero25="fichero25"
fichero29="fichero29"
if [ $1 == fichero25 ]; then
    gzip -9 $1
elif [ $1 == fichero29 ]; then
    gzip -9 $1
else
    echo "no se ha realizado nada, no son los ficheros25 o fichero29"
fi
