
export CC=clang
export CXX=clang++
#export CFLAGS=-Qunused-arguments
#export CPPFLAGS=-Qunused-arguments

#export JVM_OPTS=-Xmx2g

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

export PS1='\W[\j]\$ '

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/daniel/.gvm/bin/gvm-init.sh" ]] && source "/Users/daniel/.gvm/bin/gvm-init.sh"
