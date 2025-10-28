# Imperial EasyPool Frontend

Multi-platform Flutter application (Web, iOS, Android) for school bus management system with Firebase authentication and automated deployment.

## � **Development Lifecycle**

### **Git Workflow: Develop → Master → Production**

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   develop   │ -> │   master    │ -> │ Production  │
│             │    │             │    │             │
│ • Features  │    │ • Stable    │    │ • Live App  │
│ • Testing   │    │ • Releases  │    │ • Firebase  │
│ • CI/CD     │    │ • Merges    │    │ • Hosting   │
└─────────────┘    └─────────────┘    └─────────────┘
```

### **Branch Strategy**

- **`develop`**: Active development branch
  - All new features and bug fixes
  - Continuous integration testing
  - Safe experimentation environment

- **`master`**: Production-ready branch
  - Stable, tested code only
  - Automatic deployment to Firebase Hosting
  - Release candidates

### **Workflow Steps**

1. **Start Development**
   ```bash
   git checkout develop
   git pull origin develop
   ```

2. **Create Feature Branch** (optional)
   ```bash
   git checkout -b feature/new-feature
   ```

3. **Develop & Test**
   ```bash
   flutter run -d web-server  # Test locally
   flutter test               # Run tests
   ```

4. **Commit Changes**
   ```bash
   git add .
   git commit -m "feat: Add new feature"
   git push origin develop
   ```

5. **Merge to Master** (when ready for production)
   ```bash
   git checkout master
   git merge develop
   git push origin master
   ```

6. **Automatic Deployment**
   - GitHub Actions triggers on `master` push
   - Builds Flutter app
   - Deploys to Firebase Hosting
   - App updates live at: https://easypool-30af3.web.app

## 📋 **Prerequisites**

- Flutter SDK (^3.9.2)
- Dart SDK (^3.9.2)
- Firebase CLI (for deployment)
- GitHub repository access

## 🔧 **Setup & Installation**

### **1. Clone Repository**
```bash
git clone <repository-url>
cd frontend_easy
```

### **2. Install Dependencies**
```bash
flutter pub get
```

### **3. Firebase Setup**
```bash
# Login to Firebase
firebase login

# Use project
firebase use easypool-30af3
```

### **4. Environment Configuration**
Create `.env` file:
```env
GOOGLE_MAPS_API_KEY=your_api_key_here
```

## 🏃 **Running the Application**

### **Development Mode**
```bash
# Start on develop branch
git checkout develop

# Run locally
flutter run -d web-server

# Or with custom port
flutter run -d web-server --web-port=3000
```

### **Production Build**
```bash
flutter build web --release
```

## 🚀 **Deployment Process**

### **Multi-Environment Deployment**

We use **Firebase Hosting Channels** for separate staging and production environments:

- **Staging (Develop)**: [https://easypool-30af3--develop.web.app](https://easypool-30af3--develop.web.app)
  - Deployed automatically on every `develop` branch push
  - Test new features safely before production

- **Production (Master)**: [https://easypool-30af3.web.app](https://easypool-30af3.web.app)
  - Deployed automatically on `master` branch merges
  - Live production environment

### **Automatic Deployment (Recommended)**

1. **Work on `develop`** branch
2. **Test thoroughly** locally and on staging
3. **Merge to `master`** when ready for production
4. **GitHub Actions** automatically deploys to production

### **Manual Deployment**

```bash
# Deploy to staging (develop channel)
flutter build web --release
firebase hosting:channel:deploy develop

# Deploy to production (live channel)
flutter build web --release
firebase deploy --only hosting
```

### **GitHub Actions CI/CD**

- **Develop Branch**: Deploys to staging channel for testing
- **Master Branch**: Deploys to production for live users
- **Automated**: No manual intervention needed

## 🔐 **Authentication**

- **Firebase Authentication** for user login
- **Email/Password** authentication
- **Secure token management**
- **Automatic logout on session expiry**

## 🧪 **Testing**

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run integration tests
flutter test integration_test/
```

## 📁 **Project Structure**

```
frontend_easy/
├── lib/                          # Flutter source code
│   ├── core/                    # Core functionality
│   │   ├── config/             # Firebase & API config
│   │   ├── routing/            # App navigation
│   │   └── services/           # Firebase services
│   ├── features/               # Feature modules
│   │   ├── auth/               # Authentication
│   │   ├── fleet/              # Bus management
│   │   ├── home/               # Dashboard
│   │   └── map/                # Maps integration
│   └── shared/                 # Shared components
├── packages/
│   └── frontend_easy_api/      # Generated API client
├── .github/workflows/          # CI/CD pipelines
├── build/web/                  # Built web app (generated)
├── firebase.json              # Firebase hosting config
├── .firebaserc               # Firebase project config
└── pubspec.yaml              # Flutter dependencies
```

## 🔄 **Git Branch Management**

### **Daily Workflow**
```bash
# Start working
git checkout develop
git pull origin develop

# Make changes
# ... develop code ...

# Commit
git add .
git commit -m "feat: Add new feature"
git push origin develop

# Deploy to production
git checkout master
git merge develop
git push origin master  # Triggers auto-deployment
```

### **Branch Protection**
- `master` branch: Protected, requires PR review
- `develop` branch: Open for development
- Feature branches: Created from `develop`, merged back to `develop`

## 📊 **CI/CD Pipeline**

### **GitHub Actions Workflow**
- **Trigger**: Push to `master` branch
- **Steps**:
  1. Checkout code
  2. Setup Flutter
  3. Install dependencies
  4. Run tests
  5. Build web app
  6. Deploy to Firebase

### **Deployment URLs**

- **Staging Environment**: [https://easypool-30af3--develop-yrpdh4zu.web.app](https://easypool-30af3--develop-yrpdh4zu.web.app) (expires 2025-11-04)
- **Production Environment**: [https://easypool-30af3.web.app](https://easypool-30af3.web.app)

## 🐛 **Troubleshooting**

### **Build Issues**

```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter build web --release
```

### **Firebase Issues**

```bash
# Check Firebase status
firebase projects:list

# Reinitialize if needed
firebase init hosting
```

### **Git Issues**

```bash
# Reset to clean state
git checkout develop
git reset --hard origin/develop
```

## 🤝 **Contributing**

1. **Fork** the repository
2. **Create** feature branch from `develop`
3. **Develop** and test locally
4. **Commit** with clear messages
5. **Push** to your fork
6. **Create** Pull Request to `develop` branch

### **Commit Message Format**

```text
feat: Add new user authentication
fix: Resolve login timeout issue
docs: Update API documentation
refactor: Simplify routing logic
```

## 📞 **Support**

- **Issues**: Create GitHub issues for bugs/features
- **Discussions**: Use GitHub Discussions for questions
- **Documentation**: Check this README and inline code comments

## 📄 **License**

[Add your license information here]

---

## **Happy Coding! 🎉**

*This README reflects the complete development lifecycle from local development to production deployment with Firebase Hosting and GitHub Actions CI/CD.*
