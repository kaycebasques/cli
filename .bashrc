export PATH="$HOME/.local/bin:$PATH"

# Check if session is interactive and running in a terminal:
#   1. [[ $- == *i* ]]: Shell flag check ensures this is an interactive bash session (not a background script).
#   2. [ -t 0 ]: Standard input (fd 0) is connected to a TTY device (avoids running during scp, rsync, pipes).
#   3. command -v fish: Ensures fish shell binary exists in PATH.
if [[ $- == *i* ]] && [ -t 0 ] && command -v fish >/dev/null 2>&1; then
    echo "Starting fish in 2s… Press any key to stay in bash."
    if ! read -t 2 -n 1 -r -s; then
        echo
        exec fish
    fi
fi
