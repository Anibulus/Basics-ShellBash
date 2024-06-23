# !/bin/bash
#Programa para ejemplificar el uso de la sentencia de desicion if, else
#Author: Luis Antonio preza - @anibulus

notaDeClase=0
edad=0

echo "Ejemplo sentencia If - else"
read -n1 -p "Indique cual es su nota (1-9)" notaDeClase
echo -e  "\n"
if (( $notaDeClase >= 7 )); then
	echo "El alumno aprueba la materia"
else
	echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad" edad
if [ $edad -le 18 ]; then #Lowe equals
	echo "La persona es menor de edad"
else 
	echo "La persona es mayor de edad"
fi



