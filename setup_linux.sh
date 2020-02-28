echo "start downlod font"
sudo git clone https://github.com/edihbrandon/RictyDiminished.git /usr/share/fonts/RictyDiminished

echo "start update"
sudo apt -y update
sudo apt -y upgrade

echo "start install application"
sudo apt -y install python3 python3-venv python3-pip clang libclang-dev terminator npm fcitx-anthy neovim

echo "start npm install tern"
sudo npm install -g tern

echo "start install dotfiles"
sudo chmod +x ./setup_dotfiles.sh
sh ./setup.sh
source ~/.bashrc

echo "start neovim settings"
mkdir ~/.cache
git clone https://github.com/amosoisin/nvim.git ~/.config/nvim

echo "start pip for neovim"
pip3 install neovim pynvim
pip3 install -U msgpack
