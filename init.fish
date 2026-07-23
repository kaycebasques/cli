#!/usr/bin/env fish

set dir (status dirname)
set files .bashrc .vimrc .config/fish

for file in $files
    set target $HOME/$file
    if test -e $target; or test -L $target
        rm -rf $target
    end
    ln -s $dir/$file $target
end
