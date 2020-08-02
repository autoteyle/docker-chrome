#!/bin/sh

set -e

exec "$@" \
    --remote-debugging-port="${REMOTE_DEBUGGING_PORT}" \
    --remote-debugging-address="${REMOTE_DEBUGGING_ADDRESS}"
