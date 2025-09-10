#!/bin/sh

set -euxo pipefail

cd "users/marijke"
exec home-manager switch --extra-experimental-features flakes


# EOF
