#!/bin/bash

# Solicitar al usuario el número del cual calcular el factorial
read -p "Introduce un número para calcular su factorial: " num

# Inicializar el factorial como 1
factorial=1

# Calcular el factorial utilizando un bucle for
for ((i = 1; i <= num; i++)); do
    factorial=$((factorial * i))
done

# Mostrar el resultado
echo "El factorial de $num es: $factorial"
