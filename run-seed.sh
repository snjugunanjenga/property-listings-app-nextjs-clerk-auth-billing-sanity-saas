#!/bin/bash

# Load environment variables from .env.local
if [ -f ./.env.local ]; then
  source ./.env.local
fi

# Execute Sanity seed command
npx tsx scripts/seed/seed.ts
