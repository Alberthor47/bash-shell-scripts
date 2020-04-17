# !/bin/bash
# Programa para conocer como capturar informacion del usuario utilizando el comando echo, read y $REPLY 
# Autor:https://github.com/alberthor47

option=0
backupName=""

echo "Programa utilidades postrgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresa el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Usted eligio la opcion: $option y de nombre: $backupName"

