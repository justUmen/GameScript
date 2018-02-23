function quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Questionnaire du chapitre 6 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Dans terminal root, comment définir 'albert' comme propriétaire et 'familleEinstein' comme groupe au fichier 'test' du répertoire courant ?" "chown albert:familleEinstein test"
  answer_text_fr "Quelle commande affiche les éléments du répertoire courant par ordre alphabétique ?" "ls"
  answer_text_fr "Quelle commande affiche les métadonnées des éléments du répertoire courant ?" "ls -l"
  answer_text_fr "Comment afficher tous les éléments du répertoire courant dont le nom commence par 'x' ?" "ls x*"
  answer_text_fr "Comment supprimer tous les éléments du répertoire courant ayant un nom de 2 lettres ?" "rm ??"
  answer_text_fr "Comment déplacer tous les éléments du répertoire courant qui finissent par '.html' dans le répertoire parent de votre répertoire parent ?" "mv *.html ../.."
  answer_text_fr "Comment donner au fichier 'test' les permissions : --x-----x ?" "chmod 101 test"
  answer_text_fr "Comment donner au fichier 'test' les permissions : rwxr-x-wx ?" "chmod 753 test"
  unlock "bash" "6" "8239" "df22"
}


enter_chapter bash 6 1
