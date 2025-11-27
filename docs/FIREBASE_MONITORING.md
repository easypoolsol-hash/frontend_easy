# Firebase Monitoring - View Your Reports

## ✅ What's Configured

Your frontend_easy project now has:
- **Firebase Crashlytics** - Crash and error reporting
- **Firebase Performance Monitoring** - Performance metrics
- **Platform Support**: Web (Android/iOS when added later)

## 🔗 Where to View Reports

### Firebase Console Main Dashboard
**URL**: https://console.firebase.google.com

1. Select your project (easypool or your project name)
2. Navigate to different sections:

### 1. Crashlytics Reports
**Path**: Project → Crashlytics
**URL**: `https://console.firebase.google.com/project/YOUR_PROJECT/crashlytics`

**What You'll See:**
- All crashes and errors
- Stack traces with line numbers
- Affected users count
- Crash-free users percentage
- Issue trends over time
- User device information

**Key Features:**
- Auto-grouped similar errors
- Email alerts for new issues
- Integration with Jira/Slack
- Version tracking

### 2. Performance Monitoring
**Path**: Project → Performance
**URL**: `https://console.firebase.google.com/project/YOUR_PROJECT/performance`

**What You'll See:**
- Page load times
- Network request performance
- Custom traces
- Performance trends
- Slow operations

**Metrics Tracked:**
- First Contentful Paint (FCP)
- Time to Interactive (TTI)
- API response times
- Custom performance traces

### 3. Analytics Dashboard
**Path**: Project → Analytics
**URL**: `https://console.firebase.google.com/project/YOUR_PROJECT/analytics`

**What You'll See:**
- User behavior
- Custom events
- User demographics
- Retention metrics
- Conversion funnels

## 📱 Mobile App (Firebase Console)

Download the Firebase Console mobile app:
- **iOS**: App Store - "Firebase Console"
- **Android**: Play Store - "Firebase Console"

**Features:**
- Real-time crash alerts
- Push notifications for critical issues
- Quick issue triage
- View reports on the go

## 🔔 Set Up Alerts

### Email Alerts (Automatic)
Firebase sends daily digest emails by default.

### Configure Custom Alerts:
1. Go to **Firebase Console → Crashlytics**
2. Click **Alerts** tab
3. Set up custom rules:
   - New issue detected
   - Issue regresses
   - Crash-free users drops below X%
   - Velocity alerts (spike in errors)

### Slack Integration:
1. **Firebase Console → Project Settings → Integrations**
2. Click **Slack**
3. Connect your workspace
4. Choose channels for alerts

### Discord Webhook:
1. Create webhook in Discord
2. Use Zapier or n8n to forward Firebase → Discord
3. Or use Cloud Functions for direct integration

## 📊 What Gets Tracked Automatically

### Web Platform (Current)
✅ **Crashlytics:**
- Unhandled exceptions
- Flutter framework errors
- Async errors
- Custom logged errors

✅ **Performance:**
- Page navigation timing
- Network requests (automatic)
- First paint metrics
- Time to interactive

### When Mobile is Added (Android/iOS)
Will automatically track:
- Native crashes
- ANRs (Application Not Responding)
- App start time
- Screen rendering
- Memory usage
- Battery impact

## 🧪 Testing Your Setup

### Test Crashlytics (Don't do in production!)
```dart
// Add a test button
ElevatedButton(
  onPressed: () {
    FirebaseCrashlytics.instance.crash(); // Force crash
  },
  child: Text('Test Crash'),
)
```

### Test Custom Error Logging
```dart
try {
  // Your code
} catch (error, stackTrace) {
  FirebaseCrashlytics.instance.recordError(
    error,
    stackTrace,
    reason: 'User checkout failed',
    information: ['userId: 123', 'cart: items'],
  );
}
```

### Test Performance Monitoring
```dart
import 'package:firebase_performance/firebase_performance.dart';

Future<void> loadDashboard() async {
  final trace = FirebasePerformance.instance.newTrace('load_dashboard');
  await trace.start();

  try {
    // Your loading logic
    await fetchData();
    trace.setMetric('items_loaded', 42);
  } finally {
    await trace.stop();
  }
}
```

## 📈 Best Practices

### 1. Add Custom Context
```dart
// Set user identifier
FirebaseCrashlytics.instance.setUserIdentifier('user_123');

// Add custom keys
FirebaseCrashlytics.instance.setCustomKey('current_screen', 'Dashboard');
FirebaseCrashlytics.instance.setCustomKey('user_role', 'school_admin');
```

### 2. Log Important Events
```dart
FirebaseCrashlytics.instance.log('User navigated to Settings');
```

### 3. Custom Performance Traces
```dart
// Network calls
final trace = FirebasePerformance.instance.newTrace('api_get_students');
await trace.start();
final response = await dio.get('/students');
trace.setMetric('student_count', response.data.length);
await trace.stop();
```

### 4. Network Monitoring (Automatic with Dio)
```dart
// Firebase automatically tracks HTTP requests
// Works with Dio out of the box
```

## 🎯 Quick Access URLs

Replace `YOUR_PROJECT` with your Firebase project ID:

| Service | URL |
|---------|-----|
| **Firebase Console** | https://console.firebase.google.com |
| **Crashlytics** | https://console.firebase.google.com/project/YOUR_PROJECT/crashlytics |
| **Performance** | https://console.firebase.google.com/project/YOUR_PROJECT/performance |
| **Analytics** | https://console.firebase.google.com/project/YOUR_PROJECT/analytics |
| **Project Settings** | https://console.firebase.google.com/project/YOUR_PROJECT/settings/general |

## 🔍 Find Your Project ID

```bash
# Check .firebaserc file
cat .firebaserc

# Or check firebase_options.dart
grep 'projectId' lib/core/config/firebase_options.dart
```

## 📚 Additional Resources

- [Firebase Crashlytics Documentation](https://firebase.google.com/docs/crashlytics)
- [Firebase Performance Documentation](https://firebase.google.com/docs/perf-mon)
- [FlutterFire Documentation](https://firebase.flutter.dev)

## 🚀 Next Steps

1. Deploy your app to production
2. Monitor the Firebase Console dashboard
3. Set up email/Slack alerts
4. Review weekly reports
5. Fix critical issues first (highest impact users)
6. Track performance improvements over time

## 💡 Pro Tips

- **Staging vs Production**: Use different Firebase projects
- **Debug Symbols**: Automatically uploaded for Flutter web
- **Custom Dashboards**: Create in Analytics for key metrics
- **Export Data**: Use BigQuery integration for custom analysis
- **Cost**: Crashlytics and Performance are FREE (no limits)

---

**Everything is configured and ready to go! 🎉**

Start your app and any errors/performance data will automatically appear in the Firebase Console.
