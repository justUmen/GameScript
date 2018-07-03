function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	chmod -R 744 $HOME/.GameScript_bash5 2> /dev/null
	rm $HOME/.GameScript_bash5/f1 2> /dev/null
	rm $HOME/.GameScript_bash5/f2 2> /dev/null
	rm $HOME/.GameScript_bash5/f3 2> /dev/null
	rm $HOME/.GameScript_bash5/f4 2> /dev/null
	rm $HOME/.GameScript_bash5/file 2> /dev/null
	rm $HOME/.GameScript_bash5/Dossier/X 2> /dev/null
	rm $HOME/.GameScript_bash5/Dossier/Y 2> /dev/null
	rmdir $HOME/.GameScript_bash5/Dossier 2> /dev/null
	rmdir $HOME/.GameScript_bash5 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 5 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment afficher les permissions des éléments du répertoire personnel de l'utilisateur ?" "ls -l ~"
  answer_text_fr "Quelle lettre représente un dossier dans le résultat de 'ls -l' ?" "d"
  answer_text_fr "Quel symbole représente un fichier dans le résultat de 'ls -l' ?" "-"
  answer_text_fr "Quelle lettre représente le droit d'écriture dans le résultat de 'ls -l' ?" "w"
  answer_text_fr "Quelle lettre représente le droit de lecture dans le résultat de 'ls -l' ?" "r"
  answer_text_fr "Quelle lettre représente le droit d'exécution dans le résultat de 'ls -l' ?" "x"
  answer_text_fr "Quelle est la commande capable de modifier les permissions d'un fichier ?" "chmod"
  answer_text_fr "Quelle lettre représente le propriétaire pour la commande chmod ?" "u"
  answer_text_fr "Comment supprimer la permission de lecture au propriétaire du fichier 'test' ?" "chmod u-r test"
  answer_text_fr "Comment ajouter la permission d'exécution sur le fichier 'test' à tous les utilisateurs sauf pour le propriétaire ?" "chmod go+x test"
  unlock "bash" "5" "28ab" "3d4e"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="5"
LANGUAGE="fr"
SPEAKER="m1"

LINES=155
if [ "$1" == "MUTE" ]; then
	prepare_audio
else
	if [ "$1" == "VIDEO" ]; then
		prepare_video
	fi
fi


enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
