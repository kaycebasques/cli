set bin_dir $HOME/.local/bin

if not test -d $bin_dir
    mkdir -p $bin_dir
end

if not test -f $bin_dir/bazelisk
    set url https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-amd64
    curl -L $url -o $bin_dir/bazelisk
    chmod +x $bin_dir/bazelisk
end
