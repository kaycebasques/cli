#!/usr/bin/env fish

set cli $HOME/cli

echo "Press any key in next second to update cli… "
set -l key (bash -c 'read -t 1 -n 1 -s key; code=$?; echo "$key"; exit $code')
set -l exit_code $status
if test $exit_code -eq 0
  echo "Updating…"
  if not command -s git > /dev/null
    sudo apt install git
  end
  git -C $cli fetch origin
  git -C $cli rebase origin/main
end

cp $cli/.bashrc $HOME/.bashrc
cp $cli/.vimrc $HOME/.vimrc
test -d $HOME/.config/fish/conf.d; or mkdir -p $HOME/.config/fish/conf.d
test -d $HOME/.config/fish/functions; or mkdir -p $HOME/.config/fish/functions
cp $cli/.config/fish/conf.d/* $HOME/.config/fish/conf.d/
cp $cli/.config/fish/functions/* $HOME/.config/fish/functions/
