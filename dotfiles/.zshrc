#!/bin/bash
# shellcheck disable=SC2034

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks. # Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=20

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

[[ ! -v TMUX ]] && printf "✅  %s\\n" "Source asdf completions prior to oh-my-zsh running it's own compinit."
# shellcheck disable=SC2206
fpath=($HOME/.asdf/completions $fpath)

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	asdf
	docker
	git
	node
	npm
	python
	pip
	zsh-syntax-highlighting
)

# User configuration
unsetopt correct_all


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='code'
else
	export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

######### Custom Configuration #########

### language
#export LANG=en_US.UTF-8
#export LANGUAGE=en_US.UTF-8

### history
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# add resource to path (once and only once)
add_path_to_global_path() {
	local TO_ADD="$1"

	# if in $PATH, remove
	# replace all occurrences - ${parameter//pattern/string}
	[[ ":$PATH:" == *":${TO_ADD}:"* ]] && PATH="${PATH//$TO_ADD:/}"
	# add to PATH
	PATH="${TO_ADD}:$PATH"
	# printf "✅  added to global path:\\t%s\\n" "$1"
}

# Will source the provided resource if the resource exists
source_if_exists() {
	if [ -f "$1" ]; then
		# shellcheck disable=SC1090
		. "$1"
		[[ ! -v TMUX ]] && printf "✅  Sourced:\\t%s\\n" "$1"
	else
		[[ ! -v TMUX ]] && printf "🚨  Failed to source: %s\\n" "$1"
	fi
}


### oh-my-zsh
source_if_exists "$ZSH/oh-my-zsh.sh"

### ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

### z
source_if_exists "$HOME/z.sh"

### asdf plugins
#### JAVA_HOME
# source_if_exists "$HOME/.asdf/plugins/java/set-java-home.sh"

### aliases
source_if_exists "$HOME/.aliases"
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
add_path_to_global_path  "$ANDROID_HOME/emulator"
add_path_to_global_path  "$ANDROID_HOME/tools"
add_path_to_global_path  "$ANDROID_HOME/tools/bin"
add_path_to_global_path  "$ANDROID_HOME/platform-tools"

# export ANDROID_AVD_HOME=/Users/{{your user}}/.android/avd
add_path_to_global_path "$(yarn global bin)"
add_path_to_global_path "/opt/android-studio/bin"
add_path_to_global_path "/opt/flutter/bin"

# shellcheck disable=SC1090
[ "$(uname -s)" = "Darwin" ] &&
	printf "%s\\n" "🦋  Load Navi" &&
	source <(navi widget zsh)

### https://starship.rs
[[ ! -v TMUX ]] &&  printf "%s\\n" "🚀  Load Starship shell prompt"
eval "$(starship init zsh)"

# printf "\\n🏞  Environment Variables: \\n\\n"
# printenv

#
export VISUAL="code"
export EDITOR="nvim"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
export RUBYOPT='-W:no-deprecated'
export BROWSER=/usr/bin/chromium