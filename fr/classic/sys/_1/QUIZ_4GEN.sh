function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rmdir $HOME/.GameScript_sys1 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m System : Questionnaire du chapitre 1 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
#^C+c , ^C+z , jobs , fg , bg , kill , disown , PID , PPID , SIGCONT , SIGINT , SIGTSTP , SIGKILL
  answer_text_fr "Quelle est la commande qui affiche la liste de vos 'jobs' ?" "jobs"
  answer_text_fr "Comment lancer le gestionnaire de fichier 'pcmanfm' en arrière plan à partir d'un terminal ?" "pcmanfm&"
  answer_text_fr "Si votre job est 'Stopped', quel signal devez vous envoyer pour le rendre utilisable ? (Votre réponse doit commencer par SIG)" "SIGCONT"
  answer_text_fr "Quelle est la lettre INCONNU dans la phrase ? : Pour envoyer le signal SIGINT au processus, vous devez faire 'Ctrl + INCONNU'." "c"
  answer_text_fr "Un PID représente uniquement un seul processus à un moment donné. (vrai/faux)" "vrai"
  answer_text_fr "Un PPID en revanche peut représenter plusieurs processus à un moment donné. (vrai/faux)" "faux"
  answer_text_fr "Quelle est la commande pour envoyer le job numéro 4 en arrière plan ?" "bg %4"
  answer_text_fr "Quelle est la commande pour demander sa fermeture au processus avec le PID 666 ?" "kill 666"
  answer_text_fr "Quelle est la commande qui permet d'éviter que le job numéro 4 ne se ferme en même temps que son terminal parent ?" "disown %4"
  answer_text_fr "Quelle est la lettre INCONNU dans la phrase ? : Pour envoyer le signal SIGTSTP au processus, vous devez faire 'Ctrl + INCONNU'." "z"
  answer_text_fr "Quelle est la commande qui peut fermer le processus avec le PID 666 même s'il ne répond plus ? (la commande doit utiliser la syntaxe -SIG...)" "kill -SIGKILL 666"
  unlock "sys" "1" "bbb2" "112b"
}


CHAPTER_NAME="sys"
CHAPTER_NUMBER="1"
LANGUAGE="fr"
SPEAKER="m1"

LINES=173
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
