#!/bin/bash
# Fix as much as many linting issues as we can
set -euxo pipefail
prettier --write .
shellharden ./*.sh ./docker*
