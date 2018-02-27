# FUNCIONES
#!/bin/bash
# Existen dos tipos, con function o sin él

function suma(){
c=$(expr $1 + $2)
return $c
}

function function suma(){
c=$(expr $1 + $2)
return $c
}

# De llamado

funcion() { 
    comandos 
}

funcion p1 p2 p3

#Referencias indirectas

#Permiten definir variables cuyo contenido es el nombre de otra variable:

a=letra 
letra=z 
# Referencia directa 
echo "a = $a"    # a = letra 
# Referencia indirecta 
eval a=\$$a 
echo "Ahora a = $a"    # Ahora a = z

#Paso de parámetros

$ cat funcion1.sh 
#!/bin/bash 
funcion1() 
{ 
    echo "Parámetros pasados a la función: $*" 
    echo "Parámetro 1: $1" 
    echo "Parámetro 2: $2" 
} 
# Programa principal 
funcion1 "hola" "que tal estás" adios 
$ 
$ bash funcion1.sh 
#Parámetros pasados a la función: hola que tal estás adios 
#Parámetro 1: hola 
#Parámetro 2: que tal estás

return
