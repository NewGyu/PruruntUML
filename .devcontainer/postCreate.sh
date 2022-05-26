#!/bin/sh

curl https://wasmtime.dev/install.sh -sSf | bash
rustup target add wasm32-wasi
cargo install wasm-pack
cat << EOF > ~/.bash_aliases
alias ll='ls -l'
alias la='ls -la'
EOF