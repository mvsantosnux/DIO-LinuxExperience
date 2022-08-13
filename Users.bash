#!/bin/bash
###########################################
#####-comentarios de comandos usados-######
###########################################
#echo exibe o texto na tela tipo printf
#mkdir cria diretorios
#groupadd cria grupos para usuarios
#useradd cria usuarios -m (cria diretorios da /home) -p (define password) -G (adiciona a grupo)
#chown altera o dono de um  diretorio
#chmod altera permissao de arquivo ou diretorios
###########################################
echo "###########################################" 
echo "########  Criando os diretórios: ########## "
echo "###########################################" 
mkdir /publico
echo "-Criado PUBLICO"
mkdir /adm
echo "-Criado ADM"
mkdir /ven
echo "-Criado VEN"
mkdir /sec
echo "-Criado SEC"

echo "###########################################" 
echo "#######Criando grupos de usuários: ######## "
echo "###########################################" 
groupadd GRP_ADM
echo "-Grupo ADM Criado com sucesso... "
groupadd GRP_VEN
echo "-Grupo VEN Criado com sucesso... "
groupadd GRP_SEC
echo "-Grupo SEC Criado com sucesso... "

echo "###########################################" 
echo "############Criando usuarios: #############"
echo "###########################################" 
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo "Criado Usuario: carlos; senha: senha123; Grupo ADM." 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo "Criado Usuario: maria; senha: senha123; Grupo ADM."
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo "Criado Usuario: joao; senha: senha123; Grupo ADM."
echo "###########################################" 
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "Criado Usuario: debora; senha: senha123; Grupo VEN."
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "Criado Usuario: sebastiana; senha: senha123; Grupo VEN."
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "Criado Usuario: roberto; senha: senha123; Grupo VEN."
echo "###########################################" 
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "Criado Usuario:josegina ; senha: senha123; Grupo SEC."
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "Criado Usuario: amanda; senha: senha123; Grupo SEC."
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "Criado Usuario: rogerio; senha: senha123; Grupo SEC."
echo "###########################################" 
echo "###########################################" 
echo "###Adicionando permissões para diretórios###"
echo "####################################$#######" 
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "############################################" 
chmod 774 /adm
chmod 774 /ven
chmod 774 /sec
chmod 777 /publico
echo "############################################" 
echo "Todas Tarefas executadas com sucesso."
echo "End."