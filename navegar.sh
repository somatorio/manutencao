#!/bin/bash

# Script que abre as páginas no Firefox.
# DATA 06/07/16
# VERSÃO 1.0

while : ; do
	opcao=$(zenity --width=250 --height=420 --list --column "Escolha uma página" --title="Acessa páginas V.1.0" \
		"ClicRBS" \
		"Globo" \
		"YouTube" \
		"GloboEsporte" \
		"Whatsapp" \
		"DBSuper" \
		"Wolverdon" \
		"BlogEdivaldo" \
		"DioLinux" \
		"VivaoLinux" \
		"Tecmundo" \
		"TechTudo" \
		"SempreUpdate" \
		"Voltar" )

case "$opcao" in
	ClicRBS )
		firefox http://www.clicrbs.com.br/rs/ 
	;;

	Globo )
		firefox http://www.globo.com/
	;;

	YouTube )
		firefox https://www.youtube.com/
	;;

	GloboEsporte )
		firefox http://globoesporte.globo.com/
	;;

	Whatsapp )
		firefox https://web.whatsapp.com/
	;;

	DBSuper )
		firefox https://www.animestelecine.com.br/animes/dragon-ball-super-download-legendado/
	;;

	Wolverdon )
		firefox http://wolverdon-filmes.com/
	;;

	BlogEdivaldo )
		firefox https://www.edivaldobrito.com.br/
	;;

	DioLinux )
		firefox http://www.diolinux.com.br/
	;;

	VivaoLinux )
		firefox https://www.vivaolinux.com.br/
	;;

	Tecmundo )
		firefox http://www.tecmundo.com.br/
	;;

	TechTudo )
		firefox http://www.techtudo.com.br/
	;;

	SempreUpdate )
		firefox http://www.sempreupdate.org/
	;;

	* ) break 
;;

esac

done