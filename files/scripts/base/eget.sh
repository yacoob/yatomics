#!/usr/bin/env bash
set -euo pipefail
# install eget via its installer
curl https://zyedidia.github.io/eget.sh | sh
install -o root -g root eget /usr/bin
rm -f eget
# install binaries via eget - while the preference is for users to use brew/soar
# some binaries are important enough to warrant a place in /usr/bin
eget VorpalBlade/chezmoi_modify_manager -a gnu --to=/usr/bin
