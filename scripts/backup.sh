#!/usr/bin/env bash
set -euo pipefail
NS="${1:-freightforce}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "freightforce-$TS" --include-namespaces "$NS" --wait
