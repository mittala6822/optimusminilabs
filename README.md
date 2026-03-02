# Flutter Hello World App

A basic Flutter application demonstrating the foundational structure of a Flutter project with a tap counter and Material Design 3 UI.

## Features

- "Hello, World!" greeting with Material Design 3 styling
- Interactive tap counter with a floating action button
- Clean, well-structured project layout ready for expansion

---

## Prerequisites

Before you begin, ensure you have the following installed:

| Tool | Version | Install |
|------|---------|---------|
| Flutter SDK | 3.0.0+ | [flutter.dev/get-started](https://flutter.dev/get-started) |
| Dart SDK | 3.0.0+ | Included with Flutter |
| Android Studio / Xcode | Latest | For Android/iOS targets |
| VS Code or IntelliJ | Latest | Recommended IDE |

Verify your Flutter installation:

```bash
flutter doctor
```

All checkmarks should be green for your target platform(s).

---

## Getting Started

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd hello_world
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

**On a connected device or emulator:**

```bash
flutter run
```

**Target a specific platform:**

```bash
flutter run -d android      # Android emulator/device
flutter run -d ios          # iOS simulator/device (macOS only)
flutter run -d chrome       # Web browser
flutter run -d macos        # macOS desktop
flutter run -d windows      # Windows desktop
flutter run -d linux        # Linux desktop
```

**List available devices:**

```bash
flutter devices
```

---

## Project Structure

```
hello_world/
├── lib/
│   └── main.dart            # App entry point and UI
├── test/
│   └── widget_test.dart     # Widget tests
├── web/
│   └── index.html           # Web platform entry point
├── android/                 # Android platform files (auto-generated)
├── ios/                     # iOS platform files (auto-generated)
├── pubspec.yaml             # Project config and dependencies
├── analysis_options.yaml    # Dart linter rules
└── README.md
```

### Key Files

- **`lib/main.dart`** — Contains the root widget (`HelloWorldApp`), the page widget (`HelloWorldPage`), and the state (`_HelloWorldPageState`). All app logic starts here.
- **`pubspec.yaml`** — Declares dependencies, assets, and SDK constraints.
- **`analysis_options.yaml`** — Configures Dart static analysis and linting rules.

---

## Development Guide

### Running Tests

```bash
# Run all tests
flutter test

# Run a specific test file
flutter test test/widget_test.dart

# Run with verbose output
flutter test --verbose
```

### Code Analysis & Linting

```bash
# Analyze for errors and lint issues
flutter analyze

# Auto-format all Dart files
dart format lib/ test/
```

### Hot Reload vs Hot Restart

While `flutter run` is active in your terminal:

| Key | Action | When to use |
|-----|--------|-------------|
| `r` | **Hot Reload** | UI changes, new widgets |
| `R` | **Hot Restart** | State changes, new routes |
| `q` | Quit | Stop the app |

In VS Code or Android Studio, hot reload is triggered automatically on save.

### Building for Production

```bash
# Android APK
flutter build apk --release

# Android App Bundle (for Play Store)
flutter build appbundle --release

# iOS (macOS only)
flutter build ios --release

# Web
flutter build web --release

# Desktop
flutter build linux --release
flutter build macos --release
flutter build windows --release
```

---

## Extending the App

### Adding a New Screen

1. Create a new file in `lib/`, e.g. `lib/screens/about_page.dart`:

```dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const Center(child: Text('About this app')),
    );
  }
}
```

2. Navigate to it from `main.dart`:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const AboutPage()),
);
```

### Adding a Package

1. Add it to `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0   # example package
```

2. Install it:

```bash
flutter pub get
```

3. Import and use it in your Dart files:

```dart
import 'package:http/http.dart' as http;
```

### Theming

Modify the `ThemeData` in `lib/main.dart` to customize colors:

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
  useMaterial3: true,
),
```

---

## Useful Flutter Commands

```bash
flutter upgrade          # Upgrade Flutter to latest stable
flutter pub upgrade      # Upgrade all dependencies
flutter clean            # Clear build cache (fixes most weird build errors)
flutter pub cache repair # Repair the pub cache
flutter --version        # Show Flutter/Dart versions
```

---

## Resources

- [Flutter Documentation](https://docs.flutter.dev)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Dart Language Tour](https://dart.dev/language)
- [pub.dev — Package Repository](https://pub.dev)
- [Material Design 3](https://m3.material.io)
- [Flutter Community](https://flutter.dev/community)
