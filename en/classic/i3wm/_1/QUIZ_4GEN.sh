function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rmdir $HOME/.GameScript_i3wm_1
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;5;44m i3wm 'i3 Window Manager' : Questionnaire du chapitre 1 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "What is the key 'UNKNOWN' in this sentence : To exit i3, do Super + Shift + UNKNOWN" "e"
  answer_text_fr "'Super + Shift + Return' is opening a new terminal (true/false)" "false"
  answer_text_fr "The floating windows are always above the others. (true/false)" "true"
  answer_text_fr "To have leafpad as a floating window, you need to use the configuration (true/false) : assign [class=\"Leafpad\"] floating enable" "false"
  answer_text_fr "What is the code to have the script '/this/script.sh' starting when i3 is launching ?" "exec /this/script.sh"
  answer_text_fr "What is the keyword responsible for the creation of new key bindings in the i3 configuration file ?" "bindsym"
  answer_text_fr "What is the code you need to add to have for the shortcut 'Alt + o' to execute the script '/this/script.sh' ?" "bindsym mod1+o exec /this/script"
  answer_text_fr "Justumen likes i3wm. (true/false)" "true"
  
  wget "https://github.com/justUmen/WallpaperGenerator/raw/master/Wallpaper/en/i3wm_1/`xrandr | grep ' connected' | sed 's/.*primary //' | sed 's/+.*//'`.jpg" -O ~/.GameScript/i3wm_1_wallpaper.jpg &>/dev/null
  feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg

  echo -e "I just changed your wallpaper with a cheatsheet of what we've learned in this chapter. (Command : 'feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg')"
  echo -e "You can now go on an empty workspace for a quick reminder. :-)"
  echo -e "If you want this wallpaper to be used every time you start i3, add the line : 'exec feh --bg-scale ~/.GameScript/i3wm_1_wallpaper.jpg' to your configuration file."

  echo -e "If you can't see the wallpaper, it's probably because your screen resolution isn't supported, please contact me so I can add it to the list."
  echo -e "To see the available resolutions, you can visit : https://github.com/justUmen/WallpaperGenerator/tree/master/Wallpaper/en/i3wm_1"
  echo -e "To know you current screen resolution, you can use the command : 'xrandr'"

  unlock "i3wm" "1" "99ac" "871f"
 }


CHAPTER_NAME="i3wm"
CHAPTER_NUMBER="1"
LANGUAGE="en"
SPEAKER="m1"

LINES=249
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
