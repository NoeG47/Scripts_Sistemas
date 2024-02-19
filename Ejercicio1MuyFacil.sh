#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Indica en qué directorio quieres guardar los archivos"
    exit 1
fi

nombre="$1"

# Verificar si el directorio ya existe
if [ -d "$nombre" ]; then
    echo "El directorio $nombre ya existe"
else
    echo "Creando el directorio $nombre"
    mkdir "$nombre"
fi

for ((i = 1; i <= 5; i++)); do
    archivo="$nombre/archivo$i"
    echo "Creando el archivo en $archivo"
    echo "Contenido del archivo $i" > "$archivo"
done
