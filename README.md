# Gamescript.sh

## Usage

Add argument after "bash -s -- " in curl with :

    wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr bash

Example : print Help in french :

    wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr --help

Or you can download `gamescript.sh` and execute it, or even create an alias in `.bashrc` for example :

    alias gamescript="wget -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr"

This alias will launch gamescript always in french because of the "-l fr".
With an alias you just have to launch it with for example :

    gamescript -l fr bash
    gamescript --help
    gamescript -l fr --help


## What is it ?

It is a bash script to learn about :

* bash

## ToDo :

* archlinux (+ install)
* i3wm
* + more

##Types :

* "classic" = normal teaching, audio version + text
* "story" = learning with stories (several versions possible)

## Ideas

* the same command must be repeated at least 3 times in the script (+ clever time interval)

## Details :

* gen all in one file, dirty but simple

Support me and my projects on https://www.patreon.com/justumen :-)
