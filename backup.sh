#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Data: 20/06/2016 
# Versão 0.1.4
# Script criado para realizar backup.

while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=200 --list --column "Escolha uma opção" --title="Backup V.1.0" \
				"Backup" \
				"Agendar" \
				"Consultar" \
				"Voltar" )
	case "$opcao" in
		
		# Realiza backup.
		Backup )
			
	# Declarando as variáveis ORIGEM, ORIGEM2, DESTINO, DIAS, EXCDESTINO.
	ORIGEM="/home/$USER"
	ORIGEM2="/etc/NetworkManager/system-connections"
	DESTINO="/media/$USER/BACKUP/Backup/backup-`date`"
	DIAS="$(`date`+1)"
	EXCDESTINO="/media/eduardo/BACKUP/Backup/"

	# Backup da pasta /home/$USER
	echo "Copiando a pasta /home do usuário" && sleep 1
	total=$(du -s "$ORIGEM" | awk '{print $1}')

	cp -r "$ORIGEM" "$DESTINO" &>/dev/null  &

	while true
		do
        [[ -z $(pidof cp) ]] && break

        copiado=$(du -s "$DESTINO" | awk '{print $1}')
        echo "# Copiando arquivos....$((copiado*100/total))%"

	done | yad --title "Realizando Backup" --progress --value=0 --auto-close --no-cancel --auto-kill 
	
	echo
	# Salva as senhas da rede wifi
	echo "Copiando a pasta contendo as redes wifi salvas!" && sleep 1
	total=$(du -s "$ORIGEM2" | awk '{print $1}')

	cp -r "$ORIGEM2" "$DESTINO" &>/dev/null  &

	while true
		do
        [[ -z $(pidof cp) ]] && break

        copiado=$(du -s "$DESTINO" | awk '{print $1}')
        echo "# Copiando arquivos....$((copiado*100/total))%"

	done | yad --title "Realizando Backup" --progress --value=0 --auto-close --no-cancel --auto-kill
	
	echo
	echo "Backup realizado com sucesso." && sleep 5

	# Exclusão dos arquivos com mais de 1 dia
	echo "Excluindo arquivos com mais de $DIAS dia..." 
	
	find /media/eduardo/BACKUP/Backup/ -name "b*" -ctime $DIAS -type d -exec rm -rf "{}" \;

	echo "Saindo e voltando para o menu" && sleep 5
	;;

	# ESTA OPÇÃO SERVER PARA AGENDAR UM BACKUP 
	Agendar ) 
		DATA=$(\
        yad --calendar \
            --title=Calendario \
            --center \
		)
		
		echo Em `date` você agendou um backup para o dia $DATA >> /media/$USER/BACKUP/Backup/agenda.txt
	# mostra um diálogo informando a $DATA selecionada
	yad --title="AVISO" \
	         --text="Você selecionou a data $DATA"
	
	
		break ;;

	# OPÇÃO PARA CONSULTAR O ARQUIVO AGENDA.TXT 

	Consultar ) 
		cat /media/$USER/BACKUP/Backup/agenda.txt && sleep 15		
	;;

	* )	
		break 
	;;

	esac
done