function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash11/if1 2> /dev/null
	rm $HOME/.GameScript_bash11/if2 2> /dev/null
	rm $HOME/.GameScript_bash11/if3 2> /dev/null
	rm $HOME/.GameScript_bash11/if4 2> /dev/null
	rm $HOME/.GameScript_bash11/if5 2> /dev/null
	rm $HOME/.GameScript_bash11/if6 2> /dev/null
	rm $HOME/.GameScript_bash11/if7 2> /dev/null
	rm $HOME/.GameScript_bash11/if8 2> /dev/null
	rm $HOME/.GameScript_bash11/CODE 2> /dev/null
	rmdir $HOME/.GameScript_bash11 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 11 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Par quel mot clef doit se terminer une condition 'if' ?" "fi"
  answer_text_fr "Quel argument pouvez-vous donner à 'if' qui garantira l'exécution du contenu dans son 'else' correspondant ?" "false"
  answer_text_fr "Comment demander la valeur de la variable 'nom' à l'utilisateur ?" "read nom"
  answer_text_fr "En utilisant 'if', un seul '[' et un seul ']', comment afficher le mot 'oui' si la valeur de X est plus grande que 2 ?" 'if [ $X -gt 2 ];then echo oui;fi'
  answer_text_fr "Sans utiliser de 'if' et en utilisant qu'un seul '[' et qu'un seul ']', comment afficher le mot 'oui' si la valeur de X est plus petite que 2 ?" '[ $X -lt 2 ]&&echo oui'
  answer_text_fr "Sans utiliser de 'if' ou de '[', comment afficher le mot 'oui' si la valeur de X est égal à 2 ?" 'test $X -eq 2&&echo oui'
  unlock "bash" "11" "2211" "ddfb"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="11"
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
