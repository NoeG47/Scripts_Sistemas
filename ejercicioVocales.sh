#!/bin/bash

# Función para contar vocales en una cadena
contar_vocales() {
    cadena="$1"
    # Convertir la cadena a minúsculas para contar las vocales sin importar la capitalización
    cadena_lower=$(echo "$cadena" | tr '[:upper:]' '[:lower:]')
    # Contar el número de ocurrencias de cada vocal
    a=$(echo "$cadena_lower" | grep -o 'a' | wc -l)
    e=$(echo "$cadena_lower" | grep -o 'e' | wc -l)
    i=$(echo "$cadena_lower" | grep -o 'i' | wc -l)
    o=$(echo "$cadena_lower" | grep -o 'o' | wc -l)
    u=$(echo "$cadena_lower" | grep -o 'u' | wc -l)
    total=$((a + e + i + o + u))
    echo "$total"
}

# Verificar si se proporcionaron argumentos
if [ $# -eq 0 ]; then
    echo "Por favor proporciona al menos un argumento de tipo texto."
    exit 1
fi

# Inicializar la variable para contar el total de vocales
total_vocales=0

# Iterar sobre todos los argumentos proporcionados
for arg in "$@"; do
    # Verificar si el argumento es de tipo texto
    if [[ "$arg" =~ ^[a-zA-Z]+$ ]]; then
        # Contar las vocales en el argumento actual
        num_vocales=$(contar_vocales "$arg")
        echo "El argumento \"$arg\" tiene $num_vocales vocales."
        total_vocales=$((total_vocales + num_vocales))
    else
        echo "El argumento \"$arg\" no es de tipo texto."
    fi
done

# Mostrar el total de vocales en todos los argumentos
echo "El total de vocales en todos los argumentos es: $total_vocales"
