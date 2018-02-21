#!/bin/bash
if [ "$(id -u)" == "0" ]; then
   echo "Launching something as root is very dangerous, don't do it !" 1>&2
   exit 1
fi

#Dependancies
if ((BASH_VERSINFO[0] < 4)); then
	bash --version
	echo "Bash is too old, please update it."
	exit 1
fi
command -v base64 >/dev/null 2>&1 || { echo "You need the command : base64." >&2; exit 2; }


function answer_quizCOPY_bash(){
	key="9"
	while [ "$key" -ge 8 ]; do
		echo ""
		echo -e "\\e[0;100m 1) \\e[0m $1"
		echo -e "\\e[0;100m 2) \\e[0m $2"
		echo -e "\\e[0;100m 3) \\e[0m $3"
		echo -e "\\e[0;100m 4) \\e[0m $4"
		echo -e "\\e[0;100m 5) \\e[0m $5"
		echo -e "\\e[0;100m 6) \\e[0m $6"
		echo -e "\\e[0;100m 7) \\e[0m $7"
		echo -en "\\e[1;31;42m # \\e[0m"
		read -n1 key < /dev/tty
	done
	echo -en "\n\e[0;33m...\e[0m" 
	enter_bash `expr $key + 3`
}
# mkdir ~/.GameScript/ 2> /dev/null
# mkdir ~/.GameScript/Audio/ 2> /dev/null

function download_audio(){
  echo "DL"
}

#LOCAL PERSONAL PROGRESSION : hidden file in ~/.GameScript/PERSONAL_PROGRESSION
#ROCKET BOT PERSONAL PROGRESSION

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

function gamescript_available_arguments(){
  case $1 in
    fr) echo -e "===> Arguments disponibles : \n\tbash" ;;
    en) echo -e "===> Nothing in english yet :(" ;;
  esac
  exit
}


function enter_bash(){
case $1 in
	1) echo -e "\e[0;33m...\e[0m" ;&
	2) echo -en " - Bash Bourne Again SHell :" ;&
	3) answer_quizCOPY_bash "Bash : chapitre 1" "Bash : chapitre 2" "Bash : chapitre 3" "Bash : chapitre 4" "Bash : chapitre 5" "Bash : chapitre 6" "Quitter" ;;
	4) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_1.sh | bash; exit ;;
	5) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_2.sh | bash; exit ;;
	6) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_3.sh | bash; exit ;;
	7) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_4.sh | bash; exit ;;
	8) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_5.sh | bash; exit ;;
	9) wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$LANGUAGE/$TYPE/$SUBJECT/standalone_6.sh | bash; exit ;;
	*) echo "exit"; exit ;;
esac
}
function launch_gamescript(){
  echo "LANGUAGE = $LANGUAGE"
  TYPE=$2
  echo "TYPE = $TYPE"
  SUBJECT=$3
  echo "SUBJECT = $SUBJECT"
  if [ "$3" == "bash" ]; then
	enter_bash 1
  fi
  #~ echo "curl https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$1/$2/$3/standalone_1.sh | /bin/bash"
  #~ curl https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$1/$2/$3/standalone_1.sh | /bin/bash
}

LANGUAGE="xx"
#IF no arguments
if [ $# -eq 0 ]; then
	#~ gamescript_help $LANGUAGE
	echo "GameScript in english  : gamescript -l en"
	echo "GameScript en français : gamescript -l fr"
	exit
fi

#Pkoi c'est la ???
#~ gamescript_available_arguments 



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
      *) # unknown option
        POSITIONAL+=("$1") # save it in an array for later
        shift # past argument
      ;;
  esac
done
if [[ $HELP == 1 ]]; then gamescript_help $LANGUAGE; fi

set -- "${POSITIONAL[@]}" # restore positional parameters

#echo LANGUAGE = "${LANGUAGE} (change with \"--language xx\" or \"-l xx\" where xx is the language)"

if [[ -n $1 ]]; then
  case $LANGUAGE in
    fr)
      case ${POSITIONAL[-1]} in
        bash) launch_gamescript $LANGUAGE classic bash ;;
        *) echo "Mauvais argument..."; gamescript_available_arguments $LANGUAGE
      esac
    ;;
    en)
      case ${POSITIONAL[-1]} in
        *) Echo "Wrong argument..."; gamescript_available_arguments $LANGUAGE
      esac
    ;;
  esac
else
  gamescript_available_arguments $LANGUAGE
  #~ gamescript_help $LANGUAGE
fi
