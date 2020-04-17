# !/bin/bash
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
