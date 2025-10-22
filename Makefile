.PHONY: generate clean pub-get

generate:
	@echo "Regenerating API client from OpenAPI spec for frontend_easy..."
	npx @openapitools/openapi-generator-cli generate -c openapi-generator-config.yaml
	@cd packages/frontend_easy_api && flutter pub get
	@echo "API client regenerated for frontend_easy!"

clean:
	@echo "Cleaning frontend_easy generated files..."
	rm -rf packages/frontend_easy_api
	@echo "Cleanup complete!"

pub-get:
	@echo "Getting frontend_easy dependencies..."
	flutter pub get
	@cd packages/frontend_easy_api && flutter pub get
	@echo "Dependencies fetched!"