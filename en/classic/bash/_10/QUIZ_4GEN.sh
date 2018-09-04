function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash10/variables 2> /dev/null
	rm $HOME/.GameScript_bash10/.MYALIAS 2> /dev/null
	rm $HOME/.GameScript_bash10/LOG 2> /dev/null
	
	
	
	rmdir $HOME/.GameScript_bash10 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Quiz Chapter 10 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "Comment afficher la commande complète de l'alias 'gamescript' ?" "alias gamescript"
  answer_text_fr "Comment afficher la liste complète de vos alias ?" "alias"
  answer_text_fr "Quel est le nom (sans le $) de la variable d'environnment utilisée par la commande man ?" "PAGER"
  answer_text_fr "Comment afficher les dix dernières lignes du fichier 'test' ?" "tail test"
  answer_text_fr "Comment affecter à la variable RET le code retour (exit status) de la dernière commande ?" "RET=$?"  
  answer_text_fr "Sans utiliser de '.', quelle commande vous permet d'ajouter les variables bash contenu dans le fichier 'VAR' dans votre session bash ?" "source VAR"
  answer_text_fr "Comment afficher les dix premières lignes du fichier 'test' ?" "head test"
  unlock "bash" "10" "aba2" "d414"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="10"
LANGUAGE="fr"
SPEAKER="m1"

LINES=147
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
