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
* allow arrows and tab in "read"
* add offline option --offline, then it will download all standalone into a folder .GameScript ?? + update
* better help with online/offline, update

## Details :

* standalone files are generated and can be downloaded as standalone in offline mode. : https://github.com/justUmen/GameScript_standalone

Support me and my projects on https://www.patreon.com/justumen :-)
