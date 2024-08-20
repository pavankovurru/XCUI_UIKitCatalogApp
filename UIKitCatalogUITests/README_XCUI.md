# UIKitCatalog UI Testing

## Overview

This project includes a UI testing target named `UIKitCatalogUITests`. All UI tests should be written under this target following the Page Object Model (POM) as defined in the project structure(Example: AlertController Folder).

## Project Structure

- **`UIKitCatalogUITests`**: The dedicated target for UI testing. All UI test cases should be added to this target.
- **`Utility.swift`**: Contains common XCUI functions that can be utilized across different tests. These utility functions are designed to simplify repetitive tasks in your tests.
- **`XCUIBaseTest`**: A base test class that includes listeners to automatically handle most alerts that might pop up during the app's runtime. When creating new UI tests, inherit from `XCUIBaseTest` to take advantage of this feature.

## Test Plans

The project includes a test plan named `TestPlanFull.xctestplan` with the following features:

- **Auto-Capture of Test Run Videos**: The test plan is configured to automatically record a video of each test run. This can be useful for debugging and reviewing test results.
- **Auto Rerun of Failed Tests**: In case a test fails, the test plan will automatically rerun the test once to check if the failure was due to a transient issue.
- **Parallel Test Execution**: Tests in different classes will be executed in parallel, which helps to reduce overall test execution time.

## Writing New Tests

When writing new UI tests, please follow these guidelines:

1. **Page Object Model**: Structure your tests using the Page Object Model pattern as defined in the project. This helps keep your tests organized and maintainable.
2. **Utility Functions**: Leverage the functions in `Utility.swift` to avoid duplicating code and to maintain consistency across tests.
3. **Inherit from `XCUIBaseTest`**: All new UI tests should inherit from `XCUIBaseTest` to ensure that any unexpected alerts are handled automatically.

## Running the Tests

To run the UI tests:

1. Select the `UIKitCatalogUITests` target in Xcode.
2. Choose the `TestPlanFull.xctestplan` in the scheme settings.
3. Run the tests using Xcode's test runner. The tests will be executed with the features described above.

---

This documentation will help you get started with UI testing in this project and ensure that your tests are consistent, maintainable, and reliable.


