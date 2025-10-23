.PHONY: help setup generate analyze test run-web build-web clean

# Default target - show help
help:
	@echo "🚀 Imperial EasyPool Frontend - Easy Commands for Everyone"
	@echo "========================================================"
	@echo ""
	@echo "QUICK START:"
	@echo "  make setup         - First time setup"
	@echo "  make generate      - Create service interfaces"
	@echo "  make run-web       - Run in web browser"
	@echo ""
	@echo "DEVELOPMENT:"
	@echo "  make analyze       - Check code for errors"
	@echo "  make test          - Run all tests"
	@echo ""
	@echo "PRODUCTION:"
	@echo "  make build-web     - Build for web deployment"
	@echo ""
	@echo "CLEANUP:"
	@echo "  make clean         - Clean build artifacts"

# First time setup
setup:
	@echo "Setting up Imperial EasyPool Frontend..."
	@flutter pub get
	@echo "Setup complete! Run 'make generate' to create service interfaces."

# API client generation
generate:
	@echo "Regenerating API client from OpenAPI spec..."
	@npx @openapitools/openapi-generator-cli generate -c openapi-generator-config.yaml
	@cd packages/frontend_easy_api && flutter pub get
	@echo "API client regenerated with proper JSON serialization!"

# Code quality checks
analyze:
	@echo "Analyzing code quality..."
	@dart analyze lib/
	@echo "Analysis complete!"

test:
	@echo "Running tests..."
	@flutter test
	@echo "Tests complete!"

# Development runs
run-web:
	@echo "Starting web development server..."
	@flutter run -d chrome --web-port=3001

# Production builds
build-web:
	@echo "Building for web deployment..."
	@flutter build web --release
	@echo "Web build complete! Files in build/web/"

# Cleanup
clean:
	@echo "Cleaning up..."
	@flutter clean
	@rm -rf packages/frontend_easy_api
	@echo "Cleanup complete!"