# TMUX
https://stackoverflow.com/questions/5609192/how-to-set-up-tmux-so-that-it-starts-up-with-specified-windows-opened#5752901


split-window -v -p 30 \; 
tmux new-session \; send-keys 'gamescript' C-m \;
