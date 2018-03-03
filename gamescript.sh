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
function download_all_sounds_INTRO(){
	cd $AUDIO_LOCAL || exit
	i=1
	rm to_dl.wget 2> /dev/null
	while [ $i -le 22 ]; do
		#~ ( wget -q $AUDIO_DL/$i.mp3 -O $AUDIO_LOCAL/$i.mp3 || rm $AUDIO_LOCAL/$i.mp3 ) &> /dev/null &
		echo "$AUDIO_DL/$i.mp3" >> to_dl.wget
		i=`expr $i + 1`
	done
	cat to_dl.wget | xargs -n 1 -P 3 wget -q &
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
  echo "Au revoir et bonne journée. :)"
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
    goodbye
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
    echo "$filename : `cat $filename`"
  done
}

function gamescript_available_arguments(){
  #LATER MENU HERE FOR SUBJECT SELECTION
  case $1 in
    fr) echo -e "===> Sujets disponibles pour le moment : \n\t\e[97;44m bash \e[0m"
		echo -e "Cette série porte le nom \e[97;44m bash \e[0m, elle regroupera cependant toutes les bases de la ligne de commande, comme par exemple les commandes Unix et l'organisation des fichiers dans un système d'exploitation de type Unix, ainsi que leurs permissions."
        launch_gamescript $LANGUAGE classic bash
		;;
    en) echo -e "===> Nothing in english yet :(" ;;
  esac
  exit
}

function enter(){
  if [[ $MUTE == 0 ]]; then
	download_all_sounds_INTRO
  fi
  #USage : enter bash 1
  #use curl if exist ? better ? can avoid cache ?
  case $1 in
    bash) TITLE="Bourne Again SHell" ;;
    *) TITLE="" ;;
  esac
  case $2 in
    # 1) echo -e "\e[0;33m...\e[0m" ;&
    1) echo "" ;&
  	2) echo -e "\e[97;44m - $1, $TITLE \e[0m" ;&
  	3) show_menu "$1" "$1 : chapitre 1" "$1 : chapitre 2" "$1 : chapitre 3" "$1 : chapitre 4" "$1 : chapitre 5" "$1 : chapitre 6" ;; #"$1 : chapitre 7"
    # *) bash ../GameScript_standalone/$LANGUAGE/classic/$1/standalone_$(expr $2 - 3).sh ;;
    *)
		if [[ $MUTE == 1 ]]; then 
			wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s MUTE
		else
			wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash -s
		fi
		;;
  esac
  enter bash 1 #go back in the menu
}

function launch_gamescript(){
  # echo "LANGUAGE = $LANGUAGE"
  TYPE=$2
  # echo "TYPE = $TYPE"
  SUBJECT=$3
  # echo "SUBJECT = $SUBJECT"
  if [ "$3" == "bash" ]; then
	   enter bash 1
  fi
}












LANGUAGE="xx"
#QUIT if no arguments
if [ $# -eq 0 ]; then
	#~ gamescript_help $LANGUAGE
	echo "GameScript in english  : gamescript -l en"
	echo "GameScript en français : gamescript -l fr"
	echo ""
	echo "GameScript without audio : gamescript -m"
	echo ""
	echo "Passwords : gamescript -p"
	exit
fi

#QUIT if launched as root
if [ "$(id -u)" == "0" ]; then
	echo "Launching something as root is very dangerous, don't do it !" 1>&2
	exit 1
fi

#QUIT IF $HOME IS EMPY
if [ "$HOME" == "" ]; then
	echo "\$HOME doesn't exist !"
	exit 8
fi

#QUIT if bad dependancies : bash 4.x and base64
if ((BASH_VERSINFO[0] < 4)); then
	bash --version
	echo "Bash is too old, please update it."
	exit 2
fi
command -v base64 >/dev/null 2>&1 || { echo "You need the command : base64." >&2; exit 3; }


POSITIONAL=()
HELP=0
MUTE=0
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
set -- "${POSITIONAL[@]}" # restore positional parameters
# echo LANGUAGE = "${LANGUAGE} (change with \"--language xx\" or \"-l xx\" where xx is the language)"

reset='\e[0m'
voc='\e[1m'

AUDIOCMP=1;
AUDIO_DL="https://raw.githubusercontent.com/justUmen/GameScript/master/fr/classic/bash/Audio/m1/intro"
AUDIO_LOCAL="$HOME/.GameScript/Audio/fr/bash/intro"
function justumen_intro_fr(){
  mkdir -p ~/.GameScript/Audio/fr/bash/intro 2> /dev/null
  
	if [[ $MUTE == 0 ]]; then 
		wget -nc $AUDIO_DL/1.mp3 -O $AUDIO_LOCAL/1.mp3 > /dev/null 2>&1 #Wait for download of first one
	fi
	
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
talk_GAMESCRIPT justumen "Bonne journée à vous et bonne chance !
 - Justumen
"
}

if [ ! -f "$HOME/.GameScript/username" ]; then
  #STORE LOCAL PERSONAL PROGRESSION : hidden file like ~/.GameScript/bash_1 ...
  #STORE USER : ~/.GameScript/username
  # mkdir ~/.GameScript/Audio/ 2> /dev/null ???
  mkdir ~/.GameScript/ 2> /dev/null
  if [ "$LANGUAGE" == "fr" ]; then
	justumen_intro_fr
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

#LAUNCH
# if [[ -n $1 ]]; then
#   case $LANGUAGE in
#     fr)
#       case ${POSITIONAL[-1]} in
#         bash) launch_gamescript $LANGUAGE classic bash ;;
#         *) echo "Mauvais argument..."; gamescript_available_arguments $LANGUAGE
#       esac
#     ;;
#     en)
#       case ${POSITIONAL[-1]} in
#         *) Echo "Wrong argument..."; gamescript_available_arguments $LANGUAGE
#       esac
#     ;;
#   esac
# else
#   gamescript_available_arguments $LANGUAGE
#   #~ gamescript_help $LANGUAGE
# fi
