import 'dart:convert';

import 'package:http/http.dart' as http;

class JokeProviders {
  final http.Client client;
  final String _baseUrl = "https://v2.jokeapi.dev/joke/Any";

  JokeProviders({required this.client});
  Future<Map<String, dynamic>> getJokes()  async  {
    final response = await client.get(Uri.parse(_baseUrl));



    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }

    throw Exception(
      'Failed to fetch joke: ${response.statusCode}',
    );

  }

}