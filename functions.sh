#SOME ADDED AND CHANGE IN CLI learn_cli.sh in CLASSIC

function encode_b64(){
	echo -n "$2$1$3" | base64
}

function press_key(){
	echo -en "\e[0;33m...\e[0m"
	read -s -n1 key < /dev/tty
	if [ "$key" == 'q' ] || [ "$key" == 'e' ]; then
		pkill mpg123  > /dev/null 2>&1
		echo -e "\e[0m "
		exit 1
	fi
	if [ "$key" == 'r' ]; then
		pkill mpg123  > /dev/null 2>&1
		normal_line $restore
	fi
	pkill mpg123
}

#	echo -en "\e[0;33m...\e[0m "
function talk(){
	echo -e "($restore)\e[0;32m $1\e[0m - $2"
	#~ echo -n "$restore" > ~/PERSONAL_PROGRESS
	press_key
	#~ restore=$(expr $restore + 1)
	echo -n "cd `pwd`" > "$HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER"
	echo -n "$restore" > "$HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER"
	echo "==> $restore $CHAPTER_NAME $CHAPTER_NUMBER"
}
function talk_not_press_key(){
	echo -e "($restore)\e[0;32m $1\e[0m - $2"
	#~ restore=$(expr $restore + 1)
	echo "==> $restore"
}
function talk_not_press_key_ANSWER(){
	echo -en "($restore)\e[0;32m $1\e[0m - "
	echo -ne "\\e[4;37m"
	echo -nE "$2"
	echo -e "\\e[0m"
	#~ restore=$(expr $restore + 1)
}

function answer_quiz(){
	#$7 = bash, from enter_chapter
	# echo " ---> $7 <--- "
	key="9"
	while [ "$key" != "1" ] || [ "$key" != "2" ] || [ "$key" != "3" ]; do
		# echo ""
		echo -e "\\e[0;100m 1) \\e[0m $1"
		echo -e "\\e[0;100m 2) \\e[0m $2"
		echo -e "\\e[0;100m 3) \\e[0m $3"
		echo -en "\\e[1;31;45m # \\e[0m"
		read key < /dev/tty
		case $key in
			1) 	CHAPTER_FOLDER=".GameScript_$7$8"
				if [ -d "$HOME/$CHAPTER_FOLDER" ];then
					echo "$CHAPTER_FOLDER existe déjà, continuer ou recommencer le cours du début ?"
					while [ "$choice" != "1" ] || [ "$choice" != "2" ] || [ "$choice" != "3" ]; do
						echo -e "\\e[0;100m 1) \\e[0m Continuer"
						echo -e "\\e[0;100m 2) \\e[0m Recommencer"
						echo -e "\\e[0;100m 3) \\e[0m Retour"
						echo -en "\\e[1;31;45m # \\e[0m"
						read choice < /dev/tty
						case $choice in
							1)  cd `cat "$HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER"`
								start_lecture `cat "$HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER"` ;;
							2) 	clean
								start_lecture 1
								;;
							3) exit ;;
						esac
					done
				fi
				start_lecture 1
				;;
			2) start_quiz ;;
			3) exit ;;
		esac
	done
}
function answer_text_fr(){
	echo "> $1"
	echo -en "\\e[1;31;45m # \\e[0m"
	read -r USER_CODE < /dev/tty
	if [ ! "$USER_CODE" == "$2" ]; then
		talk_not_press_key justumen "\\e[4;37mDésolé, réponse fausse ou trop longue. Je vous conseille de suivre le cours.\\e[0m"
		exit
	else
		talk_not_press_key justumen "Correct !"
	fi
}
function answer_run(){
	echo -en "\\e[1;31;45m # \\e[0m"
	read -r USER_CODE < /dev/tty
	while [ ! "$USER_CODE" == "$1" ]; do
		if [ ! "$USER_CODE" == "" ]; then
			talk_not_press_key_ANSWER "$2" "$1"
		fi
		echo -en "\\e[1;31;45m # \\e[0m"
		read -r USER_CODE < /dev/tty
	done
	if [ ! "$1" == "" ];then
		echo -e "\e[1m"
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
		eval "$1"
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
		echo -e "\\e[0m"
	fi
	#~ restore=$(expr $restore + 1)
	echo "==> $restore"
}
function start_dots(){
	echo -en "\e[0;33m...\e[0m"
}

function title(){
	echo -e "\e[1m"
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
	echo "$1"
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
	echo -e "\\e[0m"
}

black_on_green='\e[30;48;5;82m'
black_on_lightblue='\e[30;48;5;81m'
black_on_red='\e[41m'
On_Black='\e[40m'
reset='\e[0m'

basic=$On_Black
code=$black_on_lightblue
codeFile=$black_on_green
codeError=$black_on_red

#UNDERLINE
voc='\e[1m'
#BLUE
learn='\e[40;38;5;10m'

function justumen_intro_fr(){
echo -e "
Bonjour,
Vous êtes ici dans un ${voc}terminal${reset} linux.
Ce fichier que vous avez lancé est un script bash qui peut vous aider a apprendre le ${voc}bash${reset}.
Bash est le ${voc}shell${reset} par défaut de la grande majorité des systèmes linux.
Ce script est interactif :
  Lorsque vous voyez \e[0;33m...\e[0m le script attend que vous pressiez une touche pour continuer. (comme la touche Espace ou Entrée)
  Lorsque vous voyez \\e[1;31;45m # \\e[0m le script attend que vous tapiez une commande linux. (lettre par lettre)

Le code bash que vous allez taper s'exécutera réellement sur votre machine.
Tous les codes que vous tapez sont donc strictement controlés, il ne laissera passer qu'une seule commande, ce n'est donc pas un véritable terminal.

Tous les chapitres fonctionneront de la même manière :
  Au début vous devez choisir entre 'accéder au cours' ou 'accéder au questionnaire'.

Si vous pensez ne pas avoir besoin du cours, vous pouvez directement aller au questionnaire.
Si vous répondez parfaitement au questionnaire, vous pourrez donc débloquer le prochain niveau sans avoir besoin du cours.

En revanche si vous devez suivre le cours, le questionnaire reviendra à la fin et vous aurez aussi besoin d'y répondre parfaitement pour allez plus loin.

Si le contenu du cours est nouveau pour vous, n'hésitez pas à relancer ce script à plusieures reprises, notamment à des intervalles de temps différentes.
Par exemple, une fois aujourd'hui, une autre fois demain et une autre la semaine prochaine. Le contenu doit être entièrement assimillé avant d'aller plus loin.
Ne passez pas trop vite au niveau suivant si votre compréhension du cours précédent est incertaine.

Je vous recommande de ne pas quitter un cours au milieu, même si pouvez le faire avec CTRL + C.
Le script nettoie derrière lui tout ce qu'il a créé, si vous coupez le script au milieu il vous faudra donc nettoyer manuellement.

Bonne journée et bonne chance !

Merci de soutenir mes cours et mes projets sur https://www.patreon.com/justumen
Et merci de me signalez les bugs si vous en trouvez.
Justumen
"
}


#OBSOLETE ?
#~ restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
restore=1
function new_game_or_restore(){
	#restore, 1 new game, otherwise x in file PERSONAL_PROGRESS
	restore=1
	if [ -e "~/PERSONAL_PROGRESS" ]; then
		restore=`cat ~/PERSONAL_PROGRESS`
	else
		echo -n "1" > ~/PERSONAL_PROGRESS
	fi
	if [ "$1" ];then
		restore=`expr $1 - 1`
		echo -n "$1" > ~/PERSONAL_PROGRESS
	fi
}

#~ function normal_line(){
	#~ restore=$1
	#~ play_mp3 "$restore"
	#~ print_line "$line"
	#~ press_key
#~ }

function play_mp3(){
	if [ -e "sounds/$1.mp3" ];then
		mpg123 "sounds/$1.mp3" > /dev/null 2>&1 &
	fi
}
function event(){
	echo -e "\\e[0;100m $1\\e[0m"
	press_key
	restore=$(expr $restore + 1)
}







function unlock(){
	#Usage : unlock "bash" "1" "24d8" "f016"
	PSEUDO=`cat "$HOME/.GameScript/username"`
	PASS=`encode_b64 $PSEUDO "$3" "$4"`
	talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et copiez/collez : password$PASS"
	touch "$HOME/.GameScript/good_$1$2" 2> /dev/null
	mkdir $HOME/.GameScript/passwords/ 2> /dev/null
	echo -n "$PASS" > "$HOME/.GameScript/passwords/$1$2"
	exit
}

function enter_chapter(){
	#Usage : enter_chapter bash 1 1 (first 1 is chapter, next one is for case)
	echo ""
	echo -e "\e[15;5;44m - $1, Chapitre $2 \e[0m"
	answer_quiz "Cours" "Questionnaire" "Retour" "4" "5" "6" "$1" "$2"
}
