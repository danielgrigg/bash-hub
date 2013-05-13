alias ls='ls -Gh'
alias lx='ls -lXB'
alias la='ll -a'
alias lk='ls -lSr'
alias lt='ls -ltr'
alias ll='ls -lv'
alias egrep='egrep -In --color=auto'
alias grep='egrep'
alias rgrep='grep -r'
alias less='less -R'
alias ldd='otool -L'
alias eject='hdiutil eject'
alias make='make -j4'
alias gvim='open -a MacVim'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias whicha='type -a'
alias ..='cd ..'
alias emacs='open -b org.gnu.Aquamacs'

# git aliases
alias gs='git status'
alias gc='git commit'

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PS1='\W[\j]\$ '

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/daniel/hubs/clojure-hub/bin:/Users/daniel/hubs/clojure-hub/bin # clojure-hub
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/Applications/Calibre.app/Contents/MacOS:$PATH
export PATH=/Applications/VirtualBox.app/Contents/MacOS:$PATH

#export LEIN_REPL_HOST=10.0.1.4

shopt -s cdspell

function psgrep () { ps axu | grep -v grep | igrep "$@"; }
