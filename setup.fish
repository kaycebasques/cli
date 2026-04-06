#!/usr/bin/env bash

set conf_dir "$HOME/.config/fish/conf.d"
if not test -d $conf_dir
    mkdir -p $conf_dir
end

set repo_dir (status dirname)
cp $repo_dir/conf.d/* $HOME/.config/fish/conf.d/
