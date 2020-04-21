function funcjs_14_ls(){
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_16_ls___(){
GS_text.innerHTML += `<hr>
Bureau  Documents  Téléchargements  Musique  Vidéos
<hr>`;}
function funcjs_19_ls____(){
GS_text.innerHTML += `<hr>
Bureau  Documents  Téléchargements  Musique  Vidéos
<hr>`;}
function funcjs_28_ls__(){
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_30_ls___(){
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_34_rm___bOb(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_37_ls(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_39_pwd(){
GS_text.innerHTML += `<hr>
/home/example/.GameScript_bash2
<hr>`;}
function funcjs_44_mkdir_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_46_cd_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_48_pwd(){
GS_text.innerHTML += `<hr>
/home/example/.GameScript_bash2/enfant
<hr>`;}
function funcjs_50_cd______(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_52_pwd(){
GS_text.innerHTML += `<hr>
/home/example
<hr>`;}
function funcjs_56_ls(){
GS_text.innerHTML += `<hr>
Bureau  Documents  Téléchargements  Musique  Vidéos
<hr>`;}
function funcjs_63_ls__a(){
GS_text.innerHTML += `<hr>
.bashrc  Bureau  Documents  Téléchargements  .config  .GameScript_bash2  Musique  .profile  Vidéos  .Xresources
<hr>`;}
function funcjs_70_cd____GameScript_bash2(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_75_ls__a(){
GS_text.innerHTML += `<hr>
.  ..  enfant
<hr>`;}
function funcjs_84_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_86_pwd(){
GS_text.innerHTML += `<hr>
/home/example
<hr>`;}
function funcjs_91_rmdir__GameScript_bash2_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_93_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_95_rmdir____GameScript_bash2(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_99_ls__a(){
GS_text.innerHTML += `<hr>
.  ..  bin  boot  dev  etc  home  initrd.img  lib  media  mnt  opt  proc  root  run  sbin  tmp  usr  var  vmlinuz
<hr>`;}
function funcjs_103_ls___all__HOME(){
GS_text.innerHTML += `<hr>
.bashrc  Bureau  Documents  Téléchargements  .config  .GameScript_bash2  Musique  .profile  Vidéos  .Xresources
<hr>`;}
function funcjs_110_man_ls(){
document.getElementById('GS_man').innerHTML = `<pre>
LS(1)                                  Commandes                                  LS(1)

NOM
       ls - Afficher le contenu de répertoires

SYNOPSIS
       ls [OPTION] ... [FICHIER] ...

DESCRIPTION
       Afficher  les  informations des FICHIERs (du répertoire courant par défaut). Les
       entrées sont triées alphabétiquement si aucune des options -cftuvSUX  ou  --sort
       n'est indiquée.

       Les  paramètres obligatoires pour les options de forme longue le sont aussi pour
       les options de forme courte.

       -a, --all
              inclure les entrées débutant par « . »

       -A, --almost-all
              omettre les fichiers « . » et « .. »

       --author
              avec -l, afficher l'auteur de chaque fichier

       -b, --escape
              afficher les caractères non graphiques sous la forme C déspécifiée

       --block-size=TAILLE
              utiliser  cette  TAILLE   de   bloc   pour   l'affichage.   Par   exemple
              « --block-size=M »  affichera  les volumes en unités de 1 048 576 octets.
              Consultez le format de TAILLE ci-dessous

       -B, --ignore-backups
              omettre les entrées se terminant par « ~ »

       -c     avec -lt, trier selon la date de modification « ctime » en  l'affichant ;
              avec  -l, trier selon le nom et afficher la date de modification ; sinon,
              trier selon la date de  modification,  de  la  plus  récente  à  la  plus
              ancienne

       -C     afficher en colonnes

       --color[=PARAMÈTRE]
              colorer  la  sortie.  PARAMÈTRE  peut  être  « never » (jamais), « auto »
              (automatique) ou « always » (toujours, valeur par défaut) ;  des  rensei‐
              gnements complémentaires suivent ci-dessous

       -d, --directory
              afficher les noms de répertoires eux-mêmes, pas leur contenu

       -D, --dired
              créer une sortie adaptée au mode « dired » d'Emacs

       -f     ne  pas  trier,  activer  les  options  -aU et désactiver les options -ls
              --color

       -F, --classify
              ajouter un caractère (parmi « */=>@| ») à chaque entrée

       --file-type
              similaire, mais sans ajouter « * »

       --format=MODE
              afficher selon le MODE across -x, commas  -m,  horizontal  -x,  long  -l,
              single-column -1, verbose -l ou vertical -C

       --full-time
              identique à -l --time-style=full-iso

       -g     identique à -l mais sans afficher le propriétaire

       --group-directories-first
              regrouper les répertoires avant les fichiers ;

              peut   être   renforcé   avec  l'option  --sort,  mais  l'utilisation  de
              --sort=none (-U) désactive le regroupement

       -G, --no-group
              ne pas afficher le nom des groupes dans un format d'affichage long

       -h, --human-readable
              avec -l ou -s, afficher les tailles en format lisible  (par  exemple  1K,
              234M ou 2G)

       --si   équivalent, en utilisant des puissances de 1000 et non de 1024

       -H, --dereference-command-line
              suivre les liens symboliques de la ligne de commande

       --dereference-command-line-symlink-to-dir
              suivre tous les liens symboliques en ligne de commande

              qui pointent vers un répertoire

       --hide=MOTIF
              ne pas afficher les entrées implicites correspondant au MOTIF de l'inter‐
              préteur de commandes (écrasé par -a ou -A)

       --indicator-style=STYLE
              ajouter au nom des entrées  l'indicateur  de  STYLE :  none  (aucun,  par
              défaut), slash (-p), file-type (--file-type) ou classify (-F)

       -i, --inode
              afficher le numéro d'index de chaque fichier

       -I, --ignore=MOTIF
              ne pas afficher les entrées implicites correspondant au MOTIF de l'inter‐
              préteur de commandes

       -k, --kibibytes
              blocs de 1024 octets par défaut pour l’occupation d’espace disque

       -l     utiliser un format d'affichage long

       -L, --dereference
              lors de l'affichage des entrées pointées par des liens symboliques, affi‐
              cher  les informations du fichier pointé par le lien plutôt que celles du
              lien lui-même

       -m     remplir la largeur par une liste d'entrées séparée par des virgules

       -n, --numeric-uid-gid
              identique à -l mais en affichant les valeurs numériques des  identifiants
              du propriétaire (UID) et du groupe (GID)

       -N, --literal
              afficher  les  noms  bruts  des  entrées  (par exemple, ne pas traiter de
              manière particulière les caractères de contrôle)

       -o     identique à -l, mais sans afficher l'information de groupe

       -p, --indicator-style=slash
              ajouter l'indicateur « / » aux répertoires

       -q, --hide-control-chars
              afficher « ? » à la place des caractères non graphiques

       --show-control-chars
              afficher les caractères  non  graphiques  tels  quels  (comportement  par
              défaut, à moins que le programme ne soit « ls » et la sortie un terminal)

       -Q, --quote-name
              mettre les noms d'entrées entre guillemets

       --quoting-style=MOT_CLÉ
              utiliser  le  style  d'encapsulation  selon  le  MOT_CLÉ literal, locale,
              shell, shell-always, c ou escape

       -r, --reverse
              inverser l'ordre du tri

       -R, --recursive
              afficher récursivement les sous-répertoires

       -s, --size
              afficher la taille allouée de chaque fichier en nombre de blocs

       -S     trier selon la taille des fichiers

       --sort=MODE
              trier selon le MODE plutôt que selon le  nom :  none  (aucun,  -U),  size
              (taille, -S),  time (heure, -t), version (-v), extension (-X)

       --time=MODE
              avec  -l,  afficher la date selon le MODE au lieu de la date de modifica‐
              tion par défaut : atime, access, use (-u), ctime,  ou  status  (-c),  tel
              qu'indiqué dans la clé de tri --sort=time

       --time-style=STYLE
              avec  -l,  afficher les dates selon le STYLE désiré : full-iso, long-iso,
              iso, locale ou +FORMAT ; le FORMAT est interprété comme  dans  « date » ;
              si   FORMAT  vaut  FORMAT1<changement  de  ligne>FORMAT2,  alors  FORMAT1
              s'applique aux fichiers anciens et  FORMAT2  aux  fichiers  récents ;  si
              STYLE  est  préfixé  par « posix- », STYLE ne prend effet qu'en dehors de
              des paramètres régionaux POSIX.

       -t     trier selon la date de  modification,  de  la  plus  récente  à  la  plus
              ancienne

       -T, --tabsize=COLONNES
              définir l'espacement des tabulations à COLONNES plutôt qu'à 8

       -u     avec  -lt,  trier  et  afficher selon la date de dernier accès ; avec -l,
              afficher la date de dernier d'accès et trier par nom ;  dans  les  autres
              cas, trier selon la date de dernier accès

       -U     ne pas trier, afficher selon l'ordre original des entrées du répertoire

       -v     tri naturel des numéros (de version) dans le texte

       -w, --width=COLONNES
              fixer la largeur de l'écran à COLONNES

       -x     afficher les entrées par ligne plutôt que par colonne

       -X     trier alphabétiquement selon l'extension des entrées

       -Z, --context
              afficher tout contexte de sécurité de chaque fichier

       -1     afficher un fichier par ligne

       --help Afficher l'aide-mémoire et quitter

       --version
              Afficher le nom et la version du logiciel et quitter

       L’argument  TAILLE est un entier suivi d'une unité facultative (10k pour 10×1024
       par exemple). Les unités sont K, M, G, T, P, E, Z et Y (puissances de  1024)  ou
       KB, MB, etc. (puissances de 1000).

       La  couleur  n'est pas utilisée pour distinguer les différents types de fichiers
       par défaut ou avec l'option --color=never. Avec l'option --color=auto, ls n'uti‐
       lise  des  codes  couleur que si la sortie standard est reliée à un terminal. La
       variable d'environnement LS_COLORS peut avoir un impact  sur  la  configuration.
       Utilisez la commande dircolors pour la définir.

   État de fin d'exécution :
       0      si OK,

       1      si  problèmes mineurs (par exemple, impossible d'accéder à un sous-réper‐
              toire),

       2      si erreur grave (par exemple, impossible d'accéder aux paramètres  de  la
              ligne de commande).

AUTEUR
       Écrit par Richard M. Stallman et David MacKenzie.

SIGNALER DES BOGUES
       Aide en ligne de GNU coreutils : <http://www.gnu.org/software/coreutils/>
       Signaler   toute   erreur   de   traduction   de  ls  à  <http://translationpro‐
       ject.org/team/>

COPYRIGHT
       Copyright © 2014 Free Software Foundation, Inc. Licence GPLv3+ :  GNU  GPL  ver‐
       sion 3 ou supérieures <http://gnu.org/licenses/gpl.html>
       Ce  programme est un logiciel libre. Vous pouvez le modifier et le redistribuer.
       Il n'y a AUCUNE GARANTIE dans la mesure autorisée par la loi.

VOIR AUSSI
       Documentation complète : <http://www.gnu.org/software/coreutils/ls>
       aussi disponible localement à l’aide de la commande : info '(coreutils) ls invo‐
       cation'

TRADUCTION
       Cette  page  de manuel a été traduite par Michel Robitaille <robitail AT iro DOT
       umontreal DOT ca> et mise  à  jour  pour  Debian  par  Jean-Luc  Coulon  (f5ibh)
       <jean-luc   DOT   coulon  AT  wanadoo  DOT  fr>  et  les  membres  de  la  liste
       <debian-l10n-french AT lists DOT debian DOT org>. Veuillez signaler toute erreur
       de traduction par un rapport de bogue sur le paquet manpages-fr-extra.

GNU coreutils 8.23                     mars 2015                                  LS(1)
</pre>
`;
document.getElementById('GS_man_status').innerHTML = `Manual page ls(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_117_man_rmdir(){
document.getElementById('GS_man').innerHTML = `<pre>
RMDIR(1)                               Commandes                               RMDIR(1)

NOM
       rmdir - Supprimer des répertoires vides

SYNOPSIS
       rmdir [OPTION] ... RÉPERTOIRE ...

DESCRIPTION
       Supprimer les RÉPERTOIREs, s'ils sont vides.

       --ignore-fail-on-non-empty

              ignorer  les échecs qui ne sont causés que par la non-vacuité d'un réper‐
              toire

       -p, --parents
              effacer le RÉPERTOIRE et les répertoires parents. Par exemple, « rmdir -p
              a/b/c » est identique à « rmdir a/b/c a/b a ».

       -v, --verbose
              afficher un diagnostic pour chaque répertoire traité

       --help Afficher l'aide-mémoire et quitter

       --version
              Afficher le nom et la version du logiciel et quitter

AUTEUR
       Écrit par David MacKenzie.

SIGNALER DES BOGUES
       Aide en ligne de GNU coreutils : <http://www.gnu.org/software/coreutils/>
       Signaler   toute   erreur  de  traduction  de  rmdir  à  <http://translationpro‐
       ject.org/team/>

COPYRIGHT
       Copyright © 2014 Free Software Foundation, Inc. Licence GPLv3+ :  GNU  GPL  ver‐
       sion 3 ou supérieures <http://gnu.org/licenses/gpl.html>
       Ce  programme est un logiciel libre. Vous pouvez le modifier et le redistribuer.
       Il n'y a AUCUNE GARANTIE dans la mesure autorisée par la loi.

VOIR AUSSI
       rmdir(2)

       Documentation complète : <http://www.gnu.org/software/coreutils/rmdir>
       aussi disponible localement à l’aide de la commande :  info  '(coreutils)  rmdir
       invocation'

TRADUCTION
       Cette  page  de manuel a été traduite par Michel Robitaille <robitail AT iro DOT
       umontreal DOT ca> et mise à jour pour Debian par Luc Froidefond <luc DOT froide‐
       fond AT free DOT fr> et les membres de la liste <debian-l10n-french AT lists DOT
       debian DOT org>. Veuillez signaler toute erreur de traduction par un rapport  de
       bogue sur le paquet manpages-fr-extra.

GNU coreutils 8.23                     mars 2015                               RMDIR(1)
</pre>
`;
document.getElementById('GS_man_status').innerHTML = `Manual page rmdir(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_120_rmdir___help(){
GS_text.innerHTML += `<hr>
Usage: rmdir [OPTION]... DIRECTORY...
Remove the DIRECTORY(ies), if they are empty.

      --ignore-fail-on-non-empty
                  ignore each failure that is solely because a directory
                    is non-empty
  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is
                    similar to 'rmdir a/b/c a/b a'
  -v, --verbose   output a diagnostic for every directory processed
      --help     display this help and exit
      --version  output version information and exit

GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
Full documentation at: <http://www.gnu.org/software/coreutils/rmdir>
or available locally via: info '(coreutils) rmdir invocation'
<hr>`;}
function funcjs_123_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_125_ls(){
GS_text.innerHTML += `<hr>
bin  boot  dev  etc  home  initrd.img  lib  media  mnt  opt  proc  root  run  sbin  tmp  usr  var  vmlinuz
<hr>`;}
function funcjs_129_man_ls(){
document.getElementById('GS_man').innerHTML = `<pre>
LS(1)                                  Commandes                                  LS(1)

NOM
       ls - Afficher le contenu de répertoires

SYNOPSIS
       ls [OPTION] ... [FICHIER] ...

DESCRIPTION
       Afficher  les  informations des FICHIERs (du répertoire courant par défaut). Les
       entrées sont triées alphabétiquement si aucune des options -cftuvSUX  ou  --sort
       n'est indiquée.

       Les  paramètres obligatoires pour les options de forme longue le sont aussi pour
       les options de forme courte.

       -a, --all
              inclure les entrées débutant par « . »

       -A, --almost-all
              omettre les fichiers « . » et « .. »

       --author
              avec -l, afficher l'auteur de chaque fichier

       -b, --escape
              afficher les caractères non graphiques sous la forme C déspécifiée

       --block-size=TAILLE
              utiliser  cette  TAILLE   de   bloc   pour   l'affichage.   Par   exemple
              « --block-size=M »  affichera  les volumes en unités de 1 048 576 octets.
              Consultez le format de TAILLE ci-dessous

       -B, --ignore-backups
              omettre les entrées se terminant par « ~ »

       -c     avec -lt, trier selon la date de modification « ctime » en  l'affichant ;
              avec  -l, trier selon le nom et afficher la date de modification ; sinon,
              trier selon la date de  modification,  de  la  plus  récente  à  la  plus
              ancienne

       -C     afficher en colonnes

       --color[=PARAMÈTRE]
              colorer  la  sortie.  PARAMÈTRE  peut  être  « never » (jamais), « auto »
              (automatique) ou « always » (toujours, valeur par défaut) ;  des  rensei‐
              gnements complémentaires suivent ci-dessous

       -d, --directory
              afficher les noms de répertoires eux-mêmes, pas leur contenu

       -D, --dired
              créer une sortie adaptée au mode « dired » d'Emacs

       -f     ne  pas  trier,  activer  les  options  -aU et désactiver les options -ls
              --color

       -F, --classify
              ajouter un caractère (parmi « */=>@| ») à chaque entrée

       --file-type
              similaire, mais sans ajouter « * »

       --format=MODE
              afficher selon le MODE across -x, commas  -m,  horizontal  -x,  long  -l,
              single-column -1, verbose -l ou vertical -C

       --full-time
              identique à -l --time-style=full-iso

       -g     identique à -l mais sans afficher le propriétaire

       --group-directories-first
              regrouper les répertoires avant les fichiers ;

              peut   être   renforcé   avec  l'option  --sort,  mais  l'utilisation  de
              --sort=none (-U) désactive le regroupement

       -G, --no-group
              ne pas afficher le nom des groupes dans un format d'affichage long

       -h, --human-readable
              avec -l ou -s, afficher les tailles en format lisible  (par  exemple  1K,
              234M ou 2G)

       --si   équivalent, en utilisant des puissances de 1000 et non de 1024

       -H, --dereference-command-line
              suivre les liens symboliques de la ligne de commande

       --dereference-command-line-symlink-to-dir
              suivre tous les liens symboliques en ligne de commande

              qui pointent vers un répertoire

       --hide=MOTIF
              ne pas afficher les entrées implicites correspondant au MOTIF de l'inter‐
              préteur de commandes (écrasé par -a ou -A)

       --indicator-style=STYLE
              ajouter au nom des entrées  l'indicateur  de  STYLE :  none  (aucun,  par
              défaut), slash (-p), file-type (--file-type) ou classify (-F)

       -i, --inode
              afficher le numéro d'index de chaque fichier

       -I, --ignore=MOTIF
              ne pas afficher les entrées implicites correspondant au MOTIF de l'inter‐
              préteur de commandes

       -k, --kibibytes
              blocs de 1024 octets par défaut pour l’occupation d’espace disque

       -l     utiliser un format d'affichage long

       -L, --dereference
              lors de l'affichage des entrées pointées par des liens symboliques, affi‐
              cher  les informations du fichier pointé par le lien plutôt que celles du
              lien lui-même

       -m     remplir la largeur par une liste d'entrées séparée par des virgules

       -n, --numeric-uid-gid
              identique à -l mais en affichant les valeurs numériques des  identifiants
              du propriétaire (UID) et du groupe (GID)

       -N, --literal
              afficher  les  noms  bruts  des  entrées  (par exemple, ne pas traiter de
              manière particulière les caractères de contrôle)

       -o     identique à -l, mais sans afficher l'information de groupe

       -p, --indicator-style=slash
              ajouter l'indicateur « / » aux répertoires

       -q, --hide-control-chars
              afficher « ? » à la place des caractères non graphiques

       --show-control-chars
              afficher les caractères  non  graphiques  tels  quels  (comportement  par
              défaut, à moins que le programme ne soit « ls » et la sortie un terminal)

       -Q, --quote-name
              mettre les noms d'entrées entre guillemets

       --quoting-style=MOT_CLÉ
              utiliser  le  style  d'encapsulation  selon  le  MOT_CLÉ literal, locale,
              shell, shell-always, c ou escape

       -r, --reverse
              inverser l'ordre du tri

       -R, --recursive
              afficher récursivement les sous-répertoires

       -s, --size
              afficher la taille allouée de chaque fichier en nombre de blocs

       -S     trier selon la taille des fichiers

       --sort=MODE
              trier selon le MODE plutôt que selon le  nom :  none  (aucun,  -U),  size
              (taille, -S),  time (heure, -t), version (-v), extension (-X)

       --time=MODE
              avec  -l,  afficher la date selon le MODE au lieu de la date de modifica‐
              tion par défaut : atime, access, use (-u), ctime,  ou  status  (-c),  tel
              qu'indiqué dans la clé de tri --sort=time

       --time-style=STYLE
              avec  -l,  afficher les dates selon le STYLE désiré : full-iso, long-iso,
              iso, locale ou +FORMAT ; le FORMAT est interprété comme  dans  « date » ;
              si   FORMAT  vaut  FORMAT1<changement  de  ligne>FORMAT2,  alors  FORMAT1
              s'applique aux fichiers anciens et  FORMAT2  aux  fichiers  récents ;  si
              STYLE  est  préfixé  par « posix- », STYLE ne prend effet qu'en dehors de
              des paramètres régionaux POSIX.

       -t     trier selon la date de  modification,  de  la  plus  récente  à  la  plus
              ancienne

       -T, --tabsize=COLONNES
              définir l'espacement des tabulations à COLONNES plutôt qu'à 8

       -u     avec  -lt,  trier  et  afficher selon la date de dernier accès ; avec -l,
              afficher la date de dernier d'accès et trier par nom ;  dans  les  autres
              cas, trier selon la date de dernier accès

       -U     ne pas trier, afficher selon l'ordre original des entrées du répertoire

       -v     tri naturel des numéros (de version) dans le texte

       -w, --width=COLONNES
              fixer la largeur de l'écran à COLONNES

       -x     afficher les entrées par ligne plutôt que par colonne

       -X     trier alphabétiquement selon l'extension des entrées

       -Z, --context
              afficher tout contexte de sécurité de chaque fichier

       -1     afficher un fichier par ligne

       --help Afficher l'aide-mémoire et quitter

       --version
              Afficher le nom et la version du logiciel et quitter

       L’argument  TAILLE est un entier suivi d'une unité facultative (10k pour 10×1024
       par exemple). Les unités sont K, M, G, T, P, E, Z et Y (puissances de  1024)  ou
       KB, MB, etc. (puissances de 1000).

       La  couleur  n'est pas utilisée pour distinguer les différents types de fichiers
       par défaut ou avec l'option --color=never. Avec l'option --color=auto, ls n'uti‐
       lise  des  codes  couleur que si la sortie standard est reliée à un terminal. La
       variable d'environnement LS_COLORS peut avoir un impact  sur  la  configuration.
       Utilisez la commande dircolors pour la définir.

   État de fin d'exécution :
       0      si OK,

       1      si  problèmes mineurs (par exemple, impossible d'accéder à un sous-réper‐
              toire),

       2      si erreur grave (par exemple, impossible d'accéder aux paramètres  de  la
              ligne de commande).

AUTEUR
       Écrit par Richard M. Stallman et David MacKenzie.

SIGNALER DES BOGUES
       Aide en ligne de GNU coreutils : <http://www.gnu.org/software/coreutils/>
       Signaler   toute   erreur   de   traduction   de  ls  à  <http://translationpro‐
       ject.org/team/>

COPYRIGHT
       Copyright © 2014 Free Software Foundation, Inc. Licence GPLv3+ :  GNU  GPL  ver‐
       sion 3 ou supérieures <http://gnu.org/licenses/gpl.html>
       Ce  programme est un logiciel libre. Vous pouvez le modifier et le redistribuer.
       Il n'y a AUCUNE GARANTIE dans la mesure autorisée par la loi.

VOIR AUSSI
       Documentation complète : <http://www.gnu.org/software/coreutils/ls>
       aussi disponible localement à l’aide de la commande : info '(coreutils) ls invo‐
       cation'

TRADUCTION
       Cette  page  de manuel a été traduite par Michel Robitaille <robitail AT iro DOT
       umontreal DOT ca> et mise  à  jour  pour  Debian  par  Jean-Luc  Coulon  (f5ibh)
       <jean-luc   DOT   coulon  AT  wanadoo  DOT  fr>  et  les  membres  de  la  liste
       <debian-l10n-french AT lists DOT debian DOT org>. Veuillez signaler toute erreur
       de traduction par un rapport de bogue sur le paquet manpages-fr-extra.

GNU coreutils 8.23                     mars 2015                                  LS(1)
</pre>
`;
document.getElementById('GS_man_status').innerHTML = `Manual page ls(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_134_ls__w_1(){
GS_text.innerHTML += `<hr>
<pre>bin
boot
dev
etc
home
initrd.img
lib
media
mnt
opt
proc
root
run
sbin
tmp
usr
var
vmlinuz</pre>
<hr>`;}
function funcjs_136_ls__w_100(){
GS_text.innerHTML += `<hr>
<pre>bin  boot  dev  etc  home  initrd.img  lib
media  mnt  opt  proc  root  run  sbin  tmp
usr  var  vmlinuz</pre>
<hr>`;}
function funcjs_139_ls___width_100(){
GS_text.innerHTML += `<hr>
<pre>bin  boot  dev  etc  home  initrd.img  lib
media  mnt  opt  proc  root  run  sbin  tmp
usr  var  vmlinuz</pre>
<hr>`;}
