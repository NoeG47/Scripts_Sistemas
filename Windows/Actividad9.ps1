
if ($args.Count -ne 2) {
    Write-Host "Error: Se requieren exactamente dos parámetros (numero1 y numero2)"
    exit
}
function calculadora {
    param (
        [double]$numero1,
        [double]$numero2
    )

    Write-Output "La suma es: " ($numero1 + $numero2)
    Write-Output "La resta es: " ($numero1 - $numero2)
    Write-Output "La multiplicacion es: " ($numero1 * $numero2)
    if ($numero2 -eq 0){
        Write-Output "No se puede dividir por 0"
    }
    else {
        Write-Output "La division es: " ($numero1 / $numero2)
    }

}
#llamar a la funcion
calculadora -numero1 $args[0] -numero2 $args[1]
