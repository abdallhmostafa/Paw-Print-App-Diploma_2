# PawPrint

PawPrint is a Flutter pet adoption demo app. It opens with a short animated
splash screen, then shows a browsable grid of pets with images, names, animal
types, gender icons, and adoption fees. Tapping a pet opens a detail page with
adoption information, traits, rescue contact styling, and an adoption call to
action.

This project was built for educational purposes as part of the Flutter/Mobile
Diploma at Creativa Hub Alexandria.

## Features

- Animated splash screen powered by `flutter_animate`
- Home screen with a pet category strip and adoption listing grid
- Pet cards with remote placeholder images, gender indicators, and EGP pricing
- Detail screen for each pet with profile information, traits, and rescue info
- Navigation drawer with Home, My Adoptions, and Settings entries
- Light and dark Material themes seeded from PawPrint's orange brand color
- Fallback not-found page for unknown routes

## Project Structure

```text
lib/
  main.dart
  paw_print_app.dart
  splash/
    splash_page.dart
  features/
    animal_details/
      animal_details_page.dart
    home/
      home_page.dart
      components/
        animal_card.dart
        home_category.dart
        home_drawer.dart
      model/
        animal_model.dart
    not_found/
      not_found_page.dart
```

## Requirements

- Flutter SDK with Dart `^3.12.0`
- A device, emulator, simulator, or desktop target supported by Flutter
- Internet access while running the app, because pet images are loaded from
  remote placeholder URLs

## Getting Started

Install dependencies:

```bash
flutter pub get
```

Run the app:

```bash
flutter run
```

Analyze the project:

```bash
dart analyze
```

## Data Model

The current pet catalog is local, static data in
`lib/features/home/model/animal_model.dart`. Each `AnimalModel` includes:

- `image`
- `animalName`
- `kind`
- `details`
- `isMale`
- `price`

This makes the app easy to run as a UI prototype without a backend. A future
version could replace the static list with an API, local database, or admin
management flow.

## Notes

- Category chips are presentational in the current implementation and do not
  filter the grid yet.
- Favorite, drawer, rescue contact, and adoption button actions are placeholders
  ready to be wired to app logic.
- There is no `test/` directory in the current project snapshot.
