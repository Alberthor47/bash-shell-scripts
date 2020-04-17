# !/bin/bash
# Programa para conocer como capturar informacion del usuario utilizando el comando read solamnte 
# Autor:https://github.com/alberthor47

option=0
backupName=""

echo "Programa utilidades postrgres"
read -p "Ingresar una opcion:" option
read -p "Ingresa el nombre del archivo del backup:" backupName
echo "Usted eligio la opcion: $option y de nombre: $backupName"

