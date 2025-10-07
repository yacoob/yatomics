#!/usr/bin/env bash
set -euo pipefail

# use mise to run ubi to fetch selected binaries and put them in /usr/bin
mise exec ubi -- ubi --project VorpalBlade/chezmoi_modify_manager --in /usr/bin

# remove all mise dirs under /root
rm -rf /root/.cache/mise /root/.local/mise
