#!/bin/bash
#EJERCICIO 15: pedir al usuario un directorio y una palabra.
#Si el directorio no existe mostrar un mensaje y salir.
#Si el  directorio existe, para cada archivo de dicho directorio cuyo nombre
#contenga la palabra pasada se mostrará su contenido  y se preguntará  al usuario
#si quiere borrarlo o no. Si quiere borrarlo, se borrará y
#se comprobará que dicha operación se ha realizado correctamente, emitiendo un mensaje.
if [ $# -lt 2 ]; then
    echo "se necesitan 2 argumentos"
    exit 1
fi
directorio=$1
fichero=$2

# Verificar si el directorio ya existe
if [ ! -d "$directorio" ]; then
    echo "El directorio $directorio no existe"
    exit 1
else
    # Iterar sobre los archivos en el directorio que contienen la palabra especificada
    for archivo in "$directorio"/*"$fichero"*; do
        # Mostrar el contenido del archivo
        cat "$archivo"

        # Preguntar al usuario si quiere borrar el archivo
        read -p "¿Quiere borrar el archivo '$archivo'? (s/n): " respuesta
        if [ "$respuesta" = "s" ]; then
            # Borrar el archivo
            rm "$archivo"
            # Verificar si la operación de borrado fue exitosa
            if [ $? -eq 0 ]; then
                echo "El archivo '$archivo' ha sido borrado correctamente."
            else
                echo "Error: No se pudo borrar el archivo '$archivo'."
            fi
        fi
    done
fi
