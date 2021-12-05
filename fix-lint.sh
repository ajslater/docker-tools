#!/bin/bash
# Fix as much as many linting issues as we can
set -euxo pipefail
prettier --write .
shfmt -s -w -i 4 ./*.sh ./docker*
