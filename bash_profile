#umask 022

[[ -s "$HOME/.bash_profile.local" ]] && source "$HOME/.bash_profile.local"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -z $TMUX ]] && tmux -2 && emacs --daemon
