# !/bin/bash
# Programa que usa expresiones regulares para validar la informacion que se recive del usuario 
# Autor:https://github.com/alberthor47

option=0
backupName=""
clave=""

# Acepta el ingreso de informacion de solo un caracter

read -n1 -p "Ingresa la opcion:" option
echo -e "\n"
read -n10 -p "Ingresa el nombre del archivo:" bacupName
echo -e "\n"
echo "Opcion: $option, Nombre: $backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
