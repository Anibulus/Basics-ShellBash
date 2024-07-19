# ! / bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip
# Author: Luis Antonio Preza - @anibulus

echo "Empaquetar todos los scripts en un archivo comprimido con zip y asignarle una clave de seguridad"

zip -e shellCourse.zip *.sh 

unzip shellCourse.zip