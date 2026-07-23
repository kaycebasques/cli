#!/usr/bin/env fish

set dir (status dirname)

ln -s $dir/.bashrc $HOME/.bashrc
ln -s $dir/.vimrc $HOME/.vimrc
ln -s $dir/.config/fish $HOME/.config/fish
