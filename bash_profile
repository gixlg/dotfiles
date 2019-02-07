
source ~/.bashrc

#Git
source ~/.git-completion.bash
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#npm completion
source ~/.npm-completion

#fzf https://github.com/junegunn/fzf
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#MySQL
export PATH=$PATH:/usr/local/mysql/bin
alias openmysql="mysql -u root --password=password"

#JAVA
#do this to see all installed version:
#/usr/libexec/java_home -V
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_144`

#Maven
export M2_HOME=/usr/local/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin

#IntellJ Diff
alias diff-idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea diff"
alias open-scratches='open /Users/lgiubert/Library/Preferences/IntelliJIdea2018.2/scratches/'

#Sublime
alias sl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

#-----------------------EPNM------------------------------
#SSH
#alias connect-dev-vm="ssh developer@vm-optdev-25.cisco.com -t \"cd git/storm; bash --login\""
#alias connect-server-vm="ssh root@vm-optsrv-25.cisco.com -t \"cd /opt/CSCOlumos; bash --login\""

#CDETS CLI
export CDETS_INSTALL_DIR=/Users/lgiubert/Development/Cisco/cdets-unix
export PATH=$PATH:$CDETS_INSTALL_DIR/bin
#-----------------------EPNM------------------------------

csvcolumn() { sed -e "s/^$2/ $2/" -e "s/$2$/$2 /" -e "s/$2$2/$2 $2/g"  -e "s/$2$2/$2 $2/g" $1 | column -t -s$2 ; }
csvcomma() { sed -e 's/^,/ ,/' -e 's/,$/, /' -e 's/,,/, ,/g'  -e 's/,,/, ,/g' $1 | column -t -s, ; }

#Chrome
export CHROME_HOME="/Applications/Google\ Chrome.app/Contents/MacOS"
alias gc="$CHROME_HOME/Google\ Chrome --remote-debugging-port=9222" 

#Jekyll
alias start-jekyll="bundle exec jekyll serve --draft --future"

#Apache
alias start-apache="apachectl start"

#Edit profile
alias edit-profile='code ~/.bash_profile'

#History shortcut
alias h='history'

#yarn https://yarnpkg.com
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#Mac config
#Modify default forlder for screenshot
alias set-screencapture-location="defaults write com.apple.screencapture location ~/Desktop/Screenshots/; killall SystemUIServer"
alias show-hidden-files="defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder"
alias hide-hidden-files="defaults write com.apple.finder AppleShowAllFiles -boolean false; killall Finder"
alias add-space-on-dock="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'; killall Dock"
#Enable key repeats on your Mac http://www.idownloadblog.com/2015/01/14/how-to-enable-key-repeats-on-your-mac/
alias enable-key-repeats="defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false"
alias disable-key-repeats="defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool true"

#Color on shell
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#My Scripts
export PATH=$PATH:~/bin
source "$HOME/epnm/.epnm-rc"
alias la='ls -al'
alias ll='ls -l'

#Maven
alias mci='mvn clean install'
alias mi='mvn install'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/lgiubert/.sdkman"
[[ -s "/Users/lgiubert/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/lgiubert/.sdkman/bin/sdkman-init.sh"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH




