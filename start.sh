#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR"

# Export env vars if .env exists
if [ -f .env ]; then
  set -a
  source .env
  set +a
fi

echo "Starting n8n on port ${N8N_PORT:-5678}..."
echo "Access web UI at: http://${N8N_HOST:-localhost}:${N8N_PORT:-5678}"
exec ./node_modules/.bin/n8n start
