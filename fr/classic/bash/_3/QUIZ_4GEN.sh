function quiz(){
  echo -en "\e[0;33m...\e[0m"
  talk_not_press_key justumen "Bash 'Bourne Again SHell' : Chapitre 3"
  talk_not_press_key justumen "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  talk_not_press_key justumen "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel est la version abrégée de 'ls -a -l' ?" "ls -al"
  answer_text_fr "Comment ajouter le mot 'non' à la fin du fichier texte 'oui' ?" "echo non>>oui"
  answer_text_fr "Comment remplacer le contenu du fichier 'test' par 'exemple' ?" "echo exemple>test"
  answer_text_fr "Comment afficher le contenu du fichier 'test' ?" "cat test"
  answer_text_fr "Sur bash, quel est le caractère d'échappement ?" "\\"
  answer_text_fr "Comment afficher dans le terminal : a>b" "echo a\>b"
  answer_text_fr "Quel est la lettre à utiliser après le caractère d'échappement pour représenter une mise à la ligne ?" "n"
  answer_text_fr "Affichez, sans utiliser le caractère d'échappement, la phrase : j'ai bon" "echo \"j'ai bon\""
  answer_text_fr "Affichez trois guillemets (\"), sans utiliser le caractère d'échappement." "echo '\"\"\"'"
  unlock
}

function unlock(){
  #~ talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, allez sur https://rocket.bjornulf.org/direct/boti et tapez : password 2452a8c193a3" #Super secure password ! Please don't cheat for your own good. :-)
  talk_not_press_key justumen "Pour débloquer \"bash 3\" dans le chat, veuillez saisir votre pseudo :"
  echo -n " > "
  read -r PSEUDO
  PASS=`encode $PSEUDO "2452" "93a3"`
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
