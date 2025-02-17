#!/bin/bash

set -vex

sudo apt-get update
sudo apt-get -y install clang

# workaround to make clang_sys crate detect installed libclang
sudo ln -s libclang.so.1 /usr/lib/llvm-10/lib/libclang.so

export RUST_BACKTRACE=full DOCS_RS=1
cargo doc -vv
