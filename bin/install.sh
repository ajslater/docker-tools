#!/bin/sh
# install docker scripts in ~/bin
set -eu
ln -sf ./docker* ~/bin/
echo "Linked scripts to ~/bin/"
if [ "$(uname)" = "Darwin" ]; then
    ln -sf ./darwin/docker* ~/bin/Darwin/
    echo "Linked scripts to ~/bin/Darwin/"
fi
