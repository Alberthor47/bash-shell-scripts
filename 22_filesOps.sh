# !/bin/bash
# Programa para ejemplificar las operaciones de un archivo 
# Autor:https://github.com/alberthor47

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio al nuevo directorio bacupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts al $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt

