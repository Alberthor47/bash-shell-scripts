# !/bin/bash
# Programa que permite manejar las utilidades de Postgres 
# Autor:https://github.com/alberthor47

opcion=0

while :
do
  #Limpiar la pantalla
  clear
  #Desplegar el menu de opciones
  echo "_________________________________________"
  echo "PGUTIL - Programa de utilidad de Postgres"
  echo "_________________________________________"
  echo "             Menu Principal              "
  echo "_________________________________________"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Sacar un respaldo"
  echo "4. Eliminar respaldo"
  echo "5. Salir"

  #Leer los datos del usuario - captura de informacion
  read -n1 -p "Ingrese una opcion [1-5]:" opcion

  #Validar la opcion ingresada
  case $opcion in
    1)
      echo -e "\nInstalar postgres......"
      sleep 3
      ;;
    2)
      echo -e "\nDesinstalar postgres......"
      sleep 3
      ;;
    3) 
      echo -e "\nSacar respaldo....."
      sleep 3
      ;;
    4)
      echo -e "\nEliminar respaldo......"
      sleep 3
      ;;
    5)
      echo -e "\nSalir del programa"
      exit 0
      ;;
  esac
done
