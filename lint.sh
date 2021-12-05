#!/bin/bash
# Lint checks
set -euxo pipefail
if [ "${1:-}" = "-f" ]; then
    # Fix before check
    ./fix-lint.sh
fi
prettier --check .
shellcheck -x ./*.sh ./docker*
