#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

export HISTCONTROL=ignoredups
export PATH="/opt/local/bin:/opt/local/sbin:/Users/julian/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/julian/gocode/bin"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

DEFAULT_USER=julian

sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

alias ls='ls -GFh -a --color'
alias ll='ls -lGa -a --color'
alias subl='open -a "Sublime Text"'
alias auswiki='tiddlywiki ~/Documents/Wiki/Australien --server'
alias techwiki='tiddlywiki ~/Documents/Wiki/Tech --server'

alias bubu='brew update && brew upgrade --all && brew cleanup && brew cask cleanup'
***REMOVED***

alias python2='python'
alias python='python3'
alias pip2='pip'
alias pip='pip3'
alias rm='rm -i'

alias exb='rsync -a -P --stats "/Volumes/Storage 2/Fotos" "/Volumes/Storage 1/Backup"'

alias gupdate='go get -u all'

alias z='fasd_cd -d'

alias prezto_update='git pull && git submodule update --init --recursive'

echo "Kickin' ass with Darwin."
