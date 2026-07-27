#!/usr/bin/env fish

set repos "technicalwriting.dev" "kaycebasques.net"
for repo in $repos
    if not test -d $HOME/$repo
        git clone git@github.com:kaycebasques/$repo.git $HOME/$repo
        git -C $HOME/$repo config --local user.email "kaycebasques@gmail.com"
    end
end
