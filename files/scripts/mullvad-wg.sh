#!/usr/bin/env bash
set -euo pipefail

# https://mullvad.net/en/help/wireguard-and-mullvad-vpn
b=/usr/bin/mullvad-wg.sh
curl -o ${b} https://raw.githubusercontent.com/mullvad/mullvad-wg.sh/main/mullvad-wg.sh
chmod a+rx ${b}
