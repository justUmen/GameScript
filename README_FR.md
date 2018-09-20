# GameScript

GameScript est un script interactif pour apprendre le contenu de mes cours d'informatique, avec enregistrements audio et musique de fond.  
GameScript devrait fonctionner sur "macOS bash", "Windows 10 bash", "Windows with Cygwin" mais "Linux" est recommandé. (Natif ou virtuel : virtualbox, vmware...)  

## [ Français ] Chats :

Discord : (https://discord.gg/25eRgvD)  
RocketChat avec compte Github : (https://rocket.bjornulf.org)  
Par exemple, installer RocketChat 2.13.3 app sur Debian/Ubuntu/Mint 64 bits :

	wget https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.13.3/rocketchat_2.13.3_amd64.deb; sudo dpkg -i rocketchat_2.13.3_amd64.deb

## Demo :

<img src="https://cdn.rawgit.com/justUmen/GameScript/master/GS_usage.svg">

## Exemple des badges (ici niveau en bash) sur discord et rocketchat :

<p align="center">
	<img src="https://cdn.rawgit.com/justUmen/GameScript/master/discord.png">
	<img src="https://cdn.rawgit.com/justUmen/GameScript/master/rocket.png">
</p>

## Projet communautaire :

GameScript est un projet communautaire en constante évolution, si vous remarquez quelque chose qui pourrait être améliorée ou si vous désirez traduire son contenu dans une autre langue, merci de nous contacter.

## Installation :

Ajoutez un alias `gamescript` à votre fichier .bashrc en copie/collant cette commande :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Lancement :

    gamescript

### Liste des cours disponibles en français :

|SUJET|NOM DU CHAPITRE|TEXTE|SON|BADGE CHAT|LIEN CHAT|
|---------|---------|:-----:|:-----:|:-----:|:-----:|
|s96|bash 1|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 2|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 3|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 4|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 5|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 6|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 7|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 8|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 9|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 10|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 11|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s96|bash 12|||||
|s15|sys 1|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s15|sys 2|||||
|s16|i3wm 1|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|s16|i3wm 2|||||

Liste des futures sujets : (https://nodebb.bjornulf.org/topic/2/bjornulf-progression-de-mes-objectifs-%C3%A9ducatifs)

## Dépendances :

* bash > version 4
* wget
* mplayer ou mpg123 (mplayer est recommendé !)
* base64

Certains chapitres peuvent avoir plus de dépendances. (voir TOUTES ci-dessous)

### Installer les dépendances minimales ou TOUTES sur Arch (manjaro, antergos, ...)

    pacman -S wget mplayer
    pacman -S wget mplayer xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator

### Installer les dépendances minimales ou TOUTES sur Debian family (ubuntu, mint, ...)

    apt-get install wget mplayer
	apt-get install wget mplayer xclip i3 i3status qutebrowser mousepad leafpad pcmanfm jq feh wmctrl xdotool lxterminal galculator

# Bash : Code et concepts par chapitre

     Bash 1 => Concepts : commande , argument , chemin relatif , chemin absolu , dossier parent/enfant , répertoire courant
     Bash 1 => Code : pwd , ls , cd , .. , mkdir , rm , rmdir

     Bash 2 => Concepts : fichier caché, option, RTFM
     Bash 2 => Code : ~ , . , ../ , ../.. , ../../ , - , --, man

     Bash 3 => Concepts : caractère d'échappement , délimiteur d'argument
     Bash 3 => Code : echo , \ , \n , > , >> , cat , "", ''

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

     Bash 9 => Concepts : variable , manipulation de variable , variable d'environnement
     Bash 9 => Code : $ , $PATH , type , printenv

     Bash 10 => Concepts : alias , code retour (exit status) , pager
     Bash 10 => Code : alias , $PAGER , tail , head , $? , source , less

     Bash 11 => Concepts : condition , test logique
     Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq , -lt , -ne , -gt


MON PATREON : https://www.patreon.com/justumen  
MON PAYPAL : https://www.paypal.me/justumen  
