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
  start_quiz_music
  echo ""
  echo -e "\e[15;44m Bash 'Bourne Again SHell' : Quiz Chapter 1 \e[0m"
  echo -e "- The answer should be as short as possible, a good answer adding uneeded characters will be considered as wrong."
  echo -e "Example : If the answer is 'ls'. The answers 'ls .', 'ls ./' and 'ls ././' won't work." 
###Creating and using files and folders is very trivial and you shouldn't waste your time learning about it. (true / false)
###A picture is a .... ? (directory / file)
###Before creating a new element, i need to find a good : (computer / teacher / location / name )
##Folder's name
###What is the worst name for a directory : "my directory", "my_directory", "mydirectory","Mydirectory"
###What is the best name for a directory : "my directory", "my_directory", "mydirectory","Mydirectory"
###What is the name of a succession of directories like this one : "/this/is/a/stupid/example/for/a/"
###Is linux case sensitive ? (y / n)
###Is windows case sensitive ? (y / n)
###If my OS is case sensitive, can i create a file called "BOB.jpg" if i already have a file in the same directory called "bob.jpg" ?
###The file "bob.jpg" is always an image. (y/n)
###What is the best name for a shell script (program) that will list all current users : "code.sh", "my_script.sh", "list_users.txt", "list_users.sh", "users.sh", "list_users", "ListUsers", "this_shell_script_will_list_all_the_users.sh"
###Which filename is the best ? "MyFile", "Myfile" "my_file", "my file"
###Which character is used to separate directorys with other elements ?

}


CHAPTER_NAME="bash"
CHAPTER_NUMBER="1"
LANGUAGE="en"
SPEAKER="m1"

LINES=187
#~ if [ "$1" == "VIDEO" ]; then
	#~ prepare_video
#~ else
	#~ if [ ! "$1" == "MUTE" ]; then
		#~ prepare_audio
	#~ fi
#~ fi

enter_chapter $CHAPTER_NAME $CHAPTER_NUMBER



#FOR WALLPAPER GENERATOR
<span style="color:red">Two main types of elements : Files and Folders</span>
<span style="color:red">files = store data</span>
<span style="color:red">folders = organize your files</span>
