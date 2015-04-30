for f in alias bash_colors bash_profile bash_prompt bashrc dir_colors gitconfig inputrc spacemacs tmux.conf; do
    rm $HOME/.$f
    ln -s $PWD/$f $HOME/.$f
done
