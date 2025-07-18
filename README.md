# Check-in App

A Flutter project for a check-in application, designed to manage employee check-ins, track working hours, and select project-specific work types.

## Table of Contents

- [Features](#features)
- [Architectural Approach](#architectural-approach)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the App](#running-the-app)
- [Project Structure](#project-structure)
- [Styling and Theming](#styling-and-theming)
- [Dependencies](#dependencies)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)

## Features

- **User Authentication:** Login screen with phone number and passcode.
- **Remember Me Functionality:** Option to remember user login details.
- **Working Hours Tracking:** Displays accumulated working hours.
- **Manual Check-in:** Dialog for manual check-ins, allowing selection of:
    - Projects
    - Gates
    - Work Type (Budget/Issue)
- **Theming:** Consistent UI/UX with custom color palette and text themes.
- **Navigation:** Uses `go_router` for efficient route management.

## Architectural Approach

This project follows a modular and component-based architectural approach to ensure maintainability, scalability, and code readability.

-   **Separation of Concerns:**
    -   **`screens`**: Contains distinct UI pages (e.g., `LoginScreen`, `HomeScreen`).
    -   **`widgets`**: Houses reusable UI components (e.g., `CustomButton`, `CustomTextField`) that can be used across different screens.
    -   **`utils`**: Stores utility files like `app_colors.dart` for centralized constants.
    -   **`routes`**: Manages application navigation logic using `go_router`.
    -   **`theme` (assumed/recommended)**: Centralizes `ThemeData` configuration to apply a consistent visual style across the entire application.

-   **Theme-Driven Styling:** Instead of hardcoding colors and text styles, the application heavily leverages Flutter's theming capabilities.
    -   `AppColors` defines the core color palette.
    -   `Theme.of(context).textTheme` and `Theme.of(context).iconTheme` are used extensively to fetch predefined text and icon styles, ensuring a cohesive look and reducing repetitive code.
    -   Custom widget themes (e.g., `ElevatedButtonTheme`, `CheckboxTheme`) are used to standardize the appearance of common interactive elements.

-   **Navigation Management:** `go_router` is used for declarative routing, allowing for clear and predictable navigation flows, especially useful for complex applications and deep linking.

-   **State Management:** For local component state, `StatefulWidget` and `setState` are utilized. For example, managing checkbox states or dropdown selections directly within the widget. As the application grows, a dedicated state management solution (e.g., Provider, Riverpod, BLoC) could be integrated for global or shared state.

This approach promotes a clean codebase, making it easier to develop new features, debug issues, and onboard new developers.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following installed:

-   **Flutter SDK:** [Install Flutter](https://flutter.dev/docs/get-started/install)
    -   Verify your Flutter installation by running `flutter doctor` in your terminal. This command checks your environment and displays a report of the status of your Flutter installation.
-   **Dart SDK:** (Comes bundled with Flutter)
-   **IDE:**
    -   [VS Code](https://code.visualstudio.com/) with the official Flutter extension.
    -   [Android Studio](https://developer.android.com/studio) with Flutter and Dart plugins.

### Installation

1.  **Clone the repository:**
    Open your terminal or command prompt and navigate to the directory where you want to store your project. Then, clone the repository:
    ```bash
    git clone (https://github.com/vineeth2768/check-in-app.git)
    ```
    Navigate into the cloned project directory:
    ```bash
    cd check_in_app
    ```

2.  **Get Flutter packages:**
    After navigating into the project directory, fetch all the necessary Dart and Flutter packages declared in `pubspec.yaml`:
    ```bash
    flutter pub get
    ```
    This command downloads all the dependencies required for the project.

### Running the App

To run the application, you need to have a connected device or an active emulator/simulator.

1.  **Launch an Emulator/Simulator or Connect a Device:**
    -   **Android:** Open Android Studio, go to `Tools > Device Manager`, and start an Android Virtual Device (AVD).
    -   **iOS:** Open Xcode, go to `Xcode > Open Developer Tool > Simulator`.
    -   **Physical Device:** Connect your phone via USB and ensure USB debugging (Android) or developer mode (iOS) is enabled.

2.  **Run the application from your IDE:**
    -   **VS Code:** Open the `lib/main.dart` file, then click "Run" in the top bar or use the "Run and Debug" panel (Ctrl+Shift+D).
    -   **Android Studio:** Open the `lib/main.dart` file, then click the green "Play" button in the toolbar.

3.  **Run from the terminal:**
    With your device/emulator running and connected, execute the following command from the project root directory:
    ```bash
    flutter run
    ```
    This will build and deploy the application to your selected device/emulator.

-   **Hot Reload/Restart:** While developing, `flutter run` automatically enables hot reload. After saving changes, press `r` in the terminal to hot reload (inject changes without losing state) or `R` to hot restart (rebuild the app from scratch).

-   **Building for Release:**
    To create a production-ready build of your application:
    ```bash
    flutter build apk      # Builds an Android APK file (e.g., for direct distribution)
    flutter build appbundle # Builds an Android App Bundle (AAB) for Google Play Store
    flutter build ios      # Builds an iOS app for devices (requires Xcode and macOS)
    ```

## Project Structure

The project follows a standard Flutter project structure with a focus on maintainability and separation of concerns.