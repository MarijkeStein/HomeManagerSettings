#!/bin/sh

set -euxo pipefail

exec ssh-keygen -t ed25519-sk -O resident -O verify-required -C "fido2-key"


# EOF
