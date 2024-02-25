#!/bin/bash

# Función para contar vocales en una cadena
contar_vocales() {
    cadena="$1"
    # Contar el número de ocurrencias de cada vocal
    a=$(echo "$cadena" | grep -o 'a' | wc -l)
    e=$(echo "$cadena" | grep -o 'e' | wc -l)
    i=$(echo "$cadena" | grep -o 'i' | wc -l)
    o=$(echo "$cadena" | grep -o 'o' | wc -l)
    u=$(echo "$cadena" | grep -o 'u' | wc -l)
    total=$((a + e + i + o + u))
    echo "$total"
}

# Inicializar la variable para contar el total de vocales
total_vocales=0

# Iterar sobre todos los argumentos proporcionados
for arg in "$@"; do
    # Contar las vocales en el argumento actual
    num_vocales=$(contar_vocales "$arg")
    echo "El argumento \"$arg\" tiene $num_vocales vocales."
    total_vocales=$((total_vocales + num_vocales))
done

# Mostrar el total de vocales en todos los argumentos
echo "El total de vocales en todos los argumentos es: $total_vocales"
