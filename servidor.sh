#!/bin/bash

echo "Infraestrutura como c�digo - Script de Provisionamento de um Servidor Web (Apache)"

apt update
apt upgrade -y

echo "Instalando servidor apache2"
apt install apache2 -y

echo "Instalando pacote unzip"
apt install unzip -y

echo "Baixando aplica��o disponivel GITHUB"
dpkg -i https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

unzip main.zip

echo "Copiando arquivos para dir /apache"
cp -R linux-site=dio/* /var/wwww/
