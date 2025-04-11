#!/bin/bash
echo "Script de Provisionamento de um Servidor Web (Apache)"
cd /
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio
cp -R * /var/www/html
