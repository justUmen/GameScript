# GameScript

GameScript est un script interactif pour apprendre le contenu de mes cours d'informatique.
GameScript devrait fonctionner sur "Windows bash" (Cygwin aussi) et "macOS bash" mais "Linux" est recommandé. (Support donné pour famille Debian et Arch)

## Projet communautaire :

GameScript est un projet communautaire, si vous remarquez quelque chose qui pourrait ???
Si vous désirez traduire son contenu dans une autre langue, merci de me contacter.

## Installation :

Ajoutez un alias à `gamescript` à votre fichier .bashrc en copie/collant cete commande :

    echo 'alias gamescript="mkdir ~/.GameScript 2>/dev/null;wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O ~/.GameScript/gamescript.sh 2>/dev/null;bash ~/.GameScript/gamescript.sh"'>>~/.bashrc; source ~/.bashrc

## Lancement :

    gamescript

## Dépendances :

* bash > version 4
* wget
* mplayer or mpg123 (mplayer is recommended !)
* base64

Certains chapitres peuvent avoir plus de dépendances requises.

### Installer les dépendances sur Arch (manjaro, antergos, ...)

    pacman -S wget mplayer mpg123

### Installer les dépendances sur Debian (ubuntu, mint, ...)

    apt-get install wget mplayer mpg123

### Situation actuelle :

|CHAPITRE|TEXTE|SON|BADGE CHAT|LIEN CHAT|
|---------|:-----:|:-----:|:-----:|:-----:|
|bash 1|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 2|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 3|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 4|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 5|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 6|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 7|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 8|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 9|✓|✓|✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 10|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 11|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|bash 12|||||
|sys 1|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|sys 2|||||
|i3wm 1|✓||✓|[Rocket+GitHub](https://rocket.bjornulf.org) ou [Discord](https://discord.gg/25eRgvD)|
|i3wm 2|||||

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
     Bash 11 => Code : read , if , then , else , fi , true , false , [ ] , test , -eq - lt , -ne , -gt


PATREON : https://www.patreon.com/justumen
PAYPAL : https://www.paypal.me/justumen
