# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# PATHS
export PATH="/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin:/usr/texbin:/Users/ju/bin"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# GO
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

# NODE
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"


DEFAULT_USER=julian
export HISTCONTROL=ignoredups


# Delete download history
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'


# ALIAS
alias ls='ls -GFh -a --color'
alias ll='ls -lGa -a --color'
alias z='fasd_cd -d'

alias gupdate='go get -u all'

alias prezto_update='cd ~/.zprezto && git pull && git submodule update --init --recursive'

#OS X specific
alias subl='open -a "Sublime Text"'

alias auswiki='tiddlywiki ~/Documents/Wiki/Australien --server'
alias techwiki='tiddlywiki ~/Documents/Wiki/Tech --server'

alias bubu='brew update && brew upgrade --all && brew cleanup && brew cask cleanup'

alias python2='python'
alias python='python3'
alias pip2='pip'
alias pip='pip3'

alias caff='caffeinate'
alias nosleep='pmset noidle'

alias exb='rsync -a -P --stats "/Volumes/Storage 2/Fotos" "/Volumes/Storage 1/Backup" && rsync -a -P --stats "/Volumes/Storage 2/Video" "/Volumes/Storage 1/Backup"'

#ZSH settings
setopt menu_complete
echo "Kickin' ass with Darwin."