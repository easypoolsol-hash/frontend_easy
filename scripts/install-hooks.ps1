# Install pre-commit hooks for Frontend Easy
# Run once after cloning repo

Write-Host "Installing pre-commit hooks for Frontend Easy..." -ForegroundColor Cyan

# Check if pre-commit is installed
try {
    pre-commit --version | Out-Null
} catch {
    Write-Host "pre-commit not found. Installing..." -ForegroundColor Yellow
    pip install pre-commit
}

# Check if Dart is available
try {
    dart --version | Out-Null
    Write-Host "✅ Dart SDK found" -ForegroundColor Green
} catch {
    Write-Error "❌ Dart SDK not found. Install Flutter SDK first."
    exit 1
}

# Install Imperial Governance dependencies
Write-Host "`nInstalling Imperial Governance dependencies..." -ForegroundColor Cyan
Push-Location imperial_governance
try {
    dart pub get
    Write-Host "✅ Imperial Governance dependencies installed" -ForegroundColor Green
} catch {
    Write-Error "❌ Failed to install Imperial Governance dependencies"
    exit 1
} finally {
    Pop-Location
}

# Install pre-commit hooks
Write-Host "`nInstalling git hooks..." -ForegroundColor Cyan
pre-commit install

# Install commit-msg hook (optional)
try {
    pre-commit install --hook-type commit-msg
} catch {
    # Ignore error if not needed
}

Write-Host "`n✅ Pre-commit hooks installed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "IMPORTANT: Backend hook auto-generates API client" -ForegroundColor Yellow
Write-Host "  - Backend changes trigger OpenAPI schema regeneration" -ForegroundColor Yellow
Write-Host "  - Schema is auto-copied to frontend_easy/" -ForegroundColor Yellow
Write-Host "  - API client is auto-regenerated in packages/frontend_easy_api/" -ForegroundColor Yellow
Write-Host ""
Write-Host "To test hooks without committing:" -ForegroundColor Cyan
Write-Host "  pre-commit run --all-files"
Write-Host ""
Write-Host "To skip hooks (NOT recommended - breaks zero-drift guarantee):" -ForegroundColor Red
Write-Host "  git commit --no-verify"
