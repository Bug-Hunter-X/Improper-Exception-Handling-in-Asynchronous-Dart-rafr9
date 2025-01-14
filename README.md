# Improper Exception Handling in Asynchronous Dart

This repository demonstrates a common error in Dart:  insufficient exception handling in asynchronous operations. The provided code attempts to fetch data from an API. However, the initial `try-catch` only prints the error; it doesn't propagate it effectively.  This can lead to unexpected behavior or silent failures in applications.

## The Bug
The `bug.dart` file showcases the problem.  It fetches data, handles the `http` response, and includes a `try-catch`.  But, crucially, it doesn't re-throw the exception caught. This means that higher levels of the application will not be aware of the error.

## The Solution
The `bugSolution.dart` file provides a corrected version. By adding `rethrow`, exceptions are propagated up the call stack, allowing for more robust error handling at a higher level.

## How to Run
1.  Clone the repository.
2.  Ensure you have the `http` package in your `pubspec.yaml`:
   ```yaml
dependencies:
  http: ^0.13.5
```
3.  Run the Dart code using the Dart CLI.

This example highlights the importance of proper error propagation in asynchronous programming for creating more reliable and maintainable applications.