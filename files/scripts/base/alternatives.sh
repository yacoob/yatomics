#!/usr/bin/env bash
set -euo pipefail

sudo update-alternatives --install \
  /usr/bin/vim vim /usr/bin/nvim 90 \
  --slave /usr/bin/vi vi /usr/bin/nvim
