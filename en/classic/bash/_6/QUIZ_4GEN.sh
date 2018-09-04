function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	chmod -R 744 $HOME/.GameScript_bash6 2> /dev/null
	rm $HOME/.GameScript_bash6/f 2> /dev/null
	rm $HOME/.GameScript_bash6/f1 2> /dev/null
	rm $HOME/.GameScript_bash6/f2 2> /dev/null
	rm $HOME/.GameScript_bash6/f3 2> /dev/null
	rm $HOME/.GameScript_bash6/f4 2> /dev/null
	rm $HOME/.GameScript_bash6/f10 2> /dev/null
	rm $HOME/.GameScript_bash6/f50 2> /dev/null
	rm $HOME/.GameScript_bash6/intruder 2> /dev/null
	rmdir $HOME/.GameScript_bash6 2> /dev/null
}

function start_quiz(){
  echo ""
  echo -e "\e[15;5;44m Bash 'Bourne Again SHell' : Quiz Chapter 6 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "In a root terminal, how to set 'albert' as owner and 'familyEinstein' as the group for the file 'test' of the current directory ?" "chown albert:familyEinstein test"
  answer_text_fr "Which command displays the elements of the current directory in an alphabetical order ?" "ls"
  answer_text_fr "Which command displays the metadata of the elements in the current directory ?" "ls -l"
  answer_text_fr "How to display all the elements of the current directory if their name starts by an 'x' ?" "ls x*"
  answer_text_fr "How to delete all the elements of the current directory that have exactly 2 characters as a name ?" "rm ??"
  answer_text_fr "How to move all the elements of the current directory that ends with '.html' in the parent folder of your parent folder ?" "mv *.html ../.."
  answer_text_fr "How to give the file 'test' the permissions : --x-----x ?" "chmod 101 test"
  answer_text_fr "How to give the file 'test' the permissions : rwxr-x-wx ?" "chmod 753 test"
  unlock "bash" "6" "8239" "df22"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="6"
LANGUAGE="en"
SPEAKER="m1"

LINES=146
if [ "$1" == "VIDEO" ]; then
	prepare_video
else
	if [ ! "$1" == "MUTE" ]; then
		prepare_audio
	fi
fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
