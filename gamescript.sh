#!/bin/bash

mkdir ~/.GameScript/ 2> /dev/null
mkdir ~/.GameScript/Audio/ 2> /dev/null
cd ~/.GameScript/

function download_audio(){
  echo "DL"
}

#LOCAL PERSONAL PROGRESSION : hidden file in ~/.GameScript/PERSONAL_PROGRESSION
#ROCKET BOT PERSONAL PROGRESSION

function gamescript_help(){
  case $1 in
    en) echo HELP ;;
    fr) echo AIDE ;;
  esac
  exit
}

function gamescript_available_arguments(){
  case $1 in
    fr) echo <<END
===> bash FR :
END
;;
    en) echo <<END
===> bash EN :
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

if [ $# -eq 0 ]; then gamescript_help en; fi
LANGUAGE="en"
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
