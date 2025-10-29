# EasyPool Admin Dashboard - Desktop Installation Guide

## For School Administrators (40-50 years old - Simple Instructions)

This guide will help you install the EasyPool Admin Dashboard as a **desktop application** on your Windows computer.

---

## What You'll Get

After installation, you'll have:
- ✅ **Desktop icon** - Just like Microsoft Word or Excel
- ✅ **Standalone window** - No browser address bar or tabs
- ✅ **Auto-start option** - Opens automatically when you turn on your computer
- ✅ **Always up-to-date** - Updates automatically, no reinstallation needed

---

## Step-by-Step Installation (5 minutes)

### Step 1: Open the Website
1. Open **Google Chrome** browser (must be Chrome or Edge)
2. Type this URL in the address bar: `http://localhost:8080` (or the URL provided by IT)
3. Press **Enter**

### Step 2: Login
1. Enter your **username** (provided by IT)
2. Enter your **password**
3. Click **Login**

### Step 3: Install as Desktop App
Look at the **right side of the address bar** at the top of Chrome:

You'll see a small **computer icon** with a down arrow (⤓) or an **install icon** (⊕)

**Click this icon** → A popup will appear

Click **"Install"** button

**That's it!** The app is now installed.

### Step 4: Find Your Desktop Icon
- Check your **Desktop** - You'll see "EasyPool Admin" icon
- Also check **Start Menu** → Search for "EasyPool"

---

## How to Use

### Opening the App
**Double-click** the "EasyPool Admin" icon on your desktop

The app opens in its own window (no browser tabs!)

### Daily Usage
1. **Morning**: Double-click icon → See all buses on map
2. **Keep open all day**: Leave it running to monitor real-time updates
3. **Minimize**: Click the minimize button (–) to hide it while working on other tasks
4. **Close**: Click the X button when done for the day

### Right-Click Shortcuts
**Right-click** the desktop icon to see quick options:
- **Bus Tracking Map** - Opens directly to live bus map
- **Dashboard** - Opens to main overview

---

## Troubleshooting

### "I don't see the install icon"
- Make sure you're using **Google Chrome** or **Microsoft Edge**
- Firefox and Safari don't support desktop installation
- Ask IT to install Chrome if you don't have it

### "The icon disappeared from my desktop"
- Go to **Start Menu** → Search "EasyPool"
- Right-click the app → **Pin to taskbar** or **Pin to Start**

### "I want to uninstall it"
**Option 1**: Right-click desktop icon → **Uninstall**
**Option 2**: Chrome Settings → Apps → Find "EasyPool Admin" → Remove

### "It's not updating"
- Close the app completely
- Open it again
- It will automatically download updates

---

## For IT Department

### Technical Details
- **Technology**: Progressive Web App (PWA)
- **Requirements**: Chrome 67+ or Edge 79+
- **Size**: ~5MB (uses browser cache)
- **Updates**: Automatic via service worker
- **Offline**: Basic caching enabled

### Server URL Configuration
When deploying to production server, update the URL in Step 1 to:
```
https://easypool.yourschool.com
```

### Auto-Start Configuration
To make app start automatically on Windows boot:
1. Press **Win + R**
2. Type: `shell:startup`
3. Press **Enter**
4. Copy the app shortcut to this folder

### Group Policy Deployment
For multiple computers, use Chrome Enterprise policy:
```json
{
  "WebAppInstallForceList": [{
    "url": "https://easypool.yourschool.com",
    "default_launch_container": "window"
  }]
}
```

---

## Support Contact

If you have any issues:
- **Email**: support@easypool.com (update with your support email)
- **Phone**: XXX-XXX-XXXX (update with your support phone)
- **IT Help Desk**: Contact your school IT department

---

## Screenshots

### Chrome Install Button Location
```
┌─────────────────────────────────────────────────────┐
│ ← → http://localhost:8080          ⭐ 👤 [⊕Install] │  ← Click here!
└─────────────────────────────────────────────────────┘
```

### Desktop Icon After Installation
```
┌──────────┐
│  🚌      │
│ EasyPool │
│  Admin   │
└──────────┘
```

---

**Version**: 1.0
**Last Updated**: October 2025
**Prepared for**: School Administrators
