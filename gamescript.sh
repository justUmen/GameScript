#!/bin/bash
###??? to change as well for subjects
function press_key_GAMESCRIPT(){
	echo -en "\e[0;33m...\e[0m"
	read -s -n1 key < /dev/tty
	pkill mplayer &> /dev/null
	pkill mpg123 &> /dev/null
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

function talk_GAMESCRIPT(){
	if [[ $MUTE == 0 ]]; then
		new_sound
	fi
	echo -e "\e[0;32m $1\e[0m - $2"
	press_key_GAMESCRIPT
}
function talk_GAMESCRIPT_not_press(){
	if [[ $MUTE == 0 ]]; then 
		new_sound
	fi
	echo -e "\e[0;32m $1\e[0m - $2"
}

function goodbye(){
  case $1 in
	fr) echo "Au revoir et bonne journée. :)" ;;
	en) echo "Goodbye and have a nice day. :)" ;;
  esac
  exit 0
}
function show_menu(){
  #Usage : show_menu bash "bash : chapitre 1" "bash : chapitre 2"
	selected="99"
  # echo "$#"
  #TEST IF NUMBER, ALLOW ONLY NUMBERS ???
	while [ "$selected" != "e" ] && [ "$selected" -gt "$#" ]; do #Answer in menu
    # echo ""
    argCMP=1
    SUBJECT=$1
    shift
    for ARG in "$@"; do #For each arguments
  		# echo -e "\\e[0;100m $argCMP) \\e[0m $ARG"
      if [ -f "$HOME/.GameScript/good_$SUBJECT$argCMP" ]; then
    	   echo -e "\e[0;100m $argCMP) \e[97;42m $ARG (SUCCESS) \e[0m"
      else
         echo -e "\e[0;100m $argCMP) \e[97;44m $ARG \e[0m"
      fi
      argCMP=`expr $argCMP + 1`
    done
    # echo ""
  	echo -e "\e[0;100m e) \e[0m Exit"
    # echo ""
		echo -en "\e[97;45m # \e[0m"
		read selected < /dev/tty
	done
	# echo -en "\n\e[0;33m...\e[0m"
	if [ "$selected" != "e" ];then
    enter bash `expr $selected + 3`
  else
    goodbye $LANGUAGE
  fi
}

function gamescript_help(){
  case $1 in
    en) echo "
===> HELP en
Available arguments :
\"--help\" or \"-h\"
\"--language XX\" or \"-l XX\" to change the language (en/english is the default language)
 Example : \"-l fr\" or \"--language fr\" set the language on french

Complete example, to launch gamescript on bash in french :

wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr bash

or you can create an alias : (alias in $HOME/.bashrc for example)

alias gamescript=\"wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s --\"

You can then launch it with \"gamescript\", or even with arguments like \"gamescript --language fr bash\".
"
;;
    fr) echo "
===> AIDE fr
Arguments disponibles :
\"--help\" ou \"-h\" pour afficher l'aide
\"--language XX\" ou \"-l XX\" pour change la langue (en/english est la langue par défaut)
 Exemple : \"-l fr\" or \"--language fr\" pour sélectionner la langue française

Exemple complet, pour lancer gamescript sur bash en français :

wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr bash

ou vous pouvez créer un alias : (alias dans $HOME/.bashrc par exemple)

alias gamescript=\"wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s --\"

Vous pouvez alors simplement lancer \"gamescript\", ou avec des argument comme \"gamescript --language fr bash\".
"
;;
    *) echo "unknown language"
  esac
  exit #exit after display help
}

function my_passwords(){
  for filename in $HOME/.GameScript/passwords/*; do
    echo "$filename : password`cat $filename`"
  done
}

function gamescript_available_arguments(){
  #MENU - SUBJECT SELECTION
  case $1 in
    fr) echo -e "===> 1) \e[97;44m bash \e[0m"
		echo -e "Cette série porte le nom \e[97;44m bash \e[0m, elle regroupera cependant toutes les bases de la ligne de commande, comme par exemple les commandes GNU et l'organisation des fichiers et de leurs permissions dans un système d'exploitation de type Unix."
		echo -e "===> 2) \e[97;44m i3wm \e[0m"
		;;
    en) echo -e "===> 1) \e[97;44m bash \e[0m"
		echo -e "This series have the name \e[97;44m bash \e[0m, but it will also cover all the basics of the linux command line, like for example GNU Core Utilities commands, as well as Unix-like operating system file organization and permissions."
		echo -e "===> 2) \e[97;44m i3wm \e[0m"\
		;;
  esac
  echo -en "\e[97;45m # \e[0m"
  read selected < /dev/tty
  case $selected in
    "1") launch_gamescript $LANGUAGE classic bash
       ;;
    "2") launch_gamescript $LANGUAGE classic i3wm
       ;;
  esac
  exit
}

function enter(){
  #USAGE : enter bash 1
  case $1 in
    bash) TITLE="Bourne Again SHell" ;;
    i3wm) TITLE="The i3 Window Manager" ;;
    *) TITLE="" ;;
  esac
  case $2 in
    # 1) echo -e "\e[0;33m...\e[0m" ;&
    1) echo "" ;&
  	2) echo -e "\e[97;44m - $1, $TITLE \e[0m" ;&
  	3)
	  case $LANGUAGE in
		fr) case $1 in
				bash) show_menu "$1" "$1 : $CHAPTER 1" "$1 : $CHAPTER 2" "$1 : $CHAPTER 3" "$1 : $CHAPTER 4" "$1 : $CHAPTER 5" "$1 : $CHAPTER 6" "$1 : $CHAPTER 7" "$1 : $CHAPTER 8" "$1 : $CHAPTER 9" 	"[NO SOUND] $1 : $CHAPTER 10" "[NO SOUND] $1 : $CHAPTER 11";; #"$1 : chapitre 8"
				i3wm) show_menu "$1" "[NO SOUND] $1 : $CHAPTER 1" ;;
				*) TITLE="" ;;
			esac
			;;
		en) case $1 in
				bash) show_menu "$1" "$1 : $CHAPTER 1" "$1 : $CHAPTER 2" "$1 : $CHAPTER 3";; #"$1 : chapitre 8"
				i3wm) show_menu "$1" "[NO SOUND] $1 : $CHAPTER 1" ;;
				*) TITLE="" ;;
			esac
			;;
		esac
	;;
    # *) bash ../GameScript_standalone/$LANGUAGE/classic/$1/standalone_$(expr $2 - 3).sh ;;
    *)
		if [[ $MUTE == 1 ]]; then
			rm $HOME/.GameScript/standalone.sh 2>/dev/null
			mkdir -p $HOME/$LANGUAGE/classic/$1/
			wget -q "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" -O $HOME/.GameScript/standalone.sh 2>/dev/null
			bash $HOME/.GameScript/standalone.sh MUTE
			#~ wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s -- MUTE
		else
			rm $HOME/.GameScript/standalone.sh 2>/dev/null
			wget -q "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" -O $HOME/.GameScript/standalone.sh 2>/dev/null
			if [[ $VIDEO == 0 ]];then
				bash $HOME/.GameScript/standalone.sh
			else
				bash $HOME/.GameScript/standalone.sh VIDEO
			fi
			#~ wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s
		fi
		;;
  esac
  #This run after finishing a standalone ? :p ???
  #~ enter bash 1 #go back in the menu
  gamescript_available_arguments #go back in the menu
}

function launch_gamescript(){
  # echo "LANGUAGE = $LANGUAGE"
  TYPE=$2
  # echo "TYPE = $TYPE"
  SUBJECT=$3
  # echo "SUBJECT = $SUBJECT"
  if [ "$3" == "bash" ]; then
	   enter bash 1
  elif [ "$3" == "i3wm" ]; then
	   enter i3wm 1
  fi
}












LANGUAGE="xx"
#QUIT if no arguments
if [ $# -eq 0 ]; then
	#~ gamescript_help $LANGUAGE
	echo "GameScript in english  : gamescript -l en"
	echo "GameScript en français : gamescript -l fr"
	echo ""
	echo "GameScript without audio : gamescript -l en -m"
	echo ""
	echo "Passwords : gamescript -p"
	exit
fi

#QUIT if launched as root
if [ "$(id -u)" == "0" ]; then
	echo "Launching something as root is very dangerous, don't do it !" 1>&2
	exit 1
fi

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
command -v base64 >/dev/null 2>&1 || { echo "You need the command : base64." >&2; exit 3; }

POSITIONAL=()
HELP=0
MUTE=0
VIDEO=0
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
      -l|--language)
        LANGUAGE="$2"
        shift # past argument
        shift # past value
      ;;
      -h|--help)
        HELP=1
        shift # past argument
      ;;
      -v|--video)
        VIDEO=1
        shift # past argument
      ;;
      -p|--password|--passwords)
        PASSWORD=1
        shift # past argument
      ;;
      -m|--mute)
        MUTE=1
        shift # past argument
      ;;
      *) # unknown option
        POSITIONAL+=("$1") # save it in an array for later
        shift # past argument
      ;;
  esac
done
if [[ $HELP == 1 ]]; then gamescript_help $LANGUAGE; fi
if [[ $PASSWORD == 1 ]]; then my_passwords; fi
if [[ $MUTE == 0 ]]; then
	( command -v mplayer || command -v mpg123 ) &>/dev/null || { echo "Without the option -m, you need to install mplayer or mpg123." >&2; exit 3; }
	command -v mplayer &> /dev/null && SOUNDPLAYER="mplayer -af volume=10" || SOUNDPLAYER="mpg123 --scale 100000"
	# -af volume=10 ADD 10 decibels
fi
if [[ $VIDEO == 1 ]]; then echo "You need 'mpv' to play the videos."; fi
set -- "${POSITIONAL[@]}" # restore positional parameters
# echo LANGUAGE = "${LANGUAGE} (change with \"--language xx\" or \"-l xx\" where xx is the language)"


#PREPARE TEXT BASED ON LANGUAGE
case $LANGUAGE in
	en) CHAPTER="chapter"
	;;
	fr) CHAPTER="chapitre"
	;;
esac



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
			echo -e "loop=inf\nautofit-larger=30%x30%\ngeometry=100%:100%" > "$HOME/.GameScript/mpv_config"
		fi
		if [ ! -f "$HOME/.GameScript/10FPS_idle.mp4" ]; then
			wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/10FPS_idle.mp4 -O $HOME/.GameScript/10FPS_idle.mp4
		fi
		mpv --no-config --loop --include=~/.GameScript/mpv_config --really-quiet --input-ipc-server=/tmp/southpark ~/.GameScript/10FPS_idle.mp4 &

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

function justumen_intro_fr(){
	talk_GAMESCRIPT justumen "Bonjour et bienvenu sur GameScript.
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
talk_GAMESCRIPT justumen "You can confirm your knowledge with passwords given by GameScript and you will unlock badges withing our chats."
	talk_GAMESCRIPT justumen "If you are a new GameScript user, I invite you to create your account on https://github.com/ and to use it to connect to our chat : https://rocket.justumen.org/."
	talk_GAMESCRIPT justumen "If you already have a github account, please type your pseudo here, so that GameScript can generate your passwords accordingly."
	PSEUDO=""
	while [[ $PSEUDO = "" ]]; do
		echo -en "\e[97;45m # \e[0m"
		read -r PSEUDO < /dev/tty
	done
	talk_GAMESCRIPT justumen "Bonne journée à vous et bonne chance !"
}

if [ ! -f "$HOME/.GameScript/username" ]; then
  #STORE LOCAL PERSONAL PROGRESSION : hidden file like ~/.GameScript/bash_1 ...
  #STORE USER : ~/.GameScript/username
  # mkdir ~/.GameScript/Audio/ 2> /dev/null ???
  mkdir ~/.GameScript/ 2> /dev/null
  if [ "$LANGUAGE" == "fr" ]; then
	justumen_intro_fr
  elif [ "$LANGUAGE" == "en" ]; then
	justumen_intro_en
  fi
  echo -n "$PSEUDO" > ~/.GameScript/username
  gamescript_available_arguments $LANGUAGE
else
  #Random welcome back
  if [ "$LANGUAGE" == "fr" ]; then
    echo "Content de vous revoir $(cat ~/.GameScript/username) !"
    # echo "Quel sujet vous intéresse aujourd'hui ?"
  fi
  gamescript_available_arguments $LANGUAGE
fi
