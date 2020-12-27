
#!/bin/bash

#SISTEMA DE BACKUP SIMPLES
#CRIADO POR LUCIANO RAMONE 2021.

data=`date +%d/%m/%y`

 
preto="\e[30;1m"
verm="\e[31;1m"
verd="\e[32;1m"
amare="\e[33;1m"
azul="\e[34;1m"
ficol="\e[m"


cat luc.txt
sleep 1s
echo "  "

echo -e "${amare}BEM-VINDO, escolha a pasta ou arquivo que quer fazer o backup para zipar. $ficol "
echo -e "${amare}Local da pasta/arquivos a ser guardado? $ficol"
	while : ; do
read -p "Digite o local: " dir_bk
	if [[ -r $dir_bk ]]
	then
	cd $dir_bk ; echo -e "${verd} Listando arquivos... ${ficol}" ; sleep 1s ; ls --color 
	break	
	else
	echo -e "${verm}Diretorio inexistente, tente novamente!!!${ficol}"
	fi
	done

	while :; do
read -p "Qual arquivo zipar?: " DIR_ATUAL ; sleep 1s
read -p "Nome para o .zip: " zipp
	if [[ -e $DIR_ATUAL ]]
	then 
	echo -e "$azul Compactando arquivo em zip ... $ficol" ; sleep 2s
	zip $zipp.zip $DIR_ATUAL ; break
	else
	echo "Ops, nome do arquivo invalido!!, tente novamente"
	fi
	done

echo -e "${azul}O arquivo $DIR_ATUAL.zip foi criado com sucesso no data: $data $ficol"
sleep 1s

