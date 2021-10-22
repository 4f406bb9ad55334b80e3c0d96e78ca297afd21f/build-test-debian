#!/bin/bash
apt install make gcc mtools xorriso squashfs-tools erofs-utils
git clone https://gitlab.com/tearch-linux/applications-and-tools/teaiso
cd teaiso
make && make install
cd /build
mkteaiso -c debian
mkteaiso -p debian
