#!/bin/sh
set -e
NAME=gpu-schedule-board
PORT="${PORT:-8400}"
cd "$(dirname "$0")"

docker build -t "$NAME" .
docker rm -f "$NAME" 2>/dev/null || true
docker run -d --name "$NAME" -p "$PORT:80" --restart unless-stopped "$NAME"

echo "Deployed: http://localhost:$PORT"
