#!/bin/sh
input=$(cat)
session=$(printf '%s' "$input" | grep -oE '"session_id"[[:space:]]*:[[:space:]]*"[^"]+"' | head -n 1 | sed -E 's/.*"([^"]+)"$/\1/')
pending="${TMPDIR:-/tmp}/dally-canvas-${session:-session}"

case "$1" in
  remember)
    url=$(printf '%s' "$input" | grep -oE 'https://[A-Za-z0-9.-]+/canvas/req_[A-Za-z0-9-]+' | tail -n 1)
    [ -n "$url" ] && printf '%s\n' "$url" > "$pending"
    ;;
  open)
    [ -f "$pending" ] || exit 0
    url=$(tail -n 1 "$pending")
    rm -f "$pending"
    [ -n "$url" ] && [ -z "$DALLY_NO_OPEN" ] || exit 0
    if command -v open > /dev/null 2>&1; then
      open "$url"
    elif command -v xdg-open > /dev/null 2>&1; then
      xdg-open "$url" > /dev/null 2>&1 &
    elif command -v cmd.exe > /dev/null 2>&1; then
      cmd.exe /c start "" "$url"
    fi
    ;;
esac
exit 0
