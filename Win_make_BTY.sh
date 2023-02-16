#!/usr/bin/env bash
set -x

rm -rf new
mkdir new

echo "================ make bityuan ================"
cd /d/goWork/src/github.com/bityuan/bityuan
git checkout -- .
git pull
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy
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

#echo "================ cp bityuan-qt ================"
#cp /d/qtWork/chain33-qt-33cn/chain33-qt-vs/release/chain33-qt.exe ./chain33-qt.exe
#cp /d/qtWork/chain33-qt-33cn/chain33-qt-vs/release/chain33-qt.exe.manifest ./chain33-qt.exe.manifest
#cp /d/qtWork/chain33-qt-33cn/chain33-qt-vs/release/chain33-qt.pdb ./chain33-qt.pdb
#cp /d/qtWork/chain33-qt-33cn/chain33-qt-vs/src/config/bityuan-config/StyleConfig.ini ./StyleConfig.ini



