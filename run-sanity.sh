#!/bin/bash

# Load environment variables from .env.local
if [ -f ./.env.local ]; then
  source ./.env.local
fi

# Execute Sanity schema extract and typegen commands
$(pnpm bin)/sanity schema extract --path=./schema.json && $(pnpm bin)/sanity typegen generate
