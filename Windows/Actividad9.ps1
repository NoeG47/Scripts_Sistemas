
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
    write-host "1. Sumar"
    write-host "2. Restar"
    write-host "3. Multiplicar"
    write-host "4. Dividir"
    write-host "5. Salir"

    $operacion = Read-Host "Introduce la opcion (1-5) "

    switch ($operacion) {
        1 { $resultado = $numero1 + $numero2 }
        2 { $resultado = $numero1 - $numero2 }
        3 { $resultado = $numero1 * $numero2 }
        4 {
            if ($numero2 -eq 0) {
                Write-Host "No se puede dividir por cero"
                exit
            } else {
                $resultado = $numero1 / $numero2
            }
        }
        5 {
            Write-Host "Saliendo"
            exit
        }
       default { "opcion no válida"
       $resultado = " "}
    }
    
    if ($resultado -ne " "){
        Write-Host "El resultado es: $resultado"
    }
}
#llamar a la funcion
calculadora -numero1 $args[0] -numero2 $args[1]
