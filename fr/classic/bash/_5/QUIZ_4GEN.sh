function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 5"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment afficher les permissions des éléments du répertoire de travail de l'utilisateur ?" "ls -l ~"
  answer_text_fr "Quel lettre représente un dossier dans le résultat de 'ls -l' ?" "d"
  answer_text_fr "Quel symbole représente un fichier dans le résultat de 'ls -l' ?" "-"
  answer_text_fr "Quel lettre représente le droit d'écriture dans le résultat de 'ls -l' ?" "w"
  answer_text_fr "Quel lettre représente le droit de lecture dans le résultat de 'ls -l' ?" "r"
  answer_text_fr "Quel lettre représente le droit d'exécution dans le résultat de 'ls -l' ?" "x"
  answer_text_fr "Quel est la commande pour modifier les permissions d'un fichier ?" "chmod"
  answer_text_fr "Quel lettre représente le propriétaire pour la commande chmod ?" "u"
  answer_text_fr "Comment supprimer la permission de lecture au propriétaire du fichier 'test' ?" "chmod u-r test"
  answer_text_fr "Comment ajouter la permission d'exécution à tous les utilisateurs sauf pour le propriétaire sur le fichier 'test' ?" "chmod go+x test"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 2421a9d18fbb" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 5\" dans le chat, veuillez saisir votre pseudo :"
  PSEUDO=""
  while [[ $PSEUDO = "" ]]; do
    echo -en "\\e[1;31;42m # \\e[0m"
    read -r PSEUDO < /dev/tty
  done
  PASS=`encode $PSEUDO "28ab" "3d4e"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 5" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
# justumen_intro_fr

enter 1
