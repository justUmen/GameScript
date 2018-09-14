# GameScript [french and english for now...]

## Installation :

Add `gamescript` alias to your .bashrc file by copy/pasting this command in a bash terminal :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Launch :

    gamescript

## Dependencies :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer recommended)
* base64

### Install dependencies on Arch family (manjaro, antergos, ...)

    pacman -S wget mplayer mpg123

### Install dependencies on Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer mpg123

## What is GameScript ?

It is an ONLINE bash script to learn about :

###Situation [french] :
| CHAPTER | TEXT  | SOUND | VIDEO |
|---------|-------|-------|-------|
|bash 1|<span style="color:green">✓</span>|<span style="color:green">✓</span>|<span style="color:green">✓</span>|
|bash ||||

###Situation [english] :
| CHAPTER | TEXT  | SOUND | VIDEO |
|---------|-------|-------|-------|
|bash 1|✓|||

# Bash : Code and concepts by chapter

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

## Types :

* "classic" = default mode, technical content only
* "story" = learning with stories [ not yet implemented ]

## Details :

* standalone files are generated and can be downloaded as standalone in offline mode. : https://github.com/justUmen/GameScript_standalone

Support me and my projects on https://www.patreon.com/justumen :-)
