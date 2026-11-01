# Flutter Navigation App

A clean three-page Flutter app: **Home**, **About** and **Contact**, built with Material 3 and a custom theme.

## Features

- `Home → About` and `About → Contact` navigation buttons (named routes)
- Each page displays its own name
- Image on the Home page (`assets/images/home.png`)
- Icons on every page
- `Scaffold`, `AppBar`, `Card`, `ListTile`, `Column`, `SafeArea`, `SingleChildScrollView`
- Custom app theme (`lib/theme/app_theme.dart`)
- Reusable widgets for a consistent, professional look

## Project structure

```
lib/
├── main.dart                # App entry point, theme and routes
├── theme/
│   └── app_theme.dart       # Custom Material 3 theme
├── pages/
│   ├── home_page.dart
│   ├── about_page.dart
│   └── contact_page.dart
└── widgets/
    ├── page_body.dart       # Shared scrollable, width-constrained layout
    ├── page_header.dart     # Icon + page name + subtitle
    ├── info_tile.dart       # Card with icon, title and subtitle
    └── nav_button.dart      # Full-width navigation button
assets/images/home.png
test/widget_test.dart        # Navigation widget test
```

## Run it

This repo contains the Dart source and assets. If the `android/`, `ios/` etc.
folders are missing, generate them once from the project root:

```bash
flutter create .
flutter pub get
flutter run
```

Run the test:

```bash
flutter test
```

Requires Flutter 3.22 or newer.
