```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      // Process the data (Example: print the first element)
      print(jsonData.first);
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle potential errors during the process
    print('Error fetching data: $e');
    // Re-throw the exception to be handled higher up in the call stack if needed
    rethrow; 
  }
}
```