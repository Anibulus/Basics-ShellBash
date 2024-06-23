#!/bin/bash
# Programa para validaciones regex
#Author: Luis Antonio Preza

regexNumber='^[0-9]{10}$' #10 numeros
regexPais='^EC|COL|US|MEX$'
regexNacimiento='^19|20[0-8]{2}[1-12][1-31]$'

read -p "Ingresa un numero" number
read -p "Pais de origen" pais
read -p "Fecha de nacimiento" nacDate

#Validacion numero
if [[ $number =~ $regexNumber ]]; then
    echo "Numero $number válido"
else
    echo "Numero $numbmer inválido"
fi

#Validacion numero
if [[ $pais =~ $regexPais ]]; then
    echo "Pais $pais válido"
else
    echo "Pais $pais inválido"
fi

#Validacion numero
if [[ $nacDate =~ $regexNacimiento ]]; then
    echo "Fecha $nacDate válido"
else
    echo "Fecha $nacDate inválido"
fi
