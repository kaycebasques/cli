#!/usr/bin/fish

if not command -s git > /dev/null
  sudo apt install git
end

if not test -e $HOME/.ssh/id_ed25519.pub
  echo "SSH key not found. Run `fish ~/cli/ssh.fish` to set up."
end

abbr --add ga. "git add ."
abbr --add gb "git branch"
abbr --add gc "git commit"
abbr --add gcane "git commit --amend --no-edit"
abbr --add gd "git diff"
abbr --add gfo "git fetch origin"
abbr --add gl "git log"
abbr --add gl1 "git log --oneline"
abbr --add grom "git rebase origin/main"
abbr --add gs "git status"
abbr --add wip "git push origin HEAD:refs/for/main%wip"

git config --global core.editor "vim"
git config --global user.name "Kayce Basques"
git config --global user.email "kaycebasques@gmail.com"

if not test -d $HOME/wt
  mkdir $HOME/wt
end
