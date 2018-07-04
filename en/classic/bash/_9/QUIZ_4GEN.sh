function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash9/code_bash 2> /dev/null
	rm $HOME/.GameScript_bash9/code_bash2 2> /dev/null
	rmdir $HOME/.GameScript_bash9/FOLDER/FOLDER 2> /dev/null
	rmdir $HOME/.GameScript_bash9/FOLDER 2> /dev/null
	rmdir $HOME/.GameScript_bash9 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 9 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment afficher le contenu de la variable 'PATH' ?" 'echo $PATH'
  answer_text_fr "Comment ajouter ':/bin' à la fin de la variable 'PATH' ?" 'PATH=$PATH:/bin'
  answer_text_fr "Sans utiliser les apostrophes, comment ajouter un espace à la fin de la variable 'phrase' ?" 'phrase=$phrase" "'
  answer_text_fr "Comment afficher vos variables d'environnement avec 'less' ?" "printenv|less"
  answer_text_fr "Comment afficher le chemin absolu du fichier utilisé par la commande 'date' ?" "type date"
  answer_text_fr "Si vous executez le script bash '/scripts/sc' dans le dossier '/var/' et que ce script contient le code 'rm f', quel est le chemin absolu du fichier que 'bash' voudra supprimer ?" "/var/f"
  unlock "bash" "9" "6521" "ddd2"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="9"
LANGUAGE="fr"
SPEAKER="m1"

LINES=142
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
