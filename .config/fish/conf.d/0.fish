#!/usr/bin/env fish

set cli $HOME/cli

if not command -s git > /dev/null
  sudo apt install git
end
git -C $cli fetch origin
git -C $cli rebase origin/main

cp $cli/.bashrc $HOME/.bashrc
cp $cli/.vimrc $HOME/.vimrc

test -d $HOME/.config/fish/conf.d; or mkdir -p $HOME/.config/fish/conf.d
test -d $HOME/.config/fish/functions; or mkdir -p $HOME/.config/fish/functions
cp $cli/.config/fish/conf.d/* $HOME/.config/fish/conf.d/
cp $cli/.config/fish/functions/* $HOME/.config/fish/functions/
