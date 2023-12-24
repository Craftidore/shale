#!/usr/bin/env bash

set -oeux pipefail

# alternatives cannot create symlinks on its own during a container build
echo "Linking ld"
ln -sf /usr/bin/ld.bfd /etc/alternatives/ld && ln -sf /etc/alternatives/ld /usr/bin/ld
