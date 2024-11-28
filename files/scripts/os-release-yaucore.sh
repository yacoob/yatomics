#!/usr/bin/env bash
set -euo pipefail

sed -i '
/^PRETTY_NAME=/s/uCore/yaucore/
' /usr/lib/os-release
