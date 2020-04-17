# !/bin/bash
# Programa para conocer como ejecutar comandos dentro de un programa y almacenar su informacion en una variable
# Autor:https://github.com/alberthor47

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "la ubicacion actual es: $ubicacionActual"
echo "informacion del kernel: $infoKernel"

