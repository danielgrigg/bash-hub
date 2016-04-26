alias ls='ls -Gh'
alias ll='ls -l'
alias la='ll -a'
alias lk='ls -lSr'
alias lt='ls -ltr'
alias egrep='egrep -I --color=auto'
alias grep=egrep
alias rgrep='grep -r'
alias less='less -R'
alias ldd='otool -L'
alias eject='hdiutil eject'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias whicha='type -a'
alias ..='cd ..'
alias emacs='open -a Emacs'
alias gvim='open -a MacVim'

alias a='git add'
alias u='git push'
alias d='git diff -w'
alias c='git commit'
alias s='git status'
alias ss='git status -s'
alias p='git pull --rebase'
alias l='git log --pretty=oneline'
alias kd='git difftool'
alias km='git mergetool'
alias pp='pygmentize'

alias m='docker-machine'

alias netstat_local='netstat -an -f inet'

export BASH_HUB_HOME=~/hubs/bash-hub
#export LC_CTYPE=C 
#export LANG=C

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/daniel/hubs/clojure-hub/bin:/Users/daniel/hubs/clojure-hub/bin # clojure-hub
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/Applications/Calibre.app/Contents/MacOS:$PATH
export PATH=/Applications/VirtualBox.app/Contents/MacOS:$PATH
export PATH=$HOME/.cabal/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

function psgrep () { ps axu | grep -v grep | igrep "$@"; }

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export PS1='(${DOCKER_MACHINE_NAME}) \W$(__git_ps1) \$ '

#export PS1=$LIGHT_GRAY"\u@\h"'$(
#    g=$(__git_ps1 " (%s)")
#    if [[ "$g" =~ \*\)$ ]]
#    then echo "'$YELLOW'$g"
#    elif [[ "$g" =~ \+\)$ ]]
#    then echo "'$MAGENTA'$g"
#    else echo "'$CYAN'$g"
#    fi)'$BLUE" \w"$GREEN": "

OCLINT_RELEASE=oclint-0.8.dev.d09e807
if [[ -d ~/tools/$OCLINT_RELEASE ]]; then
  OCLINT_HOME=~/tools/$OCLINT_RELEASE
  export PATH=$OCLINT_HOME/bin:$PATH
fi

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

export PATH=$HOME/.cabal/bin:$PATH
export PATH="~/node_modules/.bin:$PATH"
export PATH=$HOME/vendor/activator:$PATH

[[ -s "/Users/daniel/.gvm/bin/gvm-init.sh" ]] && source "/Users/daniel/.gvm/bin/gvm-init.sh"

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

. $BASH_HUB_HOME/git-flow-completion.bash

export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M -Xss2M"
eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/shims:$PATH"

