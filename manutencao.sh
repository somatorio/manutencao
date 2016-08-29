#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Data: 26/06/2016 
# Versão 1.5.1
# Script criado para Atualização do Sistema, Realizar Backup, Instalar Programas

while [[ true ]]; do
	# Menu mostrando as opções 
opcao=$(zenity --width=250 --height=290 --list --column "Escolha uma das opções" --title="Manutenção V.1.5.1" \
		"Anotacoes" \
		"Navegar" \
		"Atualizar" \
		"Reparo" \
		"Backup" \
		"Instalar-Programas" \
		"Instalar-Ambiente-Gráfico" \
		"Loterias" \
		"Sair" )

case "$opcao" in
	Anotacoes )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/anotacoes.sh
	;;

	Navegar )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/navegar.sh
	;;
	
	Atualizar )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/atualizar.sh
	;;

	Reparo )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/reparo.sh
	;;

	Backup )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/backup.sh
	;;

	Instalar-Programas )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/intprog.sh
	;;

	Instalar-Ambiente-Gráfico )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/intgraf.sh
	;;	

	Loterias )
		/home/eduardo/Arquivos/Dropbox/Scripts/manutencao/loterias.sh
	;;

	* ) 
		break
	;;
esac

done
