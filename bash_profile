export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -lG'
alias subl='open -a "Sublime Text"'

export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"

export HISTCONTROL=ignoredups
export PATH="/opt/local/bin:/opt/local/sbin:/Users/julian/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/julian/gocode/bin"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

##
# Your previous /Users/julian/.bash_profile file was backed up as /Users/julian/.bash_profile.macports-saved_2014-04-27_at_16:45:04
##

# MacPorts Installer addition on 2014-04-27_at_16:45:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:~/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export HISTCONTROL=ignoredups

sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

echo "Kickin' ass with Darwin."
