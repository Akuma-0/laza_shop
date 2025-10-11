# Laza Shop - Flutter E-commerce App

A modern Flutter e-commerce application for accessories shopping with a clean architecture and beautiful UI design.

## 📱 App Features

### Authentication

- **Onboarding Screen** - Welcome users with an attractive introduction
- **User Registration** - Sign up with email verification
- **User Login** - Secure authentication with token management
- **Email Verification** - OTP-based email confirmation system

### Shopping Experience

- **Home Screen** - Browse featured products and categories
- **Product Details** - Detailed product information and specifications
- **Product Catalog** - Comprehensive product listing and browsing

### Core Features

- **Responsive Design** - Optimized for different screen sizes
- **Secure Storage** - User tokens and sensitive data protection
- **Network Caching** - Optimized image loading and caching
- **Shimmer Loading** - Beautiful loading animations
- **Custom Splash Screen** - Branded app launch experience

## 🏗️ Architecture & State Management

### Architecture Pattern

This project follows **Clean Architecture** principles with feature-based modular structure:

```
lib/
├── core/                     # Core functionalities
│   ├── di/                   # Dependency Injection (GetIt)
│   ├── helpers/              # Utility functions and constants
│   ├── networking/           # API services and networking
│   ├── routing/              # App navigation and routing
│   ├── themes/               # App themes and styling
│   └── widgets/              # Reusable UI components
└── features/                 # Feature modules
    ├── home/                 # Home screen functionality
    ├── login/                # Authentication login
    ├── onboarding/           # App introduction
    ├── product_details/      # Product detail views
    └── sign_up/              # User registration
```

### State Management

- **Flutter BLoC/Cubit** - Primary state management solution
- **GetIt** - Dependency injection for service locator pattern
- **Shared Preferences** - Local data persistence
- **Flutter Secure Storage** - Secure token and sensitive data storage

Each feature follows the **Data-Logic-UI** pattern:

- `data/` - Models, repositories, and API services
- `logic/` - Cubits/BLoCs for state management
- `ui/` - Screens and widgets

## 📦 Dependencies

### Core Dependencies

```yaml
# State Management
flutter_bloc: ^9.1.1 # BLoC state management
get_it: ^8.2.0 # Dependency injection

# Networking
dio: ^5.9.0 # HTTP client
retrofit: ^4.7.3 # Type-safe HTTP client
pretty_dio_logger: ^1.4.0 # Network request logging

# Code Generation
freezed: ^3.2.3 # Immutable data classes
json_serializable: ^6.11.1 # JSON serialization
build_runner: ^2.9.0 # Code generation runner

# UI & Design
flutter_screenutil: ^5.9.3 # Screen adaptation
flutter_svg: ^2.2.1 # SVG support
cached_network_image: ^3.4.1 # Image caching
shimmer: ^3.0.0 # Loading animations

# Storage & Security
shared_preferences: ^2.5.3 # Local storage
flutter_secure_storage: ^9.2.4 # Secure storage

# Other
pinput: ^5.0.2 # OTP input field
flutter_native_splash: ^2.4.6 # Native splash screen
cupertino_icons: ^1.0.8 # iOS-style icons
```

### Development Dependencies

```yaml
flutter_test: sdk # Testing framework
flutter_lints: ^5.0.0 # Linting rules
flutter_launcher_icons: ^0.14.4 # App icon generation
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.9.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd laza_shop
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate code**

   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Build Configuration

The app includes configuration for:

- **Custom App Icon** - Located in `assets/images/logo.png`
- **Adaptive Icons** - Android adaptive icon support
- **Splash Screen** - Native splash screen configuration

## 📱 Screenshots

### App Launch & Onboarding

<div align="center">
  <img src="screenshots/SPLASH.png" width="250" alt="Splash Screen">
  <img src="screenshots/ONBOARDING.png" width="250" alt="Onboarding Screen">
</div>

### Authentication Flow

<div align="center">
  <img src="screenshots/LOGIN.png" width="250" alt="Login Screen">
  <img src="screenshots/SIGNUP.png" width="250" alt="Sign Up Screen">
  <img src="screenshots/OTP.png" width="250" alt="OTP Verification">
</div>

### Shopping Experience

<div align="center">
  <img src="screenshots/PRODUCTS_LOADING.png" width="250" alt="Products Loading">
  <img src="screenshots/PRODUCTS.png" width="250" alt="Products Screen">
  <img src="screenshots/PRODUCT_DETAILS.png" width="250" alt="Product Details">
</div>

### Key Features Showcase

- **🎨 Beautiful UI Design** - Modern and clean interface
- **🔐 Secure Authentication** - Email verification with OTP
- **📱 Responsive Layout** - Optimized for all screen sizes
- **🛍️ Complete Shopping Flow** - From browsing to product details

## 🔧 Configuration

### Environment Setup

The app uses environment-specific configurations:

- Development/Production API endpoints
- Secure token storage
- Network timeout configurations

### Assets

```
assets/
├── fonts/          # Custom fonts
└── images/         # App images and icons
    ├── Logo.png
    ├── loading.gif
    ├── sandy_loading.gif
    └── various UI elements
```

## 🛠️ Development

### Code Generation

Run the following command when you modify models or API services:

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Testing

```bash
flutter test
```

### Building for Production

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## 📄 License

This project is a private Flutter application for e-commerce purposes.

## 🤝 Contributing

This is a private project. For any questions or contributions, please contact the development team.

---

**Built with ❤️ using Flutter**
