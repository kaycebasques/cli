#!/usr/bin/env fish

set dir (status dirname)

cp $dir/.bashrc $HOME/.bashrc
cp $dir/.config/user-dir.dirs $HOME/.config/user-dir.dirs
cp $dir/.config/fish/conf.d/* $HOME/.config/fish/conf.d/
cp $dir/.config/fish/functions/* $HOME/.config/fish/functions/

set default_dirs "Documents" "Downloads" "Music" "Pictures" "Public" "Templates" "Videos"
for default_dir in $default_dirs
    set default_dir "$HOME/$default_dir"
    if not test -d $default_dir
        continue
    end	
    rmdir $default_dir
end
