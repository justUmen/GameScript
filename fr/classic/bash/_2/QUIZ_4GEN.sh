function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 2"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel est le symbole qui représente le répertoire de travail de l'utilisateur ?" "~"
  answer_text_fr "Par quel symbole commence un fichier caché ?" "."
  answer_text_fr "Par quel symbole commence un dossier caché ?" "."
  answer_text_fr "Comment se déplacer dans le répertoire grand parent ?" "cd ../.."
  answer_text_fr "Quel est le symbole qui représente le répertoire courant ?" "."
  answer_text_fr "Comment afficher le manuel de la commande rm" "man rm"
  answer_text_fr "Par quel symbole commence les options courtes de commande données en argument ?" "-"
  answer_text_fr "Par quel symboles commencent les options longues de commande donnée en argument ?" "--"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 2\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 246eb9c41f13" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 2\" dans le chat, veuillez saisir votre pseudo :"
  echo -en "\\e[1;31;42m # \\e[0m"
  read -r PSEUDO
  echo "Votre pseudo : $PSEUDO"
  PASS=`encode $PSEUDO "246e" "1f13"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 2" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
# justumen_intro_fr

enter 1
