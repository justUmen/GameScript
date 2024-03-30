# GameScript

More details about this here : [Brainlink GameScript](http://brainlink.fr/intro_gs_pul_EN.pdf)

GameScript est un script interactif pour apprendre le contenu de mes cours d'informatique, avec enregistrements audio et musique de fond.  
GameScript est écrit en `bash` et peut vous aider à apprendre ce langage. Apprendre `bash` avec GameScript vous permettra donc de comprendre son code source !  
GameScript devrait fonctionner sur "macOS bash", "Windows 10 bash", "Windows with Cygwin" mais "Linux" est recommandé. (Natif ou virtuel : virtualbox, vmware...)  

## Dépendances minimales :

* bash > version 4
* wget
* git
* mplayer ou mpg123 (mplayer est très fortement recommandé !)

Certains chapitres peuvent avoir plus de dépendances. (voir TOUTES ci-dessous)  
Note : Les utilisateurs de macOS doivent manuellement installer une version de bash supérieure à 4. (Vérifier votre version avec : `bash --version`)  

### Installer les dépendances minimales ou TOUTES sur Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer git
	apt-get install wget mplayer git tmux youtube-dl ffmpeg xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator toilet

### Installer les dépendances minimales ou TOUTES sur Arch (manjaro, antergos, ...) - `toilet` dans l'AUR

    pacman -S wget mplayer git
    pacman -S wget mplayer git tmux youtube-dl ffmpeg xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator

## Installation de GameScript (dans un terminal) :

Ajoutez un alias `gamescript` à votre fichier .bashrc en copie/collant cette commande :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Lancement de GameScript (dans un terminal) :

    gamescript

## Exemple des badges sur discord et rocketchat :

<p align="center">
	<img src="https://cdn.rawgit.com/justUmen/GameScript/master/discord.png">
	<!--<img src="https://cdn.rawgit.com/justUmen/GameScript/master/rocket.png">-->
</p>

## [ Français ] Chat :

Utilisez la page internet ou l'application Discord (ou ni l'un ni l'autre. :p) :  

|CHAT|NOTRE CHAT|APPLICATION|
|---------|---------|--------|
|Discord|(https://discord.gg/25eRgvD)|https://discordapp.com/download|

<!--|RocketChat|(https://rocket.bjornulf.org)|https://github.com/RocketChat/Rocket.Chat.Electron/releases|-->

<!--Par exemple, si vous voulez installer RocketChat 2.13.3 app sur Debian/Ubuntu/Mint 64 bits :

	wget https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.13.3/rocketchat_2.13.3_amd64.deb
	sudo dpkg -i rocketchat_2.13.3_amd64.deb
-->

Par exemple, si vous voulez installer Discord app sur Debian/Ubuntu/Mint 64 bits :

	wget https://discordapp.com/api/download?platform=linux&format=deb -O discord.deb
	sudo dpkg -i discord.deb

## Projet communautaire :

GameScript est un projet communautaire en constante évolution, si vous remarquez quelque chose qui pourrait être améliorée ou si vous désirez traduire son contenu dans une autre langue, merci de nous contacter.

## Types :

A same chapter can have the same content but

* "classic" = mode par défaut, uniquement contenu technique
* "fun" = mode classic avec quelques lignes en plus pour détendre l'atmosphère [ aucun pour l'instant ]
* "story" = apprendre avec des histoires [ aucun pour l'instant ]

## Moi

MON PATREON : https://www.patreon.com/justumen (Bonus Badge Patreon)  
MON PAYPAL : https://www.paypal.me/justumen  
MON TWITTER : https://twitter.com/justUmen  
