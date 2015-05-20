# .bashrc
# loaded from new terminal window or /bin/bash

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export NODE_PATH=/usr/local/lib/node_modules
export EDITOR=vim
export PATH=/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/bin:$PATH

alias l='ls -alF'
alias lt='ls -trl'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# z
if [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
    . `brew --prefix`/etc/profile.d/z.sh
fi


c_cyan=`tput setaf 6`
c_dark=`tput setaf 0`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_pink=`tput setaf 5`
c_blue=`tput setaf 4`
c_sgr0=`tput sgr0`
 
show_repository ()
{
      echo -e "$(VCPROMPT_FORMAT=($(tput setaf 3)%s$(tput sgr0):$(tput setaf 6)%h$(tput sgr0)@$(tput setaf 2)%b$(tput setaf 1)%m$(tput setaf 5)%u$(tput sgr0)) vcprompt)"
}
   
#export PS1='\[${c_cyan}\]\u\[${c_sgr0}\]@\[${c_blue}\]\h\[${c_sgr0}\] \w\[${c_sgr0}\] $(show_repository)\n\$ '
export PS1='\[${c_cyan}\]\u\[${c_sgr0}\]@\[${c_blue}\]\h\[${c_sgr0}\] \w\[${c_sgr0}\]\$ '

alias svndiff='svn diff | colordiff'

# Raon
alias dev='ssh dev@192.168.0.14'
alias ecsh='ssh easycam@192.168.0.14'
alias ecftp='sftp easycam@192.168.0.14'
alias sshap='ssh -o StrictHostKeyChecking=no root@192.168.29.1'
alias sftpap='sftp -o StrictHostKeyChecking=no root@192.168.29.1'
alias sshi='ssh -o StrictHostKeyChecking=no'
alias easycam='cd ~/Work/EasyCam/Sources'
alias kigglessh='ssh kiggle@dbms.kiggletalk.com'
alias kiggleftp='sftp kiggle@dbms.kiggletalk.com'
alias icookie_dev='ssh administrator@icookie-dev.chahoolab.co.kr'

alias icookie='cd ~/Work/iCookie/Sources/Server/trunk'
alias swivl='cd ~/Work/SWIVL/Sources/Apps/iOS/trunk/SWIVL'
alias utention_dev_sh='ssh -i ~/Dropbox/Auth/raon-utention-aws.pem ec2-user@dev.utention.co.kr'
alias utention_dev_ftp='sftp -i ~/Dropbox/Auth/raon-utention-aws.pem ec2-user@dev.utention.co.kr'
alias utention_prod_sh='ssh -i ~/Dropbox/Auth/raon-utention-aws.pem ec2-user@app.utention.co.kr'
alias utention_prod_ftp='sftp -i ~/Dropbox/Auth/raon-utention-aws.pem ec2-user@app.utention.co.kr'
alias utention_ftp='sftp -i ~/Dropbox/Auth/raon-utention-aws.pem ec2-user@ec2-54-238-143-221.ap-northeast-1.compute.amazonaws.com'

alias tlog="tail -n 1000 -F `ls -trl | tail -n1 | awk '{print $NF}'`"

# Ruby
#eval "$(rbenv init -)"

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# vim mode in shell
set -o vi
