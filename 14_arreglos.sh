# !/bin/bash
# Programa para ejemplificar el uso de arreglos 
# Autor:https://github.com/alberthor47

arregloNumeros=( 1 2 3 4 5 6 )
arregloCadenas=(Alberto, Mauro, Uriel, Carlos)
arregloRangos=({A..Z}, {10..20})

# Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

# Imprimir el tamaño de los arreglos
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño arreglo de rangos: ${#arregloRangos[*]}"

# Imprimir la posicion n del arreglo

n=3
echo "Posicion $n arreglo de numeros: ${arregloNumeros[$n]}"
echo "Posicion $n arreglo de cadenas: ${arregloCadenas[$n]}"
echo "Posicion $n arreglo de rangos: ${arregloRangos[$n]}"

# Añadir y eliminar valores de un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "El arreglo quedó asi: ${arregloNumeros[*]}"
echo "Con el tamaño: ${#arregloNumeros[*]}"

