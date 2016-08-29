#!/bin/bash

# Script que gera números aleatórios da Lotofácil, Mega Sena e Lotomania.

while [[ true ]]; do
	# MENU MOSTRANDO AS OPÇÕES
	opcao=$(zenity --width=250 --height=200 --list --column "Escolha uma das opções" --title="Loterias V.1.0" \
		"lotofacil" \
		"megasena" \
		"lotomania" \
		"Sair" )



#criamos a função
function megasena(){

	case "$opcao" in 
		lotofacil )
			# titulo com cor azul
	echo  -e " \033[1;34m Números gerados:  \033[0m" 
	
	#formamos um loop para gerar  números
	for ((i = 0; i <= 15; i++))
		do	
			# O -en é para gerar na mesma linha e gerar cores
			# configuramos a cor de fundo desejada e chamamos de 0 a 60 a variável $RANDOM	
			echo -en " \033[42;1;37m $(($RANDOM % 61)) \033[0m"			
	done
	
	
	#pulamos uma linha
	echo
	;;

		megasena )
			# titulo com cor azul
	echo  -e " \033[1;34m Números gerados:  \033[0m" 
	
	#formamos um loop para gerar  números
	for ((i = 0; i <= 6; i++))
		do	
			# O -en é para gerar na mesma linha e gerar cores
			# configuramos a cor de fundo desejada e chamamos de 0 a 60 a variável $RANDOM	
			echo -en " \033[42;1;37m $(($RANDOM % 61)) \033[0m"			
	done
	
	
	#pulamos uma linha
	echo
	;;

		lotomania )
			# titulo com cor azul
	echo  -e " \033[1;34m Números gerados:  \033[0m" 
	
	#formamos um loop para gerar  números
	for ((i = 0; i <= 50; i++))
		do	
			# O -en é para gerar na mesma linha e gerar cores
			# configuramos a cor de fundo desejada e chamamos de 0 a 60 a variável $RANDOM	
			echo -en " \033[42;1;37m $(($RANDOM % 61)) \033[0m"			
	done
	
	
	#pulamos uma linha
	echo
	;;

		*) break
	;;

	esac

}
megasena


done