#!/usr/bin/env bash
# GitHub Pages はリポジトリ直下を配信し続けるため、
# ネイティブアプリ用の webDir (www/) はビルド時にここで組み立てる。
set -eu
cd "$(dirname "$0")/.."
rm -rf www
mkdir -p www
cp index.html manifest.webmanifest sw.js www/
cp -r icons www/
echo "www/ built:"
ls www
