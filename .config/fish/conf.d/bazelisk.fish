#!/usr/bin/env fish

if not command -s curl > /dev/null
    sudo apt install curl
end

set bin $HOME/.local/bin

if not test -d $bin
    mkdir -p $bin
end

# TODO check that `uname` exists?

if not test -f $bin/bazelisk
  set target (string lower (uname -s))-(string lower (uname -m))
  switch $target
    case "linux-x86_64"
      set url https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-amd64
    case "linux-aarch64"
      set url https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-arm64
  end
  curl -L $url -o $bin/bazelisk
  chmod +x $bin/bazelisk
end
