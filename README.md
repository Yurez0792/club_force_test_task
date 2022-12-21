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


### Integration tests
All integration tests located in `integration_test` package inside root project package.

### Mocking classes
Mock classes to reach desired behavior or result, for covering all needed test cases.
As usual, under integration tests, unit tests you would mock use cases, repositories, or data sources.

For mocking classes in the tests, use mockito package
mockito [mockito](https://pub.dev/packages/mockito)

To familiarize yourself with an example of using mockito, look at the file under path:
`integration_test/groups/listing_groups/listing_groups_widget_test.dart`

### Data generators
There is we do not do real API requests in integration tests, that's why we need to create fake data for covering different test cases.

For faking, we are using faker package
faker [faker](https://pub.dev/packages/faker)

Base class for faking data during testing has already crated - `FakeModelFactory`. `FakeModelFactory` located under path:
`integration_test/fake_generator/fake_model_factory.dart`

Every specific data generator should extend `FakeModelFactory` and realize inherited methods,
pass the type that you are going to fake, to the generic of `FakeModelFactory`. For example:
```
class GroupsGenerator extends FakeModelFactory<Group> {}
```

To familiarize yourself with an example of data generator, look at the file under path:
`integration_test/fake_generator/groups_generator.dart`

### Tests coverage
Using the terminal, go to the root directory of your project and:
- Run tests with coverage configuration:

    - For `unit tests`:

      `$ flutter test --coverage`

    - For `integration_test`:

      `$ flutter test integration_test --flavor development --coverage`

- To see overall coverage rate in the terminal run:

    - For `unit tests` and `integration_test`:

      `$ genhtml coverage/lcov.info -o coverage/html`

- To see web presentation of test coverage run:

    - For `unit tests` and `integration_test`:

      `$ open coverage/html/index.html`

Web presentation of the test coverage has his advantage, as there is present ability to see coverage per file.