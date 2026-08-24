#!/bin/bash
# Fix as much as many linting issues as we can
set -euxo pipefail
bin/sortignore.sh
prettier --write .
shellharden --replace ./bin/*.sh ./docker* ./darwin/docker*
