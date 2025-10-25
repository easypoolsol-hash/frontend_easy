#!/bin/bash
# Build script for Imperial EasyPool Frontend with Google Maps API Key from .env.prod
# Usage: ./build.sh [environment]
# Environment: dev, prod (default: dev)

ENVIRONMENT=${1:-dev}

# Load Google Maps API key from parent .env.prod
if [ -f ../.env.prod ]; then
    echo "Loading environment variables from ../.env.prod"
    export $(grep GOOGLE_MAPS_API_KEY ../.env.prod | xargs)
    echo "Google Maps API Key loaded: ${GOOGLE_MAPS_API_KEY:0:20}..."

    # Replace placeholder in index.html
    echo "Injecting API key into web/index.html..."
    sed "s/{{GOOGLE_MAPS_API_KEY}}/$GOOGLE_MAPS_API_KEY/g" web/index.html > web/index.html.tmp
    mv web/index.html.tmp web/index.html
else
    echo "Warning: ../.env.prod not found!"
    echo "Building without Google Maps API key"
fi

if [ "$ENVIRONMENT" = "prod" ]; then
    echo "Building for PRODUCTION..."
    if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
        flutter build web --release --dart-define=GOOGLE_MAPS_API_KEY=$GOOGLE_MAPS_API_KEY
    else
        flutter build web --release
    fi
elif [ "$ENVIRONMENT" = "dev" ]; then
    echo "Building for DEVELOPMENT..."
    if [ -n "$GOOGLE_MAPS_API_KEY" ]; then
        flutter build web --dart-define=GOOGLE_MAPS_API_KEY=$GOOGLE_MAPS_API_KEY
    else
        flutter build web
    fi
else
    echo "Usage: $0 [dev|prod]"
    echo "Example: $0 prod"
    exit 1
fi

echo "Build complete! Output in build/web/"
