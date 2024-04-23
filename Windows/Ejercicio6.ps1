# Solicitar al usuario que introduzca una cadena
$cadena = Read-Host "Por favor, introduce algo"

# Mostrar la cadena introducida
#Write-Host "Has introducido: $entradaUsuario"

$cadena = $cadena.ToUpper();
if ($cadena -eq "HOLA MUNDO") {

    write-host "Ha dicho HOLA MUNDO"

} elseif ($cadena -eq "HOLA"){
    write-host "Ha dicho solo HOLA"
}
else
{
 write-host "NO ha dicho HOLA MUNDO"
}


$numero1 = [int](Read-Host "Introduce el primer número")
$numero2 = [int](Read-Host "Introduce el segundo número")

$operacion = Read-Host "Introduce la operación (suma, resta, multiplicación, división)"

# Realizar la operación utilizando switch
$resultado = switch ($operacion.ToLower()) {
    "suma"           { $numero1 + $numero2 }
    "resta"          { $numero1 - $numero2 }
    "multiplicación" { $numero1 * $numero2 }
    "división"       {
        if ($numero2 -eq 0) {
            "No se puede dividir por cero"
        } else {
            $numero1 / $numero2
        }
    }
    default          { "Operación no reconocida" }
}

Write-Host "El resultado es: $resultado"