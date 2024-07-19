#! /bin/bash
# Programa ejemplificar las operaciones de un archivo
# Author Luis Antonio Preza - @anibulus

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "Copiar los scripts del directorio actual al nuevo directorio 'BackupScripts'"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio de backupScrips a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt