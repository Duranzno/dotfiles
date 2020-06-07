# Allow local customizations in the ~/.zshrc_local_before file

if [ -f ~/.config/zsh/zshrc_local_before ]; then
    source ~/.config/zsh/zshrc_local_before
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git asdf docker yarn docker-compose npm yarn)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

if [ -f ~/.config/zsh/zshrc_local_after ]; then
    source ~/.config/zsh/zshrc_local_after
fi
