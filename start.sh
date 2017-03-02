#!/bin/bash
set -o errexit
SERVICE=${1:-invalid}
echo "Proxying to service:" ${SERVICE}
exec socat TCP-LISTEN:8080,fork TCP:${SERVICE}:80
