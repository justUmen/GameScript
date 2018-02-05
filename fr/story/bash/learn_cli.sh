#!/bin/bash
source ../../functions.sh

function enter(){
case $1 in
	1) echo -en "\e[0;33m...\e[0m" ;&
	2) event "Un homme se rapproche de vous précipitamment." ;&
	3) talk "Adjudant" "Hey, c'est toi que l'académie m'a envoyé ?" ;&
	4) talk "Adjudant" "Tiens on t'a trouvé un ordinateur, t'as interêt à en faire bon usage, c'est un des rares qu'on a pu récupérer." ;&
	5) talk "Adjudant" "Si tu veux commencer à rejoindre l'équipe faudra déjà que t'installes un Arch avec i3wm." ;&
	6) answer "C'est quoi Arch ?" "C'est quoi i3wm ?" "Affirmatif." "7" "7" "11" ;;
#6	
	7) talk "Adjudant" "Non mais c'est pas possible je n'ai pas de temps à perdre avec ça. Sergent, occupez-vous de ce bleu !" ;&
	8) event "L'adjudant quitte la pièce brusquement, visiblement à cran." ;&
	9) talk "Sergent instructeur" "Faut pas en vouloir à l'adjudant, depuis la dernière attaque, il n'est plus vraiment lui même..." ;&
#6
	10) talk "Sergent instructeur" "Alors t'y connais rien en fait ? T'inquiètes pas je vais te guider." ;&
	11) talk "Sergent instructeur" "T'es sur une distribution live là, il n'y a rien sur ton disque dur pour l'instant" ;&
	12) talk_not_press_key "Sergent instructeur" "On va commencer par voir si tu as un connection internet, commences par taper \\e[4;37mping -c 1 bjornulf.org\\e[0m." ;&
	13) answer_run "ping -c 1 bjornulf.org" "Sergent instructeur" "Tu n'as pas compris, il faut que tu tapes :" ;&
	12) talk "Sergent instructeur" "Voilà en fait là tu viens d'envoyer un message au serveur qui héberge 'bjornulf.org'." ;&
esac
}

new_game_or_restore

enter $restore
