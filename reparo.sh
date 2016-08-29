#!/bin/bash

# Criado por Eduardo Schuh Pereira / schuhpereira@gmail.com
# Data: 27/06/16
# Script criado com a finalidade de limpar a lixeira, pasta temporária, cache
# Remover pacotes que ainda estão no sistema, remover pacotes duplicados, corrigir problemas de dependências. 

while [[ true ]]; do
	
opcao=$(zenity --width=230 --height=190 --list --column "Escolha uma das opções" --title="Limpeza e Reparo V.1.2" \
	        "Limpeza" \
        	"Reparar-Pacotes"  \
        	"Sair" )

    case "$opcao" in

    Limpeza )
    	sudo rm -rf /home/$USER/.local/share/Trash/files/*
		yad --title "Realizando a Limpeza" --text "Limpando a Lixeira" --timeout 2
		
		sudo rm -rf /var/tmp/*
		yad --title "Realizando a Limpeza" --text "Limpando a Pasta Temporária" --timeout 2
		
		sudo apt-get clean
		yad --title "Realizando a Limpeza" --text "Limpeza de cache e atualizações do gerenciador atual" --timeout 2

		yad --title "Realizando a Limpeza" --text "Limpeza Concluida" --timeout 2
	;;

	Reparar-Pacotes )
		sudo apt-get autoremove -y
		yad --title "Reparando" --text "Remoção de pacotes que ainda estão no sistema" --timeout 2

		sudo apt-get autoclean -y			
		yad --title "Reparando" --text "Remoção de pacotes duplicados" --timeout 2

		sudo apt-get -f install -y
		yad --title "Corrigindo" --text "Corrigindo problemas de dependências" --timeout 2
		
		sudo dpkg --configure -a
		yad --title "Recuperando" --text "Recuperando pacotes" --timeout 2
		
		yad --text "Seu sistema está recuperado." --timeout 3
	;;

	* )
		break
	;;

    esac
done