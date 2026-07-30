#!/usr/bin/env fish

set cli $HOME/cli

git -C $cli fetch origin
git -C $cli rebase origin/main

if not diff -q $cli/.bashrc $HOME/.bashrc >/dev/null
  cp $cli/.bashrc $HOME/.bashrc
end

if not diff -q $cli/.vimrc $HOME/.vimrc >/dev/null
  cp $cli/.vimrc $HOME/.vimrc
end

test -d $HOME/.config/fish/conf.d; or mkdir -p $HOME/.config/fish/conf.d
for file in $HOME/.config/fish/conf.d/*
  if not string match -q "_*" (basename $file)
    rm $file
  end
end
cp $cli/.config/fish/conf.d/* $HOME/.config/fish/conf.d/

test -d $HOME/.config/fish/functions; or mkdir -p $HOME/.config/fish/functions
for file in $HOME/.config/fish/functions/*
  if not string match -q "_*" (basename $file)
    rm $file
  end
end
cp $cli/.config/fish/functions/* $HOME/.config/fish/functions/
