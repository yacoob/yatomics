#!/usr/bin/env bash
set -euo pipefail
# install eget via its installer
curl https://zyedidia.github.io/eget.sh | sh
install -o root -g root eget /usr/bin
rm -f eget
# use eget to install other binaries
eget atuinsh/atuin -a gnu -a '^update' --to=/usr/bin
eget containers/podlet --to=/usr/bin -a gnu
eget creativeprojects/resticprofile -a no_self_update --to=/usr/bin
eget stunnel/tgsend -f 'tgsend-*' --to=/usr/bin/tgsend
eget VorpalBlade/chezmoi_modify_manager -a gnu --to=/usr/bin
eget wagoodman/dive -a tar --to=/usr/bin
eget watchexec/watchexec -a musl.tar.xz _ -a '^b3' -a '^sha512' --to=/usr/bin
