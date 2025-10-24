# Map Modes Explanation

The fleet map has 4 different viewing modes to help you visualize routes, stops, and buses in different ways.

## 1. Overview Mode 🗺️
**Best for: Seeing the big picture**

Shows ALL routes, stops, and buses on a single map view.

**What you see:**
- ✅ All routes (colored lines)
- ✅ All bus stops (numbered markers)
- ✅ All active buses (bus icons with real-time location)

**When to use:**
- Morning planning: "Which buses are running today?"
- Quick status check: "Are all routes covered?"
- Finding patterns: "Where do routes overlap?"

**Example:**
```
School Admin logs in at 7:00 AM
→ Opens Overview mode
→ Sees all 6 routes active
→ Notices Route 3 has no bus assigned
→ Contacts operations team
```

---

## 2. Route Focus Mode 🎯
**Best for: Deep diving into a single route**

Shows ONLY the selected route with its stops and assigned bus.

**What you see:**
- ✅ ONE route (highlighted)
- ✅ That route's stops only
- ✅ The bus assigned to that route
- ❌ Other routes (hidden for clarity)

**When to use:**
- Planning a new route: "Does this path make sense?"
- Troubleshooting delays: "Where is Bus 5 on Route 3?"
- Sharing with parents: "This is your child's route"

**Example:**
```
Parent complaint: "Bus is late on Airport Shuttle route"
→ School Admin selects "Airport Shuttle" route
→ Sees bus stuck at Belgharia stop
→ Calls driver to check traffic issue
```

---

## 3. Stop Management Mode 📍
**Best for: Managing bus stops and student pickups**

Shows ALL bus stops as large interactive markers.

**What you see:**
- ✅ All bus stops (prominent markers)
- ✅ Stop names and details
- ✅ Students assigned to each stop
- ⚠️ Routes (faded/dimmed background)

**When to use:**
- Adding new students: "Which stop is closest to their home?"
- Optimizing routes: "Can we merge stops that are close together?"
- Safety audits: "Are all stops in safe locations?"

**Example:**
```
New student registration: Lives near Salt Lake
→ Admin opens Stop Management mode
→ Clicks "Salt Lake Sector 5" stop
→ Sees 12 students already assigned
→ Adds new student to that stop
```

---

## 4. Live Operations Mode 🚌
**Best for: Real-time monitoring and emergency response**

Shows ONLY live bus locations with real-time tracking.

**What you see:**
- ✅ All active buses (large icons)
- ✅ Real-time GPS location
- ✅ Bus speed and heading
- ⚠️ Routes (faded background for context)
- ❌ Stops (hidden to reduce clutter)

**When to use:**
- Morning/afternoon operations: "Are all buses moving?"
- Emergency response: "Which bus is closest to the incident?"
- Parent inquiries: "Where is my child's bus right now?"

**Example:**
```
Emergency: Student left bag on Bus 7
→ Operations team opens Live Operations mode
→ Sees Bus 7 is at Esplanade stop
→ Calls driver immediately
→ Driver retrieves bag before next route
```

---

## Map Controls (Available in All Modes)

### Zoom Controls (Bottom Right)
- **[+] Button**: Zoom in (see more detail)
- **[-] Button**: Zoom out (see wider area)
- **[📍] Button**: Center map on Kolkata (Victoria Memorial)

### Layer Toggles (Top Bar)
- **Routes Toggle**: Show/hide route lines
- **Stops Toggle**: Show/hide bus stop markers
- **Buses Toggle**: Show/hide live bus positions

---

## Quick Decision Guide

**Need to...**
- See everything at once → **Overview Mode**
- Investigate one route → **Route Focus Mode**
- Manage student stops → **Stop Management Mode**
- Track buses live → **Live Operations Mode**

---

## Technical Notes

### Route Colors
- Colors are randomly assigned by the frontend for visual distinction
- Each route gets a unique color from a predefined palette
- Colors persist during the session for consistency

### Real-Time Updates
- Bus locations refresh every 30 seconds
- Live Operations mode shows most recent position
- Internet connection required for real-time tracking

### Data Source
- Routes: Loaded from backend database
- Stops: Part of route configuration
- Buses: Real-time GPS data from bus kiosk devices

### Map Provider
- Base map: Google Maps
- Coordinates: Kolkata, India (22.5726°N, 88.3639°E)
- Zoom levels: 5 (country) to 18 (street)
