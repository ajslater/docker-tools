#!/bin/bash
# Lint checks
set -euxo pipefail
if [ "${1:-}" = "-f" ]; then
    # Fix before check
    ./fix-lint.sh
fi
prettier --check .
shellharden --check ./*.sh ./docker* ./darwin/*
shellcheck -x ./*.sh ./docker* ./darwin/*
