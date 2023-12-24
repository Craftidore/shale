#!/usr/bin/env bash

set -oue pipefail

# Your code goes here.
echo "Enabling keyd"
systemctl enable keyd
systemctl enable sshd
