#!/usr/bin/env fish

set dir (status dirname)

cp $dir/.bashrc $HOME/.bashrc
cp $dir/.vimrc $HOME/.vimrc

test -d $HOME/.config; or mkdir -p $HOME/.config
test -d $HOME/.config/fish; or mkdir -p $HOME/.config/fish
test -d $HOME/.config/fish/conf.d; or mkdir -p $HOME/.config/fish/conf.d
test -d $HOME/.config/fish/functions; or mkdir -p $HOME/.config/fish/functions
cp $dir/.config/fish/conf.d/* $HOME/.config/fish/conf.d/
cp $dir/.config/fish/functions/* $HOME/.config/fish/functions/
