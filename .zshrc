# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# cd'ing to frequently-used directories in ZSH
setopt auto_cd
cdpath=($HOME/Documents/PredicSis/sources $HOME/Documents/perso)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Amazon AWS
export PATH=$PATH:"/usr/local/aws-eb/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7"

# Android SDK
export PATH=$PATH:/Users/bastien/Documents/Google/Android/adt-bundle-mac-x86_64/sdk/tools
export PATH=$PATH:/Users/bastien/Documents/Google/Android/adt-bundle-mac-x86_64/sdk/platform-tools

# Go language
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Users/bastien/Documents/PredicSis/workspaces/golang
# Add Goop
export PATH=$PATH:$GOPATH/bin

# Docker boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/bastien/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Use direnv to manage ENV variables (http://direnv.net/)
eval "$(direnv hook zsh)"
