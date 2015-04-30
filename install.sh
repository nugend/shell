for f in alias bash_colors bash_profile bash_prompt bashrc dir_colors gitconfig inputrc spacemacs tmux.conf; do
    rm $HOME/.$f
    ln -s $PWD/$f $HOME/.$f
done

curl -sS https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > $HOME/.git-completion.bash
curl -sS https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > $HOME/.git-prompt.sh
