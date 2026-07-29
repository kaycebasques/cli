if not command -s cargo > /dev/null
    sudo apt install curl
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
end

if test -f "$HOME/.cargo/env.fish"
  source "$HOME/.cargo/env.fish"
end
