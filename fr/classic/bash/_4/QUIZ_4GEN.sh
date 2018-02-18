function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 3"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quelle est la commande pour déplacer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Quelle est la commande pour renommer des fichiers ou dossiers ?" "mv"
  answer_text_fr "Comment renommer un fichier nommé 'oui' en 'non' et le déplacer dans son répertoire parent ?" "mv oui ../non"
  answer_text_fr "Comment copier dans votre répertoire courant un fichier dont le chemin absolu est '/root/file' ?" "cp /root/file ."
  answer_text_fr "Comment copier un fichier caché '.file' situé dans votre répertoire parent et le renommer en un fichier non caché 'file' dans le dossier '/root' ?" "cp ../.file /root/file "
  answer_text_fr "" ""
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 2421a9d18fbb" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 1\" dans le chat, veuillez saisir votre pseudo :"
  PSEUDO=""
  while [[ $PSEUDO = "" ]]; do
    echo -en "\\e[1;31;42m # \\e[0m"
    read -r PSEUDO
  done
  PASS=`encode $PSEUDO "2421" "8fbb"`
  talk_not_press_key justumen "Allez sur https://rocket.bjornulf.org/direct/boti et tapez : password$PASS"
}

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) talk_not_press_key justumen "Bash Bourne Again SHell : Chapitre 3" ;&
	3) answer_quiz "Cours" "Questionnaire" "Quitter" "4" "5" "6" ;;
	4) code ;;
	5) quiz 1 ;;
	6) exit ;;
esac
}

restore=2 #first line of LIST_4GEN should be environment test (test ~/House)
# justumen_intro_fr

enter 1
