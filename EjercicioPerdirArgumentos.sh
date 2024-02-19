#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Se requiere al menos dos parametros"
    exit 1
fi

while [ $# -gt 0 ]; do
    for i in "$@"; do
        param="$1"
        shift
        echo "$param"
    done
done
