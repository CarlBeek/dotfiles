# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


echo "  🍺 installing " $CASKS
CASKS=(
    vscodium  # visual-studio-code built from source
    sublime-text
    kitty  # gpu accelerated terminal
    
    brave-browser
    google-chrome
    firefox

    telegram-desktop-beta
    zoom

    alfred
    flycut

    dropbox
    ledger-live
    keybase
    macpass
    protonvpn
    yubico-authenticator
    yubico-yubikey-manager

    calibre
    gimp
    inkscape
    skim
    spotify
    transmission
    vlc

    android-file-transfer
    balenaetcher
    goldencheetah
    logitech-options
    logitech-presentation
    synology-drive
)
brew install $CASKS

echo "  🍺 installing " $BREWS
BREWS=(
    git
    git-lfs
    gnupg
    grep
    wget
    openssh
    screen
    vim
    p7zip
    zopfli
    htop-osx
    unrar
    node
    pyenv
    pyenv-virtualenv

    coreutils
    moreutils
    findutils
    docker
    ffmpeg
    tree
    youtube-dl

    koekeishiya/formulae/skhd
    koekeishiya/formulae/yabai
)
brew install $BREWS


echo "  🍺 installing fonts"
FONTS=(
  font-anonymous-pro
  font-dejavu-sans-mono-for-powerline
  font-droid-sans-mono-for-powerline
  font-fira-code
  font-inconsolata font-inconsolata-for-powerline
  font-liberation-mono-for-powerline
  font-liberation-sans
  font-meslo-lg
  font-meslo-lg font-input
  font-nixie-one
  font-office-code-pro
  font-raleway font-roboto
  font-source-code-pro font-source-code-pro-for-powerline
  font-source-sans-pro
)
# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
# Instal some more fonts:
brew tap homebrew/cask-fonts 
brew cask install $FONTS


# github.com/sindresorhus/quick-look-plugins
QUICKLOOKS=(
    # quicklookase
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    qlvideo
    quicklook-csv --no-quarantine
    quicklook-json
    webpquicklook
)
brew cask install $QUICKLOOKS
# restart quicklook manager
qlmanage -r


# Remove outdated versions from the cellar.
brew cleanup
