# dj_pmi Flutter Application

Welcome to the **dj_pmi 2.0 Flutter Application**, the next-generation version of the dj_pmi app, which has over a million downloads on the Play Store. This project is built using modern Flutter development principles and adheres to industry best practices.

## Project Architecture

The application follows the **MVVM (Model-View-ViewModel)** architecture, ensuring separation of concerns and maintainable code. Below are the key components and tools used:

### Key Frameworks and Libraries

- **Provider**: For state management.
- **Get_it**: For dependency injection.
- **Build_runner**: Used to auto-generate assets, fonts, and other necessary files.

### Project Features

- **Flavors**: Supports development, staging, and production environments.
- **Optimized Widget Rebuilds**: Encourages the use of `Selector` widgets to limit rebuilds and improve performance.

## Development Rules

To maintain the quality and scalability of the project, the following rules are mandatory for all developers:

### Code Guidelines

1. **Code Size**: No single file should exceed **500 lines of code**.
2. **Lint Rules**: Follow the defined linting rules without exceptions. Run the linter before committing:
   ```bash
   flutter analyze
   ```
3. **Comments and Logs**:
   - Do not commit debugging logs (`print` statements, `debugPrint`, etc.) to the repository.
4. **Imports**: Use **absolute/package** imports instead of relative imports. Ensure to use a barrel file that has the file instead of individual imports
5. **Barrel files**: Use barrel files to export files from the same layer in groups

### Peer Review

- All code must undergo **peer review** before being merged into the main branch.
- Utilize pull requests for code reviews and discussions.

### Performance Optimization

- Use `Selector` widgets wherever possible to limit widget rebuilds and improve performance.

## Project Setup

### Prerequisites

Ensure you have the following installed:

- Flutter SDK (latest stable version)
- Dart SDK
- IDE (Visual Studio Code/Android Studio) with Flutter and Dart plugins

### Clone the Repository

```bash
git clone <repository_url>
cd dj_pmi
```

### Install Dependencies

```bash
flutter pub get
```

### Setup Flavors

This project uses flavors for different environments (dev, staging, prod). Run the app using the appropriate flavor:

#### Development

```bash
flutter run --flavor dev
```

#### Staging

```bash
flutter run --flavor staging
```

#### Production

```bash
flutter run --flavor prod
```

### Generating Assets and Fonts

Use `build_runner` to auto-generate necessary files:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Directory Structure

The project follows a structured directory format:

```
lib/
├── core/               # Core utilities
├── common/             # Shared utilities and services
├── features/           # Contains datasources, repositories, viewmodels and classes as pertaining to features
├── main.dart           # Entry point for the all environments
```

## Contribution Guidelines

1. Branch out from the `develop` branch for all new features or bug fixes.
2. Commit messages should follow the [Conventional Commit format](https://www.conventionalcommits.org):
   ```
   feat: add new login screen
   fix: resolve crash on user profile load
   ```
3. Always rebase your branch with `develop` before creating a pull request.
   ```bash
   git pull --rebase origin develop
   ```

## Running Tests

Before pushing code, ensure all tests pass:

```bash
flutter test
```

## Contact

For further information or contributions, please reach out to the project maintainers.

Let’s make dj_pmi 2.0 a success!
