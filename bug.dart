```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Accessing the first element may throw an error if the list is empty
      final firstElement = data[0]; // Potential error here
      print(firstElement['name']); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // You may want to rethrow the exception or handle it more specifically
  }
}
```