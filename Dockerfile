# ============================================================================
# MULTI-STAGE DOCKERFILE - 2025 BEST PRACTICE
# ============================================================================
# Stage 1: Generate API Client
# Stage 2: Build Flutter Web App
# Stage 3: Production Image (nginx)
# ============================================================================

# ----------------------------------------------------------------------------
# STAGE 1: API CLIENT GENERATION
# ----------------------------------------------------------------------------
FROM node:20-alpine AS api-generator

WORKDIR /gen

# Copy ONLY OpenAPI schema (SSOT)
COPY openapi-schema.yaml .

# Generate API client using dart-dio + json_serializable
RUN npx @openapitools/openapi-generator-cli generate \
    -i openapi-schema.yaml \
    -g dart-dio \
    -o output \
    --additional-properties=pubName=frontend_easy_api,useEnumExtension=true,serializationLibrary=json_serializable

# Fix SDK version for Dart 3.9+ (null-aware-elements support)
RUN sed -i 's/sdk: .*/sdk: ">=3.9.0 <4.0.0"/' output/pubspec.yaml

# ----------------------------------------------------------------------------
# STAGE 2: FLUTTER BUILD
# ----------------------------------------------------------------------------
FROM ghcr.io/cirruslabs/flutter:3.35.6 AS builder

WORKDIR /app

# Copy generated API client from previous stage
COPY --from=api-generator /gen/output /app/packages/frontend_easy_api

# Copy app source (NOT node_modules, NOT .dart_tool)
COPY pubspec.yaml pubspec.lock ./
COPY lib/ ./lib/
COPY web/ ./web/
COPY assets/ ./assets/
COPY imperial_governance/ ./imperial_governance/

# Install dependencies
RUN flutter pub get

# Install generated API package dependencies
WORKDIR /app/packages/frontend_easy_api
RUN flutter pub get

# Run build_runner for JSON serialization
RUN dart run build_runner build --delete-conflicting-outputs

# Back to app root
WORKDIR /app

# Run constitutional enforcement (MUST PASS)
RUN cd imperial_governance && dart pub get && cd .. && \
    dart run imperial_governance/enforcement/constitutional_enforcement.dart

# Build optimized web app
RUN flutter build web --release --web-renderer canvaskit

# ----------------------------------------------------------------------------
# STAGE 3: PRODUCTION (Nginx)
# ----------------------------------------------------------------------------
FROM nginx:alpine AS production

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy built Flutter web app
COPY --from=builder /app/build/web /usr/share/nginx/html

# Copy custom nginx config (optional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
