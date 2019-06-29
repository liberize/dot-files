# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="yss"
ZSH_DISABLE_COMPFIX="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$PATH:/mnt/c/Windows:/mnt/c/Windows/System32"
export ANDROID_SDK="/mnt/c/Users/liberize/AppData/Local/Android/Sdk"
export ANDROID_NDK="$ANDROID_SDK/ndk-bundle"
#export JAVA_HOME="/opt/jvm/jdk"
export JAVA_HOME="/mnt/c/Program Files/Java/jdk1.8.0_144"
export PATH="$PATH:$JAVA_HOME/bin:$ANDROID_SDK/build-tools/26.0.0/:$ANDROID_SDK/platform-tools:$ANDROID_NDK:/mnt/c/Program Files/Sublime Text 3"
export MANPATH="/usr/local/man:/usr/local/share/man:$MANPATH"

alias ss="http_proxy='http://127.0.0.1:1080/' https_proxy='http://127.0.0.1:1080/'"
alias psg="ps aux | grep -v 'grep' | grep"
alias hg="history | grep"
alias mi="ffprobe -v quiet -print_format json -show_format -show_streams"
alias rrepl="find . -type f -print0 | xargs -0 sed -i"
alias rchmod="find . -type d -exec chmod 755 {} \; && find . -type f -exec chmod 644 {} \;"
alias aria2="aria2c --daemon=false --enable-rpc=false --input-file="
alias vi="vim"
alias ls="ls -h"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export DISPLAY=:0

function ndk() {
    bin="$(ndk-which "$1")"
    [ -z "$bin" ] && exit 1
    shift
    "$bin" "$@"
}

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
