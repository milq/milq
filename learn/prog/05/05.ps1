# FUNCIONES

# requires -version 3.0

function Escribe-Verde {
	Param (
	[string]$Texto
	)
	Write-Host -Foreground Green $Texto
}
# Con parámetros de entrada
Param (
       [Parameter(Mandatory=$True)] [string] $Par1
       [string] $Par2,
       [switch] $Par3
)

Write-Output "Los parámetros de entrada han sido: `nPar1`nPar2 -> $Par2`nPar3 -> $Par3`n"

# De llamado

Function Sumar ($x, $y)
{
$sumar = $x + $y
Write-Host “La respuesta es $sumar”
}

Sumar 2 8
