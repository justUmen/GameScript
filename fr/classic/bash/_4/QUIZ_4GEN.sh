function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash4/test 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/.new 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test3 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test2 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/DOS2/test3 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR/NEW 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR/DOS2 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR 2> /dev/null
	rmdir $HOME/.GameScript_bash4 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 4 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quelle est la commande pour déplacer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Quelle est la commande pour renommer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Comment renommer un fichier nommé 'oui' dans votre répertoire courant en 'non' et le déplacer dans son répertoire parent ?" "mv oui ../non"
  answer_text_fr "Comment copier dans votre répertoire courant un fichier dont le chemin absolu est '/root/file' ?" "cp /root/file ."
  answer_text_fr "Comment copier un fichier caché '.file' situé dans votre répertoire parent et le renommer en un fichier non caché 'file' dans le dossier '/root' ?" "cp ../.file /root/file"
  answer_text_fr "Quel symbole doit être utilisé pour séparer simplement deux commandes sur une même ligne ?" ";"
  answer_text_fr "Comment exécuter la commande 'rm file' uniquement si la commande précédente 'cd /root' est un succès ?" "cd /root&&rm file"
  answer_text_fr "Comment afficher 'good' si la commande 'cd /root' est un succès, et 'bad' sinon ?" "cd /root&&echo good||echo bad"
  unlock "bash" "4" "a9d1" "21af"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="4"
LANGUAGE="fr"
SPEAKER="m1"

LINES=130
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi


enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
