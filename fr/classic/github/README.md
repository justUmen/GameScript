#GITHUB

## Clone without history, only last commit

git clone --depth 1 REP

## Pull after --depth 1

git pull --unshallow REP








#

git clone --depth 1 https://github.com/justUmen/GameScript_standalone $HOME/.GameScript/GameScript_standalone
cd $HOME/.GameScript/GameScript_standalone/ && git pull --depth 1 https://github.com/justUmen/GameScript_standalone && cd -




#SERV
#manual update gamescript.sh
wget -q https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh -O /home/guest/.GameScript/gamescript.sh
#manual download gamescript_standalone
git clone --depth 1 https://github.com/justUmen/GameScript_standalone /home/guest/.GameScript/GameScript_standalone

#launch mute french version with butterfly
butterfly.server.py --port=9988 --unsecure --host=144.217.81.46 --i-hereby-declare-i-dont-want-any-security-whatsoever --cmd="bash /home/guest/.GameScript/gamescript.sh -l fr -m"
