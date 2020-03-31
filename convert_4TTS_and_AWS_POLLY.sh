#!/bin/bash

#CREATE FILE IN AWS_POLLY
#MANUALLY MOVE TO Audio
#SEND TO GITHUB
#DOWNLOAD FROM GITHUB TO ELECTRON GAMESCRIPT APP

# 1 - THIS CONVERT IN ENGLISH ONLY FOR NOW
# ??? MAKE IT WITH ARGUMENTS ???

#/home/umen/SyNc/Projects/GameScript/en/classic/bash/Audio/aws/c1/
#"fr" 
for L in "en"; do #ADD languages
	cd $L && echo "===> $L" || { echo ERR $L not exist; exit; }
	#/home/umen/SyNc/Projects/GameScript/en/
	#BRIDER : "fun"
	for T in "classic"; do #ADD types, like story
		cd $T && echo "=====> $L/$T" || { echo ERR $L/$T not exist; exit; }
		#/home/umen/SyNc/Projects/GameScript/en/classic/
		#BRIDER : "i3wm" "sys" "data"
		for S in "bash"; do #ADD subjects, like php
			cd $S || { echo ERR $L/$T/$S not exist; exit; }
			#/home/umen/SyNc/Projects/GameScript/en/classic/bash/
			#BRIDER : `find . -type d -name "_*"`
			mkdir /home/umen/SyNc/Projects/GameScript/$L/$T/$S/Audio 2>/dev/null
			mkdir /home/umen/SyNc/Projects/GameScript/$L/$T/$S/Audio/aws 2>/dev/null
			cd /home/umen/SyNc/Projects/GameScript/$L/$T/$S/Audio/aws || { echo ERR $L/$T/$S not exist; exit; }
			for D in 1 2; do
				mkdir /home/umen/SyNc/Projects/GameScript/$L/$T/$S/Audio/aws/c$D 2>/dev/null
				cd /home/umen/SyNc/Projects/GameScript/$L/$T/$S/Audio/aws/c$D || { echo ERR GameScript/$L/$T/$S/Audio/aws/c$D not exist; exit; }
				line_number=1
				while read LINE; do
					echo "line_number = $line_number"
					COMMENT=`echo "$LINE" | grep "^#"`
					if [[ "$COMMENT" == "" ]]; then
						QUIZ=`echo "$LINE" | grep "^!"`
						if [[ "$QUIZ" == "" ]]; then
							QUESTION=`echo "$LINE" | grep "^+"`
							
							# | sed 's#ls#L S#g' | sed 's#pwd#P W D#g'
							
							# | sed 's#$HOME/House/Room/virus1 ????? CHANGE $HOME for electron :(
							#~ if [[ "$QUESTION" == "" ]]; then
								TTS_LINE=`echo $LINE | sed 's#$(pwd)#/home/example/House#' | sed 's#$HOME#/home/example#' | sed 's#mkdir#M.K.D.I.R.#g' | sed 's#rmdir#R.M.D.I.R.#g' | sed "s#'/'# SLASH #g" | sed "s#SLASH \.#SLASH.#g" | sed 's#/# SLASH #g' | sed 's#\${learn}##g' | sed 's#\${voc}##g' | sed 's#\${reset}##g' | sed 's#\${codeFile}##g' | sed 's#\${codeError}##g' | sed 's#\${code}##g' | sed 's#^+##g'`
								echo " ===> $TTS_LINE"
								if [ ! -f "$line_number.mp3" ]; then
									#AWS POLLY NEEDS TO BE CONFIGURED OFC
									aws polly synthesize-speech \
										--output-format mp3 \
										--region us-east-1 \
										--engine neural \
										--voice-id Joanna \
										--text "$TTS_LINE" \
									$line_number.mp3 > /dev/null
									echo "$line_number.mp3 WAS CREATED :-)"
									#~ echo
									#~ sleep 5
								else
									echo "$line_number.mp3 ALREADY EXISTS :-)"
									echo
								fi
							#~ fi
						fi
					fi
					if [ ! -f "$line_number.mp3" ]; then
						touch "$line_number.mp3"
					fi
					line_number=`expr $line_number + 1`
				done < "/home/umen/SyNc/Projects/GameScript/$L/$T/$S/_$D/LIST_4GEN.txt"
				cd /home/umen/SyNc/Projects/GameScript/$L/$T/$S
				sleep 2
			done
			cd /home/umen/SyNc/Projects/GameScript/$L/$T/
			sleep 2
		done
		cd /home/umen/SyNc/Projects/GameScript/$L/
		sleep 2
	done
	cd /home/umen/SyNc/Projects/GameScript/
	sleep 2
done

echo "DONE ! Don't forget to GIT :P (maybe even ./GEN_ALL.sh and ./GEN_JS_ALL.sh in GameScript_electron ???)"
