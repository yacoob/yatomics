#!/usr/bin/env bash
set -euo pipefail

sed -i '
/^NAME=/s/Aurora/yaurora/
/^ID=/s/aurora/yaurora/
/^PRETTY_NAME=/s/Aurora.\+ \([0-9]\+\) (FROM Fedora Kinoite)/yaurora \1 (FROM Aurora-dx)/
/^DEFAULT_HOSTNAME=/s/aurora/yaurora/
/^VARIANT_ID=/s/aurora.\+/yaurora/
' /usr/lib/os-release
