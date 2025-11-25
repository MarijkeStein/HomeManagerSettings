#!/usr/bin/env bash

set -uxo pipefail

cd "flakes" || exit 1

which nom &> /dev/null
export NOM_FOUND=$?

if [[ "${NOM_FOUND}" == "1" ]]
then
    nixos-rebuild switch --flake . --use-remote-sudo     # in future release changed to "--sudo"
else
    nixos-rebuild switch --flake . --use-remote-sudo 2>&1 | nom
fi


# EOF
