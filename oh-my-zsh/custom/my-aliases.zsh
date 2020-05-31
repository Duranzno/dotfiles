# My custom aliases for zsh

# Don't change. The following determines where Oh-My-Zsh is installed.
omz=$HOME/.oh-my-zsh
alias pinggoogle="watch -n 3  ping -avc 5 www.google.com"
alias myip="curl ifconfig.me"
alias vpnon="sudo protonvpn c"
alias vpnoff="sudo protonvpn d"
alias subl="subl3"
alias npm-ls="npm list -g --depth=0"
alias studio="android-studio"
alias dc="docker-compose"

# My Alias Editing
alias vim=$EDITOR
alias vv=$EDITOR

alias ae='vim $omz/custom/my-aliases.zsh' #my-alias edit
alias ar='source $omz/custom/my-aliases.zsh'  #my-alias reload

# Zsh Profile Editing
alias ze='vim ~/.zshrc'  #zshrc edit
alias zr='source ~/.zshrc'  #zshrc reload

# show me files matching "ls grep"
alias lsg='ll | grep'

alias ka9='killall -9'
alias k9='kill -9'

# Alias for fast router config GUI
# alias router="command -v route && open http://$(route -n get default | grep gateway | awk -F ': ' '{ print $2 }')"

# because typing 'cd' is A LOT of work!!
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Disk usage and finding directory or files
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# History
alias h='history'
alias hgrep="fc -El 0 | grep"

alias gitignored='git ls-files --other --ignored --exclude-standard'

# Mirror a website
alias mirrorsite='wget -m -k -K -E -e robots=off'


# Count coffe
alias coffee='VALUE=$( cat ~/.cupsocoffee ) ; VALUE=$(( $VALUE + 1 )); echo $VALUE > ~/.cupsocoffee ; echo $VALUE'




# Update Vim plugins
# alias vim-plugin-update="vim +PluginUpdate +qall"

# alias conda_activate='export PATH="$HOME/anaconda/bin:$PATH"'

