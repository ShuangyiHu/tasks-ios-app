# Tasks - iOS Mobile To-Do List Application

A simple and user-friendly iOS task management app developed using Swift and SwiftUI, integrated with Firebase for secure data storage and user authentication.

## Features

- **Task Management:** Create, update, and delete tasks efficiently.
- **User Authentication:** Secure login and registration with Firebase Authentication.
- **Persistent Storage:** Store user tasks in Firebase Firestore for data persistence across multiple devices.
- **Custom UI Components:** Engaging and consistent user interface using SwiftUI.
- **Scalable Architecture:** Follows the MVVM design pattern for easy scalability and maintainability.
- **Cross-Device Syncing:** Sync tasks across multiple iOS devices using Firebase.

## Tech Stack

- **Swift**
- **SwiftUI**
- **Firebase (Firestore, Authentication)**
- **Xcode**

## Prerequisites

- Xcode 15 or later
- iOS 14.0 or later
- A Firebase account with a configured project (includes `GoogleService-Info.plist` for Firebase setup)

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/ShuangyiHu/tasks-ios-app.git
    ```
2. **Navigate to the project directory:**
    ```bash
    cd tasks-ios-app
    ```
3. **Open the project in Xcode:**
    ```bash
    open Tasks.xcodeproj
    ```

4. **Add Firebase Configuration:**
   - Download the `GoogleService-Info.plist` from your Firebase project and add it to your Xcode project's root directory.

5. **Install Dependencies (if using CocoaPods):**
    ```bash
    pod install
    ```

6. **Build and Run the Project:**
   - Open the project in Xcode and select a simulator or a connected device.
   - Click the **Run** button or press `Cmd + R` to build and launch the app.

## Usage

1. Launch the app on your iOS device or simulator.
2. Register or log in using your email and password.
3. Start managing your tasks: add, edit, or delete tasks as needed.
4. Your tasks will be automatically synced with Firebase.

## Project Structure

- **Tasks.xcodeproj:** Xcode project file containing the project's build settings.
- **Tasks/**: Source code directory containing all Swift files for the app's functionality.
- **Resources/**: Contains assets like images, icons, and `GoogleService-Info.plist`.

## Testing

This project includes unit testing for various components to ensure reliability. To run the tests, select the test scheme in Xcode and press `Cmd + U`.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to create a pull request or open an issue.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add a new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Firebase](https://firebase.google.com/) for backend services.
- [SwiftUI](https://developer.apple.com/xcode/swiftui/) for building the user interface.
- Xcode for providing the development environment.

## Contact

If you have any questions or suggestions, feel free to reach out to the project maintainer at [hu.shua@northeastern.edu].
