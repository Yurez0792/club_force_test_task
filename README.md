# club force test task

A Club force test task Flutter application.

### App translations

All translations within app should be managed
by [flutter_localizations](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

## Code generation

Some packages allow to generate code to remove burden of defining boilerplate code for common
functionalities, like: freezed or json serialization.

> Code generation is done by [build_runner](https://pub.dev/packages/build_runner) package.

There are two ways to generate code for day to day development:

* **one time way**

```bash
flutter pub run build_runner build
```

> In case of conflict with previously generated code add `--delete-conflicting-outputs` flag.

* **continuous way**

```bash
flutter pub run build_runner watch
```

### Dependency injection

To manage dependencies inside the app was used simple Service
Locator [get_it](https://pub.dev/packages/get_it)

### REST API

For handling network API calls was selected a type conversion dio client
generator [retrofit](https://pub.dev/packages/retrofit)

To generate code:

```bash
flutter pub run build_runner build
```

### State management

State management organized using BLoC (Business Logic Component) design
pattern [flutter_bloc](https://pub.dev/packages/flutter_bloc)



