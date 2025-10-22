#!/bin/bash
# Run script for Imperial EasyPool Frontend with Google Maps API Key from .env file
# Usage: ./run.sh [port]
# Port: default 3000

PORT=${1:-3000}

echo "Starting Flutter web app on port $PORT (API key loaded from .env file)..."
flutter run -d chrome --web-port=$PORT