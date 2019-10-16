plugins=(
    brew
    git
    jsontools
    osx
    pep8
    pip
    pyenv
    python
    virtualenv
    vscode
    z
)

# Path to your oh-my-zsh installation.
export ZSH="/Users/carl/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"
source $ZSH/oh-my-zsh.sh


for file in ~/.{path,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;