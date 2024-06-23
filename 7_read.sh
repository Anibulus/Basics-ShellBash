#!/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read

option=0
backupName=""

echo "Programa de utilidades postgres"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del backup" backupName
echo "Opcion $option, backupName $backupName"

