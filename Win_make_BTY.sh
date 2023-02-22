#!/usr/bin/env bash
set -x

rm -rf new
mkdir new

echo "================ make bityuan ================"
cd /d/goWork/src/github.com/bityuan/bityuan
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy
git checkout -- .
git pull
make build
GOOS=windows GOARCH=386 go build -o bityuan-x86.exe
cd cli
GOOS=windows GOARCH=386 go build -o bityuan-cli-x86.exe

echo "================ cp bityuan ================"
cd /c/Users/QM/Desktop/bityuan-发布/new
cp /d/goWork/src/github.com/bityuan/bityuan/bityuan ./bityuan.exe
cp /d/goWork/src/github.com/bityuan/bityuan/bityuan-cli ./bityuan-cli.exe
cp /d/goWork/src/github.com/bityuan/bityuan/bityuan.toml ./bityuan.toml
cp /d/goWork/src/github.com/bityuan/bityuan/bityuan-x86.exe ./bityuan-x86.exe
cp /d/goWork/src/github.com/bityuan/bityuan/cli/bityuan-cli-x86.exe ./bityuan-cli-x86.exe




