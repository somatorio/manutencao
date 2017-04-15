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
segundos=$(echo "$hora" | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')

while test "$segundos" -gt 0; do
	# Mostra na tela o tempo em segundos que resta para o desligamento do sistema
	echo "Faltam $segundos para o desligamento do sistema."
	sleep 1
# Diminui em um segundo
  segundos=$(( segundos - 1 ))
done
