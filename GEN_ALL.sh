#!/bin/bash
#This generator create a standalone ./standalone_learn_cli.sh based on ../../functions.sh, functions_specific.sh and LIST_4GEN.txt

for L in "fr"; do #ADD languages
	cd $L || exit
	for T in "classic"; do #ADD types, like story
		cd $T || exit
		for S in "bash"; do #ADD subjects, like php
			cd $S || exit
			for D in `find . -type d -name "_*"`; do
				echo "Folder ===>$D"
				[ -d "../../../../GameScript_standalone/$L/$T/$S/" ] || exit
				FILENAME="../../../../GameScript_standalone/$L/$T/$S/standalone${D:2}.sh"
				echo "$FILENAME"
				echo "#!/bin/bash" > "$FILENAME"
				cat ../../../functions.sh >> "$FILENAME"
				echo "function code(){" >> "$FILENAME"
				while read line; do
				  if [[ ${line:0:1} == '#' ]]; then
					#CODE : just run it
					echo "${line:1}" >> "$FILENAME"
				  else
					if [[ ${line:0:1} == '+' ]]; then
					  #QUESTION BEFORE TERMINAL : talk_not_press_key justumen XXX
					  echo "talk_not_press_key justumen \"${line:1}\"" >> "$FILENAME"
					else
					  if [[ ${line:0:1} == '!' ]]; then
						#TERMINAL : answer_text XXX justumen XXX
						OIFS=$IFS
						IFS="£"
						arrLINE=($line)
						# for ((i=0; i<${#arrLINE[@]}; ++i)); do echo "animal $i: ${arrLINE[$i]}"; done
						# arrLINE=(${line//£/ })
						echo "answer_run \"${arrLINE[0]:1}\" justumen \"${arrLINE[1]}\"" >> "$FILENAME"
						IFS=$OIFS
					  else
						#NORMAL : talk justumen XXX
						echo "talk justumen \"$line\"" >> "$FILENAME"
					  fi
					fi
				  fi
				done < "$D/LIST_4GEN.txt"
				echo "}" >> "$FILENAME"
				cat "$D/SPECIFIC_4GEN.sh"  >> "$FILENAME"
				cat "$D/QUIZ_4GEN.sh"  >> "$FILENAME"
				echo "SUCCESS : $FILENAME"
			done
			cd ..
		done
		cd ..
	done
	cd ..
done

#TODO IN ROCKET CHAT

# pwd affiche le répertoire courant
# ls affiche le contenu du répertoire courant

#CODE EXPLAINED :
#${line:0:1} is used to detect the first character of each lines from LIST_4GEN.txt (if line start with !, + or # the line isn't just simply printed.)
# If line start with # : execute code
# If line start with + : interaction, need answer_text
#Else normal, use "talk justumen" xxx

#:1 remove the symbol first synbol (Used for !, + and #)








#Du point de vue mathématiques, une fonction peut avoir des paramètres (variables).
#Quand on appelle une fonction on lui passe des arguments
