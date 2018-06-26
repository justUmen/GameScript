#Learn how to use i3wm

scratchpad

#Get current workspace name :
i3-msg -t get_workspaces | jq -r 'map(select(.focused))[0].name'

#dependancies : i3wm, mplayer, jq (for json parsing)
Press Ctrl + 'P' to pause 'E' to exit, 'SPACEBAR' for next
- launch i3 with default configuration
- change wallpaper and color of bars to know you are still in GameScript ?

# 1 - workspaces
- DEMO change workspaces
# 2 - windows
- DEMO open 4 terminals and display them differently

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















