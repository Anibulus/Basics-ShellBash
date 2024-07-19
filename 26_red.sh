# ! / bin/bash
# Programa para ejemplificar la transferencia de red utilizando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Author: Luis Antonio Preza - @anibulus
# Didnt work

echo "Empaquetar todos los scripts en un archivo comprimido con zip y transferirlos por la red a otro equipo utilizando el comando rsync"

read -p "Ingrese el host " host
read -p "Ingresar el usuario " usuario

echo -e "\nEn este momento se procedera a empaquetar la carpeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/run/media/anibulus/Archivos/Projects/Shell\ Course\ Commands