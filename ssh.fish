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
set repo_dir (path resolve (status dirname))
set remote_url (git -C $repo_dir remote get-url origin)
set remote_url (string replace -r '^https://github\.com/' 'git@github.com:' $remote_url)
set remote_url (string replace '/cli.git' '/k.git' $remote_url)
git -C $repo_dir remote set-url origin $remote_url
