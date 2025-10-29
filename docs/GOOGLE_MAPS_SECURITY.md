# Google Maps API Key Security Guide

## Overview
This guide explains how to securely manage the Google Maps API key for the Imperial EasyPool frontend application.

## Security Best Practices

### 1. API Key Storage
- **NEVER commit API keys to version control**
- Store keys in separate config files that are in `.gitignore`
- Use different keys for development and production

### 2. API Key Restrictions
In Google Cloud Console, restrict your API key to:
- **Application restrictions**: HTTP referrers (web apps) or IP addresses (server apps)
- **API restrictions**: Only enable required APIs (Maps JavaScript API, Maps Embed API)

### 3. Environment Separation
- Use different API keys for dev/staging/production
- Dev keys can have looser restrictions
- Production keys should be tightly restricted

## Setup Instructions

### 1. Get Google Maps API Key
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create/select a project
3. Enable APIs: Maps JavaScript API, Maps Embed API
4. Create credentials (API Key)

### 2. Configure API Key Restrictions
1. Go to Credentials → Select your API key
2. **Application restrictions**:
   - Choose "HTTP referrers"
   - Add your domains:
     - `localhost:53173` (development)
     - `easypool.in` (production)
3. **API restrictions**:
   - Restrict to: Maps JavaScript API, Maps Embed API

### 3. Add Key to Flutter App
1. The key is already configured in `lib/core/config/maps_config.dart`
2. This file is in `.gitignore` to prevent accidental commits
3. Replace the placeholder key with your actual key

### 4. Verify Setup
1. Run the app: `flutter run -d chrome --web-port=53173`
2. Check browser console for any API key errors
3. Maps should load without authentication errors

## Security Checklist

- [ ] API key is not in version control (.gitignore configured)
- [ ] API key has application restrictions (HTTP referrers)
- [ ] API key has API restrictions (only required APIs)
- [ ] Different keys for dev/prod environments
- [ ] Key usage monitored in Google Cloud Console
- [ ] Key rotation plan in place (rotate annually)

## Troubleshooting

### "Google Maps API error: InvalidKey"
- Check if key is correct in `maps_config.dart`
- Verify API restrictions allow your domain

### "Google Maps API error: RefererNotAllowed"
- Add your development domain to HTTP referrers
- For production, ensure domain is whitelisted

### "Google Maps API error: ApiNotActivated"
- Enable required APIs in Google Cloud Console

## Additional Resources
- [Google Maps Platform Documentation](https://developers.google.com/maps/documentation)
- [API Key Best Practices](https://developers.google.com/maps/api-key-best-practices)
- [Restricting API Keys](https://developers.google.com/maps/api-security-best-practices#restricting-api-keys)
