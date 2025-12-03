# SKML Flutter App (scaffold)

This package contains a ready-to-use Flutter `lib/` folder and assets (5 PNG screens).  
You can place these files into a Flutter project and build an APK locally.

## What's included
- `lib/main.dart` — Flutter app with 5 screens and simple navigation.
- `pubspec.yaml` — declares assets used by the app.
- `assets/images/1.png` .. `assets/images/5.png` — your uploaded mockups.

## How to use (quick)
1. Install Flutter SDK: https://flutter.dev/docs/get-started/install
2. Create a new Flutter project (example):
   ```bash
   flutter create skml_app_local
   ```
3. Replace the generated project's `lib/` folder and `pubspec.yaml` with the files in this zip.
   ```bash
   # from the folder where you unzipped this package
   cp -r lib ../skml_app_local/
   cp pubspec.yaml ../skml_app_local/
   cp -r assets ../skml_app_local/
   cd ../skml_app_local
   flutter pub get
   ```
4. Run in debug on a connected device:
   ```bash
   flutter run
   ```
5. Build release APK:
   ```bash
   flutter build apk --release
   ```
   The resulting APK will be at `build/app/outputs/flutter-apk/app-release.apk`.

## How to make a signed release (optional)
Follow official docs: https://flutter.dev/docs/deployment/android
In short:
- Create a keystore with `keytool` (from JDK).
- Add signing config to `android/key.properties` and `android/app/build.gradle`.
- Then run `flutter build apk --release`.

## If you want me to produce a GitHub Actions workflow (CI) to auto-build APKs,
tell me and I will add a sample `/.github/workflows/flutter-build.yml`.

