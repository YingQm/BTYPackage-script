#!/usr/bin/env bash
set -x


cd /c/Users/QM/Desktop/bityuan-发布

rm -rf new
mkdir new

echo "================ make bityuan ================"
unzip -o ./bityuan-windows-amd64.zip -d ./bityuan-windows-amd64

echo "================ cp bityuan ================"
cp ./bityuan-windows-amd64/bityuan-windows-amd64.exe ./new/bityuan.exe
cp ./bityuan-windows-amd64/bityuan-windows-amd64.exe ./new/bityuan-x86.exe
cp ./bityuan-windows-amd64/bityuan-cli-windows-amd64.exe ./new/bityuan-cli.exe
cp ./bityuan-windows-amd64/bityuan-cli-windows-amd64.exe ./new/bityuan-cli-x86.exe
cp ./bityuan-windows-amd64/bityuan.toml ./new/bityuan.toml

rm -rf bityuan-windows-amd64