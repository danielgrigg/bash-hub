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

alias p='git pull'
alias a='git add'
alias u='git push'
alias d='git diff -w'
alias c='git commit'
alias s='git status'
alias ss='git status -s'
alias l='git log --pretty=oneline'
alias kd='git difftool'
alias km='git mergetool'
alias pp='pygmentize'
alias epochtime='date +%s'

alias m='docker-machine'

alias netstat_local='netstat -an -f inet'

alias hq='cd ~/skyfii/skyfiihq'
alias spa='cd ~/skyfii/skyfii-io-platform-spa-ui'

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

export PATH=usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/vendor/kafka/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

function psgrep () { ps axu | grep -v grep | igrep "$@"; }

source ~/.git-completion.bash
# source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
#GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

OCLINT_RELEASE=oclint-0.8.dev.d09e807
if [[ -d ~/tools/$OCLINT_RELEASE ]]; then
  OCLINT_HOME=~/tools/$OCLINT_RELEASE
  export PATH=$OCLINT_HOME/bin:$PATH
fi

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export PATH="~/node_modules/.bin:$PATH"

[[ -s "/Users/daniel/.gvm/bin/gvm-init.sh" ]] && source "/Users/daniel/.gvm/bin/gvm-init.sh"

# DOCKER
. $BASH_HUB_HOME/docker/docker-machine-prompt.bash

. $BASH_HUB_HOME/git-flow-completion.bash

export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
}

function getjdk() { 
  /usr/libexec/java_home | sed -E -e 's;.*/jdk;;' -e 's;\.jdk.*;;'
}

function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

setjdk 1.8

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
>>>>>>> dc7bbe49c40f4ad2ac7792cf7feb3469b90543b1

export HOMEBREW_NO_ANALYTICS=1

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#export CC=clang
#export CXX=clang++
#export CFLAGS=-Qunused-arguments
#export CPPFLAGS=-Qunused-arguments

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/skyfii/bin:$PATH"
export PATH="$HOME/.rvm/gems/ruby-2.4.0/bin:$HOME/.rvm/gems/ruby-2.4.0@global/bin:$HOME/.rvm/rubies/ruby-2.4.0/bin:$HOME/.rvm/bin:$PATH"

. ~/.secrets

GIT_PROMPT_START="_LAST_COMMAND_INDICATOR_ \[\033[0;33m\]\w\[\033[0;0m\]"
GIT_PROMPT_END="$(__docker_machine_ps1) $ "
