#!/usr/bin/env bash

set -eou pipefail

if [ ! -f "/tmp/steam-workaround-run" ]; then
    sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
    sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/rpmfusion-nonfree.repo
    sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/rpmfusion-nonfree-updates.repo
    sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
    rm /tmp/steam-workaround-run
else
    touch /tmp/steam-workaround-run
    sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
    sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/rpmfusion-nonfree.repo
    sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/rpmfusion-nonfree-updates.repo
    sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo
fi
