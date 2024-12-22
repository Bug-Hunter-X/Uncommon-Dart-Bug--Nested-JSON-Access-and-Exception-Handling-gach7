```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Safely access nested JSON, handling missing keys
      final nestedData = jsonData['nested'] != null && jsonData['nested']['data'] != null ? jsonData['nested']['data'] : null;
      if(nestedData == null) {
        print('Warning: Nested JSON data not found!');
      } else {
        // Process the nestedData
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format - $e');
  } on NoSuchMethodError catch(e) {
      print('Error: Key not found in JSON - $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Consider logging the error for debugging purposes
  }
}
```