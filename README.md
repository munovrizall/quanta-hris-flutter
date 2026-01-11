# Quanta HRIS Mobile

This is the mobile client application for the **Quanta HRIS** ecosystem. It provides employees with seamless access to attendance tracking, payroll information, and leave management directly from their smartphones.

If you are looking for the Backend API & Admin Panel, please check: [Quanta HRIS Backend Repository](https://github.com/munovrizall/quanta-hris-laravel)

## Key Features

- **GPS & Face Attendance**: Clock in and out securely using facial recognition and real-time GPS location validation.
- **Dashboard Overview**: View daily operational hours, current attendance status, and today's leave summary at a glance.
- **Payslip Access**: View detailed salary slips and download them as PDF files directly to your device.
- **Leave Management**: Apply for annual leave (Cuti) and track the status of your requests.
- **Permission Requests**: Submit permission notes (Izin) for sickness or other purposes.
- **Overtime Tracking**: Request overtime (Lembur) and view your overtime history.
- **Attendance History**: Browse your complete attendance logs.
- **Profile Management**: Update your personal profile information.

## Screenshots

|                                   Login                                   |                                  Home                                   |                                     Attendance                                      |
| :-----------------------------------------------------------------------: | :---------------------------------------------------------------------: | :---------------------------------------------------------------------------------: |
| <img src="assets/screenshots/login.png" alt="Login Screen" width="200" /> | <img src="assets/screenshots/home.png" alt="Home Screen" width="200" /> | <img src="assets/screenshots/attendance.png" alt="Attendance Screen" width="200" /> |

|                                    Profile                                    |                                    Payslip                                    |                                   Leave                                   |
| :---------------------------------------------------------------------------: | :---------------------------------------------------------------------------: | :-----------------------------------------------------------------------: |
| <img src="assets/screenshots/profile.png" alt="Profile Screen" width="200" /> | <img src="assets/screenshots/payslip.png" alt="Payslip Screen" width="200" /> | <img src="assets/screenshots/leave.png" alt="Leave Screen" width="200" /> |


## Tech Stack

- **Framework**: Flutter (Dart)
- **State Management**: BLoC (flutter_bloc)
- **HTTP Client**: Dio (with Interceptors)
- **Navigation**: GoRouter
- **Dependency Injection**: GetIt (Manual Configuration)
- **Maps & Location**: Flutter Map, LatLong2, Geolocator
- **Face Recognition**: Google ML Kit & TFLite
- **Local Storage**: Flutter Secure Storage

## Prerequisites

- **Flutter SDK**: ^3.9.2
- **Dart SDK**: Compatible with Flutter 3.9.2+
- **IDE**: VS Code or Android Studio
- **Backend**: A running instance of the Quanta HRIS Backend (Laravel)

## Installation & Setup

Follow these steps to set up the project locally:

1.  **Clone the Repository**

    ```bash
    git clone https://github.com/munovrizall/quanta-hris-flutter.git
    cd quanta-hris-flutter
    ```

2.  **Install Dependencies**

    ```bash
    flutter pub get
    ```

3.  **Run Code Generation**
    This project uses `freezed` and `json_serializable` for code generation.

    ```bash
    dart run build_runner build -d
    ```

4.  **Configuration**
    To connect the app to your backend, you need to configure the Base URL.

    Open `lib/main_dev.dart` (for development) or `lib/main_production.dart` (for production) and update the `baseUrl` in the `FlavorConfig`:

    ```dart
    final devConfig = FlavorConfig(
      flavor: Flavor.dev,
      baseUrl: "https://your-backend-domain.com/api", // <--- Update this URL
    );
    ```

## Running the App

**Development Mode:**
To run the app in debug mode with the development configuration:

```bash
flutter run -t lib/main_dev.dart
```

**Production Mode:**
To build the APK for release:

```bash
flutter build apk --release -t lib/main_production.dart
```
