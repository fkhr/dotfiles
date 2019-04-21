# Dotfiles

# How to set files
At first, install fonts for powerline (iterm2)  and airline (vim).

```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

After install Hack Nerd Font, set iterm2 font as "Hack Regular Nerd Font Complete".
Next, make dotfile symbolic links by below commands.

```
ln -s "$(pwd)/vimrc" ~/.vimrc
ln -s vimfiles ~/.vim
ln -s "$(pwd)/tmux.conf" ~/.tmux_conf
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
