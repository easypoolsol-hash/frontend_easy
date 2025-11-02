# PowerShell Run Script for Imperial EasyPool Frontend
# Usage: .\run.ps1

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Imperial EasyPool Frontend Development Server" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# HARDCODED Google Maps API Key - DO NOT LOAD FROM .env
$googleMapsApiKey = "AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI"

Write-Host "Using HARDCODED Google Maps API Key: AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI" -ForegroundColor Green

Write-Host "`nStarting Flutter web development server..." -ForegroundColor Cyan
Write-Host "Frontend will be available at: http://localhost:3000" -ForegroundColor Green
Write-Host "Backend API: http://localhost:8000" -ForegroundColor Green
Write-Host "`nPress Ctrl+C to stop" -ForegroundColor Yellow
Write-Host "==================================================" -ForegroundColor Cyan

# Run Flutter with HARDCODED Google Maps API key
flutter run -d chrome --web-port=3000 `
    --dart-define=API_BASE_URL=http://localhost:8000 `
    --dart-define=GOOGLE_MAPS_API_KEY=$googleMapsApiKey