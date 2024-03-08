#!/bin/sh

set -e

SCRIPT_DIR=$(dirname "$0")
GIT_ROOT=$(git rev-parse --prefix "$SCRIPT_DIR" --show-toplevel)
HOOKS_DIR="$SCRIPT_DIR/hooks"

if [ ! -d "$HOOKS_DIR" ]; then
    echo "Hooks directory does not exists." 1>&2
    exit 1
fi

if cp -i "$HOOKS_DIR"/* "$GIT_ROOT/.git/hooks/."; then
    echo "Hooks installed successfully."
fi
