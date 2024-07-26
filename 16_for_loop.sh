# ! /bin/bash
# Programa para ejemplificar arreglos
# Author: Luis Antonio Preza - @anibulus

arregloNumeros=(1 2 3 4 5 6)

# iteracion
for num in ${arregloNumeros[*]}
do
    echo "número:  $num"
done

for file in $(ls *.sh)
do
    echo "Archivo:  $file"
done
