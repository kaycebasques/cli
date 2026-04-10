set default_dirs "Documents" "Downloads" "Music" "Pictures" "Public" "Templates" "Videos"
for default_dir in $default_dirs
    set default_dir $HOME/$default_dir
    if not test -d $default_dir
        continue
    end	
    rmdir $default_dir
end

if not test -d $HOME/dl
    mkdir $HOME/dl
end	
