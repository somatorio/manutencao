#!/bin/bash

while [[ true ]]; do
	opcao=$(zenity --width=250 --height=220 --list --column "Escolha uma das opções" --title="Atualização V.1.0" \
			"Repositorios" \
			"Distro" \
			"Programas" \
			"Todos" \
			"Sair")
	case "$opcao" in
		Repositorios )
			sudo apt-get update | zenity --password 
		;;

		Distro ) 
			sudo apt-get -f dist-upgrade -y
		;;

		Programas )
			sudo apt-get upgrade -y
		;;

		Todos )
			sudo apt-get update

			sudo apt-get -f dist-upgrade -y 

			sudo apt-get upgrade -y
		;;

		* )
			break 
		;;
	esac
done