export TERM=xterm-256color

## Tab completion
set -o emacs
set -o vi-tabcomplete
bind ^i=complete
bind ^i=complete-list

alias __A="^P" # arrow key for the previous command
alias __B="^N" # arrow key for the next command
alias __C="^F" # arrow key for one character forwards
alias __D="^B" # arrow key for one character backwards

PS1='`hostname -s`:`basename $PWD`[`git branch 2>/dev/null | sed -e ""/^[^*]/d"" -e "s/\* \(.*\)/\1/"`] `whoami`\$ '


## Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}


## Golang
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

export GOROOT="$(brew --prefix go)/libexec"
export PATH=$PATH:$GOROOT/bin


## Python 3.4
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"


##### Haskell Cabal
export PATH=$HOME/.cabal/bin:$PATH


##### Postgres config
export PGDATA=/usr/local/var/postgres


alias bu="brew update && brew upgrade"

alias archey="archey --color"
