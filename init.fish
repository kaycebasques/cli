#!/usr/bin/env fish

set dir (status dirname)

cp $dir/.bashrc $HOME/.bashrc

cp $dir/.vimrc $HOME/.vimrc

if not test -d $dir/.config/fish/conf.d
    mkdir -p $dir/.config/fish/conf.d
end
cp $dir/.config/fish/conf.d/* $HOME/.config/fish/conf.d/

if not test -d $dir/.config/fish/functions
    mkdir -p $dir/.config/fish/functions
end
cp $dir/.config/fish/functions/* $HOME/.config/fish/functions/
