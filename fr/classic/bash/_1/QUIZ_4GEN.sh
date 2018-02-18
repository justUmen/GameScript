function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 1"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel symbole représente le répertoire racine sur Linux ?" "/"
  answer_text_fr "Quelle commande affiche le chemin absolu du répertoire courant ?" "pwd"
  answer_text_fr "Quelle commande affiche le contenu du répertoire racine ?" "ls /"
  answer_text_fr "Quelle commande change le répertoire courant du terminal par son répertoire parent ?" "cd .."
  answer_text_fr "Quelle commande affiche le contenu du répertoire courant ?" "ls"
  answer_text_fr "Quelle commande supprime le dossier vide 'test' du répertoire courant ?" "rmdir test"
  answer_text_fr "Par quel symbole commence le chemin absolu d'un fichier ?" "/"
  answer_text_fr "Le nom du chemin relatif d'un fichier est souvent plus court que son équivalent en chemin absolu. (vrai/faux)" "vrai"
  answer_text_fr "Quelle commande peut supprimer le fichier /home/test quel que soit votre répertoire courant ?" "rm /home/test"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 1\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 24d8b826ff016" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 1\" dans le chat, veuillez saisir votre pseudo :"
  PSEUDO=""
  while [[ $PSEUDO = "" ]]; do
    echo -en "\\e[1;31;42m # \\e[0m"
    read -r PSEUDO
  done
  PASS=`encode $PSEUDO "24d8" "f016"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 1" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
justumen_intro_fr

enter 1
