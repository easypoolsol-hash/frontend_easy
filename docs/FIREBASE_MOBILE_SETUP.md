# Firebase Crashlytics & Performance Setup for Mobile

## Current Status
✅ Web platform is fully configured with:
- Firebase Crashlytics
- Firebase Performance Monitoring

## When Adding Android/iOS Support

### Prerequisites
1. Create Android and iOS platforms:
```bash
flutter create --platforms=android,ios .
```

### Android Configuration

#### 1. Update `android/build.gradle`:
```gradle
buildscript {
    dependencies {
        classpath 'com.google.gms:google-services:4.4.0'
        classpath 'com.google.firebase:firebase-crashlytics-gradle:3.0.0'
        classpath 'com.google.firebase:perf-plugin:1.4.2'
    }
}
```

#### 2. Update `android/app/build.gradle`:
```gradle
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "dev.flutter.flutter-gradle-plugin"
}

// Add these Firebase plugins
apply plugin: 'com.google.gms.google-services'
apply plugin: 'com.google.firebase.crashlytics'
apply plugin: 'com.google.firebase.firebase-perf'

android {
    // ... existing config
}

dependencies {
    // Firebase dependencies are auto-added by FlutterFire
}
```

#### 3. Add `google-services.json`:
- Download from Firebase Console
- Place in `android/app/google-services.json`

### iOS Configuration

#### 1. Update `ios/Podfile`:
```ruby
# Uncomment this line
platform :ios, '12.0'

# Add Firebase pods (handled automatically by FlutterFire CLI)
```

#### 2. Add `GoogleService-Info.plist`:
- Download from Firebase Console
- Place in `ios/Runner/GoogleService-Info.plist`
- Add to Xcode project

#### 3. Enable Crashlytics in Xcode:
1. Open `ios/Runner.xcworkspace` in Xcode
2. Add run script build phase (before "Run Script" phase):
```bash
"${PODS_ROOT}/FirebaseCrashlytics/run"
```

### FlutterFire CLI (Easiest Method)

Install FlutterFire CLI:
```bash
dart pub global activate flutterfire_cli
```

Configure Firebase for all platforms:
```bash
flutterfire configure
```

This automatically:
- Creates Firebase projects for Android/iOS
- Downloads config files
- Updates gradle/podfile configurations

### Testing Crashlytics

Add a test crash button:
```dart
// Test crash
ElevatedButton(
  onPressed: () {
    FirebaseCrashlytics.instance.crash();
  },
  child: Text('Test Crash'),
)
```

### Testing Performance Monitoring

Custom traces:
```dart
final trace = FirebasePerformance.instance.newTrace('load_dashboard');
await trace.start();

// Your code here
await Future.delayed(Duration(seconds: 2));

trace.setMetric('items_loaded', 42);
await trace.stop();
```

## View Reports

All platforms report to the same Firebase Console:

### Crashlytics
https://console.firebase.google.com/project/YOUR_PROJECT/crashlytics

### Performance
https://console.firebase.google.com/project/YOUR_PROJECT/performance

### Analytics
https://console.firebase.google.com/project/YOUR_PROJECT/analytics

## Important Notes

- **Web**: Performance monitoring works automatically (already configured)
- **Android**: Requires gradle plugins
- **iOS**: Requires Xcode build phase script
- **All platforms**: Share the same Firebase project and console

## Troubleshooting

### Android Build Issues
```bash
cd android
./gradlew clean
./gradlew build
```

### iOS Build Issues
```bash
cd ios
pod install --repo-update
```

### Missing Symbols (iOS)
Upload debug symbols to Firebase:
```bash
# Automatically handled by Xcode run script
```

## Next Steps After Adding Mobile

1. Run `flutterfire configure` to set up all platforms
2. Test on physical devices
3. Submit test crashes
4. Verify reports in Firebase Console
5. Set up alerts in Firebase Console → Crashlytics → Alerts
