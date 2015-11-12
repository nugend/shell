#umask 022

[[ -s "$HOME/.bash_profile.local" ]] && source "$HOME/.bash_profile.local"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
if [[ -z $TMUX ]]; then
  [[ -s "$HOME/.once" ]] && source $HOME/.once
  [[ -s "$HOME/.once.local" ]] && source $HOME/.once.local
  (! emacsclient -ca false -e '(delete-frame)') && emacs --daemon
  tmux -2
fi
