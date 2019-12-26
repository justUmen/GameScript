#!/bin/bash


#  ██████   █████  ███    ███ ███████ ███████  ██████ ██████  ██ ██████  ████████
# ██       ██   ██ ████  ████ ██      ██      ██      ██   ██ ██ ██   ██    ██
# ██   ███ ███████ ██ ████ ██ █████   ███████ ██      ██████  ██ ██████     ██
# ██    ██ ██   ██ ██  ██  ██ ██           ██ ██      ██   ██ ██ ██         ██
#  ██████  ██   ██ ██      ██ ███████ ███████  ██████ ██   ██ ██ ██         ██



# ███    ███ ███████ ███    ██ ██    ██
# ████  ████ ██      ████   ██ ██    ██
# ██ ████ ██ █████   ██ ██  ██ ██    ██
# ██  ██  ██ ██      ██  ██ ██ ██    ██
# ██      ██ ███████ ██   ████  ██████



#gamescript.sh
#	--> select_subject
#		--> select_chapter $SUBJECT 1
#			--> select_lecture_or_quiz "$SUBJECT" "DETAILS CHAPTER 1" "DETAILS CHAPTER 2" ...
#				--> launch_standalone $TYPE $SUBJECT $CHAPTER

function select_subject(){
	#Never leave this menu
	while [ true ]; do
		#MENU - SUBJECT SELECTION
		echo ""
		case $LANGUAGE in
			fr) echo -e "Menu principal : "
				echo -e "\\e[0;100m 1) \\e[0m\e[97;44m bash ( $TEXT_CHAPTER 1-11 )\e[0m [classic]"
				#~ echo -e "Cette série porte le nom \e[97;44m bash \e[0m, elle regroupera cependant toutes les bases de la ligne de commande, comme par exemple les commandes GNU et l'organisation des fichiers et de leurs permissions dans un système d'exploitation de type Unix."
				echo -e "\\e[0;100m 2) \\e[0m\e[97;44m i3wm ( $TEXT_CHAPTER 1 )\e[0m - niveau bash 2+ recommandé - [classic]"
				echo -e "\\e[0;100m 3) \\e[0m\e[97;44m system ( $TEXT_CHAPTER 1 )\e[0m - niveau bash 2+ recommandé - [classic]"
				#~ echo -e "\\e[0;100m 4) \\e[0m\e[97;44m data ( $TEXT_CHAPTER 1 )\e[0m - niveau bash 2+ recommandé - [fun]"
				echo -e "\\e[0;100m h) \\e[0m Aide"
				echo -e "\\e[0;100m u) \\e[0m Forcer mise à jour (GameScript_standalone)"
				echo -e "\\e[0;100m p) \\e[0m Mes mots de passe"
				echo -e "\\e[0;100m e) \\e[0m Quitter"
				;;
			en) echo -e "Main menu : "
				echo -e "\\e[0;100m 1) \\e[0m\e[97;44m bash ( $TEXT_CHAPTER 1-6 )\e[0m [classic]"
				#~ echo -e "This series have the name \e[97;44m bash \e[0m, but it will also cover all the basics of the linux command line, like for example GNU Core Utilities commands, as well as Unix-like operating system file organization and permissions."
				echo -e "\\e[0;100m 2) \\e[0m\e[97;44m i3wm ( $TEXT_CHAPTER 1 )\e[0m - level bash 2+ recommanded - [classic]"
				#~ echo -e "\\e[0;100m 3) \\e[0m\e[97;44m system ( $TEXT_CHAPTER 1 )\e[0m - level bash 2+ recommanded - [classic]"
				#~ echo -e "\\e[0;100m 4) \\e[0m\e[97;44m data ( $TEXT_CHAPTER 1 )\e[0m - level bash 2+ recommanded - [fun]"
				echo -e "\\e[0;100m h) \\e[0m Help"
				echo -e "\\e[0;100m u) \\e[0m Force update (GameScript_standalone)"
				echo -e "\\e[0;100m p) \\e[0m My passwords"
				echo -e "\\e[0;100m e) \\e[0m Exit"
				;;
		esac
		selected="x"
		#?? PUT WHILE LOOP BASED ON MENU SIZE :P SAME THE OTHER ONE, OR FIND BETTER
		while [ "$selected" != "1" ] && [ "$selected" != "2" ] && [ "$selected" != "3" ] && [ "$selected" != "4" ] && [ "$selected" != "e" ] && [ "$selected" != "h" ] && [ "$selected" != "p" ] && [ "$selected" != "u" ]; do
			echo -en "\e[97;45m # \e[0m"
			read selected < /dev/tty
		done
		case $selected in
			"1") select_chapter bash 1 ;;
			"2") select_chapter i3wm 1 ;;
			"3") select_chapter sys 1 ;;
			"4") select_chapter data 1 ;;
			h) gamescript_help ;;
			p) my_passwords ;;
			u) update_gamescript_standalone ;;
			e) goodbye ;;
			*) echo "Error"; goodbye ;;
		esac
	done
}

function update_gamescript_standalone(){
	echo "update"
}

function select_chapter(){
	SUBJECT=$1
	#IF NEEDED THERE ??? (After fail quiz) doesnt bother too much
	if [[ "$MUTE" == "0" ]] && [[ "$MUSIC" == "1" ]]; then
		stop_quiz_music
		unpause_music
	fi
	#USAGE : select_chapter bash 1
	case $SUBJECT in
	  bash) TITLE="Bourne Again SHell" ;;
	  i3wm) TITLE="The i3 Window Manager" ;;
	  sys) TITLE="Unix-like system" ;;
	  sys) TITLE="Data & Metadata" ;;
	  *) TITLE="" ;;
	esac
	echo ""
	command -v toilet &> /dev/null && toilet -f mono9 "$SUBJECT" -w 100
	echo -e "   \e[97;44m - $SUBJECT, $TITLE \e[0m"
	#?? TODO : GIve array for multiple type -> Trigger another menu to select type of lecture (classic + fun)
	case $LANGUAGE in
		fr) case $SUBJECT in
					bash) select_lecture_or_quiz "$SUBJECT" "classic" \
							"$TEXT_CHAPTER 1 \e[0m : pwd , ls , cd , .. , mkdir , rm , rmdir" \
							"$TEXT_CHAPTER 2 \e[0m : ~ , . , ../ , ../.. , ../../ , - , --, man" \
							"$TEXT_CHAPTER 3 \e[0m : echo , \ , \\\n , > , >> , cat , \"\", ''" \
							"$TEXT_CHAPTER 4 \e[0m : mv , cp , ; , && , ||" \
							"$TEXT_CHAPTER 5 \e[0m : ls -l , chmod" \
							"$TEXT_CHAPTER 6 \e[0m : * , ? , touch , chown , chmod" \
							"$TEXT_CHAPTER 7 \e[0m : 1> , 2> , &> , 1>> , 2>> , &>> , /dev/null , 2>&1 , 1>&2 , ()" \
							"$TEXT_CHAPTER 8 \e[0m : | , wc , sort , grep , uniq , - , |& , <" \
							"$TEXT_CHAPTER 9 \e[0m : \$ , \$PATH , type , printenv" 	\
							"[PAS DE SON] $TEXT_CHAPTER 10 \e[0m : alias , \$PAGER , tail , head , \$? , source , less" \
							"[PAS DE SON] $TEXT_CHAPTER 11 \e[0m : read , if , then , else , fi , true , false , [ ] , test , -eq , -lt , -ne , -gt"
							;;
					i3wm) select_lecture_or_quiz "$SUBJECT" "classic" "[PAS DE SON] $TEXT_CHAPTER 1 \e[0m : exec , bindsym , assign , for_window , xprop , floating , sticky , class , WMCLASS , ~/.config/i3/config" ;;
					sys)  select_lecture_or_quiz "$SUBJECT" "classic" "[PAS DE SON] $TEXT_CHAPTER 1 \e[0m : ^C+c , ^C+z , & , jobs , fg , bg , kill , disown , PID , PPID , SIGCONT , SIGINT , SIGTSTP , SIGSTOP , SIGTERM , SIGKILL" ;;
					*) TITLE="" ;;
				esac
				;;
		en) case $SUBJECT in
					bash) select_lecture_or_quiz "$SUBJECT" "classic" \
							"$TEXT_CHAPTER 1 \e[0m : pwd , ls , cd , .. , mkdir , rm , rmdir" \
							"$TEXT_CHAPTER 2 \e[0m : ~ , . , ../ , ../.. , ../../ , - , --, man" \
							"$TEXT_CHAPTER 3 \e[0m : echo , \ , \\\n , > , >> , cat , \"\", ''" \
							"$TEXT_CHAPTER 4 \e[0m : mv , cp , ; , && , ||" \
							"$TEXT_CHAPTER 5 \e[0m : ls -l , chmod" \
							"$TEXT_CHAPTER 6 \e[0m : * , ? , touch , chown , chmod"
							;;
					i3wm) select_lecture_or_quiz "$SUBJECT" "classic" "[NO SOUND] $TEXT_CHAPTER 1 \e[0m : exec , bindsym , assign , for_window , xprop , floating , sticky , class , WMCLASS , ~/.config/i3/config" ;;
					data) select_lecture_or_quiz "$SUBJECT" "fun" "[NO SOUND] $TEXT_CHAPTER 1 \e[0m ???" ;;
					#~ sys)  select_lecture_or_quiz "$SUBJECT" "classic" "[PAS DE SON] $TEXT_CHAPTER 1 \e[0m : ^C+c , ^C+z , & , jobs , fg , bg , kill , disown , PID , PPID , SIGCONT , SIGINT , SIGTSTP , SIGSTOP , SIGTERM , SIGKILL" ;;
					*) TITLE="" ;;
				esac
				;;
	esac
}

function select_lecture_or_quiz(){
	MENU_SIZE=`expr $# - 2` # -2 : SUBJECT AND TYPE
	TYPE=$2
	SUBJECT=$1
	argCMP=1
	#Remove SUBJECT and TYPE
	shift
	shift
	for ARG in "$@"; do #For each arguments (Chapters)
	  if [ -f "$HOME/.GameScript/good_$SUBJECT$argCMP" ]; then #OLD (SUCCESS) GREEN IF QUIZ ANSWERED
			echo -e "   \e[0;100m $argCMP) \e[97;42m $ARG \e[0m"
	  else
			echo -e "   \e[0;100m $argCMP) \e[97;44m $ARG \e[0m"
	  fi
	  argCMP=`expr $argCMP + 1`
	done
	echo -e "   \e[0;100m e) \e[0m $TEXT_BACK"
	selected=99
	while :; do
		echo -en "   \e[97;45m # \e[0m"
		read selected < /dev/tty
		case $selected in
			e) break ;;
			*[!0-9]*|'') ;;
			*) test "$selected" -le "$MENU_SIZE" && break ;;
		esac
	done
	if [ "$selected" != "e" ];then
		# echo "launch_standalone classic $SUBJECT $selected"
		#??? USE $TYPE instead of classic
		CHAPTER=$selected
		launch_standalone $TYPE $SUBJECT $CHAPTER
		#AFTER STANDALONE STAY IN SUBJECT MENU
		select_chapter $SUBJECT 1
  fi
}

function launch_standalone(){
	#USAGE : launch_standalone classic bash 11
	TYPE=$1
	SUBJECT=$2
	CHAPTER_NUMBER=$3
	#MUTE=1 AND VOICE=0 ARE DIFFERENT BUT SAME FOR STANDALONE BECAUSE MUSIC IS PLAYED IN gamescript.sh (WHAT ABOUT SOUND EFFECTS ?) ???
	# echo $TEXT_DOWNLOADING_CHAPTER
	#TEST INTERNET
	# wget -q --spider http://google.com
	# if [ $? -ne 0 ]; then
	# 	echo $TEXT_INTERNET_ERROR
	# else
		if [[ $MUTE == 1 ]] || [[ $VOICE == 0 ]]; then

			# rm $HOME/.GameScript/standalone.sh 2>/dev/null
			# wget -q "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh" -O $HOME/.GameScript/standalone.sh 2>/dev/null
			command -v toilet &> /dev/null && toilet -f mono9 "$SUBJECT $CHAPTER_NUMBER" -w 100
			if [[ "$SUBJECT" == "sys" ]] && [[ "$CHAPTER_NUMBER" == "1" ]]; then
				echo "set-option -g default-shell /bin/bash" > $HOME/.GameScript/tmux.conf
				tmux -L GameScript -f $HOME/.GameScript/tmux.conf new-session -s "gs_sys_1" \; send-keys "bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh MUTE; tmux kill-session -t 'gs_sys_1'" C-m \;
			else
				bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh MUTE
				# bash $HOME/.GameScript/standalone.sh MUTE
			fi
			#~ wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s -- MUTE
		else
			# rm $HOME/.GameScript/standalone.sh 2>/dev/null
			# wget -q "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh" -O $HOME/.GameScript/standalone.sh 2>/dev/null
			command -v toilet &> /dev/null && toilet -f mono9 "$SUBJECT $CHAPTER_NUMBER" -w 100
			if [[ $VIDEO == 0 ]];then
				if [[ "$SUBJECT" == "sys" ]] && [[ "$CHAPTER_NUMBER" == "1" ]]; then
					echo "set-option -g default-shell /bin/bash" > $HOME/.GameScript/tmux.conf
					tmux -L GameScript -f $HOME/.GameScript/tmux.conf new-session -s "gs_sys_1" \; send-keys "bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh; tmux kill-session -t 'gs_sys_1'" C-m \;
					#LOCAL TESTS
					#~ tmux -L GameScript -f $HOME/.GameScript/tmux.conf new-session -s "gs_sys_1" \; send-keys "bash /home/umen/SyNc/Projects/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_${CHAPTER_NUMBER}.sh; tmux kill-session -t 'gs_sys_1'" C-m \;
				else
					bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh
					# bash $HOME/.GameScript/standalone.sh
					#LOCAL TESTS
					#~ /home/umen/SyNc/Projects/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_${CHAPTER_NUMBER}.sh
				fi
			else
				if [[ "$SUBJECT" == "sys" ]] && [[ "$CHAPTER_NUMBER" == "1" ]]; then
					echo "set-option -g default-shell /bin/bash" > $HOME/.GameScript/tmux.conf
					tmux -L GameScript -f $HOME/.GameScript/tmux.conf new-session -s "gs_sys_1" \; send-keys "bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh VIDEO; tmux kill-session -t 'gs_sys_1'" C-m \;
				else
					bash $HOME/.GameScript/GameScript_standalone/$LANGUAGE/$TYPE/$SUBJECT/standalone_$CHAPTER_NUMBER.sh VIDEO
					# bash $HOME/.GameScript/standalone.sh VIDEO
				fi
			fi
			#~ wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s
		fi
	# fi
}


# ██ ███    ██ ████████ ███████ ██████   █████   ██████ ████████ ██ ██    ██ ███████
# ██ ████   ██    ██    ██      ██   ██ ██   ██ ██         ██    ██ ██    ██ ██
# ██ ██ ██  ██    ██    █████   ██████  ███████ ██         ██    ██ ██    ██ █████
# ██ ██  ██ ██    ██    ██      ██   ██ ██   ██ ██         ██    ██  ██  ██  ██
# ██ ██   ████    ██    ███████ ██   ██ ██   ██  ██████    ██    ██   ████   ███████



function press_key_GAMESCRIPT(){
	echo -en "\e[0;33m...\e[0m"
	read -s -n1 key < /dev/tty
	VOICE_PID=$(ps -f|grep "$SOUNDPLAYER"|grep -v grep|grep -v MUSIC|awk '{print $2}'|head -n 1)
	if [[ "$VOICE_PID" != "" ]]; then
		kill $VOICE_PID &> /dev/null
	fi
}
function talk_GAMESCRIPT(){
	if [[ $MUTE == 0 ]]; then
		new_sound
	fi
	echo -e "\e[0;32m $1\e[0m - $2"
	read -s -t 1 -n 10000 discard
	press_key_GAMESCRIPT
}
function talk_GAMESCRIPT_not_press(){
	if [[ $MUTE == 0 ]]; then
		new_sound
	fi
	echo -e "\e[0;32m $1\e[0m - $2"
}

function goodbye(){
	echo ""
	#NOT PUT IN VARIABLE FOR FUTURE RANDOM SENTENCES
	case $LANGUAGE in
		fr) echo -e "Au revoir et bonne journée. :)\nJustumen" ;;
		en) echo -e "Goodbye and have a nice day. :)\nJustumen" ;;
	esac
	pkill mplayer
	pkill mpg123
	exit 0
}

function create_config(){
	mkdir ~/.GameScript/ 2> /dev/null
	echo "Creation of the configuration file : ~/.GameScript/config"
	echo ""
	echo "Please select a default language :"
	echo -e "\\e[0;100m 1) \\e[0m English"
	echo -e "\\e[0;100m 2) \\e[0m Français"
	echo -e "\\e[0;100m e) \\e[0m exit"
	default_language="x"
  while [ "$default_language" != "1" ] && [ "$default_language" != "2" ] && [ "$default_language" != "e" ]; do
  	echo -en "\e[97;45m # \e[0m"
		read default_language < /dev/tty
  done
	case $default_language in
		1) LANGUAGE="en" ;;
		2) LANGUAGE="fr" ;;
		e) exit ;;
		*) echo "Unknown language. Exiting" && exit ;;
	esac
	echo ""
	echo -e "LANGUAGE=$LANGUAGE\nMUTE=0\nVOICE=1\nMUSIC=1\nNOISE=1\nVIDEO=0\nSOUND_FAMILY=default\nSPEAKER=m1" > ~/.GameScript/config
}


# ██████  ██ ███████ ██████  ██       █████  ██    ██
# ██   ██ ██ ██      ██   ██ ██      ██   ██  ██  ██
# ██   ██ ██ ███████ ██████  ██      ███████   ████
# ██   ██ ██      ██ ██      ██      ██   ██    ██
# ██████  ██ ███████ ██      ███████ ██   ██    ██



function gamescript_help(){
  case $LANGUAGE in
    en) echo "===> HELP en
Available arguments :
\"--help\" or \"-h\" to display this help
\"--passwords\" or \"-p\" to display your passwords

Arguments for temporary changes :
\"--language XX\" ou \"-l XX\" to change the language
 Exemple : \"-l fr\" or \"--language fr\" to use the french language
\"--mute\" or \"-m\" to disable all sounds in GameScript
\"--no-music\" or \"-M\" to disable background music in GameScript
\"--no-voice\" or \"-N\" to disable voices in GameScript
"
;;
    fr) echo "===> AIDE fr
Arguments disponibles :
\"--help\" ou \"-h\" pour afficher l'aide
\"--passwords\" ou \"-p\" pour afficher vos mots de passe

Arguments pour changements temporaires :
\"--language XX\" ou \"-l XX\" pour changer la langue
 Exemple : \"-l en\" ou \"--language en\" pour utiliser la langue anglaise
\"--mute\" ou \"-m\" pour désactiver tous les sons de GameScript
\"--no-music\" ou \"-M\" pour désactiver les musiques de fond de GameScript
\"--no-voice\" ou \"-N\" pour désactiver les voix de GameScript
"
#~ \"--video\" ou \"-v\" pour activer les vidéos de GameScript
#~ \"--no-sound-effect\" ou \"-R\" pour désactiver les bruitages de GameScript
;;
    *) echo "unknown language"
  esac
}

function my_passwords(){
	if [ ! -d "$HOME/.GameScript/passwords/" ]; then #NOT EXIST
		echo "$TEXT_NO_PASSWORD"
	elif [ ! "$(ls -A $HOME/.GameScript/passwords/)" ]; then #EMPTY
		echo "$TEXT_NO_PASSWORD"
	else
		echo ""
		echo "$HOME/.GameScript/username : `cat ~/.GameScript/username`"
		for filename in $HOME/.GameScript/passwords/*; do
			echo "$filename : password`cat $filename`"
		done
	fi
}

function justumen_intro_fr(){
	talk_GAMESCRIPT justumen "Bonjour et bienvenue sur GameScript.
	GameScript est un script écrit en ${voc}bash${reset} qui peut vous aider à apprendre le ${voc}bash${reset}.
	GameScript est interactif :
	 * Lorsque vous voyez ces \e[0;33m...\e[0m le script attend que vous pressiez une touche pour continuer.";
	talk_GAMESCRIPT justumen " * Lorsque vous voyez ce \\e[1;15;45m # \\e[0m le script attend que vous tapiez quelque chose."
	talk_GAMESCRIPT justumen "Les commandes que vous lancerez ici s'exécuteront ${voc}réellement${reset} sur votre machine."
	talk_GAMESCRIPT justumen "Vous pouvez donc, si vous le désirez, voir leurs effets simultanément dans un gestionnaire de fichiers."
	talk_GAMESCRIPT justumen "De ce fait, toutes les commandes que vous taperez dans GameScript doivent être strictement controlés."
	talk_GAMESCRIPT justumen "Ce \\e[97;45m # \\e[0m ne laissera passer qu'${voc}une${reset} seule commande, ce n'est donc ${voc}pas${reset} un véritable simulateur."
	talk_GAMESCRIPT justumen "Tous les chapitres fonctionneront de la même manière :"
	talk_GAMESCRIPT justumen "  Au lancement vous devez choisir entre 'accéder au cours' ou 'accéder au questionnaire'."
	talk_GAMESCRIPT justumen "Si vous pensez ne pas avoir besoin du cours, vous pouvez aller directement au questionnaire."
	talk_GAMESCRIPT justumen "Si vous répondez ${voc}parfaitement${reset} au questionnaire du chapitre, vous pouvez donc passer au prochain chapitre sans avoir besoin de suivre le cours."
	talk_GAMESCRIPT justumen "En revanche si vous devez suivre le cours, le questionnaire reviendra à la fin et vous aurez aussi besoin d'y répondre parfaitement."
	talk_GAMESCRIPT justumen "N'hésitez pas à faire le cours ou le questionnaire à plusieures reprises s'il le faut."
	talk_GAMESCRIPT justumen "Ne passez pas trop vite au niveau suivant si votre compréhension du cours précédent est incertaine."
	talk_GAMESCRIPT justumen "Même si je ne vous recommande pas de quitter un cours en plein milieu, vous pouvez le faire avec Ctrl + c."
	talk_GAMESCRIPT justumen "GameScript reviendra à l'endroit où vous étiez lorsque vous relancerez le chapitre en question."
	talk_GAMESCRIPT justumen "Merci de soutenir mes cours et mes projets sur https://www.patreon.com/justumen"
	talk_GAMESCRIPT justumen "Et merci de me signalez les bugs si vous en trouvez. :-)"
	talk_GAMESCRIPT justumen "GameScript est et restera étroitement lié à notre chat, disponible à l'adresse : https://rocket.bjornulf.org/"
	talk_GAMESCRIPT justumen "Vous êtes un nouvel utilisateur de GameScript, je vous invite donc à créer votre compte sur https://github.com/ et de l'utiliser pour vous connecter à notre chat."
	talk_GAMESCRIPT_not_press justumen "Si vous y êtes déjà inscrit, veuillez taper votre pseudonyme, afin que GameScript puisse le mémoriser pour vous."
	PSEUDO=""
	while [[ $PSEUDO = "" ]]; do
		echo -en "\e[97;45m # \e[0m"
		read -r PSEUDO < /dev/tty
	done
	talk_GAMESCRIPT justumen "Bonne journée à vous et bonne chance !"
}
function justumen_intro_en(){
	talk_GAMESCRIPT justumen "Hello and welcome on GameScript.
	GameScript is a script written in ${voc}bash${reset} which can help learn about ${voc}bash${reset}.
	GameScript is interactive :
	 * Everytime you see these \e[0;33m...\e[0m the script is waiting for you to press a key to continue.";
	talk_GAMESCRIPT justumen " * When you see this \\e[1;15;45m # \\e[0m the script is waiting for you to type something."
	talk_GAMESCRIPT justumen "The commands you will execute in GameScript will ${voc}really${reset} happen on your machine."
	talk_GAMESCRIPT justumen "You can then, if you desire, see their effects on a file manager at the same time."
	talk_GAMESCRIPT justumen "Therefore, every commands run in GameScript have to be stricly controled."
	talk_GAMESCRIPT justumen "This \\e[97;45m # \\e[0m will let through on ${voc}one${reset}, GameScript is ${voc}not${reset} a true emulator"
	talk_GAMESCRIPT justumen "Every subjects and chapters will work in the same way."
	talk_GAMESCRIPT justumen "  At the start you will have to choose between 'access the lecture' or 'access the quiz'."
	talk_GAMESCRIPT justumen "If you think that you don't need the lecture, you can go straight to the quiz."
	talk_GAMESCRIPT justumen "If you can answer ${voc}perfectly${reset} to the chapter's quiz, you can then go to the next chapter without having to follow the lecture."
	talk_GAMESCRIPT justumen "But if you need to follow, the quiz will come back at the it of it and will have to answer it perfectly to move on."
	talk_GAMESCRIPT justumen "Do not hesitate to do the lecture or the quiz more than one time if needed."
	talk_GAMESCRIPT justumen "Do not go too fast on the next chapter if your comprehension of the preceding lecture isn't well understood."
	talk_GAMESCRIPT justumen "Even if I don't recommend you to quit a lecture in the middle, you can still do it with Ctrl + c"
	talk_GAMESCRIPT justumen "In most situations, GameScript should be able to recover and come back to the place you left when you wish to continue."
	talk_GAMESCRIPT justumen "Thank you for supporting GameScript and my other projects on https://www.patreon.com/justumen"
	talk_GAMESCRIPT justumen "And thank you to tell me about bugs if you find some. :-)"
	talk_GAMESCRIPT justumen "GameScript is and will stay closely linked to our chat, available at : https://rocket.justumen.org/, and our discord : "
talk_GAMESCRIPT justumen "You can confirm your knowledge with the passwords given by GameScript and you will be able unlock badges within our chats."
	talk_GAMESCRIPT justumen "If you are a new GameScript user, I invite you to create your account on https://github.com/ and to use it to connect to our chat : https://rocket.justumen.org/."
	talk_GAMESCRIPT justumen "If you already have a github account, please type your pseudo here, so that GameScript can generate your passwords accordingly."
	PSEUDO=""
	while [[ $PSEUDO = "" ]]; do
		echo -en "\e[97;45m # \e[0m"
		read -r PSEUDO < /dev/tty
	done
	talk_GAMESCRIPT justumen "I wish you a good day and good luck !"
}


# ███████  ██████  ██    ██ ███    ██ ██████  ███████
# ██      ██    ██ ██    ██ ████   ██ ██   ██ ██
# ███████ ██    ██ ██    ██ ██ ██  ██ ██   ██ ███████
#      ██ ██    ██ ██    ██ ██  ██ ██ ██   ██      ██
# ███████  ██████   ██████  ██   ████ ██████  ███████


function unpause_music(){
	MUSIC_PID=$(ps -ef|grep "$SOUNDPLAYER_MUSIC"|grep Music|grep -v quiz|awk '{print $2}'|head -n 1)
	if [[ "$MUSIC_PID" != "" ]]; then
		kill -SIGCONT $MUSIC_PID &> /dev/null
	fi
}
function stop_quiz_music(){
	QUIZ_MUSIC_PID=$(ps -ef|grep "$SOUNDPLAYER_MUSIC_QUIZ"|grep Music|grep quiz|awk '{print $2}'|head -n 1)
	if [[ "$QUIZ_MUSIC_PID" != "" ]]; then
		kill $QUIZ_MUSIC_PID &> /dev/null
	fi
}
function new_sound(){
	$SOUNDPLAYER "$AUDIO_LOCAL/$AUDIOCMP.mp3" &> /dev/null &
	AUDIOCMP=`expr $AUDIOCMP + 1`
	#wget -nc $AUDIO_DL/$AUDIOCMP.mp3 -O $AUDIO_LOCAL/$AUDIOCMP.mp3 > /dev/null 2>&1 & #download next one
}
function download_first_sound_INTRO(){
	mkdir -p $AUDIO_LOCAL 2> /dev/null
	wget -q $AUDIO_DL/1.mp3 -O $AUDIO_LOCAL/1.mp3
}
function download_all_sounds_INTRO(){
	cd $AUDIO_LOCAL || exit
	i=2
	rm to_dl.wget 2> /dev/null
	while [ $i -le 22 ]; do
		#~ ( wget -q $AUDIO_DL/$i.mp3 -O $AUDIO_LOCAL/$i.mp3 || rm $AUDIO_LOCAL/$i.mp3 ) &> /dev/null &
		echo "$AUDIO_DL/$i.mp3" >> to_dl.wget
		i=`expr $i + 1`
	done
	cat to_dl.wget | xargs -n 1 -P 4 wget -q &
}
function download_first_video_INTRO(){
	mkdir -p $VIDEO_LOCAL 2> /dev/null
	wget -q $VIDEO_DL/1.mp3 -O $VIDEO_LOCAL/1.mp3
}
function download_all_videos_INTRO(){
	cd $VIDEO_LOCAL || exit
	i=2
	rm to_dl.wget 2> /dev/null
	while [ $i -le 22 ]; do
		#~ ( wget -q $AUDIO_DL/$i.mp3 -O $AUDIO_LOCAL/$i.mp3 || rm $AUDIO_LOCAL/$i.mp3 ) &> /dev/null &
		echo "$VIDEO_DL/$i.mp3.mp4" >> to_dl.wget
		i=`expr $i + 1`
	done
	cat to_dl.wget | xargs -n 1 -P 4 wget -q &
}

# ██       █████  ██    ██ ███    ██  ██████ ██   ██
# ██      ██   ██ ██    ██ ████   ██ ██      ██   ██
# ██      ███████ ██    ██ ██ ██  ██ ██      ███████
# ██      ██   ██ ██    ██ ██  ██ ██ ██      ██   ██
# ███████ ██   ██  ██████  ██   ████  ██████ ██   ██



#QUIT IF $HOME IS EMPTY
if [ "$HOME" == "" ]; then
	echo "\$HOME doesn't exist !"
	exit 8
fi
#QUIT if bad dependancies : bash 4.x and base64
if ((BASH_VERSINFO[0] < 4)); then
	bash --version
	echo "Bash is too old, please update it..."
	exit 2
fi
#QUIT if no base64 for password
command -v base64 >/dev/null 2>&1 || { echo "You need the command : base64." >&2; exit 3; }
#QUIT if no git
command -v git >/dev/null 2>&1 || { echo "You need the command : git. (Install on debian : sudo apt-get install git)" >&2; exit 3; }

#CONFIG FILE
if [ -f ~/.GameScript/config ]; then
	echo -e "Configuration : ~/.GameScript/config\n"
	source ~/.GameScript/config
else
	create_config
	source ~/.GameScript/config
fi

HELP=0
ROOT_DOCKER=0
#~ MUTE=0
#~ VIDEO=0
if [ $# -ne 0 ]; then
	echo -n "Temporary changes with inline arguments : "
	POSITIONAL=()
	while [[ $# -gt 0 ]]; do
	  key="$1"
	  case $key in
		  -l|--language)
			LANGUAGE="$2"
			echo -n "LANGUAGE=$2 "
			shift # past argument
			shift # past value
		  ;;
		  -h|--help)
			HELP=1
			shift # past argument
		  ;;
		  -p|--password|--passwords)
			PASSWORD=1
			shift # past argument
		  ;;
		  -v|--video)
			VIDEO=1
			echo -n "VIDEO=1 "
			shift # past argument
		  ;;
		  -m|--mute)
			MUTE=1
			echo -n "MUTE=1 "
			shift # past argument
		  ;;
		  -N|--no-voice)
			VOICE=0
			echo -n "VOICE=0 "
			shift # past argument
		  ;;
		  -M|--no-music)
			MUSIC=0
			echo -n "MUSIC=0 "
			shift # past argument
		  ;;
		  --root-docker)
			ROOT_DOCKER=1
			echo -n "ROOT_DOCKER=1 "
			shift # past argument
		  ;;
		  -R|--no-sound-effect)
			SOUND_EFFECT=0
			echo -n "SOUND_EFFECT=0 "
			shift # past argument
		  ;;
		  *) # unknown option
			POSITIONAL+=("$1") # save it in an array for later
			shift # past argument
		  ;;
	  esac
	done
	#~ echo -e "\n\n"
	echo -e "\n"
fi

#QUIT if launched as root
if [ "$(id -u)" == "0" ] && [ "$ROOT_DOCKER" == "0" ]; then
	echo "Launching something as root is very dangerous, don't do it !" 1>&2
	exit 1
fi


if [[ $HELP == 1 ]]; then gamescript_help; goodbye; fi
if [[ $PASSWORD == 1 ]]; then my_passwords; goodbye; fi
if [[ $MUTE == 0 ]]; then
	( command -v mplayer || command -v mpg123 ) &>/dev/null || { echo -e "Without the option -m, you need to install mplayer or mpg123..." >&2; exit 3; }
	#~ command -v mplayer &> /dev/null && SOUNDPLAYER="mplayer -af volume=10" || SOUNDPLAYER="mpg123 --scale 100000"
	command -v mplayer &> /dev/null && SOUNDPLAYER="mplayer -volume 100" || SOUNDPLAYER="mpg123"
	# -af volume=10 ADD 10 decibels
fi
if [[ $VIDEO == 1 ]]; then
	command -v mpv &> /dev/null || { echo -e "You need to install 'mpv' to play the videos." >&2; exit 4; };
fi
set -- "${POSITIONAL[@]}" # restore positional parameters
# echo LANGUAGE = "${LANGUAGE} (change with \"--language xx\" or \"-l xx\" where xx is the language)"



# ██       █████  ███    ██  ██████  ██    ██  █████   ██████  ███████
# ██      ██   ██ ████   ██ ██       ██    ██ ██   ██ ██       ██
# ██      ███████ ██ ██  ██ ██   ███ ██    ██ ███████ ██   ███ █████
# ██      ██   ██ ██  ██ ██ ██    ██ ██    ██ ██   ██ ██    ██ ██
# ███████ ██   ██ ██   ████  ██████   ██████  ██   ██  ██████  ███████



#PREPARE TEXT VARIABLES BASED ON THE SELECTED LANGUAGE
case $LANGUAGE in
	en) TEXT_CHAPTER="chapter"
		TEXT_MUSIC_1="No background music : ~/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3 doesn't exist yet"
		TEXT_MUSIC_2="For example, to download one (1h of medieval music) : \e[30;48;5;82myoutube-dl --extract-audio --audio-format mp3 -o ~/.GameScript/Sounds/$SOUND_FAMILY/Music/1.m4a https://www.youtube.com/watch\?v\=DEeAN471boQ\e[0m"
		TEXT_MUSIC_COMMON="But you need to install 'ffmpeg' and 'youtube-dl' first, \e[30;48;5;82msudo apt-get install youtube-dl ffmpeg\e[0m on Debian/Ubuntu/Mint."
		TEXT_MUSIC_QUIZ_1="No quiz music : ~/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.mp3 doesn't exist"
		TEXT_MUSIC_QUIZ_2="For example, to download one (mortal kombat) : \e[30;48;5;82myoutube-dl --extract-audio --audio-format mp3 -o ~/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.m4a https://www.youtube.com/watch\?v\=EAwWPadFsOA\e[0m"
		TEXT_DOWNLOADING_CHAPTER="Downloading last version of this chapter..."
		TEXT_INTERNET_ERROR="Error, no internet ?"
		TEXT_BACK="Back"
		TEXT_NO_PASSWORD="You don't have any password. :)"
	;;
	fr) TEXT_CHAPTER="chapitre"
		TEXT_MUSIC_1="Pas de musique de fond : ~/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3 n'existe pas encore."
		TEXT_MUSIC_2="Par exemple, pour en télécharger une (1h de musique mediévale) : \e[30;48;5;82myoutube-dl --extract-audio --audio-format mp3 -o ~/.GameScript/Sounds/$SOUND_FAMILY/Music/1.m4a https://www.youtube.com/watch\?v\=DEeAN471boQ\e[0m"
		TEXT_MUSIC_COMMON="Mais vous devez d'abord installer 'ffmpeg' et 'youtube-dl', \e[30;48;5;82msudo apt-get install youtube-dl ffmpeg\e[0m sur Debian/Ubuntu/Mint."
		TEXT_MUSIC_QUIZ_1="Pas de musique de quiz : ~/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.mp3 n'existe pas encore."
		TEXT_MUSIC_QUIZ_2="Par exemple, pour en télécharger une (mortal kombat) : \e[30;48;5;82myoutube-dl --extract-audio --audio-format mp3 -o ~/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.m4a https://www.youtube.com/watch\?v\=EAwWPadFsOA\e[0m"
		TEXT_DOWNLOADING_CHAPTER="Téléchargement de la dernière version de ce chapitre..."
		TEXT_INTERNET_ERROR="Erreur, pas d'internet ?"
		TEXT_BACK="Retour"
		TEXT_NO_PASSWORD="Vous n'avez aucun mot de passe. :)"
	;;
	*) echo -e "Unknown language, exiting... Use for example : gamescript -l en"; pkill mplayer; pkill mpg123; exit #pkill if -l with bad argument music not stop :P ???
	;;
esac

#BACKGROUND MUSIC
if [[ $MUTE == 0 ]] && [[ $MUSIC == 1 ]]; then
	if [[ "$SOUND_FAMILY" != "" ]]; then
		mkdir -p ~/.GameScript/Sounds/default/Music 2> /dev/null
		#~ stty intr undef
		#~ (trap '' INT; mplayer /home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3 &>/dev/null &)
		command -v mplayer &> /dev/null && SOUNDPLAYER_MUSIC="mplayer -volume 35" || SOUNDPLAYER_MUSIC="mpg123 --scale 11445"
		if [ -f "/home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3" ];then
			echo "Background music : ~/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3"
			#~ echo "$SOUNDPLAYER_MUSIC /home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3"
			$SOUNDPLAYER_MUSIC /home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/1.mp3 &>/dev/null &
		else
			echo "$TEXT_MUSIC_1"
			echo -e "$TEXT_MUSIC_2"
			command -v ffmpeg &> /dev/null || echo -e "$TEXT_MUSIC_COMMON"
			command -v youtube-dl &> /dev/null || echo -e "$TEXT_MUSIC_COMMON"
		fi
		echo ""
		if [ -f "/home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.mp3" ]; then
			echo "Quiz music : /home/umen/.GameScript/Sounds/$SOUND_FAMILY/Music/quiz_1.mp3"
		else
			echo "$TEXT_MUSIC_QUIZ_1"
			echo -e "$TEXT_MUSIC_QUIZ_2"
			command -v ffmpeg &> /dev/null || echo -e "$TEXT_MUSIC_QUIZ_COMMON"
			command -v youtube-dl &> /dev/null || echo -e "$TEXT_MUSIC_QUIZ_COMMON"
		fi
		echo ""
	else
		echo "Corrupted or obsolete ~/.GameScript/config file, please delete it and launch gamescript again. :)" && exit
	fi
fi





reset='\e[0m'
#~ voc='\e[1m'
voc='\e[4;37m'

AUDIOCMP=1;
AUDIO_DL="https://raw.githubusercontent.com/justUmen/GameScript/master/$LANGUAGE/classic/bash/Audio/m1/intro"
AUDIO_LOCAL="$HOME/.GameScript/Audio/$LANGUAGE/classic/bash/m1/intro"

VIDEOCMP=1;
VIDEO_DL="https://raw.githubusercontent.com/justUmen/GameScript/master/$LANGUAGE/classic/bash/Video/m1/intro"
VIDEO_LOCAL="$HOME/.GameScript/Video/$LANGUAGE/classic/bash/m1/intro"

#VIDEO
if [[ $VIDEO == 1 ]]; then
	if [[ $MUTE == 0 ]]; then
		if [ ! -f "$HOME/.GameScript/mpv_config" ]; then
			echo -e "autofit-larger=30%x30%\ngeometry=100%:100%" > "$HOME/.GameScript/mpv_config"
		fi
		if [ ! -f "$HOME/.GameScript/10FPS_idle.mp4" ]; then
			wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/10FPS_idle.mp4 -O $HOME/.GameScript/10FPS_idle.mp4
		fi
		if [ ! -f "$VIDEO_LOCAL/1.mp3.mp4" ]; then
			wget -q --spider http://google.com
			if [ $? -eq 0 ]; then
				download_first_video_INTRO
				download_all_videos_INTRO
			else
				echo "Cannot download video, no internet ?"
			fi
		fi
	fi
else #SIMPLE AUDIO
	if [[ $MUTE == 0 ]]; then
		if [ ! -f "$AUDIO_LOCAL/1.mp3" ]; then
			wget -q --spider http://google.com
			if [ $? -eq 0 ]; then
				download_first_sound_INTRO
				download_all_sounds_INTRO
			else
				echo "Cannot download audio, no internet ?"
			fi
		fi
	fi
fi


command -v toilet &> /dev/null && toilet -f mono9 GameScript -w 100
if [ ! -f "$HOME/.GameScript/username" ]; then
  mkdir ~/.GameScript/ 2> /dev/null
  if [ "$LANGUAGE" == "fr" ]; then
		justumen_intro_fr
  elif [ "$LANGUAGE" == "en" ]; then
		justumen_intro_en
  fi
  echo -n "$PSEUDO" > $HOME/.GameScript/username
  #DOWNLOAD STANDALONE
  git clone --depth 1 https://github.com/justUmen/GameScript_standalone $HOME/.GameScript/GameScript_standalone
  select_subject
else
	PSEUDO=`cat $HOME/.GameScript/username`
	if [[ "$PSEUDO" == "guest" ]]; then
		#SMALL INTRO MESSAGE ???
		echo "GameScript pseudo :"
		PSEUDO=""
		while [[ $PSEUDO = "" ]]; do
			echo -en "\e[97;45m # \e[0m"
			read -r PSEUDO < /dev/tty
		done
		echo ""
	  #Random welcome back ???
	  if [ "$LANGUAGE" == "fr" ]; then
	    echo -e "Content de vous voir $(cat ~/.GameScript/username) !"
	    # echo "Quel sujet vous intéresse aujourd'hui ?"
	  elif [ "$LANGUAGE" == "en" ]; then
	    echo -e "Good to see you $(cat ~/.GameScript/username) !"
	  fi
		select_subject GUEST
	else
		#DOWNLOAD OR UPDATE STANDALONE
		if [ ! -d "$HOME/.GameScript/GameScript_standalone" ]; then
			git clone --depth 1 https://github.com/justUmen/GameScript_standalone $HOME/.GameScript/GameScript_standalone
		else
			cd $HOME/.GameScript/GameScript_standalone/ && git pull --depth 1 https://github.com/justUmen/GameScript_standalone 2>/dev/null && cd -
			echo
		fi
	  #Random welcome back ???
	  if [ "$LANGUAGE" == "fr" ]; then
	    echo -e "Content de vous voir $(cat ~/.GameScript/username) !"
	    # echo "Quel sujet vous intéresse aujourd'hui ?"
	  elif [ "$LANGUAGE" == "en" ]; then
	    echo -e "Good to see you $(cat ~/.GameScript/username) !"
	  fi
	  select_subject
	fi
fi
