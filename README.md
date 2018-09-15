# GameScript

## Select your language :

|LANGUAGE|README|AVAILABLE CHAPTERS|
|:-----:|:-----:|:-----:|
|English|https://github.com/justUmen/GameScript/blob/master/README.md|7|
|Français|https://github.com/justUmen/GameScript/blob/master/README_FR.md|13|

GameScript is an interactive script to learn about some computer related subjects that I consider important.  
GameScript should work with "Windows bash" (Cygwin as well) and "macOS bash" but "Linux" is recommended.  

## Community project :

It is now almost entirely done by me, but I hope this will be a community project sooner or later.  
If you wish to translate some of the content in another language, please contact me.

## Installation :

Add `gamescript` alias to your .bashrc file by copy/pasting this command in a bash terminal :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Launch :

    gamescript

## Dependencies :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer is recommended !)
* base64

Some chapters may have more dependencies to install.

### Install dependencies on Arch family (manjaro, antergos, ...)

    pacman -S wget mplayer mpg123

### Install dependencies on Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer mpg123

### Current situation :

|CHAPTER|TEXT|SOUND|CHAT BADGE|UNLOCK CHAT LINK|
|---------|:-----:|:-----:|:-----:|:-----:|
|bash 1|✓[Altarov](https://www.github.com/Altarov)||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 2|✓[Altarov](https://www.github.com/Altarov)||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 3|✓[Altarov](https://www.github.com/Altarov)||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 4|✓||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 5|✓||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 6|✓||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|bash 7|||||
|bash 8|||||
|bash 9|||||
|bash 10|||||
|bash 11|||||
|bash 12|||||
|sys 1|||||
|sys 2|||||
|i3wm 1|✓||✓|[Rocket with GitHub](https://rocket.bjornulf.org) [Discord](https://discord.gg/Dj47Tpf)|
|i3wm 2|||||

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
* "story" = learning with stories [ none created for now ]



Support me and my projects on https://www.patreon.com/justumen :-)
