function clean(){ #in enter_chapter
rm $HOME/.GameScript/restore_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
rm $HOME/.GameScript/restore_pwd_$CHAPTER_NAME$CHAPTER_NUMBER 2> /dev/null
	rmdir $HOME/.GameScript_bash3/test 2> /dev/null
	rmdir $HOME/.GameScript_bash3 2> /dev/null
}

function start_quiz(){
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 3 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work."
  answer_text_fr "What is the short version of 'ls -a -l' ?" "ls -al"
  answer_text_fr "How to add the word 'no' at the end of the file 'yes' ?" "echo no>>yes"
  answer_text_fr "How to replace the content of the file 'test' by 'example' ?" "echo example>test"
  answer_text_fr "How to display the content of the file 'test' ?" "cat test"
  answer_text_fr "On bash, what is the escape character ?" "\\"
  answer_text_fr "How to display in a terminal : a>b" "echo a\>b"
  answer_text_fr "Which letter need to be used after the escape character to represent a new line ?" "n"
  answer_text_fr "Display, without using the escape character the sentence : I'll be there" "echo \"I'll be there\""
  answer_text_fr "Display 3 quotation marks (\"), without using the escape character." "echo '\"\"\"'"
  unlock "bash" "3" "2452" "93a3"
}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="3"
LANGUAGE="en"
SPEAKER="m1"

LINES=154
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER
