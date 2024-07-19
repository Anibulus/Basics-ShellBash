# ! / bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Author: Luis Antonio Preza - @anibulus

echo "Empaquetar todos los scripts en un archivo comprimido"

tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un archivo, con un ratio de 9"
gzip -9 9_opciones.sh