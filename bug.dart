```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing nested JSON
      final nestedData = jsonData['nested']['data']; 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors gracefully
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```