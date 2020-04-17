# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for 
# Autor:https://github.com/alberthor47

arregloNumeros=({1..6})

echo "Iterar en la lista de numeros"

for num in ${arregloNumeros[*]}
do
  echo "numero: $num"
done

echo -e "\nIterar en una lista de cadenas"

for nom in "Manuel" "Pedro" "Luis" "Carlos"
do
  echo "nombre: $nom"
done

echo -e "\nIterar en una lista de archivos"

for file in *
do
  echo "archivo: $file"
done

echo -e "\nIterar utilizando un comando"

for fil in $(ls) 
do
  echo "archivo: $fil"
done

echo -e "\nIterar utilizando el formato tradicional"

for((i=1; i<=10; i++))
do
  echo "Numero: $i"
done

# For anidados

for fil in $(ls) 
do
  for nombre in {1..4}
  do
    echo "nombre del archivo: $fil _ $nombre"
  done
done

