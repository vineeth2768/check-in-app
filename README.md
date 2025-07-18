# Check-in App

A Flutter project for a check-in application, designed to manage employee check-ins, track working hours, and select project-specific work types.

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

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK:** [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK:** (Comes with Flutter)
- **IDE:**
    - [VS Code](https://code.visualstudio.com/) with Flutter extension
    - [Android Studio](https://developer.android.com/studio) with Flutter and Dart plugins

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your_username/check_in_app.git](https://github.com/your_username/check_in_app.git)
    cd check_in_app
    ```

2.  **Get Flutter packages:**
    ```bash
    flutter pub get
    ```

### Running the App

To run the app on a connected device or emulator:

```bash
flutter run