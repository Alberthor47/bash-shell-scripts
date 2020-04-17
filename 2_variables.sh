# !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Alberto

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible en los demas procesos

export nombre

# Llamar al siguiente script para recuperar la variable

./2_variables_segundaparte.sh
