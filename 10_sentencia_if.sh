11_ifanidados.sh                                                                                    0000744 0001750 0001750 00000001066 13646172651 015107  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                          12_condicionales.sh                                                                                 0000744 0001750 0001750 00000001607 13646175463 015626  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales 
# Autor:https://github.com/alberthor47

edad=0
pais=""
path=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su Pais: " pais
read -p "Ingrese la direccion de su archivo: " path
echo "Expresiones condicionales con numeros"

if [ $edad -le 10 ]; then
  echo "La persona es un niño"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then 
  echo "La persona es un adolecente"
else 
  echo "La persona es un adulto"
fi

echo "Expresiones condicionales con cadenas de letras"
if [ $pais = "EEUU" ]; then
  echo "Es americano"
elif [ $pais = "Mexico" ] || [ $pais = "Colombia" ]; then 
  echo "Es latino americano"
else 
  echo "Se desconoce la nacionalidad"
fi

echo "Expresiones condicionales con archivos"
if [ -d $path ]; then
  echo "El directorio $path existe"
else 
  echo "NO hemos podido encontrar el directorio $path"
fi
                                                                                                                         13_case.sh                                                                                          0000744 0001750 0001750 00000000644 13646176352 013726  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de la sentencia case 
# Autor:https://github.com/alberthor47

opcion=""

echo "Ejemplo sentencia case"
read -n1 -p "Ingrese una opcion de la A - C: " opcion
echo -e "\n"

case $opcion in
  "A") echo -e "\nse eligio la A";;
  "B") echo -e "\nse eligio la B";;
  "C") echo -e "\nse eligio la C";;
  [D-Z]) echo "Opcion no valida";;
  "*") echo "una letra por favor";;
esac
                                                                                            14_arreglos.sh                                                                                      0000744 0001750 0001750 00000001753 13646200752 014624  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de arreglos 
# Autor:https://github.com/alberthor47

arregloNumeros=( 1 2 3 4 5 6 )
arregloCadenas=(Alberto, Mauro, Uriel, Carlos)
arregloRangos=({A..Z}, {10..20})

# Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

# Imprimir el tamaño de los arreglos
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
echo "Tamaño arreglo de cadenas: ${#arregloCadenas[*]}"
echo "Tamaño arreglo de rangos: ${#arregloRangos[*]}"

# Imprimir la posicion n del arreglo

n=3
echo "Posicion $n arreglo de numeros: ${arregloNumeros[$n]}"
echo "Posicion $n arreglo de cadenas: ${arregloCadenas[$n]}"
echo "Posicion $n arreglo de rangos: ${arregloRangos[$n]}"

# Añadir y eliminar valores de un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "El arreglo quedó asi: ${arregloNumeros[*]}"
echo "Con el tamaño: ${#arregloNumeros[*]}"

                     15_forloop.sh                                                                                       0000744 0001750 0001750 00000001416 13646204115 014460  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for 
# Autor:https://github.com/alberthor47

arregloNumeros=({1..6})

echo "Iterar en la lista de numeros"

for num in ${arregloNumeros[*]}
do
  echo "numero: $num"
done

echo -e "\nIterar en una lista de cadenas"

for nom in "Manuel" "Pedro" "Luis" "Carlos"
do
  echo "nombre: $nom"
done

echo -e "\nIterar en una lista de archivos"

for file in *
do
  echo "archivo: $file"
done

echo -e "\nIterar utilizando un comando"

for fil in $(ls) 
do
  echo "archivo: $fil"
done

echo -e "\nIterar utilizando el formato tradicional"

for((i=1; i<=10; i++))
do
  echo "Numero: $i"
done

# For anidados

for fil in $(ls) 
do
  for nombre in {1..4}
  do
    echo "nombre del archivo: $fil _ $nombre"
  done
done

                                                                                                                                                                                                                                                  16_while.sh                                                                                         0000744 0001750 0001750 00000000415 13646203461 014112  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while 
# Autor:https://github.com/alberthor47

numero=1

echo "Ejemplo de utilizacion de while"

while [ $numero -ne 10 ]
do
  echo "Imprimiendo $numero veces"
  numero=$((numero + 1))
done

                                                                                                                                                                                                                                                   17_breakycontinue.sh                                                                                0000744 0001750 0001750 00000000566 13646205340 016032  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar el uso de break y continue 
# Autor:https://github.com/alberthor47

echo "Sentencias de break y continue"
for fil in $(ls)
do
  for nombre in {1..4}
  do
    if [ $fil = "10_sentencia_if.sh" ]; then
      break;
    elif [[ $fil == 4* ]]; then
      continue;
    else
      echo "Nombre archivo: $fil _ $nombre"
    fi
  done
done
                                                                                                                                          18_menuopciones.sh                                                                                  0000744 0001750 0001750 00000002132 13646206771 015515  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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
                                                                                                                                                                                                                                                                                                                                                                                                                                      19_touch-dir.sh                                                                                     0000744 0001750 0001750 00000000566 13646225730 014715  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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


                                                                                                                                          1_utilityPostgres.sh                                                                                0000744 0001750 0001750 00000000211 13646125226 016142  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postrgres

echo "Hola bienvenido al curso de programacion bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_writefile.sh                                                                                     0000744 0001750 0001750 00000000374 13646226547 015005  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como escribir en archivos sin editores 
# Autor:https://github.com/alberthor47

echo "Escribir en un archivo"

echo "Valores esccritos con el comando echo" >> $1 

# Adicion multilinea

cat << EOM >> $1
$2
EOM
                                                                                                                                                                                                                                                                    21_leerarchivo.sh                                                                                   0000744 0001750 0001750 00000001013 13646227464 015305  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar como se lee un archivo 
# Autor:https://github.com/alberthor47

echo "Leemos un archivo"

# Con cat
cat $1

# Almacenando valores en una variable
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# A travez de la variable especial IFS (Internal File Separator) para evitar que los espacios en blanco al inicio y al final se recorten 
echo -e "\nLeer archivos linea por linea utilizando while"
while IPS= read linea
do
  echo "$linea"
done < $1

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     22_filesOps.sh                                                                                      0000744 0001750 0001750 00000000652 13646230653 014571  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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

                                                                                      23_empaquetamiento.sh                                                                               0000744 0001750 0001750 00000000675 13646350757 016221  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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

                                                                   2_variables_segundaparte.sh                                                                         0000744 0001750 0001750 00000000176 13646140636 017437  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para revisar la declaracion de variables

echo "Variable Nombre sacada del script anterior: $nombre"

                                                                                                                                                                                                                                                                                                                                                                                                  2_variables.sh                                                                                      0000744 0001750 0001750 00000000471 13646140403 014663  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Alberto

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible en los demas procesos

export nombre

# Llamar al siguiente script para recuperar la variable

./2_variables_segundaparte.sh
                                                                                                                                                                                                       3_operadores.sh                                                                                     0000744 0001750 0001750 00000001646 13646143221 015065  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para conocer los tipos de operadores
# Autor:https://github.com/alberthor47

numA=10
numB=4

echo -e "Operadores aritmeticos: \nNumeros A: $numA y B: $numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))

echo -e "\nOperadores relacionales: \nNumeros A: $numA y B: $numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nOperadores de asignacion: \nNumeros A: $numA y B: $numB"
echo "Sumar A += B =" $((numA += numB))
echo "Restar A -= B =" $((numA -= numB))
echo "Multiplicacion A *= B =" $((numA *= numB))
echo "Division A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))
                                                                                          4_argumentos.sh                                                                                     0000744 0001750 0001750 00000000417 13646144127 015110  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para revisar el paso de argumentos

nombreDeCurso=$1
horarioDelCurso=$2

echo "El nombre del curso es: $nombreDeCurso dictado en el horario de: $horarioDelCurso"
echo "El numero de parametros enviados es $#"
echo "Los parametros enviados son $*"

                                                                                                                                                                                                                                                 5_substitucionComandos.sh                                                                           0000744 0001750 0001750 00000000457 13646145170 017147  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para conocer como ejecutar comandos dentro de un programa y almacenar su informacion en una variable
# Autor:https://github.com/alberthor47

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "la ubicacion actual es: $ubicacionActual"
echo "informacion del kernel: $infoKernel"

                                                                                                                                                                                                                 6_capturarInformacion_segundaparte.sh                                                               0000744 0001750 0001750 00000000573 13646147075 021506  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para conocer como capturar informacion del usuario utilizando el comando read solamnte 
# Autor:https://github.com/alberthor47

option=0
backupName=""

echo "Programa utilidades postrgres"
read -p "Ingresar una opcion:" option
read -p "Ingresa el nombre del archivo del backup:" backupName
echo "Usted eligio la opcion: $option y de nombre: $backupName"

                                                                                                                                     6_capturarInformacion.sh                                                                            0000744 0001750 0001750 00000000631 13646146651 016736  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para conocer como capturar informacion del usuario utilizando el comando echo, read y $REPLY 
# Autor:https://github.com/alberthor47

option=0
backupName=""

echo "Programa utilidades postrgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresa el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Usted eligio la opcion: $option y de nombre: $backupName"

                                                                                                       7_validarInformacion.sh                                                                             0000744 0001750 0001750 00000000703 13646150526 016534  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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
                                                             8_opciones.sh                                                                                       0000744 0001750 0001750 00000000722 13646152651 014547  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
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

                                              9_internet.sh                                                                                       0000744 0001750 0001750 00000000437 13646153402 014557  0                                                                                                    ustar   alberthor47                     alberthor47                                                                                                                                                                                                            # !/bin/bash
# Programa para ejemplificar la descarga de informacion desde internet utilizando el comando wget
# Autor:https://github.com/alberthor47

echo -e "Descarga informacion de internet \n"
wget https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.zip

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 