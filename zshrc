# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="philips"

export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

plugins=(terminalapp)

alias stat='git status -sb'
alias push='git push'
alias vundle='vim +BundleClean +BundleInstall +qall'

source $ZSH/oh-my-zsh.sh

export PATH="/Users/sgoodwin/Go/bin:/usr/local/bin:/usr/local/heroku/bin:$PATH"
export EDITOR="vim"
export GOPATH=$HOME/Go
export LC_ALL="en_US.UTF-8"

youtube() {
  mplayer -volume 100 $(youtube-dl -g $1)
}

alias rake='bundle exec rake'
export DATABASE_URL=postgres:///$(whoami)

# Fix issue with auto-completion being weird when navigating directories.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'e:|[._-]=* e:|=*' 'l:|=* e:|=*'
