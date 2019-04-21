# Dotfiles

## Requirements

- Mac OS Mojave
- pyenv
- Homebrew

## How to Setup
Clone this repository into home directory (`~/`).

### Font

At first, install fonts for powerline (iterm2)  and airline (vim).

```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

After install Hack Nerd Font, set iterm2 font as "Hack Regular Nerd Font Complete".

### Vim
For vim Setting, install vim by vim and make symbolic links of vim setting files by below commands.

```shell
brew install vim
# install neovim python package on system Python3
/usr/local/bin/pip3 install neovim
ln -s "$(pwd)/vimrc" ~/.vimrc
ln -s vimfiles ~/.vim
```

After that, install dein.vim

```shell
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundles
```

After installing dein.vim, open vim and execute below command on vim.

```
:call dein#install()
```

### Tmux

At first, install tmux and powerline with Python3 of system.

```shell
brew install tmux
/usr/local/bin/pip3 install --user git+git://github.com/powerline/powerline
```

And add path to binary directory used by system Python3 (`~/Library/Python/3.7/bin`) to `$PATH`.
It is better that add this path setting into `~/.bash_profile` or `.zshrc`.
If forget this setting, tmux can't find `powerline-daemon` command which is used for powerline setting.

Lastly, make symbolic link of tmux config file.

```shell
ln -s "$(pwd)/tmux.conf" ~/.tmux_conf
```

## Notes
Currently, setting files suppose Mac OS 
whose vim use system Python3 (`/usr/local/bin/python3`, `/usr/local/bin/pip3`).
If you adapt the settings to other OS (like Linux),
you should use suitable pip instead of `user/local/bin/pip3` and 
modify path to powerline source file in `tmux.conf` (started `source ~` below `run-hell "powerline-daemon -q` line).

