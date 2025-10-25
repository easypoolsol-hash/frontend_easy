# School Dashboard - UI/UX Wireframe & Design System

## Overview
School admin dashboard for monitoring student movement and ensuring student safety throughout the school day.

**Primary User:** School Administrator
**Primary Goal:** Ensure every student who arrived has safely departed
**Scale:** 100 buses, 4000 students

---

## Screen Layout Structure

```
┌─────────────────────────────────────────────────────────────────────┐
│  TOP NAV BAR (AppTopNavBar - shared component)                     │
│  [Home] [Fleet] [School] [Reports] [Profile]                       │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  TIME-BASED TAB BAR                                                │
│  [Morning Arrival] [On Campus] [Afternoon Dismissal] [All Day]    │
│  (Auto-switches based on current time)                             │
│                                                                     │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  ┌─────────────────────────────────────────────────────────────┐  │
│  │ STATUS SUMMARY CARDS (3-card row)                           │  │
│  │                                                              │  │
│  │ ┌────────────┐  ┌────────────┐  ┌────────────┐            │  │
│  │ │ ⚠️ ALERTS  │  │ 🚌 BUSES   │  │ 👥 STUDENTS │            │  │
│  │ │    12      │  │  87/100    │  │  3,687/    │            │  │
│  │ │ Action     │  │  Active    │  │  4,000     │            │  │
│  │ │ Needed     │  │            │  │  Arrived   │            │  │
│  │ └────────────┘  └────────────┘  └────────────┘            │  │
│  └─────────────────────────────────────────────────────────────┘  │
│                                                                     │
│  ┌─────────────────────────────────────────────────────────────┐  │
│  │ MAIN CONTENT AREA (3-COLUMN LAYOUT)                         │  │
│  │                                                              │  │
│  │ ┌─────────┐ ┌──────────────┐ ┌──────────────────────────┐ │  │
│  │ │ LEFT    │ │ CENTER       │ │ RIGHT                     │ │  │
│  │ │ PANEL   │ │ PANEL        │ │ PANEL                     │ │  │
│  │ │ (25%)   │ │ (50%)        │ │ (25%)                     │ │  │
│  │ │         │ │              │ │                           │ │  │
│  │ │ Stats & │ │ Priority     │ │ Quick Actions             │ │  │
│  │ │ Summary │ │ Student List │ │ & Detail View             │ │  │
│  │ │         │ │              │ │                           │ │  │
│  │ │         │ │ Grouped by   │ │ Search Bar                │ │  │
│  │ │         │ │ priority     │ │ Filters                   │ │  │
│  │ │         │ │              │ │ Bulk Actions              │ │  │
│  │ │         │ │              │ │                           │ │  │
│  │ └─────────┘ └──────────────┘ └──────────────────────────┘ │  │
│  └─────────────────────────────────────────────────────────────┘  │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Component Breakdown

### 1. Status Summary Cards (status_summary_cards.dart)

```
┌──────────────────────────────────────────────────────────────┐
│  ⚠️  ALERTS                                                  │
│  12 Students Require Attention                               │
│  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                      │
│  🔴 High Priority: 5                                         │
│  🟡 Medium Priority: 7                                       │
│                                                              │
│  [View All Alerts →]                                         │
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│  🚌 BUSES                                                    │
│  87 / 100 Active                                             │
│  ━━━━━━━━━━━━━━━━━━━━━░░░░░░ 87%                           │
│  ✅ Arrived: 87                                              │
│  🚌 En Route: 13 (avg ETA: 8 min)                           │
│                                                              │
│  [View Bus Status →]                                         │
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│  👥 STUDENTS                                                 │
│  3,687 / 4,000 Arrived                                       │
│  ━━━━━━━━━━━━━━━━━━━━━━░░ 92%                              │
│  ✅ Departed: 3,456                                          │
│  📍 On Campus: 231                                           │
│  🏠 Absent: 109                                              │
│                                                              │
│  [View Details →]                                            │
└──────────────────────────────────────────────────────────────┘
```

**Component:** `StatusSummaryCards`
**Responsibility:** Display high-level metrics only
**Data:** Counts and percentages
**Interaction:** Click to filter main list

---

### 2. Left Panel - Summary & Stats (summary_panel.dart)

```
┌───────────────────────────────────┐
│ 📊 QUICK STATS                    │
├───────────────────────────────────┤
│                                   │
│ Morning Arrival Progress          │
│ ████████████████░░ 92%            │
│ 3,687 / 4,000 students            │
│                                   │
│ ─────────────────────────────     │
│                                   │
│ BUSES                             │
│ ✅ Arrived:    87                 │
│ 🚌 En Route:   13                 │
│ ⏰ Delayed:    2                  │
│ 🔧 Inactive:   3                  │
│                                   │
│ ─────────────────────────────     │
│                                   │
│ STUDENTS BY STATUS                │
│ ✅ Departed:     3,456            │
│ 📍 On Campus:      231            │
│ ⚠️  Attention:       12            │
│ 🏠 Absent:          109            │
│ 🚌 In Transit:       45            │
│                                   │
│ ─────────────────────────────     │
│                                   │
│ BY GRADE                          │
│ Grade 1-2:    🟢 98%              │
│ Grade 3-5:    🟢 95%              │
│ Grade 6-8:    🟡 88%              │
│ Grade 9-12:   🔴 82%              │
│                                   │
└───────────────────────────────────┘
```

**Component:** `SummaryPanel`
**Responsibility:** Detailed breakdown of stats
**Updates:** Real-time (every 30s)

---

### 3. Center Panel - Priority Student List (student_priority_list.dart)

```
┌──────────────────────────────────────────────────────────┐
│  🔴 HIGH PRIORITY (5 students)                           │
│  ─────────────────────────────────────────────────────    │
│                                                          │
│  ┌────────────────────────────────────────────────────┐ │
│  │ 👤 Raj Kumar • 5A • Bus #12        [View Details →]│ │
│  │ ⏰ 08:30 ✅ Arrived | 15:45 ❌ No exit scan        │ │
│  │ ⚠️  Still on campus 1hr 15min after expected time  │ │
│  │ 📞 Parent: +91-98765-43210                          │ │
│  │ [Call] [SMS] [Mark Parent Pickup]                  │ │
│  └────────────────────────────────────────────────────┘ │
│                                                          │
│  ┌────────────────────────────────────────────────────┐ │
│  │ 👤 Priya Singh • 3B • Bus #8       [View Details →]│ │
│  │ ⏰ No morning scan ❌                               │ │
│  │ ⚠️  Expected on Bus #8 but never scanned           │ │
│  │ 📞 Parent: +91-98765-55555                          │ │
│  │ [Call] [SMS] [Mark Absent]                         │ │
│  └────────────────────────────────────────────────────┘ │
│                                                          │
│  [Load More...]                                          │
│                                                          │
├──────────────────────────────────────────────────────────┤
│  🟡 MEDIUM PRIORITY (7 students)    [Expand ▼]         │
├──────────────────────────────────────────────────────────┤
│  🟢 NORMAL - ON CAMPUS (219 students)  [Expand ▼]      │
└──────────────────────────────────────────────────────────┘
```

**Component:** `StudentPriorityList`
**Responsibility:** Grouped list by priority
**Features:**
- Collapsible sections
- Color-coded priorities
- Quick actions per student
- Click to show detail in right panel

---

### 4. Right Panel - Quick Actions & Details (action_panel.dart)

**Default State (No Selection):**

```
┌────────────────────────────────────┐
│ 🔍 QUICK FIND                      │
├────────────────────────────────────┤
│                                    │
│ [Search by name, roll, bus...]    │
│                                    │
│ Quick Filters:                     │
│ [ ] Show only alerts               │
│ [ ] Show on campus                 │
│ [ ] Show departed                  │
│                                    │
│ Grade: [All ▼]                     │
│ Bus Route: [All ▼]                 │
│ Status: [All ▼]                    │
│                                    │
│ ─────────────────────────────      │
│                                    │
│ 📤 BULK ACTIONS                    │
│                                    │
│ Send SMS to:                       │
│ □ All alert parents                │
│ □ Bus #12 parents                  │
│ □ Grade 5 parents                  │
│                                    │
│ [Send Message]                     │
│                                    │
│ ─────────────────────────────      │
│                                    │
│ 📊 EXPORT                          │
│ [Download Report]                  │
│ [Print Summary]                    │
│                                    │
└────────────────────────────────────┘
```

**Selected Student State:**

```
┌────────────────────────────────────┐
│ 👤 STUDENT DETAILS                 │
│ [← Back to Actions]                │
├────────────────────────────────────┤
│                                    │
│ Raj Kumar                          │
│ Roll: 5A-023                       │
│ Grade: 5A                          │
│ Bus Route: #12 (Morning & Evening) │
│                                    │
│ ─────────────────────────────      │
│                                    │
│ TODAY'S JOURNEY                    │
│                                    │
│ 07:45 🚌 Boarded                   │
│       Bus #12, Stop #3             │
│       Kalyan Nagar                 │
│                                    │
│ 08:30 ✅ Arrived                   │
│       School Main Gate             │
│       Face Scan: ✓ Matched         │
│                                    │
│ 14:30 ⏱️ Expected                  │
│       Afternoon Route #12          │
│                                    │
│ 15:45 ❌ NO SCAN                   │
│       Bus departed at 15:00        │
│       ⚠️ MISSING!                   │
│                                    │
│ ─────────────────────────────      │
│                                    │
│ 📞 CONTACT                         │
│ Father: Mr. Kumar                  │
│ +91-98765-43210                    │
│ [📱 Call] [💬 SMS]                 │
│                                    │
│ Mother: Mrs. Kumar                 │
│ +91-98765-99999                    │
│ [📱 Call] [💬 SMS]                 │
│                                    │
│ ─────────────────────────────      │
│                                    │
│ 🚨 QUICK ACTIONS                   │
│ [✅ Mark Parent Pickup]            │
│ [🚌 Assign Alternate Bus]          │
│ [📋 View Full History]             │
│ [📝 Add Note]                      │
│                                    │
└────────────────────────────────────┘
```

**Component:** `ActionPanel`
**Responsibility:**
- Search & filter
- Bulk actions
- Student detail view
**State:** Changes based on selection

---

## Student Movement Event Timeline

**Data Model: StudentMovementEvent**

```dart
{
  "eventType": "BOARDED" | "ALIGHTED" | "EXPECTED" | "MISSED",
  "timestamp": DateTime,
  "location": {
    "type": "BUS_STOP" | "SCHOOL_GATE" | "BUS",
    "name": "Stop #3, Kalyan Nagar" | "Main Gate" | "Bus #12"
  },
  "verificationMethod": "FACE_SCAN" | "RFID" | "MANUAL",
  "verified": true | false,
  "busRoute": "Route #12",
  "notes": "Optional notes"
}
```

**Timeline Rendering:**
- ✅ Green checkmark = Completed event
- ❌ Red X = Missed/No scan
- ⏱️ Clock = Expected but pending
- 🚌 Bus icon = Bus-related event
- 🏫 School icon = School gate event

---

## Color Coding System

### Priority Levels
- 🔴 **High Priority** (Red): `Colors.red[50]` background, `Colors.red[700]` text
  - Missing expected scan >1 hour
  - Arrived but no departure after school hours
  - Bus mismatch (wrong bus scanned)

- 🟡 **Medium Priority** (Amber): `Colors.amber[50]` background, `Colors.amber[900]` text
  - Expected scan pending <1 hour
  - Waiting for bus (normal)
  - Late arrival

- 🟢 **Normal** (Green): `Colors.green[50]` background, `Colors.green[700]` text
  - Journey complete
  - On campus during school hours

### Status Colors
- **Departed**: Green
- **On Campus**: Blue
- **Attention Required**: Red
- **Absent**: Grey
- **In Transit**: Orange

---

## Responsive Breakpoints

### Desktop (>1200px)
- 3-column layout: 25% | 50% | 25%
- All panels visible

### Tablet (768px - 1200px)
- 2-column layout: 40% | 60%
- Right panel becomes slide-out drawer
- Summary panel collapsible

### Mobile (<768px)
- Single column
- Tabs for panels
- Bottom sheet for details

---

## Auto-Refresh Strategy

- **Status cards**: Update every 30 seconds
- **Student list**: Update every 1 minute
- **Alert count**: Real-time via WebSocket (future)
- **Detail view**: On-demand refresh button

---

## Mock Data Markers

All mock data will be clearly marked with:
```dart
// 🚨 MOCK DATA - Remove before production
// TODO: Replace with actual API call
```

Mock data files will have `_mock` suffix:
- `student_movement_mock_data.dart`
- `alert_mock_provider.dart`

---

## File Structure

```
lib/features/school/
├── models/
│   ├── student_movement_event.dart
│   ├── student_status.dart
│   ├── priority_level.dart
│   └── school_dashboard_summary.dart
├── presentation/
│   ├── screens/
│   │   └── school_dashboard_screen.dart
│   └── widgets/
│       ├── status_summary_cards.dart
│       ├── summary_panel.dart
│       ├── student_priority_list.dart
│       ├── student_movement_card.dart
│       ├── action_panel.dart
│       └── student_detail_view.dart
├── providers/
│   ├── school_dashboard_provider.dart
│   └── student_movement_mock_provider.dart  // 🚨 MOCK - Remove later
└── WIREFRAME.md  (this file)
```

---

## Future Enhancements (Not in MVP)

- [ ] Real-time WebSocket updates
- [ ] SMS integration
- [ ] Call integration
- [ ] PDF report generation
- [ ] Historical data charts
- [ ] Attendance analytics
- [ ] Parent notification history
- [ ] Custom alert rules

---

## Notes for Developer

1. **Mock Data Strategy:**
   - All mock data in separate files with `_mock` suffix
   - Clear `// 🚨 MOCK DATA` comments
   - Easy to search and remove: `grep -r "🚨 MOCK" lib/features/school/`

2. **Single Responsibility:**
   - Each widget handles ONE thing
   - No business logic in widgets
   - All data from providers

3. **Reusable Components:**
   - Timeline widget can be reused for history view
   - Status cards reusable for other dashboards
   - Action buttons extracted to shared components

4. **Accessibility:**
   - Semantic labels for screen readers
   - Color not the only indicator (use icons + text)
   - Keyboard navigation support
