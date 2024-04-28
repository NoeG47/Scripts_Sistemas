# Genera un número aleatorio entre 0 y 9
$numero = Get-Random -Minimum 0 -Maximum 10

Write-Host "Numero aleatorio generado: $numero"

#usamos un bucle for del 1 al 10
Write-Host "Tabla de multiplicar del" $numero ":"
for ($i = 1; $i -le 10; $i++) {
    $resultado = $numero * $i
    Write-Host "$numero x $i = $resultado"
}
