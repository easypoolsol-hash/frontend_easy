# PowerShell Build Script for Imperial EasyPool Frontend
# Usage: .\build.ps1 [dev|prod]
# Environment: dev, prod (default: dev)

param(
    [string]$Environment = "dev"
)

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Imperial EasyPool Frontend Build Script" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# Load Google Maps API key from parent .env.prod
$envFile = Join-Path $PSScriptRoot "..\.env.prod"
$googleMapsApiKey = $null

if (Test-Path $envFile) {
    Write-Host "Loading environment variables from .env.prod..." -ForegroundColor Green
    $content = Get-Content $envFile
    foreach ($line in $content) {
        if ($line -match "^GOOGLE_MAPS_API_KEY=(.+)$") {
            $googleMapsApiKey = $matches[1].Trim()
            $keyPreview = $googleMapsApiKey.Substring(0, [Math]::Min(20, $googleMapsApiKey.Length))
            Write-Host "Google Maps API Key loaded: $keyPreview..." -ForegroundColor Green
            break
        }
    }
} else {
    Write-Host "Warning: .env.prod not found at $envFile" -ForegroundColor Yellow
    Write-Host "Building without Google Maps API key" -ForegroundColor Yellow
}

# Inject API key into index.html
if ($googleMapsApiKey) {
    Write-Host "Injecting API key into web/index.html..." -ForegroundColor Green
    $indexHtmlPath = Join-Path $PSScriptRoot "web\index.html"
    $indexContent = Get-Content $indexHtmlPath -Raw
    $indexContent = $indexContent -replace '{{GOOGLE_MAPS_API_KEY}}', $googleMapsApiKey
    Set-Content -Path $indexHtmlPath -Value $indexContent -NoNewline
    Write-Host "API key injected successfully!" -ForegroundColor Green
}

# Build based on environment
if ($Environment -eq "prod") {
    Write-Host "`nBuilding for PRODUCTION..." -ForegroundColor Cyan
    if ($googleMapsApiKey) {
        flutter build web --release --no-wasm-dry-run --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey
    } else {
        flutter build web --release --no-wasm-dry-run
    }
} elseif ($Environment -eq "dev") {
    Write-Host "`nBuilding for DEVELOPMENT..." -ForegroundColor Cyan
    if ($googleMapsApiKey) {
        flutter build web --no-wasm-dry-run --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey
    } else {
        flutter build web --no-wasm-dry-run
    }
} else {
    Write-Host "Usage: .\build.ps1 [dev|prod]" -ForegroundColor Red
    Write-Host "Example: .\build.ps1 prod" -ForegroundColor Red
    exit 1
}

Write-Host "`n==================================================" -ForegroundColor Cyan
Write-Host "Build complete! Output in build/web/" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan
