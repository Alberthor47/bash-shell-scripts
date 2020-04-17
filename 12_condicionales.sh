# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales 
# Autor:https://github.com/alberthor47

edad=0
pais=""
path=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su Pais: " pais
read -p "Ingrese la direccion de su archivo: " path
echo "Expresiones condicionales con numeros"

if [ $edad -le 10 ]; then
  echo "La persona es un niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then 
  echo "La persona es un adolecente"
else 
  echo "La persona es un adulto"
fi

echo "Expresiones condicionales con cadenas de letras"
if [ $pais = "EEUU" ]; then
  echo "Es americano"
elif [ $pais = "Mexico" ] || [ $pais = "Colombia" ]; then 
  echo "Es latino americano"
else 
  echo "Se desconoce la nacionalidad"
fi

echo "Expresiones condicionales con archivos"
if [ -d $path ]; then
  echo "El directorio $path existe"
else 
  echo "NO hemos podido encontrar el directorio $path"
fi
