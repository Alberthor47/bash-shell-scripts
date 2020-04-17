# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case 
# Autor:https://github.com/alberthor47

opcion=""

echo "Ejemplo sentencia case"
read -n1 -p "Ingrese una opcion de la A - C: " opcion
echo -e "\n"

case $opcion in
  "A") echo -e "\nse eligio la A";;
  "B") echo -e "\nse eligio la B";;
  "C") echo -e "\nse eligio la C";;
  [D-Z]) echo "Opcion no valida";;
  "*") echo "una letra por favor";;
esac
