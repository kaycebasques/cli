#!/usr/bin/env fish

if not command -s vim > /dev/null
    sudo apt install vim
end

abbr --add v "vim"

cp ~/cli/.vimrc ~/.vimrc
