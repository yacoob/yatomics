#!/usr/bin/env bash
set -euo pipefail
# install eget via its installer
curl https://zyedidia.github.io/eget.sh | sh
install -o root -g root eget /usr/bin
rm -f eget
# use eget to install other binaries
eget binwiederhier/ntfy -a tar.gz --to=/usr/bin
eget stunnel/tgsend -f 'tgsend-*' --to=/usr/bin/tgsend
