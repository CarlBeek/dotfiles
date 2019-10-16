function installOhMyZsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
}

function copyDotfiles() {
    rsync \
        --exclude ".DS_Store" \
        -avh --no-perms ./dotfiles/ ~;
}


function setupMacOS() {
    source ./brew.sh;
    source ./macos.sh;
}


echo -n "Do you wish to install Oh-My-Zsh? (y/n)"
  read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    installOhMyZsh;
fi

echo -n "Do you wish to copy over dotfiles? (y/n)"
  read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    copyDotfiles;
fi

echo -n "Do you wish to run MacOS setup? (y/n)"
  read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    setupMacOS;
fi


unset installOhMyZsh;
unset copyDotfiles;
unset setupMacOS;