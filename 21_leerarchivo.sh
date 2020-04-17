# !/bin/bash
# Programa para ejemplificar como se lee un archivo 
# Autor:https://github.com/alberthor47

echo "Leemos un archivo"

# Con cat
cat $1

# Almacenando valores en una variable
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# A travez de la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco al inicio y al final se recorten 
echo -e "\nLeer archivos linea por linea utilizando while"
while IPS= read linea
do
  echo "$linea"
done < $1

