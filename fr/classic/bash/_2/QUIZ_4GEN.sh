function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash2/bOb 2> /dev/null
	rmdir $HOME/.GameScript_bash2/enfant 2> /dev/null
	rmdir $HOME/.GameScript_bash2 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 2 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel est le symbole qui représente le répertoire personnel de l'utilisateur ?" "~"
  answer_text_fr "Par quel symbole commence un fichier caché ?" "."
  answer_text_fr "Par quel symbole commence un dossier caché ?" "."
  answer_text_fr "Comment se déplacer dans le répertoire grand parent ?" "cd ../.."
  answer_text_fr "Quel est le symbole qui représente le répertoire courant ?" "."
  answer_text_fr "Comment afficher le manuel de la commande rm" "man rm"
  answer_text_fr "Par quel symbole commence les options courtes de commande données en argument ?" "-"
  answer_text_fr "Par quel symboles commencent les options longues de commande donnée en argument ?" "--"
  unlock "bash" "2" "246e" "1f13"
}

CHAPTER_NAME="bash"
CHAPTER_NUMBER="2"
LANGUAGE="fr"
SPEAKER="m1"

LINES=142
if [ "$1" == "MUTE" ]; then
	prepare_audio
else
	if [ "$1" == "VIDEO" ]; then
		prepare_video
	fi
fi


enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
