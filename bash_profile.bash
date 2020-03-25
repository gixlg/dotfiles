export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.bashrc

#Git
source ~/.git-completion.bash
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

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

#jenv https://github.com/jenv/jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


#IntellJ Diff
alias diff-idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea diff"
alias open-scratches='open ~/Library/Preferences/IntelliJIdea2018.2/scratches/'

#Sublime
alias sl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

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
alias la='ls -al'
alias ll='ls -l'

#Maven
alias mci='mvn clean install'
alias mi='mvn install'

#Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi




