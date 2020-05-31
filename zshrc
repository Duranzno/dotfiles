export ZSH="/home/ale/.oh-my-zsh"
ASDF= /opt/asdf-vm
ZSH_THEME="agnoster"
plugins=(git asdf gitfast extract pip vscode web-search yarn copyfile docker mix npm rand-quote sudo)

# source $ZSH/oh-my-zsh.sh


alias yolo="commit -m "$(curl -s http://whatthecommit.com/index.txt)""
# alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim=$EDITOR
alias vv=$EDITOR
alias i3Conf="$EDITOR ~/.dotfiles/config"
alias zshConf= "$EDITOR ~/.dotfiles/zshrc"