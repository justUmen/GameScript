# Gamescript.sh [french only for now...]

## Simple installation :

Add `gamescript` alias to your .bashrc file with copy/paste this command :

    echo 'alias gamescript="wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s --"'>>~/.bashrc; source ~/.bashrc

## Simple usage :

    gamescript

## Dependencies :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer recommanded)
* base64

### Arch family

    pacman -S wget mplayer mpg123

### Debian family

    apt-get install wget mplayer mpg123

## What is it ?

It is an ONLINE bash script to learn about :

* bash (included : Unix-like operating system commands + file organization + permissions)
* -

## Types :

* "classic" = default mode, technical content only
* "story" = learning with stories (several versions possible)

## Can :

* remember your pseudo
* 

## ToDo :

* have default language ?
* better colors if the terminal can print them ! Keep basic colors for basic terminals.
* change numbers order system that is obsolete
* move intro at the start all the time ? smaller intro.
* store quiz in text file and genereate like LIST_4GEN.txt
* allow arrows and tab in "read"
* autoextend code based on one change when add new lecture (change 1 local file  + change 1 bot file)
* add offline option --offline, then it will download all standalone into a folder .GameScript ?? + update
* better help with online/offline, update

## Details :

* standalone files are generated and can be downloaded as standalone in offline mode. : https://github.com/justUmen/GameScript_standalone

Support me and my projects on https://www.patreon.com/justumen :-)
