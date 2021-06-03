#!/usr/bin/env bash

# clone the repo
if [ -d "$HOME/setup/cargo-setup" ]; then
  echo Repo downloaded starting setup...
else
  echo Downloading repo...
  git clone https://github.com/jhessin/cargo-setup.git $HOME/setup/cargo-setup
fi

cd $HOME/setup/cargo-setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH=$HOME/.cargo/bin:$PATH
cargo install $(cat $HOME/setup/ubuntu-setup/cargo.packages)
