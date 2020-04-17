# !/bin/bash
# Programa para ejemplificar como escribir en archivos sin editores 
# Autor:https://github.com/alberthor47

echo "Escribir en un archivo"

echo "Valores esccritos con el comando echo" >> $1 

# Adicion multilinea

cat << EOM >> $1
$2
EOM
