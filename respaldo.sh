#!/bin/bash
fecha=$(date +"%m-%d-%y-%T")
echo $fecha

echo Posicionandome en directorio
cd /var/www/

echo inicio respaldo con fecha
cp -R  /var/www/debian  /var/www/respaldo/respaldo$fecha

echo deteniendo apache
/etc/init.d/apache2 stop

echo reiniciando apache

/etc/init.d/apache2 start

echo fin del script
