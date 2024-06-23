# !/bin/bash
#Programa para ejemplificar el uso de la sentencia de desicion if else if else
#Author: Luis Antonio preza - @anibulus

edad=0

read -p "Indique cual es su edad" edad
if [ $edad -le 18 ]; then #Lowe equals
	echo "La persona es ADOLECENTE"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
	echo "La persona es ADULTA"
else
	echo "La persona es ADULTO MAYOR"
fi



