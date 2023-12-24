#!/usr/bin/env sh

set -oue pipefail

curl -sS https://raw.githubusercontent.com/madx/wex/main/wex > /tmp/wex
curl -sS https://raw.githubusercontent.com/Craftidore/wex/main/wex-runner > /tmp/wex-runner
chmod +x /tmp/wex
chmod +x /tmp/wex-runner
cp /tmp/wex /usr/bin/wex
cp /tmp/wex-runner /usr/bin/wex-runner
