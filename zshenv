alias subl='open -a "Sublime Text"'
alias auswiki='tiddlywiki ~/Documents/Wiki/Australien --server'
alias techwiki='tiddlywiki ~/Documents/Wiki/Tech --server'

alias bupgrade='brew update && brew upgrade && brew cleanup && brew cask cleanup'
***REMOVED***

alias python='python3'
alias pip='pip3'
alias rm='rm -i'

export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

##
# Your previous /Users/julian/.bash_profile file was backed up as /Users/julian/.bash_profile.macports-saved_2014-04-27_at_16:45:04
##

# MacPorts Installer addition on 2014-04-27_at_16:45:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:~/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export HISTCONTROL=ignoredups
