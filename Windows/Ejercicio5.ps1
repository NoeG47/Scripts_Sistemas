# Lista de números
$numeros = 1, 5, 3, 6, 8, 2, 9, 4

# Filtrar los números pares
$numerosPares = $numeros | Where-Object { $_ % 2 -eq 0 }

# Ordenar los números de forma descendente
$numerosOrdenados = $numerosPares | Sort-Object -Descending

# Seleccionar los tres primeros números
$numerosSeleccionados = $numerosOrdenados | Select-Object -First 3

# Imprimir los resultados
$numerosSeleccionados

