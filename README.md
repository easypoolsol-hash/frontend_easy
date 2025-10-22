# Imperial EasyPool Frontend

Multi-platform Flutter application (Web, iOS, Android) for school bus management system.

## Features

- 🗺️ **Interactive Maps** - Google Maps integration for route visualization
- 🚌 **Fleet Management** - Real-time bus tracking and route management
- 👨‍👩‍👧‍👦 **Student Management** - Parent and student dashboards
- 📊 **School Dashboard** - Administrative interface
- 🔐 **Secure Authentication** - JWT-based kiosk authentication
- 📱 **Responsive Design** - Material Design 3 with adaptive layouts

## Prerequisites

- Flutter SDK (^3.9.2)
- Dart SDK (^3.9.2)
- Google Maps API Key (for map functionality)

## Google Maps Setup

### 1. Get API Key
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select existing one
3. Enable the following APIs:
   - Maps JavaScript API
   - Maps Embed API
4. Create credentials (API Key)
5. Restrict the API key to your domain for security

### 2. Configure API Key

#### Option A: .env File (Recommended)
Create a `.env` file in the project root:

```env
GOOGLE_MAPS_API_KEY=your_api_key_here
```

**Important**: Add `.env` to your `.gitignore` to prevent committing API keys.

#### Option B: Environment Variable
```bash
# Development
flutter run --dart-define=GOOGLE_MAPS_API_KEY=your_api_key_here

# Production Build
flutter build web --dart-define=GOOGLE_MAPS_API_KEY=your_api_key_here --release
```

#### Option C: Using Build Scripts
```bash
# Development (port 3000)
./run.sh 3000

# Production build
./build.sh prod

# Development build
./build.sh dev
```

## Getting Started

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd frontend_easy
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate API client** (if needed)
   ```bash
   # Generate from OpenAPI spec
   flutter pub run build_runner build
   ```

### Running the App

#### Development
```bash
# With .env file (recommended)
flutter run -d chrome --web-port=3000

# With environment variable
flutter run -d chrome --web-port=3000 --dart-define=GOOGLE_MAPS_API_KEY=your_key

# Or use the run script (uses .env file)
./run.sh 3000
```

#### Production Build
```bash
# Build for web deployment (uses .env file)
flutter build web --release

# With environment variable
flutter build web --release --dart-define=GOOGLE_MAPS_API_KEY=your_key

# Or use the build script (uses .env file)
./build.sh prod
```

### Testing

```bash
# Run tests
flutter test

# Run tests with coverage
flutter test --coverage
```

## Project Structure

```
lib/
├── core/                 # Core functionality
│   ├── config/          # Configuration files
│   ├── routing/         # App routing
│   └── theme/           # UI themes and colors
├── features/            # Feature-based modules
│   ├── auth/            # Authentication
│   ├── fleet/           # Fleet management
│   ├── home/            # Home dashboard
│   └── map/             # Map functionality
├── shared/              # Shared components
│   └── widgets/         # Reusable widgets
└── main.dart           # App entry point

packages/
└── frontend_easy_api/  # Generated API client
```

## API Integration

The app uses OpenAPI-generated client for backend communication:

- **Base URL**: Configurable via environment
- **Authentication**: JWT tokens
- **Real-time**: WebSocket support for live updates

## Deployment

### Web Deployment
```bash
# Build optimized web app (uses .env file)
flutter build web --release

# With environment variable
flutter build web --release --dart-define=GOOGLE_MAPS_API_KEY=your_key

# Deploy build/web/ contents to your web server
```

### Mobile Deployment
```bash
# iOS
flutter build ios --release

# Android
flutter build apk --release
```

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `GOOGLE_MAPS_API_KEY` | Google Maps API key for map functionality | Yes |

## Contributing

1. Follow Flutter best practices
2. Use feature-based architecture
3. Write tests for new features
4. Update documentation

## License

[Add your license information here]

## Support

For support and questions:
- Create an issue in the repository
- Contact the development team
