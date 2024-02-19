#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Indica en qué directorio quieres buscar los archivos"
    exit 1
fi
nombre="$1"
find "$nombre"
