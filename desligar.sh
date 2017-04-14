#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Dia 13/04/2017
# Última edição 13/04/2017
#
# Script criado para que o usuário possa digitar o horário de desligamento do sistema

if zenity --entry \
	--title="Desligar o Sistema" \
	--text="Em horário deseja desligar o sistema:" \
	--entry-text "Digite a Hora"
  then echo $hora
  #sudo shutdown -h $hora | 
  ENTRY=`zenity --title "Digite sua senha" --password`
	
  	else echo "$hora"
fi