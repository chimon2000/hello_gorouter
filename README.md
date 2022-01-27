# hello_gorouter

This project is a quick POC to show how to swap out routes using [GoRouter](https://gorouter.dev/).

## Architecture

This application uses Flutter's skeleton template, with some key changes/additions.

### app_router.dev

Defines the AppRouter that initializes GoRouter.  Swaps out the GoRouter implementation depending on whether the user is logged in.

### settings

Change theme and allow the user to logout.

### settings

Allow users to login to the app.

### sample_feature

A pretend list/details feature.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
