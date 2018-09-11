function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rmdir $HOME/.GameScript_i3wm_1
}

function start_quiz(){
  echo ""
  echo -e "\e[15;44m i3wm 'i3 Window Manager' : Questionnaire du chapitre 1 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "Quel est la touche 'INCONNU' dans cette phrase : Pour quitter i3 faites Super + Shift + INCONNU" "e"
  answer_text_fr "La combinaison de touche 'Super + Shift + Entrée' ouvre un nouveau terminal. (vrai/faux)" "faux"
  answer_text_fr "Les fenêtres flottantes sont toujours au premier plan. (vrai/faux)" "vrai"
  answer_text_fr "Le code de configuration pour que leafpad soit dans une fenêtre flottante est (vrai/faux) : assign [class=\"Leafpad\"] floating enable" "faux"
  answer_text_fr "Quel est le code à ajouter dans le fichier de configuration d'i3 pour lancer le script '/this/script.sh' au démarrage d'i3." "exec /this/script.sh"
  answer_text_fr "Quel est le mot clef responsable de la création des nouveaux raccourcis clavier dans le fichier de configuration d'i3 ?" "bindsym"
  answer_text_fr "Quel est le code à ajouter dans le fichier de configuration d'i3 pour lancer le script '/this/script.sh' avec la combinaison de touche Alt + o ?" "bindsym mod1+o exec /this/script.sh"
  answer_text_fr "Justumen aime bien i3. (vrai/faux)" "vrai"
  
  wget "https://github.com/justUmen/WallpaperGenerator/raw/master/Wallpaper/fr/i3wm_1/`xrandr | grep ' connected' | sed 's/.*primary //' | sed 's/+.*//'`.jpg" -O ~/.GameScript/i3wm_1_wallpaper.jpg &>/dev/null
  feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg

  echo -e "Je viens de changer votre fond d'écran avec un rappel de ce que vous venez d'apprendre dans ce chapitre. (Commande : 'feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg')"
  echo -e "Vous pouvez donc désormais vous rendre sur un espace de travail vide pour un rappel rapide des combinaisons de touche de ce chapitre. :-)"
  echo -e "Si vous désirez que ce fond d'écran soit utilisé a chaque redémarrage, rajoutez 'exec feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg' dans votre fichier de configuration."

  echo -e "Si le fond d'écran ne s'affiche pas, c'est probablement parce la résolution de votre écran n'est pas supportée, veuillez me contacter pour que je puisse l'ajouter à la liste."
  echo -e "Pour voir les résolutions disponibles, vous pouvez visitez : https://github.com/justUmen/WallpaperGenerator/tree/master/Wallpaper/fr/i3wm_1"
  echo -e "Pour connaitre la résolution de votre écran, vous pouvez utiliser la commande : 'xrandr'"

  unlock "i3wm" "1" "99ac" "871f"
 }


CHAPTER_NAME="i3wm"
CHAPTER_NUMBER="1"
LANGUAGE="fr"
SPEAKER="m1"

LINES=249
if [ ! "$1" == "MUTE" ]; then prepare_audio; fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
