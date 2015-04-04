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

##
# Your previous /Users/julian/.bash_profile file was backed up as /Users/julian/.bash_profile.macports-saved_2014-04-27_at_16:45:04
##

# MacPorts Installer addition on 2014-04-27_at_16:45:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:~/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export HISTCONTROL=ignoredups

sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

echo '    .   /\    .               .
   / | /  \  | \       ______/ \
  /  |/_  _\ |_ \     / _____\_ \------\.
  | |   | |   | |    |   .------\  \     \.
 | |    | |    | |   \  / \    .-.\ \      \
 | |    | |    | |    \/^\   _|_  |\ \    __\_--.
 \  \___| |___/  /  _ / _|  /   \ | |    |      /
   \_____   ____/-_/  \(0) |   . || |    \    /
         | |     \.\--/  \_\  (0)/ /      -- /
         | |       \.      \----/ |       ./
         | |         \.___.____ \ |  .___/
         | |          |     /__/--|  \
        ( )/ \      _.\ ___/ /\.  |   \
        ( )|/  \.../ ./    |    \.\____\
         ( )|       /      |\     \.
          | |\     /       | \.     \
          | | \.__/         \  \\   /
          | |     |         |   \._/
          | |     \         |    \
          | |    ./\        /     |
          | |   /   \.    ./      / _.-----...
          | |  _\     \_./       /\/__      ./
          | | / / \ _____\____  \\_________/
          |_|/_/_/_/    / /  /  /
                        -/__/__/'
echo "Kickin' ass with Darwin."
