#!/bin/bash
#This generator create standalone files that are used by GameScript
#??? create folder manually for now (all types of folders) "i3wm" for example ???
for L in "fr" "en"; do #ADD languages
	cd $L && echo "===> $L" || { echo ERR $L not exist; exit; }
	for T in "classic" "fun"; do #ADD types, like story
		cd $T && echo "=====> $L/$T" || { echo ERR $L/$T not exist; exit; }
		for S in "bash" "i3wm" "sys" "data"; do #ADD subjects, like php
			cd $S || { echo ERR $L/$T/$S not exist; exit; }
			for D in `find . -type d -name "_*"`; do
NUMB=`echo "${D:2}"|sed 's/_//'`
				#~ echo "Folder ===>$D"
				[ -d "../../../../GameScript_standalone/$L/$T/$S/" ] || exit
				FILENAME="../../../../GameScript_standalone/$L/$T/$S/standalone${D:2}.sh"
				#~ echo "$FILENAME"
				echo "#!/bin/bash" > "$FILENAME"
				cat ../../../functions.sh >> "$FILENAME"
				echo "function start_lecture(){" >> "$FILENAME"
echo "restore=\$1" >> "$FILENAME"
echo "case \$1 in" >> "$FILENAME"
CMP=0 #START AT 1
				while read line; do
CMP=`expr $CMP + 1`
echo -n "$CMP) " >> "$FILENAME"
echo -n "{ echo -n $CMP > \$HOME/.GameScript/restore_$S$NUMB; } 2>/dev/null ; " >> "$FILENAME"
#~ echo -n "echo -n $CMP > \$HOME/.GameScript/restore_$S$NUMB; sleep 0.3; read -e -t 0.1; " >> "$FILENAME"
echo -n "{ echo -n \$(pwd) > \$HOME/.GameScript/restore_pwd_$S$NUMB; } 2>/dev/null ; " >> "$FILENAME"
				  if [[ ${line:0:1} == '#' ]]; then
					#CODE : just run it
					echo -n "${line:1}" >> "$FILENAME"
				  else
					if [[ ${line:0:1} == '+' ]]; then
					  #QUESTION BEFORE TERMINAL : talk_not_press_key justumen XXX
					  echo -n "talk_not_press_key justumen \"${line:1}\"" >> "$FILENAME"
					else
					  if [[ ${line:0:1} == '!' ]]; then
						#TERMINAL : answer_text XXX justumen XXX
						OIFS=$IFS
						IFS="£"
						arrLINE=($line)
						# for ((i=0; i<${#arrLINE[@]}; ++i)); do echo "animal $i: ${arrLINE[$i]}"; done
						# arrLINE=(${line//£/ })
						echo -n "answer_run \"${arrLINE[0]:1}\" justumen \"${arrLINE[1]}\"" >> "$FILENAME"
						IFS=$OIFS
					  else
						#NORMAL : talk justumen XXX
						echo -n "talk justumen \"$line\"" >> "$FILENAME"
					  fi
					fi
				  fi
echo "; restore=\$(expr \$restore + 1) ;&" >> "$FILENAME"
				done < "$D/LIST_4GEN.txt"
echo "esac" >> "$FILENAME"
				echo "}" >> "$FILENAME"
				cat "$D/SPECIFIC_4GEN.sh" >> "$FILENAME" 2> /dev/null
				cat "$D/QUIZ_4GEN.sh"  >> "$FILENAME"
				#~ echo "SUCCESS : $FILENAME"
				echo "GameScript_standalone/$L/$T/$S/standalone${D:2}.sh [DONE]"
			done
			cd ..
		done
		cd ..
	done
	cd ..
done

#CODE EXPLAINED :
#${line:0:1} is used to detect the first character of each lines from LIST_4GEN.txt (if line start with !, + or # the line isn't just simply printed.)
# If line start with # : execute code
# If line start with + : interaction, need answer_text
#Else normal, use "talk justumen" xxx

#:1 remove the symbol first synbol (Used for !, + and #)
