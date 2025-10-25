# PowerShell Run Script for Imperial EasyPool Frontend
# Usage: .\run.ps1

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Imperial EasyPool Frontend Development Server" -ForegroundColor Cyan
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
    Write-Host "Running without Google Maps API key" -ForegroundColor Yellow
}

Write-Host "`nStarting Flutter web development server..." -ForegroundColor Cyan
Write-Host "Frontend will be available at: http://localhost:3000" -ForegroundColor Green
Write-Host "Backend API: http://localhost:8000" -ForegroundColor Green
Write-Host "`nPress Ctrl+C to stop" -ForegroundColor Yellow
Write-Host "==================================================" -ForegroundColor Cyan

# Run Flutter with environment variables and no-wasm-dry-run flag
if ($googleMapsApiKey) {
    flutter run -d chrome --web-port=3000 `
        --dart-define=API_BASE_URL=http://localhost:8000 `
        --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey
} else {
    flutter run -d chrome --web-port=3000 `
        --dart-define=API_BASE_URL=http://localhost:8000
}