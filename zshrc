# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dogenpunk"

plugins=(git asdf docker yarn)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi
