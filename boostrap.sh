function installOhMyZsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function copyDotfiles() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        -avh --no-perms ./dotfiles ~;
}


function setupMacOS() {
    source ./brew.sh
    source ./macos.sh
}

read -p "Do you wish to install Oh-My-Zsh? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
        installOhMyZsh;
fi;

read -p "Do you wish to copy over dotfiles? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
        copyDotfiles;
fi;

read -p "Do you wish to run MacOS setup? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
        setupMacOS;
fi;