#!/usr/bin/env bash

echo "Stopping running n8n instances..."
pkill -f "n8n/node_modules/.bin/n8n" || pkill -f "node.*packages/cli/bin/n8n" || pkill -f "node.*n8n start" || echo "No running n8n instance found."
echo "Done."
