#!/usr/bin/env bash

LISTEN_PORT=${LISTEN_PORT:-${PORT}}

echo "relay TCP/IP connections on :${LISTEN_PORT} to ${HOST}:${PORT}"
exec socat TCP-LISTEN:${LISTEN_PORT},fork,reuseaddr TCP:${HOST}:${PORT}
