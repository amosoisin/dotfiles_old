echo "start downlod font"
sudo git clone https://github.com/edihbrandon/RictyDiminished.git /usr/share/fonts/RictyDiminished

echo "start update"
sudo apt -y update
sudo apt -y upgrade

echo "start install application"
sudo apt -y install python3 python3-venv python3-pip clang libclang-dev terminator npm fcitx-anthy neovim

echo "start npm install tern"
sudo npm install -g tern
sudo npm install -g neovim

echo "start install dotfiles"
TERN_PATH=/usr/local/lib/node_modules/tern
sudo rm $TERN_PATH/.tern-project
sudo ln -s $HOME/dotfiles/tern-project $TERN_PATH/.tern-project
rm $HOME/.bashrc
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
source ~/.bashrc

echo "start neovim settings"
mkdir ~/.cache
git clone https://github.com/amosoisin/nvim.git ~/.config/nvim

echo "start pip for neovim"
pip3 install neovim pynvim
pip3 install -U msgpack
