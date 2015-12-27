cd /tmp
git clone https://github.com/Shougo/deoplete.nvim.git
cd deoplete.nvim/
rm -rf .git .gitignore
cp * ~/.config/nvim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
