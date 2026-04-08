#!/usr/bin/fish

gpgconf --kill gpg-agent
# https://superuser.com/a/521027
pinentry-program /usr/bin/pinentry-tty
gpg-connect-agent reloadagent /bye
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
read -P "Enter the **ed25519** **sec**ret ID:" key_id
gpg --armor --export $key_id
echo "TODO: Add the key to https://github.com/settings/gpg/new"
git config --global user.signingkey $key_id
