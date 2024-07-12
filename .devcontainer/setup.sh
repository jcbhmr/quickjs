#!/usr/bin/env bash
set -xEeuo pipefail

if ! command -v zig; then
    curl -sS https://webi.sh/zig | sh
    source ~/.config/envman/PATH.env
fi

if [[ -z $EMSDK ]]; then
    pushd ~
    git clone https://github.com/emscripten-core/emsdk.git
    cd emsdk
    ./emsdk install latest
    ./emsdk activate latest
    echo 'source ~/emsdk/emsdk_env.sh' >> ~/.bashrc
    source ./emsdk_env.sh
    popd
fi

if ! command -v ccache; then
    # https://askubuntu.com/questions/470545/how-do-i-set-up-ccache
    # Install package
    sudo apt update
    sudo apt install -y ccache
    # Update symlinks
    sudo /usr/sbin/update-ccache-symlinks
    # Prepend ccache into the PATH
    echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc
    # Source bashrc to test the new PATH
    source ~/.bashrc && echo $PATH
fi
