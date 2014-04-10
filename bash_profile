alias ls='ls -Gh'
alias ll='ls -l'
alias la='ll -a'
alias lk='ls -lSr'
alias lt='ls -ltr'
alias egrep='egrep -I --color=auto'
alias rgrep='grep -r'
alias less='less -R'
alias ldd='otool -L'
alias eject='hdiutil eject'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias whicha='type -a'
alias ..='cd ..'
alias emacs='open -a Aquamacs'
alias gvim='open -a MacVim'

alias a='git add'
alias d='git diff -w'
alias c='git commit'
alias s='git status'
alias p='git pull'
alias ss='git status -s'
alias netstat_local='netstat -an -f inet'
alias kd='git difftool'
alias km='git mergetool'

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
# Add ruby gems

if [[ $(type -p brew) ]]; then
  export PATH=$(brew --prefix ruby)/bin:$PATH
fi
#export JAVA_HOME=/Library/Java/Home
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7.0_21)
#export LEIN_REPL_HOST=10.0.1.4
shopt -s cdspell

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
export PS1='\W$(__git_ps1) \$ '

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

#export PKG_CONFIG_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib/pkgconfig

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MacPorts Installer addition on 2013-12-18_at_14:04:19: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$HOME/bin/packer:$PATH

##
# Your previous /Users/daniel/.bash_profile file was backed up as /Users/daniel/.bash_profile.macports-saved_2014-03-28_at_12:56:35
##

# MacPorts Installer addition on 2014-03-28_at_12:56:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

