# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while 
# Autor:https://github.com/alberthor47

numero=1

echo "Ejemplo de utilizacion de while"

while [ $numero -ne 10 ]
do
  echo "Imprimiendo $numero veces"
  numero=$((numero + 1))
done

