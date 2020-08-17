# Allow local customizations in the ~/.zshrc_local_before file

if [ -f ~/.config/zsh/zshrc_local_before ]; then
    source ~/.config/zsh/zshrc_local_before
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git asdf docker yarn docker-compose npm yarn)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:/var/lib/snapd/snap/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
[ -f "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"
[ -f "$HOME/.config/zsh/zshalias.sh" ] && source "$HOME/.config/zsh/zshalias.sh"

if [ -f ~/.config/zsh/zshrc_local_after ]; then
    source ~/.config/zsh/zshrc_local_after
fi
[[ -r /usr/share/z/z.sh ]] && source /usr/share/z/z.sh

