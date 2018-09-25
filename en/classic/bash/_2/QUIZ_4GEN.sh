function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash2/bOb 2> /dev/null
	rmdir $HOME/.GameScript_bash2/child 2> /dev/null
	rmdir $HOME/.GameScript_bash2 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 2 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "What's the symbol that represents the user's home directory ?" "~"
  answer_text_fr "Which symbol is at the beginning of a hidden file's name ?" "."
  answer_text_fr "Which symbol is at the beginning of a hidden folder's name ?" "."
  answer_text_fr "How do you move to the grandparent directory ?" "cd ../.."
  answer_text_fr "Which symbol represents the current directory ?" "."
  answer_text_fr "How do you display the manual of the rm command ?" "man rm"
  answer_text_fr "By which symbol do short commands options start ?" "-"
  answer_text_fr "By which symbol do long commands options start ?" "--"
  unlock "bash" "2" "246e" "1f13"
}

CHAPTER_NAME="bash"
CHAPTER_NUMBER="2"
LANGUAGE="en"
SPEAKER="m1"

LINES=142
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
