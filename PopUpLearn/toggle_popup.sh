#!/bin/bash
#if launcher exist close it, else launch it
if [ "`ps aux|grep 'launcher_html_popup.sh'|grep -v 'grep '`" ];then
	notify-send "popup disabled"
	pkill -f "/bin/bash /home/umen/SyNc/Projects/GameScript/PopUpLearn/launcher_html_popup.sh"
else
	#arguments :
	TIME_DISPLAYED=0 #0 for infinite
	SEC_BEFORE_QUIZ=30
	SEC_AFTER_QUIZ=60
	#??? put this numbers in options file
	#??? use & or not ? :p
	notify-send "html popup timers : $TIME_DISPLAYED $SEC_BEFORE_QUIZ $SEC_AFTER_QUIZ"
	#~ /home/umen/SyNc/Projects/GameScript/PopUpLearn/launcher_html_popup.sh $TIME_DISPLAYED $SEC_BEFORE_QUIZ $SEC_AFTER_QUIZ &
	/home/umen/SyNc/Projects/GameScript/PopUpLearn/launcher_html_popup.sh $TIME_DISPLAYED $SEC_BEFORE_QUIZ $SEC_AFTER_QUIZ
fi
