#!/bin/bash
set -e

# Build the Hugo site locally
echo "Building Hugo site..."
rm -rf public
hugo

# Sync the generated public/ directory to the remote server
echo "Deploying to Vultr server..."
rsync -avz --delete public/ deploy@45.63.7.246:/var/www/areweafreeiranyet.com/

echo "Deployment complete!"
