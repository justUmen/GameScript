function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash8/LIST 2> /dev/null
	rm $HOME/.GameScript_bash8/test 2> /dev/null
	rm $HOME/.GameScript_bash8/EMAILS 2> /dev/null
	rm $HOME/.GameScript_bash8/new 2> /dev/null
	rm $HOME/.GameScript_bash8/wcnew 2> /dev/null
	rmdir $HOME/.GameScript_bash8 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 8 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment afficher les lignes du fichier 'message' qui contiennent au moins une lettre 'a' ?" "grep a message"
  answer_text_fr "En utilisant l'entrée standard, comment afficher toutes les lignes du fichier 'grep' qui contiennent le mot 'cat' ?" "cat grep|grep cat"
  answer_text_fr "En utilisant 'cat', comment envoyer à la sortie standard le contenu classé par ordre aphabétique du fichier 'noms' ?" "cat noms|sort"
  answer_text_fr "Sans utiliser 'cat' et des options de commande, comment afficher le contenu du fichier 'list' sans ses lignes en double ?" "sort list|uniq"
  answer_text_fr "Sans utiliser d'argument de commande, comment envoyer le contenu du fichier 'wc1' à la commande 'wc', puis écrire le résultat dans 'wc2' ?" "wc<wc1>wc2"
  answer_text_fr "Comment rediriger la sortie standard et la sortie erreur standard de la commande 'cat x' vers la commande 'grep cat' ?" "cat x|&grep cat"
  answer_text_fr "Quel est le symbole qui peut préciser l'utilisation de l'entrée standard dans une commande ?" "-"
  unlock "bash" "8" "88ab" "44d5"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="8"
LANGUAGE="fr"
SPEAKER="m1"

LINES=136
if [ "$1" == "MUTE" ]; then
	prepare_audio
else
	if [ "$1" == "VIDEO" ]; then
		prepare_video
	fi
fi


enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
