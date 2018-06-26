SYSTEM = process + system commands + boot process + system folders + logs + daemon + ...

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

jobs
fg
bg

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

fg %1
kill %1

clean close = SIGTERM (simply kill)

pkill xkill killall

strace, ltrace (truss ? pstack ?)

set -m : job control in script

Votre système d'exploitation est multitâches, c'est à dire qu'il est capable d'exécuter plusieurs tâches simultanément.
Par exemple, vous pouvez avoir un éditeur de texte et un navigateur web ouvert en même temps sans rencontrer de difficultés.
Lorsque ces programmes sont en cours d'exécution sur votre ordinateur, on parle alors de processus.
Un même programme peut être lancé plusieures fois, il est donc possible d'avoir plusieurs processus pour un seul programme.
Dans cette série nous verrons ensemble comment analyser et contrôler nos différents processus.
+Commencons par lister vos processus avec la commande : ps
!ps£Non
Evidemment il y a bien plus de processus que ca sur votre ordinateur.
+Pour lister tous les processus, faites : ps -e
!ps -e£Non
+Pour compter le nombre de processus, vous pouvez donc faire : ps -e|wc -l
!ps -e|wc -l£Non
Mais pour l'instant nous allons nous concentrer sur le résultat de la commande ps.
+Faites donc à nouveau : ps
!ps£Non
Chaque processus aura un identifiant unique capable de l'identifier, son PID. (l'anglais de Process IDentifier)
C'est un numéro unique qui pourra par exemple être utilisé pour manipuler son comportement.
Lorsque vous lancez un programme dans un terminal, le processus qui en résulte y sera attaché.
On dit alors que bash est le parent de ce processus, et que ce processus est l'enfant de ce terminal.
Tant que ce programme n'est pas terminé, vous ne pouvez plus lancer d'autres commandes avec ce terminal.

le processus prend controle du terminal, suspend l'interpreteur bash et utilise son stdin et stdout.

+Essayez donc de lancer leafpad, regardez l'état de votre terminal, puis quitter leafpad en cliquant sur "fichier", puis "quitter".
!leafpad£Non
Quitter le processus vous permet de continuer à utiliser votre terminal.

comme le processeur utilise stdin vous pouvez enoyez des signaux au processus.
par exemple

Vous pouvez également fermer ce processus de manière plus brutale directement dans son terminal parent en faisant CTRL + C.
Attention cependant à ne pas le faire deux fois, car GameScript est lui même un processus qui peut être fermé avec la même combinaison de touche.
+Ouvrez leafpad, et fermez le en faisant CTRL + C dans votre terminal.
!leafpad£Non
Si vous voulez lancer un programme, mais que vous voulez continuer à utiliser votre terminal, vous pouvez suspendre ce programme avec la combinaison CTRL + Z.
Encore une fois, attention à ne pas le faire deux fois et détacher GameScript par erreur.
+Ouvrez leafpad, retournez dans votre terminal et détachez leafpad avec CTRL + Z pour continuer à utiliser GameScript.
!leafpad£Non
Ici vous pouvez remarquer que leafpad est toujours ouvert, mais vous pouvez continuer à utiliser votre terminal normalement.
+Faites donc à nouveau : ps
!ps£Non
Sans argument, la commande ps affichera le processus de votre terminal et ses processus enfants.
Comme vous avez utilisé ce terminal pour lancer leafpad, vous pouvez le voir ici dans la liste.

Pour voir les relations parents/enfants de vos processus, faites : ps -l

avec -l vous pouvez voir PPID, l'identifiant des parents.
Ici vous pouvez voir que gamescript et leafpad sont tous les deux des enfants d'un processus bash.

pour voir mieux arbre -H ou -lH

Maintenant, essayez d'écrire dans leafpad, et revenez ensuite sur GameScript pour continuer.
CTRL + Z a suspendu ce processus, ce qui le rend inutilisable.

vous pouvez bg ou fg.

ê
é
à
è

















