cd /tmp
git clone https://github.com/Shougo/deoplete.nvim.git
cd deoplete.nvim/
rm -rf .git .gitignore test
cp -r * ~/.config/nvim
cd ..
git clone https://github.com/craigemery/vim-autotag.git
cd vim-autotag/
mv plugin ~/.config/nvim/pluggins


curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Don't forget to do:"
echo ":PlugInstall"
echo ":UpdateRemotePlugins"
