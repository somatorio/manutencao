#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Dia 13/04/2017
# Última edição 16/04/2017
# Versão - V0.0.5
#
# Script criado para que o usuário possa digitar o horário de desligamento do sistema

hora=$(zenity --title="Desligamento do sistema" --text "Em que horário deseja desligar?" --entry)

	sudo shutdown --no-wall -h $hora | ENTRY=`zenity --title "Digite sua senha" --password`

	zenity --info --title="Desligamento do sistema" --text="O sistema será desligado às: $hora"

# Converte a hora digitada em segundos
entradasegundos=$(date -d "1970-01-01 $hora UTC" +%s)
atualsegundos=$(date -d "1970-01-01 $(date +%T) UTC" +%s)
segundos=$(echo "$entradasegundos - $atualsegundos" | bc)

while :; do
	# Mostra na tela o tempo em segundos que resta para o desligamento do sistema
	echo "O sistema desligará às $hora e faltam $segundos para o desligamento."
	sleep 1
	if test "$segundos" -eq 0; then 
		break
	fi
# Diminui em um segundo
  segundos=$(( segundos - 1 ))
done
