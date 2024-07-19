# !/bin/bash
# Programa que ingresa un valor del 1 al 3 que imprime resultados diferentes
# Author: Luis Antonio Preza - @anibulus

option=""
echo "Ingrese una opcion [1-3]"
read  option

case $option in 
    1)
        echo "Soy la opcion 1"
    ;;
    2)
        echo "Soy la opcion 2"
    ;;
    3)
        echo "Soy la opcion 3"
    ;;
esac