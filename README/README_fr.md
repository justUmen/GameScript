# GameScript

GameScript est un script interactif pour apprendre le contenu de mes cours d'informatique, avec enregistrements audio et musique de fond.  
GameScript est écrit en `bash` et peut vous aider à apprendre ce langage. Apprendre `bash` avec GameScript vous permettra donc de comprendre son code source !  
GameScript devrait fonctionner sur "macOS bash", "Windows 10 bash", "Windows with Cygwin" mais "Linux" est recommandé. (Natif ou virtuel : virtualbox, vmware...)  

## Demo :

<img src="https://cdn.rawgit.com/justUmen/GameScript/master/GS_usage_2.svg">

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

### Liste des cours disponibles en français :

<!--[Rocket+GitHub](https://rocket.bsjornulf.org) ou -->
|REF|CHAPITRE|TEXTE|SON|BADGE CHAT|LIEN CHAT|WALLPAPER|
|---------|---------|:-----:|:-----:|:-----:|:-----:|:-----:|
|s96|bash 1|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)|✓[lien](https://github.com/justUmen/WallpaperGenerator/tree/master/Wallpaper/fr/bash_1)|
|s96|bash 2|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 3|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 4|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 5|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 6|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 7|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 8|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 9|✓|✓|✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 10|✓||✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 11|✓||✓|[Discord](https://discord.gg/25eRgvD)||
|s96|bash 12||||||
|s15|sys 1|✓||✓|[Discord](https://discord.gg/25eRgvD)||
|s15|sys 2||||||
|s16|i3wm 1|✓||✓|[Discord](https://discord.gg/25eRgvD)|✓[lien](https://github.com/justUmen/WallpaperGenerator/tree/master/Wallpaper/fr/i3wm_1)|
|s16|i3wm 2||||||

Liste des futures sujets : (https://nodebb.bjornulf.org/topic/2/bjornulf-progression-de-mes-objectifs-%C3%A9ducatifs)

# Bash : Code et concepts par chapitre

     Bash 1 => Concepts : commande , argument , chemin relatif , chemin absolu , dossier parent/enfant , répertoire courant
     Bash 1 => Code : pwd , ls , cd , .. , mkdir , rm , rmdir

     Bash 2 => Concepts : fichier caché, option, RTFM
     Bash 2 => Code : ~ , . , ../ , ../.. , ../../ , - , --, man

     Bash 3 => Concepts : caractère d'échappement , délimiteur d'argument
     Bash 3 => Code : echo , \ , \n, \t , > , >> , cat , "", ''

     Bash 4 => Concepts : condition de succès , condition d'échec
     Bash 4 => Code : mv , cp , ; , && , ||

     Bash 5 => Concepts : permissions et limitations
     Bash 5 => Code : ls -l , chmod

     Bash 6 => Concepts : donnée , métadonnée
     Bash 6 => Code : * , ? , touch , chown , chmod

     Bash 7 => Concepts : sortie standard , erreur standard , regroupement de flux
     Bash 7 => Code : 1> , 2> , &> , 1>> , 2>> , &>> , /dev/null , 2>&1 , 1>&2 , ()

     Bash 8 => Concepts : entrée standard , pipe
     Bash 8 => Code : | , wc , sort , grep , uniq , - , |& , <

     Bash 9 => Concepts : variable , manipulation de variable , variable d'environnement , script
     Bash 9 => Code : $ , $PATH , type , printenv

     Bash 10 => Concepts : alias , code retour (exit status) , pager
     Bash 10 => Code : alias , $PAGER , tail , head , $? , source , less

     Bash 11 => Concepts : condition , comparaison numérique, test logique
     Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq , -lt , -ne , -gt, -le, -ge

     Bash 12 => Concepts : condition , table de vérité, OR logique, AND logique
     Bash 12 => Code : if , elif , test , [ '' ] , [ "" ] , $() , ``

     Bash 13 => Concepts : NON, NAND, NOR, comparaison de chaine de caractères, comparaisons multiples
     Bash 13 => Code : ! , == , != , case , esac

## Types :

A same chapter can have the same content but

* "classic" = mode par défaut, uniquement contenu technique
* "fun" = mode classic avec quelques lignes en plus pour détendre l'atmosphère [ aucun pour l'instant ]
* "story" = apprendre avec des histoires [ aucun pour l'instant ]

## Moi

MON PATREON : https://www.patreon.com/justumen (Bonus Badge Patreon)  
MON PAYPAL : https://www.paypal.me/justumen  
MON TWITTER : https://twitter.com/justUmen  
