# Uncommon Dart Bug: Nested JSON Access and Exception Handling

This repository demonstrates a common error in Dart code: improper handling of nested JSON responses and asynchronous operations.  The bug lies in how the code handles potential errors during JSON parsing and access to nested JSON elements.

## Bug Description
The `fetchData` function fetches data from a remote API.  It correctly handles the HTTP status code, but the access to nested JSON elements (`jsonData['nested']['data']`) could throw an exception if 'nested' or 'data' keys are missing.  The exception handling isn't comprehensive enough for the common scenarios.

## Solution
The provided solution implements more robust error handling by checking for the existence of nested keys before accessing them.  It enhances exception handling by providing more specific error messages.