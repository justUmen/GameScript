# Gamescript.sh [french only for now...]

## Simple installation :

### BASH

Add `gamescript` alias to your .bashrc file by copy/pasting this command in a bash terminal :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

### ZSH

Add `gamescript` alias to your .xshrc file by copy/pasting this command in a zsh terminal :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.zshrc; source ~/.zshrc

## Simple usage :

    gamescript

## Dependencies :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer recommended)
* base64

### Arch family (manjaro, antergos, ...)

    pacman -S wget mplayer mpg123

### Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer mpg123

## What is it ?

It is an ONLINE bash script to learn about :

* bash (included : GNU commands + Unix-like operating system file organization / permissions)
* system [ not yet implemented ]
* network [ not yet implemented ]
* i3wm [ not yet implemented ]
* html (included : css) [ not yet implemented ]
* javascript [ not yet implemented ]
* - [ not yet implemented ]

# Bash : Code and concepts by chapter (English)

    Bash 1 => Concepts : command , argument , relative path , absolute path , folder parent/child , current directory , working directory
    Bash 1 => Code : pwd , ls , cd , .. , mkdir , rm , rmdir

    Bash 2 => Concepts : hidden file, option, RTFM
    Bash 2 => Code : ~ , . , ../ , ../.. , ../../ , - , --, man

    Bash 3 => Concepts : escape character , delimiters of argument
    Bash 3 => Code : echo , \ , \n , > , >> , cat , "", ''

    Bash 4 => Concepts : conditional success , conditional failure
    Bash 4 => Code : mv , cp , ; , && , ||

    Bash 5 => Concepts : permissions and limitations
    Bash 5 => Code : ls -l , chmod

    Bash 6 => Concepts : data , metadata
    Bash 6 => Code : * , ? , touch , chown , chmod

    Bash 7 => Concepts : standard output , standard error , flux management
    Bash 7 => Code : 1> , 2> , &> , 1>> , 2>> , &>> , /dev/null , 2>&1 , 1>&2 , ()

    Bash 8 => Concepts : standard input , pipe
    Bash 8 => Code : | , wc , sort , grep , uniq , - , |& , <

    Bash 9 => Concepts : variable , variable control , environment variables
    Bash 9 => Code : $ , $PATH , type , printenv

    Bash 10 => Concepts : alias , exit status , pager
    Bash 10 => Code : alias , $PAGER , tail , head , $? , source , less

    Bash 11 => Concepts : condition , logic test
    Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq - lt , -ne , -gt

# Bash : Code and concepts by chapter (French)

    Bash 1 => Concepts : commande , argument , chemin relatif , chemin absolu , dossier parent/enfant , répertoire courant
    Bash 1 => Code : pwd , ls , cd , .. , mkdir , rm , rmdir

    Bash 2 => Concepts : fichier caché, option, RTFM
    Bash 2 => Code : ~ , . , ../ , ../.. , ../../ , - , --, man

    Bash 3 => Concepts : caractère d'échappement , délimiteur d'argument
    Bash 3 => Code : echo , \ , \n , > , >> , cat , "", ''

    Bash 4 => Concepts : condition de succès , condition d'échec
    Bash 4 => Code : mv , cp , ; , && , ||

    Bash 5 => Concepts : permissions et limitations
    Bash 5 => Code : ls -l , chmod

    Bash 6 => Concepts : donnée , métadonnée
    Bash 6 => Code : * , ? , touch , chown , chmod

    Bash 7 => Concepts : sortie standard , erreur standard , regroupement de flux
    Bash 7 => Code : 1> , 2> , &> , 1>> , 2>> , &>> , /dev/null , 2>&1 , 1>&2 , ()

    Bash 8 => Concepts : entrée standard , pipe
    Bash 8 => Code : | , wc , sort , grep , uniq , - , |& , <

    Bash 9 => Concepts : variable , manipulation de variable , variable d'environnement
    Bash 9 => Code : $ , $PATH , type , printenv

    Bash 10 => Concepts : alias , code retour (exit status) , pager
    Bash 10 => Code : alias , $PAGER , tail , head , $? , source , less

    Bash 11 => Concepts : condition , test logique
    Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq - lt , -ne , -gt

    Bash 12 => Concepts : 
    Bash 12 => Code : 

## Types :

* "classic" = default mode, technical content only
* "story" = learning with stories [ not yet implemented ]

## ToDo :

* have default language ?
* better colors if the terminal can print them ! Keep basic colors for basic terminals.
* allow arrows and tab in "read"
* add offline option --offline, then it will download all standalone into a folder .GameScript ?? + update
* better help with online/offline, update
* each chapter have basic knowledge identical to wallpaper generator

## Details :

* standalone files are generated and can be downloaded as standalone in offline mode. : https://github.com/justUmen/GameScript_standalone

Support me and my projects on https://www.patreon.com/justumen :-)

