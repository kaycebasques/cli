#!/usr/bin/env fish

set repo_dir (path resolve (status dirname))

git -C $repo_dir fetch origin
git -C $repo_dir rebase origin/main

if not diff -q $repo_dir/.bashrc $HOME/.bashrc >/dev/null
  cp $repo_dir/.bashrc $HOME/.bashrc
end

if not diff -q $repo_dir/.vimrc $HOME/.vimrc >/dev/null
  cp $repo_dir/.vimrc $HOME/.vimrc
end

test -d $HOME/.config/fish/conf.d; or mkdir -p $HOME/.config/fish/conf.d
for file in $HOME/.config/fish/conf.d/*
  if not string match -q "_*" (basename $file)
    rm $file
  end
end
cp $repo_dir/.config/fish/conf.d/* $HOME/.config/fish/conf.d/

test -d $HOME/.config/fish/functions; or mkdir -p $HOME/.config/fish/functions
for file in $HOME/.config/fish/functions/*
  if not string match -q "_*" (basename $file)
    rm $file
  end
end
cp $repo_dir/.config/fish/functions/* $HOME/.config/fish/functions/
