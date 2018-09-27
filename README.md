# GameScript

## Select your language :

|LANGUAGE|README|AVAILABLE CHAPTERS|
|:-----:|:-----:|:-----:|
|English|https://github.com/justUmen/GameScript/blob/master/README.md|7/13|
|Français (French)|https://github.com/justUmen/GameScript/blob/master/README_FR.md|13/13|
|ខ្មែរ (Khmer)|...|0/13|
|ไทย (Thai)|...|0/13|

GameScript is an interactive script to learn about some computer related subjects with voice recordings and background music.  
GameScript is written in `bash` and is able to teach you this language. Learning `bash` with GameScript will make you able to understand its source code !  
GameScript should work with "macOS bash", "Windows 10 bash", "Windows with Cygwin" but "Linux" is recommended. (Native or virtual : virtualbox, vmware...)   

## Demo :

<img src="https://cdn.rawgit.com/justUmen/GameScript/master/GS_usage_2.svg">

## Installation (from a terminal) :

Add `gamescript` alias to your .bashrc file by copy/pasting this command in a bash terminal :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Launch (from a terminal) :

    gamescript

## Example unlock badges on discord and rocketchat : (rocketchat only available in french for now, coming soon...)

<p align="center">
	<img src="https://cdn.rawgit.com/justUmen/GameScript/master/discord.png">
	<img src="https://cdn.rawgit.com/justUmen/GameScript/master/rocket.png">
</p>

## [ English ] Chat :

Your choice, use the web page or application (or nothing :p) :  

|CHAT|OUR CHAT|APPLICATION|
|---------|---------|--------|
|Discord|(https://discord.gg/Dj47Tpf)|https://discordapp.com/download|

For example, if you want to install the Discord app on Debian/Ubuntu/Mint 64 bits :

	wget https://discordapp.com/api/download?platform=linux&format=deb -O discord.deb
	sudo dpkg -i discord.deb

## Community project :

GameScript is a community project in constant evolution, if you see something that can be improved or if you wish to translate some of the content in another language, please contact us.

### Current list of the lectures available in english :

|REF|CHAPTER|TEXT|SOUND|CHAT BADGE|CHAT LINK|WALLPAPER|
|--------|---------|:-----:|:-----:|:-----:|:-----:|:-----:|
|s96|bash 1|✓ translated by [Altarov](https://www.github.com/Altarov)||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 2|✓ translated by [Altarov](https://www.github.com/Altarov)||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 3|✓ translated by [Altarov](https://www.github.com/Altarov)||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 4|✓||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 5|✓||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 6|✓||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s96|bash 7||||||
|s96|bash 8||||||
|s96|bash 9||||||
|s96|bash 10||||||
|s96|bash 11||||||
|s96|bash 12||||||
|s15|sys 1||||||
|s15|sys 2||||||
|s16|i3wm 1|✓||✓|[Discord](https://discord.gg/Dj47Tpf)||
|s16|i3wm 2||||||

## Minimal dependencies :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer is highly recommended !)

Some chapters may have more dependencies to install. (see ALL below)
Note : macOS users should manually install a bash version 4 or higher. (check current version with `bash --version`)

### Install minimal or ALL dependencies on Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer
	apt-get install wget mplayer youtube-dl ffmpeg xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator toilet

### Install minimal or ALL dependencies on Arch family (manjaro, antergos, ...) - `toilet` in AUR

    pacman -S wget mplayer
    pacman -S wget mplayer youtube-dl ffmpeg xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator

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
    Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq , -lt , -ne , -gt

## Types :

* "classic" = default mode, technical content only
* "story" = learning with stories [ none created for now ]

## Me

MY PATREON : https://www.patreon.com/justumen (Bonus Patreon Badge)  
MY PAYPAL : https://www.paypal.me/justumen  
MY TWITTER : https://twitter.com/justUmen  
