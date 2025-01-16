# Tasky
<div align="center">
  <a href="https://flutter.dev/">
    <img src="https://img.shields.io/badge/Flutter-%20%3E%3D%203.5.4-blue" alt="Flutter" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-green" alt="License" />
  </a>
  <a href="https://github.com/youssefmsaber/tasky">
    <img src="https://img.shields.io/badge/Build-Passing-brightgreen" alt="Build Status" />
  </a>
  <a href="https://pub.dev/packages/dio">
    <img src="https://img.shields.io/badge/Dependencies-Updated-blue" alt="Dependencies" />
  </a>
</div>

<div align="center">
  <img src="src/project-design.png" alt="Project Design" height="350">
</div>

**Tasky** is a Flutter TODO app that allows users to store task data both in the cloud and locally. Tasky offers features such as task priority setting, task progress tracking, and supports Clean Architecture principles with GetIt for dependency injection.

---

## Getting Started

To run this project, ensure your environment is properly set up.

### Requirements

- 🖥️ **Dart SDK**: `>=3.5.4 <4.0.0`
- 📱 **Flutter**: Any stable version compatible with the above Dart SDK

### Installation and Setup Instructions

1. 🧑‍💻 **Clone the repository**:
   ```bash
   git clone https://github.com/youssefmsaber/tasky.git
   ```
2. 🔽 **Navigate into the project directory**:
   ```bash
   cd tasky
   ```
3. 📦 **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. ⚙️ **Configure local and cloud storage** (if applicable).
5. 🚀 **Run the app**:
    ```bash
   flutter run
   ```

---

## Dependencies

### Core Dependencies

- **[dio](https://pub.dev/packages/dio)**: `^5.7.0` - HTTP client for making API requests ![dio](https://img.shields.io/badge/HTTP-client-dio-blue)
- **[bloc](https://pub.dev/packages/bloc)**: `^8.1.4` - Business Logic Component (BLoC) for state management ![bloc](https://img.shields.io/badge/BLoC-pattern-blue)
- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)**: `^8.1.6` - Flutter integration for BLoC pattern ![flutter_bloc](https://img.shields.io/badge/Flutter%20BLoC-blue)
- **[intl](https://pub.dev/packages/intl)**: `^0.19.0` - Internationalization support for formatting dates, numbers, etc. ![intl](https://img.shields.io/badge/Intl-0.19-blue)
- **[sqflite](https://pub.dev/packages/sqflite)**: `^2.4.0` - SQLite plugin for local database storage![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)
- **[shared_preferences](https://pub.dev/packages/shared_preferences)**: `^2.3.2` - Local key-value storage for storing simple data ![shared_preferences](https://img.shields.io/badge/Storage-Shared%20Preferences-green)

### Utilities

- **[get_it](https://pub.dev/packages/get_it)**: `^8.0.2` - Dependency injection for better app structure ![get_it](https://img.shields.io/badge/DI-GetIt-blue)
- **[path_provider](https://pub.dev/packages/path_provider)**: `^2.1.5` - Access to commonly used device directories like documents or temporary folders ![path_provider](https://img.shields.io/badge/Path%20Provider-blue)
- **[json_annotation](https://pub.dev/packages/json_annotation)**: `^4.9.0` - Annotations for JSON serialization/deserialization ![json_annotation](https://img.shields.io/badge/JSON%20Annotation-yellow)
- **[hydrated_bloc](https://pub.dev/packages/hydrated_bloc)**: `^9.1.5` - State persistence using hydrated BLoC ![hydrated_bloc](https://img.shields.io/badge/Hydrated%20BLoC-blue)

### UI Libraries

- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)**: `^1.0.8` - Icons used in Cupertino (iOS-style) apps ![cupertino_icons](https://img.shields.io/badge/Cupertino%20Icons-lightgray)
- **[iconly](https://pub.dev/packages/iconly)**: `^1.0.1` - A custom icon library for modern and minimalist icons ![iconly](https://img.shields.io/badge/Iconly-Icons-purple)
- **[google_fonts](https://pub.dev/packages/google_fonts)**: `^6.2.1` - Easy access to Google Fonts ![google_fonts](https://img.shields.io/badge/Google%20Fonts-fonts-blue)
- **[flutter_svg](https://pub.dev/packages/flutter_svg)**: `^2.0.12` - Render SVG images in Flutter ![flutter_svg](https://img.shields.io/badge/SVG-Rendering-blue)

### Phone Utilities

- **[intl_phone_number_input](https://pub.dev/packages/intl_phone_number_input)**: `^0.7.4` - Input field for international phone numbers with formatting and validation ![intl_phone_number_input](https://img.shields.io/badge/Phone%20Input-orange)

---

## Architecture

Tasky is built using **Clean Architecture**, ensuring separation of concerns and maintainability. The project is divided into distinct layers:

1. **Domain Layer**: Contains the business logic and core entities.
2. **Data Layer**: Handles the app’s data sources, including APIs and local databases.
3. **Presentation Layer**: Handles UI and user interaction using the **BLoC** pattern for state management.
4. **Dependency Injection**: Uses **GetIt** for decoupling dependencies.

---

## Features

- **Task Creation and Editing**: Create new tasks or edit existing ones.
- **Task Priorities**: Assign priorities: Low, Medium, or High.
- **Task Progress Tracking**: Track status: Waiting, In Progress, Finished.
- **Data Persistence**: Store tasks locally and in the cloud.

---

## How to Run Tests

To run tests:

1. Run the following command:
   ```bash
   flutter test
   ```

---

## Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a feature branch:
    ```bash
    git checkout -b feature/my-feature
    ```
3. Make changes, test thoroughly, and commit.
4. Push to your forked repository:
   ```bash
   git push origin feature/my-feature
   ```
5. Create a pull request to the main repository.

---

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
