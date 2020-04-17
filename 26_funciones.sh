# !/bin/bash
# Programa para ejemplificar el uso de funciones 
# Autor:https://github.com/alberthor47

opcion=0

# Funcion para instalar postgres
instalar_postgres () {
  echo "Instalando postgres..."
  sleep 3
}

# Funcion para desinstalar postgres
desinstalar_postgres () {
  echo "Desinstalando postgres..."
  sleep 3
}

# Funcion para hacer un respaldo
sacar_respaldo () {
  echo "Sacando respaldo..."
  echo "Dir: $1" 
  sleep 3
}

# Funcion para eliminar respaldo
eliminar_respaldo () {
  echo "Eliminando respaldo..."
  echo "Dir: $1" 
  sleep 3
}



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
      instalar_postgres
      ;;
    2)
      desinstalar_postgres
      ;;
    3) 
      read -p "Cual es el directorio:" dirBackup
      sacar_respaldo $dirBackup
      ;;
    4)
      read -p "Cual es el directorio:" dirRes
      eliminar_respaldo $dirRes
      ;;
    5)
      echo -e "\nSalir del programa"
      exit 0
      ;;
  esac
done
