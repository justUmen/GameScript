function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 6"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Comment définir 'albert' comme propriétaire et 'familleEinstein' comme groupe au fichier 'test' du répertoire courant dans terminal root ?" "chown albert:familleEinstein test"
  answer_text_fr "Quelle commande affiche les éléments du répertoire courant par ordre alphabétique ?" "ls"
  answer_text_fr "Quelle commande affiche les métadonnées des éléments du répertoire courant ?" "ls -l"
  answer_text_fr "Comment afficher tous les éléments du répertoire courant dont le nom commence par 'x' ?" "ls x*"
  answer_text_fr "Comment supprimer tous les éléments du répertoire courant ayant un nom de 4 lettres ?" "rm ????"
  answer_text_fr "Comment déplacer tous les éléments du répertoire courant qui finissent par '.html' dans le répertoire parent de votre répertoire parent ?" "mv *.html ../.."
  answer_text_fr "Comment donner au fichier test les permissions : --x-----x ?" "chmod 101 test"
  answer_text_fr "Comment donner au fichier test les permissions : rwxr-x-wx ?" "chmod 753 test"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 2421a9d18fbb" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 6\" dans le chat, veuillez saisir votre pseudo :"
  PSEUDO=""
  while [[ $PSEUDO = "" ]]; do
    echo -en "\\e[1;31;42m # \\e[0m"
    read -r PSEUDO < /dev/tty
  done
  PASS=`encode $PSEUDO "8239" "df22"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 6" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
# justumen_intro_fr

enter 1
