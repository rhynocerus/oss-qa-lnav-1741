#!/usr/bin/env bash
set -euo pipefail

OUT="${1:-synthetic.log}"
LINES="${2:-5000}"

seq 1 "$LINES" | awk '{
  n=$1-1
  printf "2026-09-25T%02d:%02d:%02d+0200 rhynus qa[%04d]: EVENTO_%05d\n",
         int(n/3600), int((n%3600)/60), n%60, 1000+($1%10), $1
}' > "$OUT"

wc -l "$OUT"
