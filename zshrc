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
export EDITOR="/usr/local/bin/vim"
export GOPATH=$HOME/Go
