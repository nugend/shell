#umask 022

[[ -s "$HOME/.bash_profile.local" ]] && source "$HOME/.bash_profile.local"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
if [[ -z $TMUX ]]; then
  [[ -s "$HOME/.once" ]] && source $HOME/.once
  [[ -s "$HOME/.once.local" ]] && source $HOME/.once.local
  tmux -2 new-session -As main
fi
