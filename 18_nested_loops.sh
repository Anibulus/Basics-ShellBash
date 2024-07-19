# ! /bin/bash
# Programa anidamiento de bucles
# Author: Luis Antonio Preza - @anibulus

echo "Loops anidados"

for fil in $(ls *.sh)
do 
    for name in {1..4}
    do
        echo "Nombre de archivo: $fil _ $name"
    done
done