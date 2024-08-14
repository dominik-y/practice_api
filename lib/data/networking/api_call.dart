import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled1/data/model/books.dart';

class ApiCall {
  final String postUrl =
      "https://openlibrary.org/search.json?q=the+lord+of+the+rings";

  Future<Books> fetchAlbum() async {
    final response = await http.get(Uri.parse(postUrl));

    if (response.statusCode == 200) {
      return Books.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load');
    }
  }
}
