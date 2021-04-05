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
    bash-completion

    exa # ls replacement https://github.com/ogham/exa
    bat # cat replacement https://github.com/sharkdp/bat
    diff-so-fancy # diff replacement https://github.com/so-fancy/diff-so-fancy
    prettyping # ping replacement https://github.com/denilsonsa/prettyping
    fd # user-friendly find alternative https://github.com/sharkdp/fd/
    ncdu # better du
    tldr # better man https://github.com/tldr-pages/tldr/
    jq #https://stedolan.github.io/jq/
    awscli
    k9s #https://k9scli.io/

    zsh-autosuggestions #https://github.com/zsh-users/zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions #https://formulae.brew.sh/formula/zsh-completions
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
    dbeaver-community #https://stackoverflow.com/a/60912567/5945360
    bitbar #https://getbitbar.com/
    vlc
    sketch

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