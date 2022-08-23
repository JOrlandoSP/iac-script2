#/bin/bash

echo "Atualizando o sistema..."

pacman -Suy --noconfirm 

echo "Instalando pacotes..."

pacman -Sy apache --noconfirm 
pacman -Sy unzip --noconfirm 
pacman -Sy wget --noconfirm 

echo "Baixando arquivos..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."

unzip main.zip

echo "Copiando arquivos..."

cp -R linux-site-dio-main/* /srv/http

echo "Habilitando e iniciando Apache..."

systemctl enable httpd.service
systemctl start httpd.service
