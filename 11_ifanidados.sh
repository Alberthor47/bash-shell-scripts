# !/bin/bash
# Programa para ejemplificar el uso de la sentencia if anidado 
# Autor:https://github.com/alberthor47

nota=0
continua=""

echo "Sentencia if - else"
read -n1 -p "Indica cual es tu calificacion (1-9):" nota
echo -e "\n"

if (( $nota >= 7 )); then
  echo "El alumno aprueba la materia"
  read -n1 -p "El alumno continuara estudiando en el siguiente nivel? (s/n): " continua
  if [[ $continua = "s" ]]; then
    echo "Gracias por continuar con nosotros"
  else 
    echo "Mucha suerte en lo que viene"
  fi
else
  echo "El alumnoreprueba la materia"
fi

