# PowerShell Build Script for Imperial EasyPool Frontend
# Usage: .\build.ps1 [dev|prod]
# Environment: dev, prod (default: dev)

param(
    [string]$Environment = "dev"
)

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Imperial EasyPool Frontend Build Script" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# HARDCODED Google Maps API Key - DO NOT LOAD FROM .env
$googleMapsApiKey = "AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI"

Write-Host "Using HARDCODED Google Maps API Key: AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI" -ForegroundColor Green

# Build based on environment
if ($Environment -eq "prod") {
    Write-Host "`nBuilding for PRODUCTION..." -ForegroundColor Cyan
    flutter build web --release --no-wasm-dry-run --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey
} elseif ($Environment -eq "dev") {
    Write-Host "`nBuilding for DEVELOPMENT..." -ForegroundColor Cyan
    flutter build web --no-wasm-dry-run --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey
} else {
    Write-Host "Usage: .\build.ps1 [dev|prod]" -ForegroundColor Red
    Write-Host "Example: .\build.ps1 prod" -ForegroundColor Red
    exit 1
}

Write-Host "`n==================================================" -ForegroundColor Cyan
Write-Host "Build complete! Output in build/web/" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan
