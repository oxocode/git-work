#!/usr/bin/env bash
# git-work
#
# Installation script, used for updating.

# Exit on error.
set -o errexit

# Make the Install
make_install() {
    if [ -n "$PREFIX" ]
    then
        PREFIX="$PREFIX" make install
    else
        sudo make install
    fi
}

cd /tmp \
    && rm -rf ./git-work \
    && echo "Loading 'git-work'...." \
    && git clone https://github.com/oxocode/git-work.git &> /dev/null \
    && cd git-work \
    && git checkout \
        $(git describe --tags $(git rev-list --tags --max-count=1)) \
        &> /dev/null \
    && make_install
