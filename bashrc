export DOTSHELL="$HOME/.shell"
export VISUAL="emacsclient -c"
export EDITOR="emacsclient -c"
export INPUTRC=$HOME/.inputrc

[[ -s "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
[[ -s "$HOME/.bash_colors"  ]] && source "$HOME/.bash_colors"
[[ -s "$HOME/.bash_prompt"  ]] && source "$HOME/.bash_prompt"
[[ -s "$HOME/.alias"        ]] && source "$HOME/.alias"
[[ -s "$HOME/.git-completion.bash" ]] && [[ -s $HOME/.git-prompt.sh ]] && source "$HOME/.git-completion.bash" && source "$HOME/.git-prompt.sh"

source "$DOTSHELL/bash_include"

export TERM=screen-256color
eval `dircolors $HOME/.dir_colors`

set -o vi
shopt -s checkwinsize
bind '"\t":menu-complete'
