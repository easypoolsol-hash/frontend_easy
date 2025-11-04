.PHONY: help setup generate analyze test run-web build-web clean deploy-live deploy-staging deploy-current

# Default target - show help
help:
	@echo "🚀 Imperial EasyPool Frontend - Easy Commands for Everyone"
	@echo "========================================================"
	@echo ""
	@echo "QUICK START:"
	@echo "  make setup         - First time setup"
	@echo "  make generate      - Regenerate OpenAPI client"
	@echo "  make run-web       - Run in web browser"
	@echo ""
	@echo "DEVELOPMENT:"
	@echo "  make analyze       - Check code for errors"
	@echo "  make test          - Run all tests"
	@echo ""
	@echo "PRODUCTION:"
	@echo "  make build-web     - Build for web deployment"
	@echo "  make deploy-live   - Deploy master branch to live site"
	@echo "  make deploy-staging- Deploy develop branch to staging site"
	@echo "  make deploy-current- Deploy current branch (auto-detects live/staging)"
	@echo ""
	@echo "CLEANUP:"
	@echo "  make clean         - Clean build artifacts"

# First time setup
setup:
	@echo "Setting up Imperial EasyPool Frontend..."
	@flutter pub get
	@echo "Setup complete! Run 'make generate' to regenerate OpenAPI client if needed."

# API client generation - 2025 GOOGLE STANDARD (dart-dio + built_value)
# Uses dart-dio generator with built_value serialization for Dio compatibility
# IMPORTANT: This matches your existing code that expects Response<T>.data pattern
generate:
	@echo "Step 1/5: Copying latest OpenAPI schema from backend..."
	@cp ../openapi-schema.yaml ./openapi-schema.yaml
	@echo "Step 2/5: Removing old generated code..."
	@rm -rf packages/frontend_easy_api
	@echo "Step 3/5: Regenerating API client with dart-dio + built_value..."
	@npx @openapitools/openapi-generator-cli generate -i openapi-schema.yaml -g dart-dio -o packages/frontend_easy_api --additional-properties=pubName=frontend_easy_api
	@echo "Step 4/5: Installing dependencies..."
	@cd packages/frontend_easy_api && flutter pub get
	@echo "Step 5/5: Generating .g.dart files with built_value..."
	@cd packages/frontend_easy_api && flutter pub run build_runner build --delete-conflicting-outputs
	@flutter pub get
	@echo "✅ API client regenerated with dart-dio + built_value!"
	@echo "📦 Serialization: built_value (Google standard for OpenAPI)"
	@echo "🔌 HTTP Client: Dio (supports Response<T>.data pattern)"

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
	@flutter run -d chrome --web-port=3000

# Production builds
build-web:
	@echo "Building for web deployment..."
	@flutter build web --release
	@echo "Web build complete! Files in build/web/"

# Cleanup
clean:
	@echo "Cleaning up..."
	@flutter clean
	@echo "Cleanup complete!"

# Deployment commands
deploy-live:
	@echo "🚀 Deploying master branch to LIVE site..."
	@git checkout master
	@flutter build web --release
	@firebase target:apply hosting live easypool-30af3
	@firebase deploy --only hosting:live
	@echo "✅ Live deployment complete!"
	@echo "🌐 URL: https://easypool-30af3.web.app"

deploy-staging:
	@echo "🧪 Deploying develop branch to STAGING site..."
	@git checkout develop
	@flutter build web --release
	@firebase target:apply hosting develop easypool-30af3
	@firebase hosting:channel:deploy develop --only develop
	@echo "✅ Staging deployment complete!"
	@echo "🌐 URL: https://easypool-30af3--develop-yrpdh4zu.web.app"

deploy-current:
	@echo "🔄 Deploying current branch..."
	@echo "Current branch: $$(git branch --show-current)"
	@echo "For master branch: use 'make deploy-live'"
	@echo "For develop branch: use 'make deploy-staging'"
	@echo "This command doesn't auto-detect - use the specific commands above!"
