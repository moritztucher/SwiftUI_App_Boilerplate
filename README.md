# SwiftUI App Boilerplate Project

This project is a SwiftUI boilerplate template structured using the Model-View-ViewModel (MVVM) architecture. It includes essential components and setup to speed up the development of iOS apps, integrating services such as DeviceKit, PostHog, Firebase Crashlytics, and RevenueCat for analytics, crash reporting, and paywalls.

## Project Structure

The project is organized into the following folders:

- **Views**: Contains all the SwiftUI views of the application. This is where the UI components are built.
  
- **ViewModels**: Holds all the ViewModels adhering to the MVVM architecture. Each ViewModel binds data and logic to its respective views.

- **Models**: Defines the data models used within the app.

- **Services**: Houses utility services. Currently, this includes DeviceKit, which is used to get information about the device.

- **Extensions**: Contains reusable code extensions. Currently includes:
  - **RevenueCat Extension**: Simplifies interactions with RevenueCat's paywall features.
  - **Color Extension**: Adds extra Apple colors and includes utility functions such as `toHex` and `hexToString`.

## Dependencies

This project utilizes several third-party libraries to enhance functionality. Below is a list of dependencies and their purpose:

- **DeviceKit**: Used to retrieve detailed information about the device.
  - GitHub: [DeviceKit](https://github.com/devicekit/DeviceKit)

- **PostHog**: Integrated for analytics and user behavior tracking.
  - GitHub: [PostHog iOS](https://github.com/PostHog/posthog-ios)

- **Firebase Crashlytics**: Provides crash reporting to help monitor and debug issues in the app.
  - GitHub: [Firebase Crashlytics](https://github.com/firebase/firebase-ios-sdk)

- **RevenueCat**: Manages in-app purchases and subscriptions through its paywall solution.
  - GitHub: [RevenueCat iOS SPM](https://github.com/RevenueCat/purchases-ios-spm)

## Features

- **MVVM Architecture**: Separates business logic (ViewModels) from the UI (Views) for a cleaner, more maintainable codebase.
  
- **Device Information**: Retrieves device-specific details via DeviceKit.

- **Analytics**: Track user interactions and behavior using PostHog for deeper insights.

- **Crash Reporting**: Capture and report crashes using Firebase Crashlytics.

- **Paywall Management**: Implement in-app purchases and subscriptions with ease using RevenueCat.

## Getting Started

To get started with the project:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repo/swiftui-boilerplate.git
   cd swiftui-boilerplate
   ```

2. Install the dependencies via Swift Package Manager (SPM) directly in Xcode:
   - Go to Xcode > File > Swift Packages > Add Package Dependency
   - Add each of the following URLs:
     - DeviceKit: `https://github.com/devicekit/DeviceKit`
     - PostHog: `https://github.com/PostHog/posthog-ios`
     - Firebase Crashlytics: `https://github.com/firebase/firebase-ios-sdk`
     - RevenueCat: `https://github.com/RevenueCat/purchases-ios-spm`

3. Build and run the project in Xcode.

## Usage

### View Structure

- **ContentView.swift**: This is the main view of the app, where the navigation and initial layout are defined.

- **DetailView.swift**: Example secondary view showing a basic navigation setup.

### ViewModel

- **ExampleViewModel.swift**: A sample ViewModel that demonstrates how to bind data to the view using the `@StateObject` and `@Published` properties.

### Services

- **NetworkManager.swift**: An example of how to create service classes for handling networking and other utility functions.

### Extensions

- **Color+Extensions.swift**: Adds more predefined colors from Apple and utility functions for hex string conversion.

- **RevenueCat+Extensions.swift**: Extends RevenueCat's paywall interaction with additional helper methods.

## Contributing

Contributions are welcome! If you find any issues or would like to add new features, feel free to open a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.