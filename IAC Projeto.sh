#!/bin/bash
#script para entregar projeto - provisionamento de um servidor web apache2
echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
sleep 2
echo "###########################################"
echo "########- Servidor Atualizado -############"
echo "###########################################"
sleep 2
apt-get install apache2 -y
apt-get install unzip -y
echo "###########################################"
echo "Instalando Apache e Unzip...."
echo "###########################################"
sleep 5 
echo "Instalado com sucesso"
echo "###########################################"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
sleep 3
echo "###########################################"
echo "### Servidor Web Instalado com sucesso.####"
echo "###########################################"
