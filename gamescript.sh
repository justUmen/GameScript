#!/bin/bash

#LOCAL PERSONAL PROGRESSION
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
bash FR
END
;;
*) echo <<END
bash EN
END
;;
  esac
  exit
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
    case ${POSITIONAL[-1]} in
      *) gamescript_available_arguments $LANGUAGE
    esac
else
  gamescript_help $LANGUAGE
fi
