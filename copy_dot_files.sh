cp ../../.vimrc ./
cat ../../.bashrc | tail -n 10 | grep '^alias' > .bashrc
cp ../../.vim/coc-settings.json ./
cp /etc/wsl.conf ./

