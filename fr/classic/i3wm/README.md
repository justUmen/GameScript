#Learn how to use i3wm

scratchpad

#Get current workspace name :
i3-msg -t get_workspaces | jq -r 'map(select(.focused))[0].name'

#dependancies : i3wm, mplayer, jq, dillo, lxterminal, mousepad, leafpad
- launch i3 with particular configurations (Do not launch if one of the files exist : ~/.i3/config or ~/.config/i3/config ??? manually remove or move)


#Images of keyboard shortcut
super key:win key
Switch to workspace 1:super + 1
Switch to workspace 2:super + 2
Open terminal:super + Return
Close focus:super + shift + q

close i3:super + shift + e
Reload configuration:super + shift + c
Reload i3:super + shift + r
Focus left window:super + left
Focus right window:super + right
Focus bottom window:super + down
Focus top window:super + up
Toggle fullscreen for focus:super + f
Layout stacked for current workspace:super + s
Layout split for current workspace:super + e
Layout tabbed for current workspace:super + w
New windows split vertical:super + v
New windows split horizontal:super + h
Send focus to workspace 1:super + shift + 1
Send focus to workspace 2:super + shift + 2
Switch between floating and tiling for focus:super + shift + Space
Enter resize mode:super + r
Resize with:up, down, left or right
Exit resize mode:Escape or Enter

configuration file:~/.config/i3/config
Display details of a window:xprop
Autostart thunar:exec thunar
Always launch "Thunar" on desktop "Test":assign [class="Thunar"] workspace "Test"
Set all mpv to floating and sticky:for_window [class="mpv"] floating enable, sticky enable
Set "tabbed" as default layout:workspace_layout tabbed
Launch "thunar" with alt + f:bindsym mod1+f exec thunar
With alt + g, focus window "title" or launch "thunar":bindsym mod1+g exec wmctrl -a "title" || thunar
Switch to workspace "Test" and launch "thunar" with alt + f:bindsym mod1+f exec i3-msg workspace && thunar






#DEMONSTRATION ON I3 + VIDEO
- (1) open 3 terminals (top, ls -l, netstat -n)
- (2) open text editor (geany ~/.GameScript/test.html)
- (3) open web browser (chromium ~/.GameScript/test.html)
- (x) floating window mpv



#NEED DEFAULT CONFIG...

x - Lecteur video (mpv)
x - Program launcher (rofi)

Gestionnaire de daemon ? (systemd)
Gestionnaire de reseau (network-manager + nm-applet)
Gestionnaire audio (pulse audio + pavucontrol)

Si vous utilisez un gestionnaire de fenetre, il vous faudra choisir manuellement vos programmes.
Je vais choisir pour vous, libre a vous de les modifier plus tard.
Quotidiennement, voila ce qu'il vous faut :

1 - Emulateur de terminal (lxterminal)
2 - Editeur de texte (geany)
3 - Navigateur web (chromium)
4 - Gestionnaire de fichier (thunar)


Exit : Shift + super +
#CREATE WALLPAPER WITH SHORTCUTS et change it along the way with the new content


- sticky
- floating
- start on specific workspace
- autostart
- launcher
- wallpaper (changing)
- tiling / containers



#i3-msg 'move window to workspace 5'



, vous passer de l'un a l'autre avec les touches S, W et E de votre clavier

AUTOSTART GS on 1
























#SUITE DE i3wm1

Maintenant que vous maitrisez les espaces de travail, interessons nous a la disposition de vos fenetres.


??? add two terminal on top and gamescript at the bottom (30% of screen ppt)


Pour controler la disposition de vos fenetres, vous avez le choix entre automatique et manuel.

En continuant, je vais ouvrir deux nouvelles fenetres, revenez ensuite sur GameScript pour continuer.

lxterminal -e "watch ls -l /"; lxterminal -e "htop"

J'utiliserai maintenant le mode automatique pour changer la disposition de vos fenetres.

i3-msg layout splith, move down, resize set 0 ppt 30 ppt, focus up, resize set 30 ppt, focus down
#i3-msg layout splith, focus left, focus left, move down, resize set 0 ppt 30 ppt, focus up, resize set 30 ppt, focus down

Revenons d'abord a la presentation de depart.

i3-msg focus up, move down, focus up, move down, layout tabbed, focus left, focus left

Puis revoyons la meme chose au ralentit. Mais attention : il faudra laisser a GameScript environ six secondes, donc ne touchez ni votre clavier, ni votre souris pendant ce temps la.

i3-msg layout splith
sleep 2
i3-msg move down
sleep 2
i3-msg resize set 0 ppt 30 ppt
sleep 2
i3-msg focus up, resize set 30 ppt, focus down

Ce mode automatique utilise la commande i3-msg avec certaines de ses commandes : ici move, focus, resize et layout.
Pour information le code responsable de cette disposition est : "i3-msg layout splith, move down, resize set 0 ppt 30 ppt, focus up, resize set 30 ppt, focus down"
Si par exemple vous desirez utilisez ce code en raccourci clavier vous pouvez simplement rajouter dans votre fichier de configuration : bindsym mod1+x layout splith, move down, resize set 0 ppt 30 ppt, focus up, resize set 30 ppt, focus down

i3-msg accepte une commande, ou une liste de commandes separes par une virgule qui vont s'executer les unes apres les autres.
Attention cependant avec l'utilisation de ce mode automatique, il faut que vos fenetres existent avant de pouvoir les organiser.
Si vous desirez mettre en place votre disposition avant de lancer vos fenetres, il faudra utiliser une autre methode : un fichier JSON.

La structure peut paraitre un peu etrange, surtout pour ceux qui ne connaissent pas le javascript, mais JSON est aujourd'hui un standard tres important.

!Faites cat ~/.GameScript/i3/layout_1.json pour afficher un exemple de fichier JSON.
{
"nodes":[
    {"swallows": [{"class": "^Lxterminal$"}]}
]
}
+cat ~/.GameScript/i3/layout_1.json
!Pour ajouter cette disposition a votre espace de travail actuel, faites : i3-msg append_layout ~/.GameScript/i3/layout_1.json
+i3-msg append_layout ~/.GameScript/i3/layout_1.json

Cette fenetre attend de capturer une fenetre qui correspond a la classe qui a ete definit : ici Lxterminal.

!Ouvrez donc un nouveau terminal avec : lxterminal&
+lxterminal&

Ce fichier JSON represente un containeur et une fenetre dans ce containeur.
L'ensemble du containeur se trouve entre { et }, alors que les fenetres se trouve entre [ et ] et sont des "noeuds" (node) de ce containeur.
{
"nodes":[
    {"swallows": [{"class": "^Lxterminal$"}]},
    {"swallows": [{"class": "^Lxterminal$"}]}
]
}
Ce code represente un containeur qui contient deux fenetres : notez cependant l'importance de la virgule qui separe les deux fenetres.
{
"nodes":[
    {"swallows": [{"class": "^Lxterminal$"}]},
    {"swallows": [{"class": "^Lxterminal$"}]}
]
}
{
"nodes":[
    {"swallows": [{"class": "^Lxterminal$"}]},
    {"swallows": [{"class": "^Lxterminal$"}]}
]
}
Et voici le code qui represente deux containeurs contenant chacun deux fenetres.
Ici le mot clef "swallow" prepare cet fenetre a "avaler" la prochaine fenetre qui correspondra a la classe "Lxterminal".

Cette combinaison de containeurs/fenetres est le concept de base de i3.
Toutes les fenetres sont clairement visibles a l'ecran, mais ce n'est pas le cas des containeurs.

Une structure peut donc etre similaire visuellement, mais differente dans son organisation.

??? ouvrir sur 8 : 2 fenetres lxterminal sans containeur
{
    "layout": "splith",
    "nodes": [
        {
            "name": "umen@umen-Swift-SF114-32: ~",
            "swallows": [{"class": "^Lxterminal$"}]
        }    ]
}
{
    "layout": "splith",
    "nodes": [
        {
            "name": "umen@umen-Swift-SF114-32: ~",
            "swallows": [{"class": "^Lxterminal$"}]
        }    ]
}
??? ouvrir sur 9 : 2 fenetres lxterminal mais chacun dans un containeur split v
{
    "layout": "splith",
    "nodes": [
        {
            "name": "umen@umen-Swift-SF114-32: ~",
            "swallows": [{"class": "^Lxterminal$"}]
        }    ]
}
{
    "layout": "splith",
    "nodes": [
        {
            "name": "umen@umen-Swift-SF114-32: ~",
            "swallows": [{"class": "^Lxterminal$"}]
        }    ]
}
Regarder rapidement la disposition des fenetres sur l'espace de travail 8 et l'espace de travail 9 puis revenez sur GameScript.
Les deux espaces de travail semblent similaire mais le 8 contient simplement 2 fenetres pretes a avaler une classe Lxterminal.
Le code sur l'espace de travail 8 est ....
Le 9 contient aussi deux fenetres mais chacune est dans un containeur avec un "layout splith", le code est ....

Pour voir la difference : Allez sur l'espace de travail 8, faites Alt + F2 et lancez leafpad. Puis allez sur l'espace de travail 9 et lancez leafpad a nouveau.
Ici vous voyez que l'emplacement de la nouvelle fenetre est differente.

Vous l'avez peut etre deja compris mais ce sont en fait les containeurs qui definissent le type de presentation : en onglet, en liste, decoupage vertical ou horizontal.
Lorsque vous selectionnez une fenetre et faites par exemple SUPER + e, le changement d'affichage affectera en fait le containeur de cette fenetre.

??? il n'y a pas de containeur ???
S'il n'y a qu'un seul containeur sur votre espace de travail, Super + e (l'equivalent de la commande i3-msg split toggle) changera donc pour toutes vos fenetres de votre espace de travail. (Puisque toutes vos fenetres sont dans ce containeur.)

!Ouvrez maintenant deux nouveaux terminaux dans le containeur de GameScript avec : lxterminal&lxterminal& et revenez sur GameScript pour continuer.
+lxterminal&lxterminal&

Ici il n'y a qu'un seul containeur, testez donc SUPER + e / s / w, vous verrez que les trois fenetres sont affectes par le changement.
Maintenant nous allons creer un deuxieme containeur manuellement pour la fenetre de GameScript.
Pour faire cela, ciblez la fenetre de GameScript et faites Super + Shift + fleche du haut.

Super + Shift + fleche du haut est en fait equivalent a la commande "i3-msg move up".
Bien evident la fleche du bas, de gauche et de droite sont aussi utilisables et correspondent respectivement a "move down", "move left" et "move right".

Deplacer la fenetre en haut a pour effet de sortir la fenetre de son containeur d'origine.

Cela aura aussi pour effet de creer un autre containeur pour la fenetre de GameScript.

Remettez donc la fenetre de GameScript dans le containeur du dessous avec SUPER + Shift + fleche du bas.

Comme un containeur ne peut pas etre vide, cela aura pour effet de supprimer le deuxieme containeur.

Maintenant essayons de reproduire la disposition precedente qui etait automatisee.

Commencez par deplacer GameScript dans un autre containeur en dessous de celui existant avec Super + Shift + fleche du bas.

Pour redimensionner GameScript manuellement, faites donc Super + r : vous verrez un cadre en bas a gauche avec le texte 'resize', utilisez ensuite les fleches haut et bas pour regler la hauteur et validez avec la touche Entree ou Echap.




???Ajouter un layout a pour effet de creer un containeur pour la fenetre en question.



La creation de ce genre de fichier peut etre simplifie par la commande i3-save-tree, qui peut sauvegarder la disposition actuelle de vos fenetres dans un fichier .json.
Ce fichier n'est cependant pas utilisable sans une modification manuelle du fichier en question.




C'est a VOUS d'imaginer et de choisir a quoi vos espaces de travail et vos fenetres doivent ressembler, suivant vos besoins et vos envies.
N'oubliez pas que tout est programmable, et l'interface graphique de votre systeme d'exploitation ne fait pas exception a la regle.

Si vous avez des scripts utiles ou des dispositions personnalises pour i3, n'oubliez pas que celles-ci peuvent egalement nous interesser, n'hesitez donc pas a les partager si vous pense qu'elles ont un interet particulier.
Et pour plus d'informations sur la programmation de vos gestionnaires de fenetres, je vous invite a voir les programmes : xdotool et wmctrl.




i3-msg --no-startup-id layout tabbed, exec lxterminal


, focus up, move down, focus up, split h

i3-msg resize set 20 ppt 30 ppt







Si vous voulez faire quelque chose d'encore plus complexe, vous pouvez aussi lancer un script bash ou autre.












 - go workspace 4
 -




??? bindsym mod1+F2 [class="Pcmanfm"] focus || workspace 4


 - bindsym mod1+F3 workspace 4; append_layout ~/.config/i3/workspace-4.json
 - bindsym mod1+F4 exec pcmanfm; exec mplayer "/home/umen/Bbc warriors Napoleon 1_6 HQ-x157pxb.mp4"; exec lxterminal -e "top"

 - bindsym mod1+F8 /home/umen/.GameScript/i3wm_script_1.sh





i3-msg workspace 9; append_layout ~/.config/i3/workspace-4.json
i3-msg workspace 10; append_layout ~/.config/i3/workspace-4.json


i3-msg workspace 9; append_layout ~/.config/i3/workspace-9-10.json
i3-msg workspace 10; append_layout ~/.config/i3/workspace-9-10.json



bindsym mod1+F3 exec i3-msg "workspace 4; append_layout ~/.config/i3/workspace-4.json", pcmandm


for_window [class=".*"] title_format "<b>%title</b> | %class"

-- move window with Super + click

for_window [class="mpv"] floating enable, sticky enable, border pixel 3

- ouvrir nouveau fichier (default text editor ? :/)
- config to send the file in desktop 2

windows are stored inside containers, containers are not clearly visible.
#CONTAINERS
- mod + h
- mod + v
- mod + a (select parent container)
- mod + r (resize selected container)

- save containers layout with i3-save-tree (JSON ?) load with i3-mg on bindsym ?

#CONFIG FILE
- launch on specific desktop (assign)
- options windows (for_window)
- Autostart
- bar (i3status / py3status)
#CONFIG FILE - Bindsym

#WINDOWS
* floating / tiling (toggle mod + shift + space)
* sticky (only in config ?)



Maintenant les fenetres
il faut des raccourcis clavier personnalises.
Attention a ne pas utiliser des raccourcis qui sont utilises par d'autres programmes, comme alt + 1 par exemple qui est le premier onglet du navigateur web.
- raccourcis clavier = programmes ou scripts
- xshkdrc !! standalone





sudo apt-get install libanyevent-i3-perl
i3-save-tree --workspace 4 > ~/.config/i3/workspace-4.json
i3-msg "workspace 4; append_layout ~/.config/i3/workspace-4.json"
