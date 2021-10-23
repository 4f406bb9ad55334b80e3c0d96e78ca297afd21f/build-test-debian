#!/bin/bash
apt install xorriso grub-pc-bin grub-efi mtools make python3 \
    dosfstools e2fsprogs squashfs-tools python3-yaml \
    gcc wget curl unzip xz-utils debootstrap git -y
git clone https://gitlab.com/tearch-linux/applications-and-tools/teaiso
cd teaiso
make && make install
cd /build
mkteaiso -c debian
mkteaiso -p debian
