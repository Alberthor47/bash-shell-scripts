# !/bin/bash
# Programa para ejemplificar como se realiza el paso de opcions con o sin parametros 
# Autor:https://github.com/alberthor47

echo "Programa opciones"
echo -e "\nOpcion 1 enviada: $1"
echo "Opcion 2enviada $2"
echo "Opciones enviadas: $*"
echo -e "\nRecuperar valores"

while [ -n "$1" ]
do
case "$1" in 
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
*) echo "$1 no es una opcion";;
esac
shift
done

