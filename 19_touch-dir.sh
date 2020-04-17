# !/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios 
# Autor:https://github.com/alberthor47

echo "Archivos - Directorios"

if [[ $1 = "d" ]]; then
  mkdir -m 744 $2
  echo "Directorio creado correctamente"
  ls -la $2
elif [[ $1 = "f" ]]; then
  touch $2
  echo "Archivo creado correctamente"
  ls -la $2
else
  echo "Opcion no valida: $1"
fi


