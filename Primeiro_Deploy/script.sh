#!/bin/bash

echo "Atualizando o servidor..."
echo "..."

sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o Apache"
echo "....."

sudo apt-get install apache2 -y

echo "Clonando repositorio"
echo "......"

sudo git clone https://github.com/luizcarlos16/mundo-invertido.git

echo "Copiando conteudo do site para a pasta do Apache"
echo "......"

cd mundo-invertido
sudo cp * -R /var/www/html

echo "Exibindo IP..."
echo "......"

sudo hostname -I