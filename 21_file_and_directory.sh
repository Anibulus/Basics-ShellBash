#! /bin/bash
# Programa para el uso de de creacion de carpetas y archivos
# Author Luis Antonio Preza - @anibulus
# Como usar, recibe dos parametrod, directorio o archivo y nombre. Ejem 'bash 21... d my_directory'

echo "Archivos y directorios"

if [[ $# -ne 2 ]]; then
    echo "Número de parámetros incorrectos"
    exit 1
fi

if [[ $1 == "d" ]]; then
    mkdir -m 755 $2
    echo "Directorio $2 creado correctamente"
    ls -la $2
elif [[ $1 == "f" ]]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción: $1"
fi