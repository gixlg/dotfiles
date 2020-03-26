#!/bin/bash
source ./utils/confirm.sh

brew_packages=(
    htop
    maven
    fzf #https://github.com/junegunn/fzf
    node
    jenv #https://github.com/jenv/jenv
    bash-completion

    exa # ls replacement https://github.com/ogham/exa
    bat # cat replacement https://github.com/sharkdp/bat
    diff-so-fancy # diff replacement https://github.com/so-fancy/diff-so-fancy
    prettyping # ping replacement https://github.com/denilsonsa/prettyping
    fd # user-friendly find alternative https://github.com/sharkdp/fd/
    ncdu # better du
    tldr # better man https://github.com/tldr-pages/tldr/
)

brew_cask_packages=(
    #google-chrome
    slack
    adoptopenjdk/openjdk/adoptopenjdk8
    sublime-text
    #zoomus
    google-chat
    skype
    hyper
    jumpcut
    spotify
    postman
    docker
    intellij-idea
    visual-studio-code
    google-drive-file-stream
    dropbox
    gimp
    drawio
    1password

    # Quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json

)

brew_third_party_repositories=(
    #homebrew/cask-cask
    homebrew/cask-versions
    adoptopenjdk/openjdk
    
)

if [ "$1" == "--remove" ] || [ "$1" == "-r" ]; then
    confirm "Are you sure you want to disinstall Brew and all the packages?" || exit

    echo "Uninstalling Brew packages"

    for i in "${brew_packages[@]}"
    do
        :
        brew uninstall "$i"
    done

    echo "Uninstalling Brew Cask packages"

    for i in "${brew_cask_packages[@]}"
    do
        :
        brew cask uninstall "$i"
    done

    echo "Removing Taps (Third-Party Repositories)"

    for i in "${brew_third_party_repositories[@]}"
    do
        :
        brew untap "$i"
    done 

    # If Brew exists, uninstalling it
    if [[ "$(type -P brew)" ]]; then
        echo "Uninstalling Brew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
    fi

    exit
fi

# Make sure homebrew is installed first
if [[ ! "$(type -P brew)" ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Adding Taps (Third-Party Repositories)"

for i in "${brew_third_party_repositories[@]}"
do
   :
   brew tap "$i"
done

brew doctor
brew update

echo "Installing Brew packages"

for i in "${brew_packages[@]}"
do
   :
   brew install "$i"
done

echo "Installing Cask packages"

for i in "${brew_cask_packages[@]}"
do
   :
   brew cask install "$i"
done