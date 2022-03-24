#!/bin/bash -l

set -e

cp /.gemfile "$HOME"/.gemfile

cd "$GITHUB_WORKSPACE" || exit 1

if [ -n "$2" ]; then
    ignores=$(echo "$2" | tr "," "\n")
    for ignore in $ignores; do
        /opt/puppetlabs/pdk/bin/pdk set config project.validate.ignore "$ignore"
    done
fi

/opt/puppetlabs/pdk/bin/pdk release $1 --force
