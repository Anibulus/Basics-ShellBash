#!/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y $Reply

option=0
backupName=""

echo "Programa de utilidades postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del backup"
read
backupName=$REPLY
echo "Opcion $option, backupName $backupName"

