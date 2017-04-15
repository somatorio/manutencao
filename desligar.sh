#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Dia 13/04/2017
# Última edição 13/04/2017
#
# Script criado para que o usuário possa digitar o horário de desligamento do sistema

hora=$(zenity --title="Desligamento do sistema" --text "Em que horário deseja desligar?" --entry)

	sudo shutdown -h $hora | ENTRY=`zenity --title "Digite sua senha" --password`

	zenity --info --title="Desligamento do sistema" --text="Tempo restante: $hora"

# Converte a hora digitada em segundos
tempo=$(echo "()")


while [[ true ]]; do
	#statements
	echo "Faltam  para o desligamento do sistema."
	sleep 1
done
