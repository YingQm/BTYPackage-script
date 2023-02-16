#!/usr/bin/env bash
set -x

echo " ================= make bty ================= "
cd /home/lyh/go/src/github.com/bityuan/bityuan
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy
export CGO_ENABLED=1 GOOS=linux GOARCH=amd64
git checkout -- .
git pull
make

echo " ================= cp bty ================= "
cd /home/lyh/qtwork/chain33-qt-QM
rm -rf ./Bityuan-Wallet-Linux
mkdir Bityuan-Wallet-Linux

cp /home/lyh/go/src/github.com/bityuan/bityuan/bityuan ./Bityuan-Wallet-Linux/bityuan
cp /home/lyh/go/src/github.com/bityuan/bityuan/bityuan-cli ./Bityuan-Wallet-Linux/bityuan-cli
cp /home/lyh/go/src/github.com/bityuan/bityuan/bityuan.toml ./Bityuan-Wallet-Linux/bityuan.toml
cp /home/lyh/qtwork/chain33-qt-QM/Release/bityuan-qt ./Bityuan-Wallet-Linux/bityuan-qt
cp /home/lyh/qtwork/chain33-qt-QM/src/config/BTY-config/StyleConfig.ini ./Bityuan-Wallet-Linux/StyleConfig.ini
cp ./ubuntu_build/default.desktop ./Bityuan-Wallet-Linux/default.desktop
cp ./ubuntu_build/default.png ./Bityuan-Wallet-Linux/default.png


echo " ================= linuxdeployqt bty ================= "
./ubuntu_build/linuxdeployqt-7-x86_64.AppImage ./Bityuan-Wallet-Linux/bityuan-qt -appimage
tar -czf Bityuan-Wallet-Linux-6.8..-qt.tar.gz ./Bityuan-Wallet-Linux
