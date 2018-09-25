function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	chmod -R 744 $HOME/.GameScript_bash5 2> /dev/null
	rm $HOME/.GameScript_bash5/f1 2> /dev/null
	rm $HOME/.GameScript_bash5/f2 2> /dev/null
	rm $HOME/.GameScript_bash5/f3 2> /dev/null
	rm $HOME/.GameScript_bash5/f4 2> /dev/null
	rm $HOME/.GameScript_bash5/file 2> /dev/null
	rm $HOME/.GameScript_bash5/Folder/X 2> /dev/null
	rm $HOME/.GameScript_bash5/Folder/Y 2> /dev/null
	rmdir $HOME/.GameScript_bash5/Folder 2> /dev/null
	rmdir $HOME/.GameScript_bash5 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 5 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "How to display the permissions of all the elements in your user directory ?" "ls -l ~"
  answer_text_fr "Which letter represents a folder in the result of : 'ls -l' ?" "d"
  answer_text_fr "Which symbol represents a file in the result of 'ls -l' ?" "-"
  answer_text_fr "Which letter represents the permission to write in the result of 'ls -l' ?" "w"
  answer_text_fr "Which letter represents the permission to read in the result of 'ls -l' ?" "r"
  answer_text_fr "Which letter represents the permission to execute in the result of 'ls -l' ?" "x"
  answer_text_fr "Which command is able to change the file's permissions ?" "chmod"
  answer_text_fr "Which letter represents the owner for the command 'chmod' ?" "u"
  answer_text_fr "How to remove the permission to write for the owner on the file 'test' ?" "chmod u-r test"
  answer_text_fr "How to add the permission to execute on the file 'test' to all users except for the owner ?" "chmod go+x test"
  unlock "bash" "5" "28ab" "3d4e"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="5"
LANGUAGE="en"
SPEAKER="m1"

LINES=155
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
