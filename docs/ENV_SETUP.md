# Environment Setup for Google Maps API Key

## Overview
The Google Maps API key is stored in the root `.env.prod` file and needs to be injected into the Flutter app during build/run.

## File Locations
```
Imperial_easypool/
├── .env.prod                    # Contains GOOGLE_MAPS_API_KEY
└── frontend_easy/
    ├── web/index.html           # Needs {{GOOGLE_MAPS_API_KEY}} replaced
    └── lib/features/map/widgets/maps_config.dart  # Uses String.fromEnvironment
```

## How It Works

### 1. Development (Running Locally)

**Option A: PowerShell (Windows - RECOMMENDED)**
```powershell
cd frontend_easy
.\run.ps1
```

**Option B: Makefile (Linux/Mac/WSL)**
```bash
cd frontend_easy
make run-web
```

**Option C: Root Makefile**
```bash
# From project root
make frontend
```

### 2. Building for Production

**Option A: PowerShell (Windows - RECOMMENDED)**
```powershell
cd frontend_easy
.\build.ps1 prod
```

**Option B: Bash Script**
```bash
cd frontend_easy
./build.sh prod
```

**Option C: Makefile**
```bash
cd frontend_easy
make build-web
```

## What Each Script Does

### run.ps1 / run.sh
1. Reads `GOOGLE_MAPS_API_KEY` from `../.env.prod`
2. Passes it via `--dart-define=GOOGLE_MAPS_API_KEY=...`
3. Also passes `--dart-define=API_BASE_URL=http://localhost:8000`
4. Starts Flutter dev server on port 3000

### build.ps1 / build.sh
1. Reads `GOOGLE_MAPS_API_KEY` from `../.env.prod`
2. **Injects it into `web/index.html`** (replaces `{{GOOGLE_MAPS_API_KEY}}`)
3. Passes it via `--dart-define` to Dart code
4. Builds optimized production web app

## How Dart Code Accesses It

```dart
// In maps_config.dart
const String googleMapsApiKey = String.fromEnvironment(
  'GOOGLE_MAPS_API_KEY',
  defaultValue: 'YOUR_API_KEY_HERE'
);
```

The key is injected at **compile time** via `--dart-define`.

## How HTML Accesses It

```html
<!-- In web/index.html -->
<script src="https://maps.googleapis.com/maps/api/js?key={{GOOGLE_MAPS_API_KEY}}&loading=async"></script>
```

The `{{GOOGLE_MAPS_API_KEY}}` placeholder is **replaced at build time** by the build scripts.

## Troubleshooting

### "Google Maps API Key Required" Error
**Problem**: Key not injected properly

**Solution**:
1. Verify `.env.prod` exists in project root
2. Check that `GOOGLE_MAPS_API_KEY=...` line exists
3. Use the PowerShell/Bash scripts instead of direct `flutter run`

### Key Shows as "YOUR_API_KEY_HERE"
**Problem**: `--dart-define` not passed

**Solution**: Use `run.ps1` or `make run-web` instead of plain `flutter run`

### Map Doesn't Load in Browser
**Problem**: `web/index.html` still has placeholder

**Solution**:
1. Check if `{{GOOGLE_MAPS_API_KEY}}` is still in `web/index.html`
2. Run `build.ps1` or `build.sh` to inject the key
3. Or manually replace it with your actual key

## Quick Commands

### Development (Port 3000)
```powershell
# Windows
cd frontend_easy
.\run.ps1

# Linux/Mac
cd frontend_easy
make run-web
```

### Build for Production
```powershell
# Windows
cd frontend_easy
.\build.ps1 prod

# Linux/Mac
cd frontend_easy
make build-web
```

### Check if Key is Loaded
```powershell
# Windows
Get-Content ..\.env.prod | Select-String GOOGLE_MAPS_API_KEY

# Linux/Mac
grep GOOGLE_MAPS_API_KEY ../.env.prod
```

## Security Notes

- ✅ `.env.prod` is in `.gitignore` (never committed)
- ✅ API key has domain restrictions in Google Cloud Console
- ✅ Only Maps JavaScript API and Embed API are enabled
- ⚠️ The key will be visible in production HTML source (this is normal for web apps)
- ⚠️ Use HTTP referrer restrictions in Google Cloud Console to prevent abuse
