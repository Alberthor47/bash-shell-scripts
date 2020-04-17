# !/bin/bash
# Programa para revisar el paso de argumentos

nombreDeCurso=$1
horarioDelCurso=$2

echo "El nombre del curso es: $nombreDeCurso dictado en el horario de: $horarioDelCurso"
echo "El numero de parametros enviados es $#"
echo "Los parametros enviados son $*"

