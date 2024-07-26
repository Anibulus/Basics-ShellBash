# ! /bin/bash
# Programa para ejemplificar arreglos
# Author: Luis Antonio Preza - @anibulus

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Susan, Pedro, Susana)
#arregloRango({A..Z} {10..20})

# imprimir todos los valores

echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
#echo "Arreglo de rangos: ${arregloRango[*]}"

#Imprimir los tamaños de los arreglos

echo "Tamaño de arreglo de numeros: ${#arregloNumeros[*]}"
echo "Tamaño de arreglo de cadenas: ${#arregloCadenas[*]}"
#echo "Tamaño de arreglo de rangos: ${#arregloRango[*]}"

#Imprimir la posicion 3 de los arreglos

echo "Posicion 3 de numeros: ${arregloNumeros[3]}"
echo "Posicion 3 de cadenas: ${arregloCadenas[3]}"
#echo "Posicion 3 de rangos: ${arregloRango[3]}"

#Añadir y eliminar valores de un arreglo

arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
