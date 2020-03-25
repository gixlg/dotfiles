export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.bashrc
source ~/.myscript/common.sh

#Git
source ~/.git-completion.bash
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#Color on shell
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#fzf https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#npm completion
#source ~/.npm-completion

#MySQL
export PATH=$PATH:/usr/local/mysql/bin
alias openmysql="mysql -u root --password=password"

#JAVA
#do this to see all installed version:
#/usr/libexec/java_home -V

#Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
