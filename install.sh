#!/bin/bash

# WSL2の使用リソース上限設定
echo '[wsl2]\nmemory=2GB' > ~/.wslconfig
# Docker CEのインストール
curl -sSL https://get.docker.com/ | CHANNEL=stable sh
docker -v
# Cargoのインストール(WSL2内にインストール)
sudo apt install build-essential
curl https://sh.rustup.rs -sSf | sh
echo 'export PATH=$HOME/.cargo/bin:$PATH' | tee -a ~/.bashrc
source ~/.bashrc
# Rust及びCargoのツール群インストール
rustup component add rustfmt rust-analysis rust-src
cargo install cargo-edit
# Diesel CLIのインストール
cargo install diesel_cli --no-default-features --features mysql
