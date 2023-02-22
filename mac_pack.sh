#!/usr/bin/env bash
set -x

echo "=========== make bityuan ============="
cd /Users/yingqiumin/Documents/go/src/github.com/bityuan/bityuan
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy
git checkout -- .
git pull
make build

echo "=========== cp bityuan ============="
cd /Users/yingqiumin/Documents/pack
cp -fr ./bityuan-original.app ./bityuan-qt.app
cp /Users/yingqiumin/Documents/go/src/github.com/bityuan/bityuan/bityuan /Users/yingqiumin/Documents/pack/bityuan-qt.app/Contents/MacOS/bityuan
cp /Users/yingqiumin/Documents/go/src/github.com/bityuan/bityuan/bityuan-cli /Users/yingqiumin/Documents/pack/bityuan-qt.app/Contents/MacOS/bityuan-cli
cp /Users/yingqiumin/Documents/go/src/github.com/bityuan/bityuan/bityuan.toml /Users/yingqiumin/Documents/pack/bityuan-qt.app/Contents/MacOS/bityuan.toml
cp /Users/yingqiumin/Documents/qtwork/chain33-qt-QM/src/config/BTY-config/StyleConfig.ini /Users/yingqiumin/Documents/pack/bityuan-qt.app/Contents/MacOS/StyleConfig.ini

echo "=========== make bityuan ============="
otool -L bityuan-qt.app/Contents/MacOS/bityuan-qt
macdeployqt bityuan-qt.app

mv bityuan-qt.app bityuan.app
