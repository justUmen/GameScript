#!/bin/bash

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
    fr) echo <<END
===> Juste bash de disponible pour le moment
END
;;
    en) echo <<END
===> Nothing in english yet :(
END
;;
  esac
  exit
}

function launch_gamescript(){
  echo "LANGUAGE = $1"
  echo "TYPE = $2"
  echo "SUBJECT = $3"
  echo "curl https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$1/$2/$3/standalone_1.sh | /bin/bash"
  curl https://raw.githubusercontent.com/justUmen/GameScript_standalone/master/$1/$2/$3/standalone_1.sh | /bin/bash
}

LANGUAGE="en"
if [ $# -eq 0 ]; then gamescript_help $LANGUAGE; fi

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
        *) gamescript_available_arguments $LANGUAGE
      esac
    ;;
    en)
      case ${POSITIONAL[-1]} in
        *) gamescript_available_arguments $LANGUAGE
      esac
    ;;
  esac
else
  gamescript_help $LANGUAGE
fi
