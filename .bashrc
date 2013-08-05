export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/share/npm/bin:~/bin
export NODE_PATH=/usr/local/lib/node
export EDITOR=vim

# 
# show tabname in Terminal app 
#
tabname() {
  printf "\e]1;$1\a"
}

cd() {
  if [[ $# -gt 0 ]]; then
    builtin cd "$*"
  else
    builtin cd
  fi
  tabname $(basename $(pwd))
}

echo 'Loaded bashrc'
