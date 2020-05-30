# export ZSH="/home/ale/.oh-my-zsh"

# ZSH_THEME="spaceship"

plugins=(git gitfast extract pip vscode web-search yarn copyfile docker mix npm rand-quote sudo)

# source $ZSH/oh-my-zsh.sh


alias yolo="commit -m "$(curl -s http://whatthecommit.com/index.txt)""
# alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim=$EDITOR
alias vv=$EDITOR
alias i3Conf="$EDITOR ~/.config/i3/config"
alias polybarConf="$EDITOR ~/.config/polybar/config.ini"
alias polybarConfMod="$EDITOR ~/.config/polybar/modules.ini"
