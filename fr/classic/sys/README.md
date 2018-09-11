#SYSTEM = process + system commands + boot process + system folders + logs + daemon + ...

sys 1 concepts : processus , signaux
sys 1 commands : ^C+c , ^C+z , & , jobs , fg , bg , kill , disown , PID , PPID , SIGCONT , SIGINT , SIGTSTP , SIGKILL

https://en.wikipedia.org/wiki/Linux_Standard_Base
https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
https://en.wikipedia.org/wiki/Single_UNIX_Specification

https://en.wikipedia.org/wiki/Job_control_(Unix)

program
processus : running program
	PID Process IDentifier

ps
ps -f
ps -H

run process in background : &
run process in sequence : nothing or ;


ps --forest

sleep 2 & wait $!

kill


systemd / init PID is 1
	ps tree = pstree 1


subshell

process table : basic metadata about processes

$BASHPID : current shell PID (or $$, except subshell)
$! : most recently background job PID

nohup

threads

CTRL + Z = kill -SIGTSTP and kill -SIGCONT
CTRL + C = kill -SIGINT

SIGSTOP almost same SIGTSTP but can't be caught or ignored

negative PID for process groups

clean close = SIGTERM (simply kill)

pkill xkill killall

strace, ltrace (truss ? pstack ?)

set -m : job control in script
















-- Attention cependant car ce PID est affecté au lancement du programme, c'est à dire qu'un meme PID ne ciblera pas la meme chose . ???





CTRL + Z : suspendre / pause ?

ps -f (FULL NAMES WITH ARGUMENTS)

Process is either a job or a daemon ?

https://unix.stackexchange.com/questions/3886/difference-between-nohup-disown-and?rq=1
https://unix.stackexchange.com/questions/21280/difference-between-pts-and-tty

(foo&) independant subshell works too... ??? :P



ê
é
à
è
