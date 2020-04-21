function funcjs_7_ls__a__w_1(){
GS_text.innerHTML += `<hr>
<pre>.
..</pre>
<hr>`;}
function funcjs_10_ls__a___width_1(){
GS_text.innerHTML += `<hr>
<pre>.
..</pre>
<hr>`;}
function funcjs_15_ls__aw_10(){
GS_text.innerHTML += `<hr>
.  ..
<hr>`;}
function funcjs_21_man_ls(){
document.getElementById('GS_man').innerHTML = `
<pre>LS(1)                                  Commandes                                  LS(1)

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
</pre>`;
GS_text.innerHTML += `<hr>
<hr>`;
document.getElementById('GS_man_status').innerHTML = `Manual page echo(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
}
function funcjs_23_ls___version(){
GS_text.innerHTML += `<hr>
<pre>ls (GNU coreutils) 8.28
Copyright (C) 2017 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Richard M. Stallman and David MacKenzie.</pre>
<hr>`;}
function funcjs_30_echo_bonjour(){
GS_text.innerHTML += `<hr>
bonjour
<hr>`;}
function funcjs_32_echo_bonjour_tout_le_monde(){
GS_text.innerHTML += `<hr>
bonjour tout le monde
<hr>`;}
function funcjs_41_echo_bonjour_test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_44_ls(){
GS_text.innerHTML += `<hr>
test
<hr>`;}
function funcjs_50_cat_test(){
GS_text.innerHTML += `<hr>
bonjour
<hr>`;}
function funcjs_55_cat_test_test(){
GS_text.innerHTML += `<hr>
<pre>bonjour
bonjour</pre>
<hr>`;}
function funcjs_60_echo_au_revoir_test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_62_cat_test(){
GS_text.innerHTML += `<hr>
au revoir
<hr>`;}
function funcjs_69_echo_bonjour__test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_71_cat_test(){
GS_text.innerHTML += `<hr>
<pre>au revoir
bonjour</pre>
<hr>`;}
function funcjs_77_ls__test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_79_cat_test(){
GS_text.innerHTML += `<hr>
<pre>au revoir
bonjour
test</pre>
<hr>`;}
function funcjs_84_echo_pwd__test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_87_pwd__test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_89_cat_test(){
GS_text.innerHTML += `<hr>
<pre>au revoir
bonjour
test
pwd
/home/exemple/.GameScript_bash3</pre>
<hr>`;}
function funcjs_94_echo_a__b(){
GS_text.innerHTML += `<hr>
a b
<hr>`;}
function funcjs_105_echo_a___b(){
GS_text.innerHTML += `<hr>
a&nbsp;&nbsp;b
<hr>`;}
function funcjs_109_echo_a__b(){
GS_text.innerHTML += `<hr>
a b
<hr>`;}
function funcjs_111_echo_a____b(){
GS_text.innerHTML += `<hr>
a&nbsp;&nbsp;b
<hr>`;}
function funcjs_115_echo_x__y(){
GS_text.innerHTML += `<hr>
x&gt;y
<hr>`;}
function funcjs_121_echo_____quitter(){
GS_text.innerHTML += `<hr>
\quitter
<hr>`;}
function funcjs_129_echo___X___X__(){
GS_text.innerHTML += `<hr>
X&nbsp;&nbsp;&nbsp;X
<hr>`;}
function funcjs_132_echo__X___X_(){
GS_text.innerHTML += `<hr>
X&nbsp;&nbsp;&nbsp;X
<hr>`;}
function funcjs_137_man_echo(){
document.getElementById('GS_man').innerHTML = `
<pre>ECHO(1)                             Commandes                             ECHO(1)

NOM
       echo - Afficher une ligne de texte

SYNOPSIS
       echo [OPTION-COURTE]... [CHAÎNE]...
       echo OPTION-LONGUE

DESCRIPTION
       Afficher la(les) CHAÎNE(s) en écho sur la sortie standard.

       -n     ne pas effectuer le saut de ligne final

       -e     interpréter les caractères déspécifiés par une contre-oblique

       -E     ne   pas   interpréter   les  caractères  « déspécifiés »  par  une
              contre-oblique. C'est le comportement par défaut.

       --help Afficher l'aide-mémoire et quitter

       --version
              Afficher le nom et la version du logiciel et quitter

       Si -e est présent, les séquences suivantes sont reconnues :

       \\\\     contre-oblique (« backslash »)

       \\a     alerte (sonnerie)

       \\b     retour en arrière d'un caractère (« backspace »)

       \\c     ne plus produire de sortie

       \\e     escape

       \\f     saut de page

       \\n     nouvelle ligne

       \\r     retour chariot

       \\t     tabulation horizontale

       \\v     tabulation verticale

       \\0NNN  octet de valeur octale NNN (de 1 à 3 chiffres)

       \\xHH   octet de valeur hexadécimale HH (de 1 à 2 chiffres)

       NOTE : votre interpréteur de commandes peut avoir  sa  propre  version  de
       echo,  qui remplace en général la version décrite ici. Veuillez vous réfé‐
       rer à  la  documentation  de  votre  interpréteur  de  commandes  pour  en
       connaître les options.

AUTEUR
       Écrit par Brian Fox et Chet Ramey.

SIGNALER DES BOGUES
       Aide en ligne de GNU coreutils : <http://www.gnu.org/software/coreutils/>
       Signaler  toute  erreur  de  traduction  de echo à <http://translationpro‐
       ject.org/team/>

COPYRIGHT
       Copyright © 2014 Free Software Foundation, Inc. Licence GPLv3+ :  GNU  GPL
       version 3 ou supérieures <http://gnu.org/licenses/gpl.html>
       Ce  programme  est un logiciel libre. Vous pouvez le modifier et le redis‐
       tribuer. Il n'y a AUCUNE GARANTIE dans la mesure autorisée par la loi.

VOIR AUSSI
       Documentation complète : <http://www.gnu.org/software/coreutils/echo>
       aussi disponible localement à l’aide de la commande  :  info  '(coreutils)
       echo invocation'

TRADUCTION
       Cette page de manuel a été traduite par Michel Robitaille <robitail AT iro
       DOT umontreal DOT ca> et mise à jour pour Debian par Valéry Perrin <valery
       DOT  perrin  DOT  debian  AT  free  DOT  fr>  et  les  membres de la liste
       <debian-l10n-french AT lists DOT debian DOT org>. Veuillez signaler  toute
       erreur  de  traduction  par  un  rapport  de  bogue  sur  le  paquet  man‐
       pages-fr-extra.

GNU coreutils 8.23                  mars 2015                             ECHO(1)</pre>`;
GS_text.innerHTML += `<hr>
<hr>`;
document.getElementById('GS_man_status').innerHTML = `Manual page echo(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
}
function funcjs_141_echo__e__a_nb_(){
GS_text.innerHTML += `<hr>
<pre>a
b</pre>
<hr>`;}
function funcjs_143_man_echo(){
document.getElementById('GS_man').innerHTML = `
<pre>ECHO(1)                             Commandes                             ECHO(1)

NOM
       echo - Afficher une ligne de texte

SYNOPSIS
       echo [OPTION-COURTE]... [CHAÎNE]...
       echo OPTION-LONGUE

DESCRIPTION
       Afficher la(les) CHAÎNE(s) en écho sur la sortie standard.

       -n     ne pas effectuer le saut de ligne final

       -e     interpréter les caractères déspécifiés par une contre-oblique

       -E     ne   pas   interpréter   les  caractères  « déspécifiés »  par  une
              contre-oblique. C'est le comportement par défaut.

       --help Afficher l'aide-mémoire et quitter

       --version
              Afficher le nom et la version du logiciel et quitter

       Si -e est présent, les séquences suivantes sont reconnues :

       \\\\     contre-oblique (« backslash »)

       \\a     alerte (sonnerie)

       \\b     retour en arrière d'un caractère (« backspace »)

       \\c     ne plus produire de sortie

       \\e     escape

       \\f     saut de page

       \\n     nouvelle ligne

       \\r     retour chariot

       \\t     tabulation horizontale

       \\v     tabulation verticale

       \\0NNN  octet de valeur octale NNN (de 1 à 3 chiffres)

       \\xHH   octet de valeur hexadécimale HH (de 1 à 2 chiffres)

       NOTE : votre interpréteur de commandes peut avoir  sa  propre  version  de
       echo,  qui remplace en général la version décrite ici. Veuillez vous réfé‐
       rer à  la  documentation  de  votre  interpréteur  de  commandes  pour  en
       connaître les options.

AUTEUR
       Écrit par Brian Fox et Chet Ramey.

SIGNALER DES BOGUES
       Aide en ligne de GNU coreutils : <http://www.gnu.org/software/coreutils/>
       Signaler  toute  erreur  de  traduction  de echo à <http://translationpro‐
       ject.org/team/>

COPYRIGHT
       Copyright © 2014 Free Software Foundation, Inc. Licence GPLv3+ :  GNU  GPL
       version 3 ou supérieures <http://gnu.org/licenses/gpl.html>
       Ce  programme  est un logiciel libre. Vous pouvez le modifier et le redis‐
       tribuer. Il n'y a AUCUNE GARANTIE dans la mesure autorisée par la loi.

VOIR AUSSI
       Documentation complète : <http://www.gnu.org/software/coreutils/echo>
       aussi disponible localement à l’aide de la commande  :  info  '(coreutils)
       echo invocation'

TRADUCTION
       Cette page de manuel a été traduite par Michel Robitaille <robitail AT iro
       DOT umontreal DOT ca> et mise à jour pour Debian par Valéry Perrin <valery
       DOT  perrin  DOT  debian  AT  free  DOT  fr>  et  les  membres de la liste
       <debian-l10n-french AT lists DOT debian DOT org>. Veuillez signaler  toute
       erreur  de  traduction  par  un  rapport  de  bogue  sur  le  paquet  man‐
       pages-fr-extra.

GNU coreutils 8.23                  mars 2015                             ECHO(1)</pre>`;
GS_text.innerHTML += `<hr>
<hr>`;
document.getElementById('GS_man_status').innerHTML = `Manual page echo(1) (press q to quit)`;
document.getElementById('GS_man').style.display="block";
document.getElementById('GS_man_status').style.display="block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
        document.getElementById('GS_man_status').style.display = "none";
    }
});
}
function funcjs_145_echo__e__a_tb_(){
GS_text.innerHTML += `<hr>
echo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b
<hr>`;}
function funcjs_147_echo__e__a_tb__tab(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_149_cat_tab(){
GS_text.innerHTML += `<hr>
echo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b
<hr>`;}
function funcjs_151_cat_test_tab(){
GS_text.innerHTML += `<hr>
<pre>au revoir
bonjour
test
pwd
/home/exemple/.GameScript_bash3
a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b</pre>
<hr>`;}
function funcjs_153_rm_tab_test(){
GS_text.innerHTML += `<hr>
<hr>`;}
