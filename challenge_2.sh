# ! / bin/bash
# Programa para ejemplificar la transferencia de red utilizando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Author: Luis Antonio Preza - @anibulus
# Didnt work

#Función para instalar postgres
instalar_postgres () {
    echo "Verificando instalacion de postgres ...."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n" Postgres ya se encuentra instalado en el equipo
    else
        read -sp "Ingresa la contraseña de sudo: " password
        read -sp "Contraseña que se utilizará en postgres: " postgresPass
        echo "$password" | sudo -s dnf update 
        echo "$password" | sudo -s dnf install -y install postgresql
        sudo -u postgres  psql  -c "ALTER USER potgres WITH PASSWORD '[$postgresPass]';"
        echo "$password" | sudo -s systemctl enable postgresql.service
        echo "$password" | sudo -s systemctl start postgresql.service
    fi

    read -n  1 -s -r -p "Presione [ENTER] para continuar"
}


# Función para desinstalar postgres
desinstalar_postgres () {
        read -s -p "Ingresar contraseña de sudo:" password
        echo -e "\n"
        echo "$password" | sudo -S systemctl stop postgresql.service
        echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
        echo "$password" | sudo -S rm -r /etc/postgresql
        echo "$password" | sudo -S rm -r /etc/postgresql-common
        echo "$password" | sudo -S rm -r /var/lib/postgresql
        echo "$password" | sudo -S userdel -r postgres
        echo "$password" | sudo -S groupdel postgresql
        read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Función para hacer Backups
sacar_Backup () {
  clear
  echo "Listar las BDD"
  sudo -u postgres psql -c "\l"
  read -p $'\nElegir la base de datos a respaldar: ' bddBackup
  echo -e "\n"
  if [ -d "$1" ]; then
    echo "Establecer permisos al directorio"
    echo "$pwdSudo" | sudo -S chmod 755 $1
    echo -e "\nRealizando Backup..."
    sudo -u postgres pg_dump -Fc $bddBackup > "$1/bddBackup$fechaActual.bak"
    echo -e "\nBackup realizado Correctamente!"
  else
    echo "El directorio $1 no existe..."
    echo -e "\n"
    read -n1 -p "Desea crear el directorio $1? (s/n)" respuestaDir
    if [ respuestaDir = "s" ]; then
      sudo mkdir $1
      echo "$pwdSudo" | sudo -S chmod 755 $1
      echo -e "\nRealizando Backup..."
      sudo -u postgres pg_dump -Fc $bddBackup > "$1/bddBackup$fechaActual.bak"
      echo -e "\nBackup realizado Correctamente!"
    else
      echo -e "\nSaliendo sin realizar Backup..."
    fi
  fi
  read -n1 -s -r -p $'\nPresione [ENTER] para continuar'
}

restaurar_respaldo () {
  echo "Listar respaldos"
  ls -la $1
  read -p "Elegir el respaldo a restaurar: " respaldoRestaurar
  echo -e "\n"
  echo "Listar bases de datos postgres"
  sudo -u postgres psql -c "\l"
  read -p "Elegir la base de datos a respaldar" DBdump
  echo -e "\n"
  echo "restaurando respaldo.."
  sudo -u postgres pg_restore -Fc -d $DBdump "$1/$respaldoRpestaurar"
  read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

parametro="valor"
instalar_postgres
desinstalar_postgres $parametro