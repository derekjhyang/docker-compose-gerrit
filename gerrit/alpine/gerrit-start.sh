#!/usr/bin/env bash
set -e
echo "Starting Gerrit..."
exec $GERRIT_SITE/bin/gerrit.sh daemon

