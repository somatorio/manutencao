#!/bin/bash

# Este script instala interface gráfica 

while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=290 --list --column "Escolha uma opção" --title="Instalador de ambiente V.1.1" \
			"Cinnamon" \
			"Xfce" \
			"Numix" \
			"Gnome" \
			"OpenBox" \
			"Mate" \
			"Gtkdialog" \
			"Sair" )
	
	case "$opcao" in 

		Cinnamon )
			 sudo add-apt-repository ppa:embrosyn/cinnamon
			 sleep 2
			 sudo apt-get update
			 sleep 2
			 sudo apt-get install cinnamon -y
		;;

		Xfce )
			sudo apt-get update
			sleep 2
			sudo apt-get install xfce4 -y
		;;

		Numix )
			sudo apt-get update
			sleep 2
			sudo apt install numix-gtk-theme -y
			sleep 2
		echo "Instalando pacote de ícones"
			sudo add-apt-repository ppa:numix/ppa 
			sleep 2
			sudo apt-get update
			sleep 2
			sudo apt-get install numix-icon-theme-circle -y
		;;

		Gnome )
			sudo add-apt-repository ppa:gnome3-team/gnome3-staging
			sleep 2
			sudo apt-get update
			sleep 2
			sudo apt dist-upgrade -y
		;;	

		OpenBox )
			sudo apt-get install openbox obconf -y
		;;

		Mate )
			sudo add-apt-repository ppa:ubuntu-mate-dev/xenial-mate
			sleep 2
			sudo apt-get update
			sleep 2
			sudo apt-get install mate-desktop-environment -y
			sleep 2
			sudo apt-get install mate-desktop-environment-extras -y
			sleep 2
			sudo apt-get install mate-menu mate-dock-applet -y
		;;

		Gtkdialog )
			sudo apt-get install build-essential
			sleep 1
			cd /media/eduardo/BACKUP/Download
			sleep 1
			wget https://gtkdialog.googlecode.com/files/gtkdialog-0.8.3.tar.gz
			sleep 1
			tar -xvf gtkdialog-0.8.3.tar.gz
			sleep 1
			cd gtkdialog-0.8.3/
			sleep 1
			./configure
			sleep 1
			make
			sleep 1
			sudo make install
		;;

		*) 
			break 
		;;

	esac	
done
