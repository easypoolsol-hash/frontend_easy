#!/bin/bash
# Build script for Imperial EasyPool Frontend with Google Maps API Key from .env file
# Usage: ./build.sh [environment]
# Environment: dev, prod (default: dev)

ENVIRONMENT=${1:-dev}

if [ "$ENVIRONMENT" = "prod" ]; then
    echo "Building for PRODUCTION (API key loaded from .env file)..."
    flutter build web --release
elif [ "$ENVIRONMENT" = "dev" ]; then
    echo "Building for DEVELOPMENT (API key loaded from .env file)..."
    flutter build web
else
    echo "Usage: $0 [dev|prod]"
    echo "Example: $0 prod"
    exit 1
fi

echo "Build complete! Output in build/web/"