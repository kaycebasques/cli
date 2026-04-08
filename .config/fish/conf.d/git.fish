#!/usr/bin/fish

if not test -e $HOME/.ssh/id_ed25519.pub
    ssh-keygen -t ed25519 -C "kaycebasques@gmail.com"
    eval (ssh-agent -c)
    ssh-add $HOME/.ssh/id_ed25519
    echo "TODO: Add the following key to https://github.com/settings/keys"
    cat $HOME/.ssh/id_ed25519.pub
end

if not test -n "$(gpg --list-secret-keys --keyid-format=long 2>/dev/null)"
    echo "No keys found. Generating now..."
end

git config --global core.editor "vim"
git config --global user.name "Kayce Basques"
git config --global user.email "kaycebasques@gmail.com"
