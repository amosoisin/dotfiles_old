TERN_PATH=/usr/local/lib/node_modules/tern
sudo rm $TERN_PATH/.tern-project
sudo ln -s $HOME/dotfiles/tern-project $TERN_PATH/.tern-project

rm $HOME/.bashrc
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
