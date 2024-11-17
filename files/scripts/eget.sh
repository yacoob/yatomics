#!/usr/bin/env bash
set -euo pipefail
# install eget via its installer
curl https://zyedidia.github.io/eget.sh | sh
install eget /usr/bin
rm -f eget
# use eget to install other binaries
/usr/bin/eget creativeprojects/resticprofile -a 'no_self_update' --to=/usr/bin
/usr/bin/eget atanunq/viu --to=/usr/bin
/usr/bin/eget watchexec/watchexec -a musl.tar.xz _ -a '^b3' -a '^sha512' --to=/usr/bin
