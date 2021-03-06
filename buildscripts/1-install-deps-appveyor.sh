#!/bin/bash
set -x
set -e
set -u

mkdir temp
cd temp

curl -fsSL -o github-release.tar.gz https://github.com/paulthomson/github-release/releases/download/v1.0.9.1/github-release_v1.0.9.1_windows_amd64.tar.gz

7z x github-release.tar.gz
7z x github-release.tar
cd ..

mkdir deps
cd deps
curl -fsSL -o angle.zip https://github.com/paulthomson/build-angle/releases/download/v-592879ad24e66c7c68c3a06d4e2227630520da36/MSVC2015-Release-x64.zip
7z x angle.zip

