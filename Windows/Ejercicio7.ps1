# Invertir la cadena original
$palabra = Read-Host "Ingrese una palabra"
$palabraInvertida = ""
for ($i = $palabra.Length - 1; $i -ge 0; $i--) {
    $palabraInvertida += $palabra[$i]
}

# caso si nos piden invertir la cadena invertida 
#para dejarla como antes en otra variable
$palabraInvertidaInvertida = ""
for ($i = $palabraInvertida.Length - 1; $i -ge 0; $i--) {
    $palabraInvertidaInvertida += $palabraInvertida[$i]
}

Write-Host "Palabra original: $palabra"
Write-Host "Palabra invertida: $palabraInvertida"
Write-Host "Palabra invertida de nuevo: $palabraInvertidaInvertida"
