# App Icons Setup Guide - Web & Desktop

## Overview
This guide documents the automatic icon generation setup for the EasyPool frontend application using your custom logo across all platforms (web and desktop).

## What Was Configured

### 1. Custom Logo Source
**Location:** `assets/images/logo.png`

This is your EasyPool logo that is now used across:
- Web favicon (browser tab icon)
- PWA app icons (when installed as web app)
- Windows desktop application icon (.ico)
- All web manifest icons

### 2. Automated Icon Generation

**Package:** `flutter_launcher_icons ^0.14.3`

This package automatically generates all required icon sizes and formats from your single logo file.

## Generated Icons

### Web Platform Icons

**Location:** `web/`

1. **favicon.png** - Browser tab icon (16x16, 32x32, 48x48)
   - Replaces the default Flutter logo in browser URLs
   - Automatically generated from your logo

2. **icons/Icon-192.png** - PWA icon (192x192)
   - Used when app is installed on mobile/desktop as PWA
   - Shown in app drawer, home screen

3. **icons/Icon-512.png** - PWA icon (512x512)
   - High-resolution PWA icon
   - Used for splash screens

4. **icons/Icon-maskable-192.png** - Adaptive icon (192x192)
   - Modern Android PWA adaptive icon
   - Supports different shapes (circle, square, rounded)

5. **icons/Icon-maskable-512.png** - Adaptive icon (512x512)
   - High-resolution adaptive icon

**manifest.json** - Automatically updated with icon references

### Windows Desktop Icon

**Location:** `windows/runner/resources/app_icon.ico`

- Multi-resolution .ico file (256x256 primary)
- Used for Windows desktop application
- Shows in taskbar, Start menu, window title bar
- Replaces default Flutter logo in desktop app

## Configuration Details

### pubspec.yaml Configuration

```yaml
flutter_launcher_icons:
  # Disable mobile platforms (web/desktop only project)
  android: false
  ios: false

  # Main app icon
  image_path: "assets/images/logo.png"

  # Web platform (favicon and PWA icons)
  web:
    generate: true
    image_path: "assets/images/logo.png"
    background_color: "#E6A800"
    theme_color: "#E6A800"

  # Windows desktop app (.ico file)
  windows:
    generate: true
    image_path: "assets/images/logo.png"
    icon_size: 256  # Windows .ico file size
```

### Branding Colors
- **Theme Color:** #E6A800 (EasyPool yellow/gold)
- **Background Color:** #E6A800

These colors are used for:
- PWA theme color (address bar on mobile)
- Splash screen background
- Windows tile color

## How to Regenerate Icons

If you update your logo at `assets/images/logo.png`, regenerate all icons with:

```bash
flutter pub run flutter_launcher_icons
```

This single command will:
1. ✓ Generate new favicon
2. ✓ Update all PWA icons (192, 512, maskable versions)
3. ✓ Create new Windows .ico file
4. ✓ Update web/manifest.json

## Best Practices (2025)

### Logo Image Requirements

For best results, your source logo should be:

1. **Format:** PNG with transparent background (recommended)
2. **Size:** At least 1024x1024 pixels
3. **Design:**
   - Simple, clear design that works at small sizes
   - Good contrast for visibility
   - Square aspect ratio (or centered in square canvas)
   - No text smaller than 12pt

### Current Logo Status
✓ Your logo meets requirements: `assets/images/logo.png`

### Platform-Specific Notes

#### Web (favicon.png)
- Automatically replaces Flutter logo in browser URL bar
- Shows in bookmarks, browser tabs, history
- Multiple sizes generated for different browsers

#### PWA Icons
- When user installs web app to device
- Shows in app drawer (mobile) or application menu (desktop)
- Supports adaptive/maskable icons for modern Android

#### Windows Desktop
- .ico file with multiple resolutions embedded
- Shows in taskbar, Start menu, Alt+Tab switcher
- Also used for file associations (if configured)

## Verification

### Web Application
1. Run the web app: `flutter run -d chrome`
2. Check browser tab - should show your logo instead of Flutter icon
3. Check Developer Tools → Application → Manifest
4. Verify icons are listed and load correctly

### Windows Desktop
1. Build Windows app: `flutter build windows`
2. Check compiled .exe icon in File Explorer
3. Run app and check taskbar icon
4. Right-click .exe → Properties → should show your logo

## Common Issues & Solutions

### Issue: Icons still showing Flutter logo after regeneration

**Solution:**
1. Clear browser cache: `Ctrl+Shift+Delete`
2. Hard reload: `Ctrl+Shift+R`
3. Check `web/favicon.png` was actually replaced
4. Rebuild: `flutter build web --release`

### Issue: Windows .ico not updating

**Solution:**
1. Delete: `windows/runner/resources/app_icon.ico`
2. Regenerate: `flutter pub run flutter_launcher_icons`
3. Clean and rebuild: `flutter clean && flutter build windows`

### Issue: PWA icons not showing on installed app

**Solution:**
1. Uninstall PWA completely
2. Clear browser cache
3. Verify `web/manifest.json` has correct icon paths
4. Reinstall PWA

## Files Modified by Icon Generator

The following files are automatically updated:

### Created/Updated:
- ✓ `web/favicon.png`
- ✓ `web/icons/Icon-192.png`
- ✓ `web/icons/Icon-512.png`
- ✓ `web/icons/Icon-maskable-192.png`
- ✓ `web/icons/Icon-maskable-512.png`
- ✓ `web/manifest.json` (icons section)
- ✓ `windows/runner/resources/app_icon.ico`

### Not Modified (manual configuration still valid):
- `web/index.html` (references favicon.png correctly)
- `pubspec.yaml` (assets already configured)

## PWA Manifest Details

The generated `manifest.json` includes:

```json
{
  "name": "EasyPool School Admin Dashboard",
  "short_name": "EasyPool Admin",
  "theme_color": "#E6A800",
  "background_color": "#E6A800",
  "icons": [
    {
      "src": "icons/Icon-192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "icons/Icon-512.png",
      "sizes": "512x512",
      "type": "image/png"
    },
    {
      "src": "icons/Icon-maskable-192.png",
      "sizes": "192x192",
      "type": "image/png",
      "purpose": "maskable"
    },
    {
      "src": "icons/Icon-maskable-512.png",
      "sizes": "512x512",
      "type": "image/png",
      "purpose": "maskable"
    }
  ]
}
```

## Testing Checklist

Before deploying:

- [ ] Web favicon shows in browser tab
- [ ] PWA manifest validates in DevTools
- [ ] All icon URLs load without 404 errors
- [ ] Windows .exe shows custom icon
- [ ] Installed PWA shows custom icon
- [ ] Icons look clear at all sizes
- [ ] No Flutter branding visible anywhere

## Future Updates

When you need to update your logo:

1. Replace `assets/images/logo.png` with new version
2. Run `flutter pub run flutter_launcher_icons`
3. Test on all platforms
4. Deploy updated builds

## Additional Resources

- [flutter_launcher_icons package](https://pub.dev/packages/flutter_launcher_icons)
- [PWA Manifest Documentation](https://developer.mozilla.org/en-US/docs/Web/Manifest)
- [Windows App Icons](https://learn.microsoft.com/en-us/windows/apps/design/style/iconography/app-icon-construction)

---

**Last Updated:** October 2025
**Package Version:** flutter_launcher_icons ^0.14.3
**Platforms:** Web, Windows Desktop
**Status:** ✓ Icons successfully generated and configured
