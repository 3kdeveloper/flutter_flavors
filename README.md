# Flutter Flavors
A Flutter project to implement flavors on IOS & Android.

## Important
Copy all flavor code into your project modify if needed, and don't forget to update the main.dart accordingly.

## Android

### Step 1:
Add flavors inside android build.gradle -> android/app/build.gradle

### Step 2:
Go to AndroidManifest.xml and change the label LIKE: "@string/app_name"

## IOS

### Step 1:
Open project in Xcode.

### Step 2:
Click on, Product -> Scheme -> Manage Schemes

### Step 3:
Add your flavor Like -> development, staging, acceptance etc, & also make sure to change the default scheme Runner to production.

### Step 4:
Now click on Runner which is under the PROJECT heading.

### Step 5:
Copy the Configurations for all of you flavors, with the dedicated suffix LIKE Debug-production or Debug-staging etc.

### Step 6:
Again go to Manage Schemes and specify the correct build configuration to each flavor.

### Step 7:
Click on the Runner which is under the TARGETS heading and then -> Build Setting and also make sure to Select the All & Combined and then search for (bundle identifier) then under the Packaging add the suffix to the package name LIKE com.example.learnFlavors.stg

### Step 8:
Change the display name for your flavors.
Below the build settings there a plus button click the button and select (Add User-Defined Setting),
name the variable (APP_DISPLAY_NAME) and define the display name for each flavor.

### Step 9:
Finally use the variable (APP_DISPLAY_NAME) inside info.plist file, Look for the key (Bundle display name) & provide the value as -> $(APP_DISPLAY_NAME)

## Clean Project
///! TODO Verify that the base url is change to production
flutter pub cache clean
y
flutter clean
flutter pub get
cd ios
pod update

## Lauch Project
Create directory -> .vscode in the root of your flutter project inside the directory create file -> launch.json and define all of your flavors.

## Build Apk

### Build Staging Apk
flutter pub cache clean
y
flutter clean
flutter pub get
flutter build apk --flavor staging -t lib/main.dart

### Build Production Apk
flutter pub cache clean
y
flutter clean
flutter pub get
flutter build apk --flavor production -t lib/main.dart

flutter build appbundle --flavor production -t lib/main.dart
