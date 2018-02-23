#!/bin/bash
###??? to change as well for subjects
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
    	   echo -e "\e[0;100m $argCMP) \e[15;5;42m $ARG (SUCCESS) \e[0m"
      else
         echo -e "\e[0;100m $argCMP) \e[15;5;44m $ARG \e[0m"
      fi
      argCMP=`expr $argCMP + 1`
    done
    # echo ""
  	echo -e "\e[0;100m e) \e[0m Exit"
    # echo ""
		echo -en "\e[1;31;45m # \e[0m"
		read selected < /dev/tty
	done
	# echo -en "\n\e[0;33m...\e[0m"
	if [ "$selected" != "e" ];then
    enter bash `expr $selected + 3`
  else
    goodbye
  fi
}

function download_audio(){
  echo "DL"
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
    fr) echo -e "===> Sujets disponibles pour le moment : \n\t\e[15;5;44m bash \e[0m"
        launch_gamescript $LANGUAGE classic bash ;;
    en) echo -e "===> Nothing in english yet :(" ;;
  esac
  exit
}

function enter(){
  #USage : enter bash 1
  #use curl if exist ? better ? can avoid cache ?
  case $1 in
    bash) TITLE="Bourne Again SHell" ;;
    *) TITLE="" ;;
  esac
  case $2 in
    # 1) echo -e "\e[0;33m...\e[0m" ;&
    1) echo "" ;&
  	2) echo -e "\e[15;5;44m - $1, $TITLE \e[0m" ;&
  	3) show_menu "$1" "$1 : chapitre 1" "$1 : chapitre 2" "$1 : chapitre 3" "$1 : chapitre 4" "$1 : chapitre 5" "$1 : chapitre 6" ;; #"$1 : chapitre 7"
    # *) bash ../GameScript_standalone/$LANGUAGE/classic/$1/standalone_$(expr $2 - 3).sh ;;
    *) wget --no-cache -q -O - "https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_$(expr $2 - 3).sh" | bash ;;
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
  echo "Your passwords : gamescript -p"
	exit
fi

#QUIT if launched as root
if [ "$(id -u)" == "0" ]; then
   echo "Launching something as root is very dangerous, don't do it !" 1>&2
   exit 1
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
      *) # unknown option
        POSITIONAL+=("$1") # save it in an array for later
        shift # past argument
      ;;
  esac
done
if [[ $HELP == 1 ]]; then gamescript_help $LANGUAGE; fi
if [[ $PASSWORD == 1 ]]; then my_passwords; fi
set -- "${POSITIONAL[@]}" # restore positional parameters
# echo LANGUAGE = "${LANGUAGE} (change with \"--language xx\" or \"-l xx\" where xx is the language)"


if [ ! -d "$HOME/.GameScript" ]; then
  #STORE LOCAL PERSONAL PROGRESSION : hidden file like ~/.GameScript/bash_1 ...
  #STORE USER : ~/.GameScript/username
  # mkdir ~/.GameScript/Audio/ 2> /dev/null ???
  if [ "$LANGUAGE" == "fr" ]; then
    echo "Bonjour à vous !"
    echo "GameScript est et restera étroitement lié à notre chat disponible à l'adresse : https://rocket.bjornulf.org/"
    echo "Vous êtes un nouvel utilisateur de GameScript, je vous invite donc à créer votre compte sur https://github.com/ et de l'utiliser pour vous connecter à notre chat."
    echo "Si vous y êtes déjà inscrit, veuillez taper votre pseudo, afin que GameScript puisse le mémoriser pour vous."
    PSEUDO=""
    while [[ $PSEUDO = "" ]]; do
      echo -en "\e[1;31;45m # \e[0m"
      read -r PSEUDO < /dev/tty
    done
  fi
  mkdir ~/.GameScript/ 2> /dev/null
  echo -n "$PSEUDO" > ~/.GameScript/username
  if [ "$LANGUAGE" == "fr" ]; then
    echo "Vous pourrez changer ce nom manuellement plus tard dans : $HOME/.GameScript/username"
  fi
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
