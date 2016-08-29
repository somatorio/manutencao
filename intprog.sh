	#!/bin/bash

	# Este script realiza a instalação de programas 
	# Versão 1.0.1

	while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=440 --list --column "Escolha uma opção" --title="Instalador V.1.0.1" \
			"Telegram" \
			"Spotify" \
			"VirtualBox" \
			"Vlc" \
			"Sublime-Text-3" \
		    "Qbittorrent" \
		   	"Audio-Recorder" \
		  	"Qshutdown" \
		  	"Conky-Manager" \
		  	"Java" \
		  	"Teamviewer" \
		  	"Dia" \
		  	"Project-Libre" \
		  	"YouTube-DLG" \
			"Sair" )
	
	case "$opcao" in 
		# Instala o Telegram desktop via apt-get
	Telegram) sudo add-apt-repository ppa:atareao/telegram 
		sleep 3 
		sudo apt-get update 
		sleep 3
		sudo apt-get install telegram
	;;

	###############################################################################################################

	# Instala o Spotify via apt-get
	Spotify) sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list.d/spotify.list"
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install spotify-client

	;;

	###############################################################################################################

	# Instala VirtualBox baixando diretamente do site official
	VirtualBox) wget http://download.virtualbox.org/virtualbox/5.0.26/VirtualBox-5.0.26-108824-Linux_amd64.run -O virtualbox.run
		sleep 3
		chmod +x virtualbox.run
		sleep 3
		sudo ./virtualbox.run
	;;

	###############################################################################################################

	# Instala VLC Player via apt-get
	Vlc) sudo add-apt-repository ppa:videolan/stable-daily
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install vlc
	;;

	###############################################################################################################

	# Instala Sublime text via apt-get
	Sublime-Text-3) sudo add-apt-repository ppa:webupd8team/sublime-text-3
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install sublime-text-installer
	;;

	###############################################################################################################

	# Instala Qbittorrent via apt-get
	Qbittorrent) sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install qbittorrent
	;;

	###############################################################################################################

	# Instala Audio Recorder via apt-get
	Audio-Recorder) sudo add-apt-repository ppa:osmoma/audio-recorder
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install audio-recorder
	;;

	###############################################################################################################

	# Instala Qshutdown via apt-get
	Qshutdown) sudo apt-get install qshutdown
		sleep 3
		sudo apt-get update
		sleep 3
		
	;;

	###############################################################################################################

	# Instala Conky manager via apt-get
	Conky-Manager)  sudo apt-add-repository -y ppa:teejee2008/ppa 
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install conky-manager
	;;

	###############################################################################################################

	# Instala Java via apt-get
	Java)  sudo add-apt-repository ppa:webupd8team/java 
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install oracle-java8-installer
	;;

	###############################################################################################################

	# Instala Team Viewer 
	Teamviewer) wget download.teamviewer.com/download/version_10x/teamviewer_linux.deb
		sleep 2
		sudo dpkg --add-architecture i386
		sleep 2
		sudo dpkg -i teamviewer_linux.deb
		sleep 2
		sudo apt-get install -f
	;;

	# Instala o software Diagrama, para a edição de mapas de rede.
	Dia )
		sudo apt-get install dia
	;;

	# Instala o Project libre que cria um projeto que precisam de linha do tempo e/ou cronograma
	Project-Libre )
		cd /media/eduardo/BACKUP/Download
		sleep 1
		wget http://nbtelecom.dl.sourceforge.net/project/projectlibre/ProjectLibre/1.6.2/projectlibre_1.6.2-1.deb -O projectlibre.deb
		sleep 1
		sudo dpkg -i projectlibre.deb
		sleep 1
		sudo apt-get install -f
		sleep 1
	;;

	YouTube-DLG )
		sudo add-apt-repository ppa:nilarimogard/webupd8
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install youtube-dlg -y
	;;

	*) break 
	;;
		esac
	done