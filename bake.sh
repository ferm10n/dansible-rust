#!/bin/bash
set -e

alias rustc='rustc -C inline-threshold=25 -C no-vectorize-loops -C codegen-units=1 -Z no-verify -C debuginfo=0 -C opt-level=0 -C debug-assertions=off'

cargo build

/home/ubuntu/workspace/librespot/target/debug/librespot -n Hodor -a /home/ubuntu/workspace/librespot/spotify_appkey.key -c /home/ubuntu/workspace/librespot/cache