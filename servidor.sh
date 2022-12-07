#!/bin/bash

echo "Infraestrutura como código - Script de Provisionamento de um Servidor Web (Apache)"

apt update
apt upgrade -y

echo "Instalando servidor apache2"
apt install apache2 -y

echo "Instalando pacote unzip"
apt install unzip -y

echo "Baixando aplicação disponivel GITHUB"
dpkg -i https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

unzip main.zip

echo "Copiando arquivos para dir /apache"
cp -R linux-site=dio/* /var/wwww/
