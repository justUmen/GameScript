function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm ~/.GameScript/i3wm_1_installed 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m i3wm 'i3 Window Manager' : Questionnaire du chapitre 1 \e[0m"
  echo -e "- La réponse doit être la plus courte possible, une commande valide mais ajoutant des caractères inutiles ne fonctionnera pas."
  echo -e "Exemple : si la réponse est 'ls'. Les réponses 'ls .', 'ls ./' et 'ls ././' seront considérées comme fausses."
  answer_text_fr "" ""
  unlock "i3wm" "1" "" ""

  wget "https://github.com/justUmen/WallpaperGenerator/raw/master/Wallpaper/fr/i3wm_1/`xrandr | grep ' connected' | sed 's/.*primary //' | sed 's/+.*//'`.jpg" -O ~/.GameScript/i3wm_1_wallpaper.jpg
  
  sleep 2
  feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg

  echo -e "Je viens de changer votre fond d'écran avec un rappel de ce que vous venez d'apprendre dans ce chapitre avec la commande : 'feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg'"
  echo -e "J'ai également rajouté la ligne 'exec feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg' à la fin de votre fichier de configuration afin que ce fond d'écran soit utilisé a chaque redémarrage."
  echo -e "Vous pouvez donc désormais vous rendre sur un espace de travail vide pour un rappel rapide des combinaisons de touche de ce chapitre."
  }


CHAPTER_NAME="i3wm"
CHAPTER_NUMBER="1"
LANGUAGE="fr"
SPEAKER="m1"

LINES=187
if [ ! "$1" == "MUTE" ]; then prepare_audio; fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
