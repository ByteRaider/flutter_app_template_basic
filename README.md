# Basic Flutter Template

A simple and customizable Flutter template to kickstart your mobile app development. This template includes the basic structure and essential configurations to help you get started quickly.

## Features

- Clean and structured codebase
- Pre-configured routing and navigation
- Basic state management using Provider
- Customizable themes and styles

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter installation

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/basic_flutter_template.git
    cd basic_flutter_template
    ```

2. Get the required dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```
### Configuration

#### Update the Package Name

1. Update the package name in `android/app/build.gradle`:
    ```gradle
    applicationId "com.yourcompany.basic_flutter_template"
    ```

2. Update the package name in `ios/Runner/Info.plist`:
    ```xml
    <key>CFBundleIdentifier</key>
    <string>com.yourcompany.basic_flutter_template</string>
    ```
#### Update App Icons and Splash Screen

1. Replace the icon files in `assets/icons/`.
2. Configure the splash screen in `android/app/src/main/res` and `ios/Runner/Assets.xcassets/`.


### Usage

- **Routing**: Define your routes in `src/app.dart`.
- **State Management**: Use the Provider package to manage app state.
- **Styling**: Customized theme

### Acknowledgments
- Flutter Documentation: [Flutter.dev](https://flutter.dev/docs)
- Dart Documentation: [dart.dev](https://dart.dev/guides)
- [Provider Package](https://pub.dev/packages/provider)
- [Mentoring](https://fernando-herrera.com/)
