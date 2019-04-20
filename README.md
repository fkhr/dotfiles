# Dotfiles

# How to set files
```
ln -s vimrc ~/.vimrc
ln -s vimfiles ~/.vim
ln -s tmux.conf ~/.tmux_conf
```
After that, install dein.vim
```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundles
```

After installing dein.vim, open vim and execute below command on vim.

```
:call dein#install()
```
