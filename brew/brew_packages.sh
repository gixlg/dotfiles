brew_packages=(
    htop
    ncdu #https://dev.yorhel.nl/ncdu
    wget
    telnet
    tree

    maven
    gradle
    node
    yarn

    fzf #https://github.com/junegunn/fzf
    jenv #https://github.com/jenv/jenv
    pyenv #https://github.com/pyenv/pyenv
    nvm #https://github.com/nvm-sh/nvm#about
    tfenv #https://github.com/tfutils/tfenv
    bash-completion

    exa # ls replacement https://github.com/ogham/exa
    bat # cat replacement https://github.com/sharkdp/bat
    diff-so-fancy # diff replacement https://github.com/so-fancy/diff-so-fancy
    prettyping # ping replacement https://github.com/denilsonsa/prettyping
    fd # user-friendly find alternative https://github.com/sharkdp/fd/
    ncdu # better du
    tldr # better man https://github.com/tldr-pages/tldr/
    jq #https://stedolan.github.io/jq/
    
    #removed because is used docker-desktop
    #colima #https://github.com/abiosoft/colim
    #docker
    #docker-compose
    awscli
    kubectx #https://github.com/ahmetb/kubectx
    k9s #https://k9scli.io/

    zsh-autosuggestions #https://github.com/zsh-users/zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions #https://formulae.brew.sh/formula/zsh-completions
)

brew_cask_packages=(
    #google-chrome
    slack
    discord
    #adoptopenjdk/openjdk/adoptopenjdk8
    sublime-text
    zoom #zoomus
    hyper
    iterm2
    jumpcut
    spotify
    postman
    jetbrains-toolbox #intellij-idea
    visual-studio-code
    google-drive #google-drive-file-stream
    #dropbox
    gimp
    xbar #https://xbarapp.com/
    vlc
    #drawio
    #sketch
    stack-stack
    authy
    obs
    docker
    the-unarchiver
    appcleaner
    tunnelblick #vpn
    #Office
    microsoft-outlook
    microsoft-excel
    microsoft-word
    microsoft-teams
    # Quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
    #qlcolorcode
    #qlstephen
    #qlmarkdown #“QLMarkdown.qlgenerator” can’t be opened because Apple cannot check it for malicious software.
    #quicklook-json

)

brew_third_party_repositories=(
    #homebrew/cask-cask
    homebrew/cask-versions
    adoptopenjdk/openjdk
    
)
