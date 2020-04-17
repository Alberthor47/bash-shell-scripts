# !/bin/bash
# Programa para ejemplificar el empaquetamiento 
# Autor:https://github.com/alberthor47

## Primero empaquetamos con tar
echo "Empaquetamos todos los scripts de la carpeta"
tar -cvf shellcourse.tar *.sh

## Ahora comprimimos con gzip
cp shellcourse.tar courses_compress.tar
# Hacemos una copia ya que el archivo origen con gzip se elimina
gzip -9 courses_compress.tar

## Ahora toca pbzip2
tar -cf *.sh -c > shellcourses-2.tar.bz2

