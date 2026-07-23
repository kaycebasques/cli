#!/usr/bin/env fish

set dir (status dirname)

cp $dir/.bashrc $HOME/.bashrc
cp $dir/.vimrc $HOME/.vimrc
cp $dir/.config/fish/conf.d/* $HOME/.config/fish/conf.d/
cp $dir/.config/fish/functions/* $HOME/.config/fish/functions/
