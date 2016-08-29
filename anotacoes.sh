#!/bin/bash

while [[ true ]]; do
	opcao=$(yad --width=200 --height=270 --list --column "Escolha uma das opções" --title="Anotações" \
		"STI_segunda" \
		"RLD_terca" \
		"ADM2_quarta" \
		"PR2_quinta" \
		"SRI_sexta" \
		"EstagioUm_quarta" \
		"EstagioDois_quarta" \
		"Sair" )

	case "$opcao" in
		STI_segunda )
			cd /home/eduardo/Arquivos/Dropbox/IENH/2016_2/STI_segunda
			sleep 2
			gedit sti_segunda.txt
			;;	

		* ) break
			;;
		esac	
done