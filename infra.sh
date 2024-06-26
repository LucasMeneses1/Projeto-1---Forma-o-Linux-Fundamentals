#!/bin/bash

echo "-> Projeto Linux I - Infraestrutura como código <-"



cd /



groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



mkdir /publico

mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec



useradd carlos -c "Carlos Alcaraz" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_ADM
useradd maria -c "Maria do Bairro" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_ADM
useradd joao -c "João das Neves" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_ADM
useradd debora -c "Débora Silva" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_VEN
useradd sebastiana -c "Sebastiana Vettel" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_VEN
useradd roberto -c "Roberto Trauco" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_VEN
useradd josefina -c "Josefina Langford" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_SEC
useradd rogerio -c "Rogerio Ceni" -m -s /bin/bash -p $(openssl passwd -1 teste) -G GRP_SEC