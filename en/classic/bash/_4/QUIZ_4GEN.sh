function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rm $HOME/.GameScript_bash4/test 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/.new 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test3 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/test2 2> /dev/null
	rm $HOME/.GameScript_bash4/DIR/DOS2/test3 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR/NEW 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR/DOS2 2> /dev/null
	rmdir $HOME/.GameScript_bash4/DIR 2> /dev/null
	rmdir $HOME/.GameScript_bash4 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 4 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "What is the command to move files and folders ?" "mv"
  answer_text_fr "What is the command to rename files and folders ?" "mv"
  answer_text_fr "How to rename a file called 'yes' in your current directory 'no' and move it in your parent directory ?" "mv yes ../no"
  answer_text_fr "How to copy in your current directory a file with the absolute path '/root/file' ?" "cp /root/file ."
  answer_text_fr "How to copy the hidden file '.file' in your parent directory and rename it into a non hidden file 'file' in the folder '/root' ?" "cp ../.file /root/file"
  answer_text_fr "Which symbol have to be used to separate two commands if they are on the same line ?" ";"
  answer_text_fr "How to execute the command 'rm file' only if the previous command 'cd /root' is a success ?" "cd /root&&rm file"
  answer_text_fr "How to display 'good' if the command 'cd /root' is a success, and 'bad' otherwise ?" "cd /root&&echo good||echo bad"
  unlock "bash" "4" "a9d1" "21af"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="4"
LANGUAGE="en"
SPEAKER="m1"

LINES=130
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
