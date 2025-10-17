#!/usr/bin/env bash
set -euo pipefail

# ghostty's terminfo was accepted into ncurses but ncurses maintainer
# didn't allow for `xterm-ghostty`.
#
BASEDIR=/usr/share/terminfo
G=${BASEDIR}/g/ghostty
XG=${BASEDIR}/x/xterm-ghostty
if [[ -r ${G} && ! -e ${XG} ]]; then
  ln -s ${G} ${XG}
fi
