#!/bin/bash
# 1 - THIS CONVERT IN ENGLISH ONLY FOR NOW
# ??? MAKE IT WITH ARGUMENTS ???
line_number=1
while read LINE; do
	echo "line_number = $line_number"
	COMMENT=`echo "$LINE" | grep "^#"`
	if [[ "$COMMENT" == "" ]]; then
		QUIZ=`echo "$LINE" | grep "^!"`
		if [[ "$QUIZ" == "" ]]; then
			QUESTION=`echo "$LINE" | grep "^+"`
			
			if [[ "$QUESTION" == "" ]]; then
				TTS_LINE=`echo $LINE | sed 's#/# SLASH #g' | sed 's#\${learn}##g' | sed 's#\${voc}##g' | sed 's#\${reset}##g' | sed 's#\${codeFile}##g' | sed 's#\${codeError}##g' | sed 's#\${code}##g' | sed 's#^+##g'`
				echo " ===> $TTS_LINE"
				if [ ! -f "AWS_POLLY/$line_number.mp3" ]; then
					#AWS POLLY NEEDS TO BE CONFIGURED OFC
					aws polly synthesize-speech \
						--output-format mp3 \
						--region us-east-1 \
						--engine neural \
						--voice-id Joanna \
						--text "$TTS_LINE" \
					AWS_POLLY/$line_number.mp3 > /dev/null
					echo "AWS_POLLY/$line_number.mp3 WAS CREATED :-)"
					#~ echo
					#~ sleep 5
				else
					echo "AWS_POLLY/$line_number.mp3 ALREADY EXISTS :-)"
					echo
				fi
			fi
		fi
	fi
	if [ ! -f "AWS_POLLY/$line_number.mp3" ]; then
		touch "AWS_POLLY/$line_number.mp3"
	fi
	line_number=`expr $line_number + 1`
done < /home/umen/SyNc/Projects/GameScript/en/classic/bash/_1/LIST_4GEN.txt


