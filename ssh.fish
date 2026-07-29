#!/usr/bin/env fish

# presumably enough to test for just `ssh-keygen` since `ssh-agent` and
# `ssh-add` are bundled with it in `openssh-client`
if not command -s ssh-keygen > /dev/null
    sudo apt install openssh-client
end
ssh-keygen -t ed25519 -C "kaycebasques@gmail.com"
eval (ssh-agent -c)
ssh-add $HOME/.ssh/id_ed25519
echo "TODO: Add the following key to https://github.com/settings/ssh/new"
cat $HOME/.ssh/id_ed25519.pub
git -C $home/cli remote set-url origin git@github.com:kaycebasques/cli.git
