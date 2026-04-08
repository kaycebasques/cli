#!/usr/bin/env fish

# Set up vars for key dirs
set my_conf (status dirname)
set fish_conf "$HOME/.config/fish"

# Copy configs from my repo into fish config dir
cp $my_conf/.bashrc $HOME/
set dirs "conf.d" "functions"
for dir in $dirs
    set source "$my_conf/$dir"
    set target "$fish_conf/$dir"
    if not test -d $target
        mkdir -p $target
    end
    cp $source/* $target/
end
