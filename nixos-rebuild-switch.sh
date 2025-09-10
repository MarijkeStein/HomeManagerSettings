#!/bin/sh

set -euxo pipefail

cd "flakes"
sudo nixos-rebuild switch --flake .


# EOF
