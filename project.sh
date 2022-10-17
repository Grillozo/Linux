#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários"

useradd carlos -m -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd maria -m -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd joao -m -G GRP_ADM -p $(openssl passwd -crypt Senha123)

useradd debora -m -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd roberto -m -G GRP_VEN -p $(openssl passwd -crypt Senha123)

useradd josefina -m -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd amanda -m -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -G GRP_SEC -p $(openssl passwd -crypt Senha123)

echo "gerenciando permissões"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "gerenciando owners de diretórios"

chown -hR root:GRP_ADM /adm
chown -hR root:GRP_VEN /ven
chown -hR root:GRP_SEC /sec

echo "finalizado"

