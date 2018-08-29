function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null						
	rm $HOME/House/Room/virus0 2> /dev/null
	rm $HOME/House/Room/virus1 2> /dev/null
	rm $HOME/House/Room/virus2 2> /dev/null
	rm $HOME/House/Room/virus3 2> /dev/null
	rm $HOME/House/Room/virus4 2> /dev/null
	rmdir $HOME/House/Room/bed 2> /dev/null
	rmdir $HOME/House/Room/closet 2> /dev/null
	rmdir $HOME/House/Room/desk 2> /dev/null
	rmdir $HOME/House/Room/ 2> /dev/null
	rmdir $HOME/House/ 2> /dev/null
	rmdir $HOME/.GameScript_bash1 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Quiz Chapter 1 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work." 
  answer_text_en "Which symbol is used to represent the root directory on Linux ?" "/"
  answer_text_fr "Which command should you use to display the current directory ?" "pwd"
  answer_text_fr "Which command displays the content of the root directory ?" "ls /"
  answer_text_fr "Which command changes the current directory of the terminal with its parent ?" "cd .."
  answer_text_fr "Which command displays the content of the current directory ?" "ls"
  answer_text_fr "Which command deletes the empty folder 'test' from the current directory ?" "rmdir test"
  answer_text_fr "By which symbol does an absolute path start with ?" "/"
  answer_text_fr "The relative path of a file is often shorter than its equivalent absolute path. (true/false)" "true"
  answer_text_fr "Which command can delete the file /home/test whatever your current directory is ?" "rm /home/test"
  unlock "bash" "1" "24d8" "f016"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="1"
LANGUAGE="en"
SPEAKER="m1"

LINES=187
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
