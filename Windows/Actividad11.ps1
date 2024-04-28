
if ($args.Count -ne 2) {
    Write-Host "Error: Se requieren exactamente dos parámetros (numero1 y numero2)"
    exit
}
function calculadora {
    param (
        [double]$numero1,
        [double]$numero2
    )

    #menu de operaciones
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"

    $operacion = Read-Host "Introduce la opcion (1-5) "

    $resultado = $null
    switch ($operacion) {
        1 { $resultado = sumar $numero1 $numero2 }
        2 { $resultado = restar $numero1 $numero2 }
        3 { $resultado = multiplicar $numero1 $numero2 }
        4 { $resultado = dividir $numero1 $numero2 }
        5 {
            Write-Host "Saliendo"
            exit
        }
        default {
            Write-Host "opcion no válida"
        }

    }

    if ($null -ne $resultado) {
        Write-Host "El resultado es: $resultado"
    }
}
function sumar ($numero1, $numero2) {
    return $numero1 + $numero2
}

function restar ($numero1, $numero2) {
    return $numero1 - $numero2
}

function multiplicar ($numero1, $numero2) {
    return $numero1 * $numero2
}

function dividir ($numero1, $numero2) {
    if ($numero2 -eq 0) {
        Write-Host "No se puede dividir por cero"
        return $null
    }
    else {
        return $numero1 / $numero2
    }
}

# Llamar a la función
calculadora -numero1 $args[0] -numero2 $args[1]