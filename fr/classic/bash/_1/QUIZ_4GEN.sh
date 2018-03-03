function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null						
	rm $HOME/House/Room/virus0 2> /dev/null
	rm $HOME/House/Room/virus1 2> /dev/null
	rm $HOME/House/Room/virus2 2> /dev/null
	rm $HOME/House/Room/virus3 2> /dev/null
	rm $HOME/House/Room/virus4 2> /dev/null
	rmdir $HOME/House/Room/bed 2> /dev/null
	rmdir $HOME/House/Room/closet 2> /dev/null
	rmdir $HOME/House/Room/desk 2> /dev/null
	rmdir $HOME/House/Room/ 2> /dev/null
	rmdir $HOME/House/ 2> /dev/null
	rmdir $HOME/.GameScript_bash1 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 1 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel symbole représente le répertoire racine sur Linux ?" "/"
  answer_text_fr "Quelle commande affiche le chemin absolu du répertoire courant ?" "pwd"
  answer_text_fr "Quelle commande affiche le contenu du répertoire racine ?" "ls /"
  answer_text_fr "Quelle commande change le répertoire courant du terminal par son répertoire parent ?" "cd .."
  answer_text_fr "Quelle commande affiche le contenu du répertoire courant ?" "ls"
  answer_text_fr "Quelle commande supprime le dossier vide 'test' du répertoire courant ?" "rmdir test"
  answer_text_fr "Par quel symbole commence le chemin absolu d'un fichier ?" "/"
  answer_text_fr "Le nom du chemin relatif d'un fichier est souvent plus court que son équivalent en chemin absolu. (vrai/faux)" "vrai"
  answer_text_fr "Quelle commande peut supprimer le fichier /home/test quel que soit votre répertoire courant ?" "rm /home/test"
  unlock "bash" "1" "24d8" "f016"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="1"
LANGUAGE="fr"
SPEAKER="m1"

LINES=187
prepare_audio

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
