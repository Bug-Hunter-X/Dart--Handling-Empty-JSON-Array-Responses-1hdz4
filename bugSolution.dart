```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      // Check if the list is empty before accessing elements
      if (data.isNotEmpty) {
        final firstElement = data[0];
        print(firstElement['name']);
      } else {
        print('JSON array is empty.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```