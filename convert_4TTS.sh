#!/bin/bash
# THIS CONVERT IN ENGLISH ONY FOR NOW
line_number=1
while read LINE; do
	COMMENT=`echo "$LINE" | grep "^#"`
	if [[ "$COMMENT" == "" ]]; then
		QUIZ=`echo "$LINE" | grep "^!"`
		if [[ "$QUIZ" == "" ]]; then
			QUESTION=`echo "$LINE" | grep "^+"`
			if [[ "$QUESTION" == "" ]]; then
				echo -n "$line_number - "
				echo $LINE | sed 's#/# SLASH #g' | sed 's#\${learn}##g' | sed 's#\${voc}##g' | sed 's#\${reset}##g' | sed 's#^+##g'
				line_number=`expr $line_number + 1`
			fi
		fi
	fi
done < /home/umen/SyNc/Projects/GameScript/en/classic/bash/_1/LIST_4GEN.txt
