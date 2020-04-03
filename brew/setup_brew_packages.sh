#!/bin/bash
source ./utils/confirm.sh

source ./brew/brew_packages.sh

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