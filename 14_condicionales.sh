# !/bin/bash
# Programa para ejemplificar el uso de los ifs anidados
# Autor: Martin Davila

read -p "Ingrese el path de un archivo: " pathFile

echo "Expresiones condicionales con archivos"
if [ -d $pathFile ]; then
    echo "El directorio $pathFile existe"
else
    echo "El directorio no existe"
fi 