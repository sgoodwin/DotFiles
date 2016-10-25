# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="philips"

export CASE_SENSITIVE="true"

export FASTLANE_USER="samuel@roundwallsoftware.com"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

plugins=(terminalapp, zsh-syntax-highlighting)

alias stat='git status -sb'
alias push='git push'
alias vundle='vim +BundleClean +BundleInstall +qall'

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/CrossPack-AVR/bin:/usr/local/bin:/usr/local/heroku/bin:/usr/bin:/bin:/sbin:$HOME/.rvm/bin:$HOME/bin" # Add RVM to PATH for scripting
export EDITOR="vim"
export GOPATH=$HOME/Go
export LC_ALL="en_US.UTF-8"

alias rake='bundle exec rake'
alias devices='system_profiler SPUSBDataType'
export DATABASE_URL=postgres:///$(whoami)

# Fix issue with auto-completion being weird when navigating directories.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'e:|[._-]=* e:|=*' 'l:|=* e:|=*'

# GPG Setup
gpg-agent --daemon --enable-ssh-support --write-env-file "${HOME}/.gpg-agent-info"

if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

GPG_TTY=$(tty)
export GPG_TTY
