# !/bin/bash
# Programa para ejemplificar el envio de archivos por la red usando rsync 
# Autor:https://github.com/alberthor47

# Se empaqueta primero para optimizar la velocidad de transferencia

echo "Empaquetar los scripts y transferirlos a otro equipo con rsync"

host=""
user=""

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " user
echo -e "\nEn este momento se procedera a empaquetar la carpeta y transferir segun los datos ingresados"

rsync -avz $(pwd) $user@$host:/~/Downloads

