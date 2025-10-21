#!/usr/bin/env sh

set -oue pipefail

curl -sS https://raw.githubusercontent.com/madx/wex/main/wex > /tmp/wex
chmod +x /tmp/wex
cp /tmp/wex /usr/bin/wex
