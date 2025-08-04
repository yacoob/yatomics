#!/usr/bin/env bash
set -euo pipefail

sed -i '
/^NAME=/s/Fedora Linux/yabootc/
/^PRETTY_NAME=/s/Fedora Linux/yabootc/
' /usr/lib/os-release
