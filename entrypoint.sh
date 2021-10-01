#!/bin/bash -l

cp /.gemfile "$HOME"/.gemfile

cd "$GITHUB_WORKSPACE" || exit 1

/opt/puppetlabs/pdk/bin/pdk release "$1" --force
