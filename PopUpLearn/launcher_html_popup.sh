#!/bin/bash

#EXIT IF SERVER IS NOT RUNNING (php -S 127.0.0.1:9999 -t /home/umen/SyNc/Projects/GameScript/PopUpLearn)
#https://stackoverflow.com/questions/9609130/efficiently-test-if-a-port-is-open-on-linux-without-nmap-or-netcat#9609247
exec 6<>/dev/tcp/127.0.0.1/9999 \
	&& echo "Server available on port 9999" \
	|| { echo "Please run the server with : php -S 127.0.0.1:9999 -t /home/umen/SyNc/Projects/GameScript/PopUpLearn" && exec 6>&- && exec 6<&- && exit; }

if [ ! "$3" ]; then
	echo "Launch : /home/umen/SyNc/Projects/GameScript/PopUpLearn/launcher_html_popup.sh TIME_DISPLAYED SEC_BEFORE_QUIZ SEC_AFTER_QUIZ ???"
	exit
fi

TIME_DISPLAYED=$1
SEC_BEFORE_QUIZ=$2
SEC_AFTER_QUIZ=$3

LOOP_QUIZ=4

LANGUAGE="fr"
SUBJECT="bash"
NUMBER="1"
FILE="/home/umen/SyNc/Projects/Wallpaper_Generator/DB/$LANGUAGE/$SUBJECT/_$NUMBER.txt"

while [ 1 ]; do
	# 1 - CHOOSE LINE FROM $FILE (RANDOM ?)
	# ...
	LINE=`cat $FILE | sort -R | tail -n 1`
	LEFT=`echo $LINE | sed 's/£.*//'`
	RIGHT=`echo $LINE | sed 's/.*£//'`
	#85:hsk1_PI:hànyǔ:mandarin_chinese:13:2 (my_line.txt)
	echo "0:${SUBJECT}_${NUMBER}:$LEFT:$RIGHT:${LANGUAGE}:${LANGUAGE}" > /home/umen/SyNc/Projects/GameScript/PopUpLearn/my_line.txt
	
	# 2 - SHOW ANSWER
	/home/umen/SyNc/Scripts/System/toggle_mpv_mpc.sh PAUSE
	if [ "$TIME_DISPLAYED" == 0 ];then #LOCK, unlimited
		/home/umen/SyNc/Scripts/System/goto_workspace.sh "Learn"
		python3 /home/umen/SyNc/Projects/GameScript/PopUpLearn/html_popup.py 0 0 NO NO
		i3-msg workspace back_and_forth #What about others wm ?
	else
		/home/umen/SyNc/Scripts/System/goto_workspace.sh "Learn"
		python3 /home/umen/SyNc/Projects/GameScript/PopUpLearn/html_popup.py 0 0 NO NO &
		sleep $TIME_DISPLAYED
		pkill -f "python3 /home/umen/SyNc/Projects/GameScript/PopUpLearn/html_popup.py"
		i3-msg workspace back_and_forth #What about others wm ?
	fi
	/home/umen/SyNc/Scripts/System/toggle_mpv_mpc.sh UNPAUSE
	
	# 3 - WAIT AND QUIZ
	quizzed=1
	while [ $LOOP_QUIZ -ne $quizzed ]; do
		waited=0
		#WAIT ONE MORE "$SEC_BEFORE_QUIZ" EVERY LOOP (q/w : 1/0 , 1/1 , 1/2 , 1/3 , 1/4 ...)
		while [ $waited -ne $quizzed ]; do
			sleep $SEC_BEFORE_QUIZ
			waited=`expr $waited + 1`
		done
		/home/umen/SyNc/Scripts/System/toggle_mpv_mpc.sh PAUSE
		sleep 2 && /home/umen/SyNc/Scripts/System/goto_workspace.sh "Learn" &
		python3 /home/umen/SyNc/Projects/GameScript/PopUpLearn/html_popup.py 0 0 NO QUIZ
		i3-msg workspace back_and_forth #What about others wm ?
		/home/umen/SyNc/Scripts/System/toggle_mpv_mpc.sh UNPAUSE
		quizzed=`expr $quizzed + 1`
	done

	# 4 - MOVE TO LEARNED
	# ...
	
	sleep $SEC_AFTER_QUIZ
done < $FILE
