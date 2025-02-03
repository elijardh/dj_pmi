# Clean the Flutter project
clean:
	flutter clean

# Get project dependencies
get:
	flutter pub get

# Upgrade project dependencies
upgrade:
	flutter pub upgrade

# Format the codebase
format:
	flutter format .

# Analyze the codebase for issues
analyze:
	flutter analyze

# Build the Android APK
build-apk:
	flutter build apk --release

# Build the iOS app
build-ios:
	flutter build ios --release

# Run the app in development mode
run-dev:
	flutter run --flavor dev

# Run the app in staging mode
run-staging:
	flutter run --flavor staging

# Run the app in production mode
run-prod:
	flutter run --flavor prod

# Generate assets and fonts
generate:
	flutter pub run build_runner build --delete-conflicting-outputs

# Open the project in Xcode
open-ios:
	open ios/Runner.xcworkspace

# Open the project in Android Studio
open-android:
	open android

# Run the test suite
test:
	flutter test

# Activate the Mason CLI
activate-mason:
	dart pub global activate mason_cli

# Pull the latest changes from the develop branch
pull-develop:
	git pull origin develop

# Pull the latest changes from the main branch
pull-main:
	git pull origin main

# Display available make targets and their descriptions
help:
	@echo "clean: Clean the Flutter project"
	@echo "get: Get project dependencies"
	@echo "upgrade: Upgrade project dependencies"
	@echo "format: Format the codebase"
	@echo "analyze: Analyze the codebase for issues"
	@echo "build-apk: Build the Android APK"
	@echo "build-ios: Build the iOS app"
	@echo "run-dev: Run the app in development mode"
	@echo "run-staging: Run the app in staging mode"
	@echo "run-prod: Run the app in production mode"
	@echo "generate: Generate assets and fonts"
	@echo "open-ios: Open the project in Xcode"
	@echo "open-android: Open the project in Android Studio"
	@echo "test: Run the test suite"
	@echo "activate-mason: Activate the Mason CLI"
	@echo "pull-develop: Pull the latest changes from the develop branch"
	@echo "pull-main: Pull the latest changes from the main branch"
	@echo "help: Display available make targets and their descriptions"