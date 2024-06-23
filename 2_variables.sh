# !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Luis

echo:"Opcion: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que este disponibe a los demas procesos
export nombre

# Llamar al siguiente script para recuperar la variable
bash 2_variables_2.sh
