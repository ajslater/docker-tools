#!/bin/bash
# Lint checks
set -euxo pipefail
prettier --check .
shellharden --check ./bin/*.sh ./docker* ./darwin/docker*
shellcheck -x ./bin/*.sh ./docker* ./darwin/docker*
bin/roman.sh -i .gitignore .
