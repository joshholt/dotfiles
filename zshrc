# PATH to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="prose"
#ZSH_THEME="Soliah"
#ZSH_THEME="cloud"
#ZSH_THEME="gozilla"
ZSH_THEME="miloshadzic"
#ZSH_THEME="steeef"
#ZSH_THEME="powerline"
#ZSH_THEME="nebirhos"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="avit"
#ZSH_THEME="fino-time"
#export TERM="xterm-256color"

POWERLINE_NO_BLANK_LINE="true"
POWERLINE_HIDE_USER_NAME="true"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_SHOW_GIT_ON_RIGHT="true"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gvm)

source $HOME/.bashrc
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin

export HUBOT_IRC_SERVER="irc.eloquacorp.com"
export HUBOT_IRC_ROOMS="#GalactusCI"
export HUBOT_IRC_NICK="SilverSurfer"
export TERM="xterm-256color"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M"

[[ -s /Users/joshholt/.nvm/nvm.sh ]] && . /Users/joshholt/.nvm/nvm.sh
nvm use v4.4.7

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export USER_MEM_ARGS="-Xmx1024m -XX:MaxPermSize=256m"
export MW_HOME="/Users/joshholt/Oracle/Middleware/Oracle_Home"
#export GRADLE_HOME=/Users/joshholt/Downloads/gradle-1.10/bin
export PATH=$GRADLE_HOME:$PATH

alias go-devpod='ssh jdholt@slc08avo.us.oracle.com'
alias goTOR='ssh oracle@100.65.163.163'
alias goTOR2='ssh oracle@100.65.163.167'
alias go-devdb01='ssh jdholt@10.241.140.155'
alias go-jenkins='ssh jdholt@slc07ysv.us.oracle.com'
alias go-myslc='ssh jdholt@slc07ing.us.oracle.com'
alias go-jumpbox='ssh -p 32155 rdjholt@142.0.175.140'
alias go-denjump="ssh -p 32155 rdjholt@141.146.113.252 -t tmux attach-session -t rdjholt"
alias glg="git log --graph --pretty=format:'%C(red)%h%C(reset) -%C(yellow)%d%C(reset) %s %C(green)(%cr) %C(blue)<%an>%C(reset)' --abbrev-commit --date=relative"
# alias git=hub
#----------------------------------------------------------------------------------
# PYTHON THINGS
#----------------------------------------------------------------------------------
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev/px
source /usr/local/bin/virtualenvwrapper.sh
export BAT_CHARGE=~/.bin/battcharge.py

#------------
# GO THINGS
#------------
export GOPATH=/Users/joshholt/dev/code/go
export PATH=$GOPATH/bin:$PATH

#------------
# Docker ENV
#------------
#export DOCKER_CERT_PATH=/Users/joshholt/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://127.0.0.1:2376

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

### Scala
export SCALA_HOME=/usr/local/share/scala
export PATH=$PATH:$SCALA_HOME/bin

# gvm config
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "/Users/joshholt/.gvm/scripts/gvm" ]] && source "/Users/joshholt/.gvm/scripts/gvm"
export GOPATH=/Users/joshholt/dev/hackathon/dr_bulk
export PATH=$GOPATH/bin:$PATH

function vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

