#!/bin/bash

echo "Script de Provisionamento de um Servidor Web (Apache)"

cd /

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y

cd /tmp

echo "Baixando os arquivos da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
